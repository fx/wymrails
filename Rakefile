require 'rubygems'
require 'rake'

begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "wymeditor"
		gem.summary = %Q{Easy installation/integration of WYMEditor in Ruby on Rails}
		gem.description = %Q{}
		gem.email = "mr@impaled.org"
		gem.homepage = "http://github.com/fx/wymeditor"
		gem.authors = ["Marian Rudzynski"]
		gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
		gem.add_development_dependency "rails", ">= 3.0"
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings

		gem.files = FileList["[A-Z]*", "lib/**/*", "app/**/*", "public/**/*"]
	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
	test.libs << 'lib' << 'test'
	test.pattern = 'test/**/test_*.rb'
	test.verbose = true
end

begin
	require 'rcov/rcovtask'
	Rcov::RcovTask.new do |test|
		test.libs << 'test'
		test.pattern = 'test/**/test_*.rb'
		test.verbose = true
	end
rescue LoadError
	task :rcov do
		abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
	end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
	version = File.exist?('VERSION') ? File.read('VERSION') : ""

	rdoc.rdoc_dir = 'rdoc'
	rdoc.title = "wymrails #{version}"
	rdoc.rdoc_files.include('README*')
	rdoc.rdoc_files.include('lib/**/*.rb')
end
