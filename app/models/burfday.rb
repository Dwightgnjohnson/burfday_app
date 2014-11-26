class Burfday < ActiveRecord::Base
  validates :name, presence:true, length: {minimum: 1, maximum: 30}
  validates :age, presence: true

  mount_uploader :photo, PhotoUploader
end
