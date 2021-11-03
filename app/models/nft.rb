class Nft < ApplicationRecord
  belongs_to :user

  validates :description, length: { maximum: 300 }

  # add the search
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    associated_against: {
      user: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
