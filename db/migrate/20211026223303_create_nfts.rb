class CreateNfts < ActiveRecord::Migration[6.0]
  def change
    create_table :nfts do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
