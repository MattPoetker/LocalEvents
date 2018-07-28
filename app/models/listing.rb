class Listing < ApplicationRecord
	include ActiveModel::ForbiddenAttributesProtection
	belongs_to :host, foreign_key: :host_id
	belongs_to :category
end
