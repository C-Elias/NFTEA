class NftsController < ApplicationController
 before_action :get_nft, only: [:show, :destroy]

  def index
    # @nfts = Nft.all
    @nfts = policy_scope(Nft).order(created_at: :desc)
  end

  # def show
  # end

  # def new
  #   @nft = Nft.new
  #   authorize @nft
  # end
  # # POST /nfts
  # def create
  #   @nft = Nft.new(nft_params)
  #   @nft.user = current_user
  #   authorize @nft
  #   if @nft.save
  #     redirect_to @nft, notice: 'NFT was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  # # DELETE /nft/1
  # def destroy
  #   @nft.destroy
  #   redirect_to nft_url, notice: 'NFT was successfully deleted.'
  # end

  private

  def get_nft
   @nft = Nft.find(params[:id])
  end
  # def nft_params
  #   params.require(:nft).permit(:user)
  # end
end
