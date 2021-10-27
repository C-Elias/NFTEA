class AddPropertiesToNft < ActiveRecord::Migration[6.0]
  def change
    add_column :nfts, :name, :string
    add_column :nfts, :description, :text
    add_column :nfts, :ext_url, :string
    add_column :nfts, :for_sale, :boolean
  end
end
