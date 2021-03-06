class Article < ApplicationRecord
    has_many :comments, dependent: :destroy 
    belongs_to :person
    validates :title, presence: true,
    length: { minimum: 5 }
end
