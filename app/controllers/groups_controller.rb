class GroupsController < ApplicationController
  def index
    @user = current_user
  end
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
