class GroupsController < ApplicationController


  def index
    @user = current_user
    @groups = Group.all
    @category = Category.all
  end

  def show
    # @list = List.new
    @group = Group.find(params[:id])
  end

  def join
    @group = Group.find(params[:group_id])
    @group.users << current_user
    redirect_to  groups_path
  end


  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    @group.users << current_user  #current_userを追加@
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)

      redirect_to groups_path
    else
      render 'edit'
    end
  end

 
  def destroy                          # 退会機能
    @group = Group.find(params[:id])
    @group.users.delete(current_user)
      redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :introduction, :image, :start_time, :user_id, :category_id)
  end

  def ensure_correct_user
    @group = Group.find(params[:id])
    unless @group.owner_id == current_user.id
      redirect_to groups_path
    end
  end

end
