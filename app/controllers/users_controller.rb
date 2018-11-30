class UsersController < ApplicationController
  def show
    render json: my_current_user
  end
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:id)
  end
end
