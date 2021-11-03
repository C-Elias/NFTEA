class BookmarksController < ApplicationController

  def create
    raise
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    authorize @bookmark
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    authorize @bookmark
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    @bookmark.destroy
    redirect_to list_path(List.find(params[:list_id]))
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:nft_id)
  end
end
