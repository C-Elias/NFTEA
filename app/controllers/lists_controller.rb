class ListsController < ApplicationController
  def index
    @lists = List.where(user_id: params[:user_id])
  end

  def new
    @list = List.new
    authorize @list
  end

  def create
    @list = List.new(list_params)
    raise
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
