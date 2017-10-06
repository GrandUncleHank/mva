class Auto < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :price, presence: true, length: {minimum: 1, maximum: 8}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    validates :contact, presence: true, length: {minimum: 3, maximum: 50}
    
end
