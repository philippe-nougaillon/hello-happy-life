class Activité < ApplicationRecord
    has_many :groupes

    def image
        self.nom.downcase.gsub(' ', '-') + '.jpg'
    end
end
