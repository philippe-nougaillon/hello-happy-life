class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :recoverable,
  devise :database_authenticatable, :registerable,
          :rememberable, :validatable,
          :trackable          

  belongs_to :organisation, optional: true
  has_and_belongs_to_many :groupes
end
