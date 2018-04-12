class Category < ApplicationRecord
    has_attached_file :image, styles: { medium: "1000x1000>", thumb: "300x300>" }, default_url: "/images/:style/category_missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :image, attachment_presence: true
    validates_with AttachmentPresenceValidator, attributes: :image
    validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes
end
