desc 'Show a list of tasks'
task :help do
  options = Rake.application.options
  options.show_all_tasks = true
  options.show_tasks = :tasks
  Rake::TaskManager.record_task_metadata = true
  options.show_task_pattern = Regexp.new('')
  Rake.application.display_tasks_and_comments
end
