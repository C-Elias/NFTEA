class NftsController < ApplicationController
  before_action :get_nft, only: [:show]
  def index
    @nfts = Nft.all
    authorize @nfts
  end

  def show
    authorize @nft
  end

  private

  def get_nft
    @nft = Nft.find(params[:id])
  end
end
