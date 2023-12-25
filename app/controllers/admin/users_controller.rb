class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
     @user = User.find(params[:id])
    if @user.update(customer_params)
      redirect_to admin_user_path(@user), notice: "会員情報を更新しました。"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :is_active )
  end
end

