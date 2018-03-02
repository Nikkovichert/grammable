# class Gram < ApplicationRecord
#   if @gram.valid?
#     redirect_to root_path
#   else
#     render :new, status: :unprocessable_entity
#   end
#   validates :message, presence: true
#   belongs_to :user
# end


class Gram < ApplicationRecord
  validates :message, presence: true
  validates :picture, presence: true
  mount_uploader :picture, PictureUploader
  belongs_to :user
  has_many :comments
end