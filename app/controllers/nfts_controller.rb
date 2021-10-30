class NftsController < ApplicationController
  before_action :get_nft, only: [:show, :destroy]
  def index
    @nfts = policy_scope(Nft)
  end

  def show
    authorize @nft
  end

  def new
    @nft = Nft.new
    authorize @nft
  end

   # POST /nfts
  def create
    @nft = Nft.new(nft_params)
    @nft.user = current_user
    authorize @nft
    if @nft.save
      redirect_to @nft, notice: 'NFT was successfully created.'
    else
      render :new
    end
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

  def nft_params
    params.require(:nft).permit( :name, :description, :for_sale, :ext_url )
  end
end
