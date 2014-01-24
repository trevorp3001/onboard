class Room < ActiveRecord::Base

	#assosiation
	belongs_to :user

	#this is from rubygeocoder.org site
	geocoded_by :address
	after_validation :geocode

	#add paperclip to save images
	#the hash(#) after 960x300 means we crop the image
	#if we wanted it to be a certain width we would do "500x"
	#if we wanted it to be a certain height we would do "x500"
	has_attached_file :image, styles: { large: "960x300#", thumbnail: "50x50#" }

	#validations
	validates :title, presence: true
	validates :address, presence: true
	validates :price, presence: true, 
					numericality: { greater_than_or_equal_to: 0.5}

end
