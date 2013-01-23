# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime
# "Sun, 1 Apr 2012 01:01:01 -0500".to_datetime
# "Mon, 3 Dec 2012 08:00:00 -0500".to_datetime
# "Tue, 4 Dec 2012 17:00:00 -0500".to_datetime
# "Wed, 5 Dec 2012 17:00:00 -0500".to_datetime
# "Thu, 6 Dec 2012 17:00:00 -0500".to_datetime
# "Fri, 7 Dec 2012 17:00:00 -0500".to_datetime
# "Sat, 8 Dec 2012 17:00:00 -0500".to_datetime
# "Sun, 9 Dec 2012 12:00:00 -0500".to_datetime

p = Photo.new({:description => 'one', :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime })
p.image_file_name = File.open(Rails.root.join('doc', 'seeding', '300x220.jpg'))
p.save!

# https://s3.amazonaws.com/MessageBoothDev/ph1.jpg