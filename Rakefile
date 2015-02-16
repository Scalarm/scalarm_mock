# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

# TODO: if config missing, copy examples

namespace :service do
  desc 'Start the service'
  task :start => :environment do
    command = 'thin start -d --ssl -C config/thin.yml'
    puts command
    %x[#{command}]
  end

  desc 'Stop the service'
  task :stop => :environment do
    %x[thin stop -C config/thin.yml]
  end
end
