class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to action: :show
  end

  private
  def update_params
    params.require(:user).permit(:nickname, :major, :introduce, :avatar)
  end
end
