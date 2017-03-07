namespace :facebook do
  desc "fetch rental posts"
  task :fetch => :environment do
    token = ENV["token"]
    group_ids = YAML.load ENV["group_ids"]
    group_ids.each do |group_id|
      client = Koala::Facebook::API.new(token)
      data = client.get_connection(group_id, "feed")
      data.each do |datum|
        id =  datum["id"]
        unless Rental.find_by_facebook_object_id(id)
          Rental.create!(facebook_object_id: id, json_dump: datum.to_json, fb_created_time: datum["created_time"], message: datum["message"])
        end
      end
    end
    # grab and feed into the database
  end

  desc "TODO"
  task :my_task2 => :environment do
  end
end
