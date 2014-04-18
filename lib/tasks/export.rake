namespace :i18n do
  namespace :js do
    desc "Export translations to JS file(s)"
    task :export => :environment do
    	I18n.backend = I18n::Backend::Simple.new
      I18n::JS.export
   #    $redis_i18n = Redis.new(:host => ENV['I18N_REDIS'], :port => 6379, :db => 4)
			# I18nRedis.connect(:host => ENV['I18N_REDIS'], :port => 6379, :db => 4)
			# I18n.backend = I18n::Backend::KeyValue.new($redis_i18n)  
    end
  end
end
