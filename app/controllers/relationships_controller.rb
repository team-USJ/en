class RelationshipsController < ApplicationController
  def create
    current_user.following_relationships.create(create_params)
    redirect_to user_path(params[:following_id])
  end

  def destroy
    @user=current_user
    @relationship =  Relationship.where(following_id: params[:id],follower_id:@user.id)
    @relationship.destroy_all
    redirect_to user_path(params[:id])
  end

  private

  def create_params
    params.permit(:following_id)
  end
end
