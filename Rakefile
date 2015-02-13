require 'bundler/gem_tasks'

task :default => :test
task :test do
  $LOAD_PATH << './test'
  Dir.glob('./test/translates/*_test.rb').each { |e| require e }
end
