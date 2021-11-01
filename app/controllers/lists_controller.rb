class ListsController < ApplicationController
  before_action :get_list, only: [:destroy, :show]
  def index
    @lists = List.where(user_id: params[:user_id])
  end

  def new
    @list = List.new
    authorize @list
  end

  def show
    @list = List.find(params[:id])
    authorize @list
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    authorize @list
    if @list.save
      redirect_to user_lists_path
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to user_lists_path
  end


  private

  def list_params
    params.require(:list).permit(:name)
  end

  def get_list
    @list = List.find(params[:id])
    authorize @list
  end
end
