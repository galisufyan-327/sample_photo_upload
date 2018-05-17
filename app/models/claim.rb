class Claim < ApplicationRecord
	mount_uploader :damage_room_overview_1, AvatarUploader
	mount_uploader :damage_room_overview_2, AvatarUploader
	mount_uploader :detail_of_damage_1, AvatarUploader
  mount_uploader :detail_of_damage_2, AvatarUploader
	mount_uploader :additional_photos, AvatarUploader

	validates_presence_of :damage_room_overview_1, :damage_room_overview_2, :detail_of_damage_1, :detail_of_damage_2
end
