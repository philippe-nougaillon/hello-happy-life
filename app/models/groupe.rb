class Groupe < ApplicationRecord
    belongs_to :organisation
    belongs_to :activité
    has_and_belongs_to_many :users
    has_many :discussions
    has_many :sorties

    accepts_nested_attributes_for :sorties, reject_if: lambda {|attributes| attributes['le'].blank?}

end
