class UsersController < ApplicationController
  def index
    @user = current_user
    @group = current_user.groups
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      flash.now[:alert] = '名前を入力してください。'
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :profile_image, :gender, :age, :prefecture)
  end

  def group_params
    params.require(:group).permit(:name, :introduction, :image, :start_time)
  end
end
