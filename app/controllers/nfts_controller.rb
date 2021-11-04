class NftsController < ApplicationController
  before_action :get_nft, only: [:show, :destroy]
  def index
    # add the search
    if params[:query].present?
      @nfts = Nft.search_by_name_and_description(params[:query])
    else
      @nfts = policy_scope(Nft)
    end
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
