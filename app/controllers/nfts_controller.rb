class NftsController < ApplicationController
  def index
    @nfts = Nft.all
  end
end
