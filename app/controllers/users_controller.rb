class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @projects = Project.where(user: @user)
    @current_user_has_bankdetail = BankDetail.find_by(user_id: @user.id)
    if BankDetail.where(user_id: params[:id]).last
      @bankdetail = BankDetail.where(user_id: params[:id]).last.id
    end
  end
end
