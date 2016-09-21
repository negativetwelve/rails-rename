class RenameGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :new_name, type: :string, default: "#{Rails.application.class.parent}"

  def rename
    old_name = "#{Rails.application.class.parent}"
    new_name_capitalized = new_name.gsub(/\s/, "_").camelize

    puts "Renaming app from #{old_name} to #{new_name_capitalized}"

    in_root do
      gsub_file 'config/application.rb', /(module) (#{Regexp.escape(old_name)})/mi do |match|
        "module #{new_name_capitalized}"
      end

      gsub_file 'config/environment.rb', /(#{Regexp.escape(old_name)})(::Application.initialize!)/mi do |match|
        "#{new_name_capitalized}::Application.initialize!"
      end

      environments = ['development', 'production','test']
      environments.each do |environment_name|
        gsub_file "config/environments/#{environment_name}.rb", /(#{Regexp.escape(old_name)})(::Application.configure)/mi do |match|
          "#{new_name_capitalized}::Application.configure"
        end
      end

      gsub_file 'config/routes.rb', /(#{Regexp.escape(old_name)})(::Application.routes)/mi do |match|
        "#{new_name_capitalized}::Application.routes"
      end

      gsub_file 'config.ru', /(run) (#{Regexp.escape(old_name)})(::Application)/mi do |match|
        "run #{new_name_capitalized}::Application"
      end

      gsub_file 'Rakefile', /(run) (#{Regexp.escape(old_name)})(::Application)/mi do |match|
        "run #{new_name_capitalized}::Application"
      end

      # gsub_file 'config/secrets.yml', /(#{Regexp.escape(old_name)})(::Application.config.secret_key_base)/mi do |match|
      #   "#{new_name_capitalized}::Application.config.secret_key_base"
      # end

      gsub_file 'config/initializers/session_store.rb', /(#{Regexp.escape(old_name)})(::Application.config.session_store)/mi do |match|
        "#{new_name_capitalized}::Application.config.session_store"
      end

      gsub_file 'config/initializers/session_store.rb', /#{Regexp.escape(old_name.underscore)}/ do |match|
        "#{new_name_capitalized.underscore}"
      end

      gsub_file 'Rakefile', /(#{Regexp.escape(old_name.capitalize)})(::Application.load_tasks)/mi do |match|
        "#{new_name_capitalized}::Application.load_tasks"
      end
    end
  end
end
