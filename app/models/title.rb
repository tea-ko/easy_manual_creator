class Title < ApplicationRecord
   has_many :contents, dependent: :destroy
   belongs_to :category
   #belongs_to :user
   validates :title, presence: true
end