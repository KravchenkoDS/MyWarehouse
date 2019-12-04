class Moving < ApplicationRecord
  scope :order_by, -> (code) { where(order_code: code) }

  has_many :products, dependent: :nullify
  has_many :shipments, dependent: :nullify
  has_many :users, dependent: :nullify

  enum status: %i[internal_displacement sale goods_receipt].freeze
  validates :status, inclusion: { in: statuses.keys }


=begin
  post = Post.new
  post.draft! # => true
  post.draft? # => true
  post.status # => "draft"

  post.reviewed! # => true
  post.draft?    # => false
  post.status    # => "reviewed"
  post.reviewed? # => true
=end
end
