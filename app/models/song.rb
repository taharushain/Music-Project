class Song < ActiveRecord::Base
	mount_uploader :music, MusicUploader # Tells rails to use this uploader for this model.
	mount_uploader :image, ImageUploader
    validates :name, presence: true      # Make sure the owner's name is present.
    validates :music, presence: true
    validates :artist, presence: true
    validates :genre, presence: true
end
