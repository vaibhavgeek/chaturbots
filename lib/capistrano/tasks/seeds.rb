task :seed do
 puts "\n=== Seeding Database ===\n"
 on primary :db do
  within current_path do
    with rails_env: fetch(:stage) do
      execute :rake, 'db:seed'
    end
  end
 end
end