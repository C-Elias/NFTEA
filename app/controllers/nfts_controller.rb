class NftsController < ApplicationController
  before_action :get_nft, only: [:show, :destroy]
  def index
    @nfts = policy_scope(Nft)
  end

  def show
    authorize @nft
  end

  def destroy
    @nft.destroy
    authorize @nft
    redirect_to nfts_path
  end

  private

  def get_nft
    @nft = Nft.find(params[:id])
  end
end
