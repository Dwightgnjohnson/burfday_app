module BurfdaysHelper

  def days_till_next_bufday_h
    next_year = (dob_next_year - today).to_i
    this_year = (dob_this_year - today).to_i

    if this_year > 0
      return this_year
    else
      return next_year
    end

  end

end
