require 'rails/generators'

module Wymeditor
	module Generators
		class InstallGenerator < Rails::Generators::Base
			source_root(File.join(File.dirname(__FILE__), '../../../'))

			def install_wymeditor
				template('app/helpers/wymeditor_helper.rb', 'app/helpers/wymeditor_helper.rb')
				directory('public/javascripts', 'public/javascripts')
			end
		end
	end
end
