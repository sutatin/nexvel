class UsersController < ApplicationController
  before_action :check_mine

  def new
    @user = User.new
  end
  
  def show # 追加
   @user = User.find(params[:id])
   params[:q] ||=  {:s => 'date'}
   @ransack_interest = @user.interests.search(params[:q])
   @interests = @ransack_interest.result(distinct: true)
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end


  private
  def user_params
    params.require(:user).permit(:name,:email,:tel,:kind,:password,:password_confirmation)
  end
  
  def check_mine
    redirect_to current_user unless mine?(params[:id])
  end

end
