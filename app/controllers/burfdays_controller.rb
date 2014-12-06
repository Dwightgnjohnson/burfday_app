class BurfdaysController < ApplicationController

  before_action :authenticate_user!

  def index
    @userburfdays = current_user.burfdays.all.order("burfdays DESC")
    @burfdays = Burfday.all
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
      UserMailer.new_burfday(current_user).deliver
      redirect_to burfdays_path, notice: "NEW Burfday!"
    else
      render :new
    end
  end

  def update
    @burfday = Burfday.find(params[:id])
    if @burfday.update(burfday_params)
      redirect_to @burfday, notice: "Burfday saved!"
    else
      render :edit
    end
  end

  def destroy
    @burfday = Burfday.find(params[:id])
    @burfday.destroy
    redirect_to burfdays_path, notice: "Burfday Deleted"
  end


  def burfday_params
    params.require(:burfday).permit(:name, :age, :email, :photo, :street, :city, :state, :country, :budget, :user_id)
  end
end
