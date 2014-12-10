class Burfday < ActiveRecord::Base
  validates :name, presence:true, length: {minimum: 1, maximum: 30}
  validates :age, presence: true

  mount_uploader :photo, PhotoUploader

  belongs_to :user

  def today
    Time.now.utc.to_date
  end

  def dob
    today.year - age.year - ((today.month > age.month || (today.month == age.month && today.day >= age.day)) ? 0 : 1)
  end


  def dob_this_year
    @day = age.day
    @month = age.month
    @year = today.year
    @dob = "#{@year}-#{@month}-#{@day}"
    return @dob.to_date
  end

  def dob_next_year
    dob_this_year.next_year
  end

  def days_till_next_bufday
    next_year = (dob_next_year - today).to_i
    this_year = (dob_this_year - today).to_i

    if this_year > 0
      return this_year
    else
      return next_year
    end

  end

  def progress_days_till_next_bufday
    percent_left = (days_till_next_bufday / 365.0) * 100
    100 - percent_left
  end

  def needs_1_week_reminder_email
    # days_till_next_bufday
    if days_till_next_bufday === 7
      return true
    else
      return false
    end
  end

end
