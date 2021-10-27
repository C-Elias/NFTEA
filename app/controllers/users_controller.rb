class UsersController < ApplicationController
 before_action :set_user, only: [:show, :destroy]

  # GET /lists
  def index
    @users = user.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = user.new
  end

  # POST /users
  def create
    @user = user.new(user_params)

    if @user.save
      redirect_to @user, notice: 'user was successfully created.'
    else
      render :new
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'user was successfully deleted.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = user.find(params[:id])
  end

  # Only allow a trusted parameter "white user" through.
  def user_params
    params.require(:user).permit(:name)
  end
end
