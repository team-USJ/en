class GroupsController < ApplicationController
  def index
    @user = current_user
    @category = Category.all
  end
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
