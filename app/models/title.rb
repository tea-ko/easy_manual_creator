class Title < ApplicationRecord
   has_many :contents
   #belongs_to :user
   #belongs_to :tag_list
end