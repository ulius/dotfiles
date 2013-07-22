# ways to execute shell: http://ericzouthoughts.wordpress.com/2009/06/20/execute-shell-command-in-ruby-rake-task/
# my personal favorites:
desc 'example'
  task :example do
    `cmd_one`
    `cmd_two`
    %x{cmd_three}
  end
end


# run rake tasks within rake tasks: http://stackoverflow.com/questions/577944/how-to-run-rake-tasks-from-within-rake-tasks
# - execute task, but doesn't execute dependencies
Rake::Task["build"].execute
# - executes dependencies, but only executes task if it hasn't been invoked
Rake::Task["build"].invoke
# - reset task's already_invoked state, allowing tasks to be executed (with dependencies)
Rake::Task["build"].reenable
Rake::Task["build"].invoke

