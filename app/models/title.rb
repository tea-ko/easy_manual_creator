class Title < ApplicationRecord
   has_many :contents, dependent: :destroy
   #belongs_to :user
   belongs_to :category
   validates :title, presence: true
end