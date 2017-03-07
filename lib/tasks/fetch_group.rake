namespace :facebook do
  desc "fetch rental posts"
  task :fetch => :environment do
    app_id = ENV["app_id"]
    app_secret = ENV["app_secret"]
    group_ids = YAML.load ENV["group_ids"]
    group_ids.each do |group_id|
      client = Koala::Facebook::OAuth.new(app_id, app_secret)
      token = client.get_app_access_token
      client = Koala::Facebook::API.new(token)
      begin
        data = client.get_connection(group_id, "feed")
      rescue Exception => e
        puts "***** EXCEPTION DETECTED WITH GROUP #{group_id}***** "
        puts e.message
        data = []
      end
      data.each do |datum|
        id =  datum["id"]
        unless Rental.find_by_facebook_object_id(id)
          Rental.create!(facebook_object_id: id, json_dump: datum.to_json, fb_created_time: datum["updated_time"], message: datum["message"])
        end
      end
    end
  end

end
