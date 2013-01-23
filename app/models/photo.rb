class Photo < ActiveRecord::Base
  attr_accessible :description
  # These are only here for seeding temporarily
  attr_accessible  :created_at, :updated_at

  # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_attached_file :image,
    :styles => {
      :thumb=> "100x100#",
      :small => "300x300>",
      :medium  => "400x400>" },
    :storage => :s3,
    :s3_credentials => Rails.root.join("config" "s3.yml"),
    :path => "/:style/:id/:filename"
end
