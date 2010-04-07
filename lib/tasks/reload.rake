namespace 'db' do
  desc 'Reload Database'
  task :reload  do
    begin
      Rake::Task["db:drop"].invoke
      Rake::Task["db:create"].invoke
    rescue
      Rake::Task["db:create"].invoke
    end
    Rake::Task["db:migrate"].invoke
    #Rake::Task["db:fixtures:load"].invoke  rescue got_error = true
  end
end
