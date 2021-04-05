class Activité < ApplicationRecord
    has_many :groupes

    default_scope { order(:nom) }

    def image
        self.nom.downcase.gsub(' ', '-') + '.jpg'
    end
end
