class Image < ApplicationRecord
  belongs_to :product

  validates_format_of :image, :with => %r{\.(png|jpg|jpeg)$}i, :message => "Must have a valid file type for URL", :multiline => true
end
