namespace :sunspot do
  desc "Drop and then reindex all Solr models that are located in your application's models directory"
  task :reindex do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'sunspot:solr:reindex'
        end
      end
    end
  end

  namespace :solr do

    desc 'Restart the Solr instance'
    task :restart do
      on roles(:app) do
        within release_path do
          with rails_env: fetch(:rails_env) do
            begin
              execute :rake, 'sunspot:solr:restart'
            rescue StandardError
              warn '*** Error restarting Solr instance, continuing anyway ***'
            end
          end
        end
      end
    end
    desc 'Start the Solr instance'
    task :start do
      on roles(:app) do
        within release_path do
          with rails_env: fetch(:rails_env) do
            begin
              execute :rake, 'sunspot:solr:start'
            rescue StandardError
              warn '*** Error starting Solr instance, continuing anyway ***'
            end
          end
        end
      end
    end
    desc 'Stop the Solr instance'
    task :stop do
      on roles(:app) do
        within release_path do
          with rails_env: fetch(:rails_env) do
            begin
              execute :rake, 'sunspot:solr:stop'
            rescue StandardError
              warn '*** Error stopping Solr instance, continuing anyway ***'
            end
          end
        end
      end
    end
  end
end

