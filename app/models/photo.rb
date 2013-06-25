class Photo < ActiveRecord::Base

	belongs_to :user
	belongs_to :category

  	attr_accessible :title, :description, :category_id, :image
  	has_attached_file :image, styles: { medium: "320x240>"}


  	validates :description, presence: true
  	validates :user_id, presence:true
  	validates :category, presence:true
  	validates_attachment :image, presence: true,
  							content_type: { content_type: ['image/jpeg', 'image/jpg']},
  							size: { less_than: 5.megabytes }



end