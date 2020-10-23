class Groupe < ApplicationRecord
    belongs_to :organisation
    belongs_to :activité
    has_and_belongs_to_many :users
end
