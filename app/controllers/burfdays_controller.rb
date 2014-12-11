class BurfdaysController < ApplicationController

  before_action :authenticate_user!
  skip_before_filter :verify_authenticity_token

  def index
    @burfdays = Burfday.all
    if @burfdays.count
      @userburfdays = current_user.burfdays.all.order("burfdays DESC")
    else
      @userburfdays = "hi"
    end
    @tests =[]
  end

  def show
    @burfday = Burfday.find(params[:id])
    @userburfday = current_user.burfdays.find(params[:id])
  end

  def new
    @burfday = Burfday.new
  end

  def create
    @burfday = Burfday.new(burfday_params)
    if @burfday.save
    redirect_to burfdays_path, notice: "NEW #BURFDAY"
    end
  end

  def update
    @burfday = Burfday.find(params[:id])
    if @burfday.update(burfday_params)
      redirect_to burfdays_path, notice: "#BURFDAY SAVED"
    else
      render :edit
    end
  end

  def destroy
    @burfday = Burfday.find(params[:id])
    @burfday.destroy
    redirect_to burfdays_path, notice: "Burfday Deleted"
  end

  def test_mail
    BurfdayMailer.burfday_reminder(current_user).deliver
    redirect_to burfdays_path, notice: "Burfday Test sent"
  end

  def burfday_params
    params.require(:burfday).permit(:name, :age, :email, :photo, :street, :city, :state, :country, :budget, :user_id)
  end
end
