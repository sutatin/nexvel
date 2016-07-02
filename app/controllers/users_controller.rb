class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show # 追加
   @user = User.find(params[:id])
   #@interests = @user.interests.order(created_at: :desc)
   #@companies = @user.companies.order(created_at: :desc)
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
  
end
