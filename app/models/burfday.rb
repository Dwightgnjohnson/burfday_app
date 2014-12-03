class Burfday < ActiveRecord::Base
  validates :name, presence:true, length: {minimum: 1, maximum: 30}
  validates :age, presence: true

  mount_uploader :photo, PhotoUploader

  belongs_to :user

  def dob
    now = Time.now.utc.to_date
    now.year - age.year - ((now.month > age.month || (now.month == age.month && now.day >= age.day)) ? 0 : 1)
  end

end
