class Auto < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :price, presence: true, length: {minimum: 1, maximum: 8}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    validates :contact, presence: true, length: {minimum: 3, maximum: 50}
    
    
     
     has_attached_file :auto_img, styles: { auto_index: "420x240#", auto_show: "520x340#" }, default_url: "/images/:style/missing.png"
     validates_attachment_content_type :auto_img, content_type: /\Aimage\/.*\z/
     
     validates :auto_img, attachment_presence: true
     validates_attachment_content_type :auto_img, :content_type => ['image/jpeg', 'image/png']
     
end
