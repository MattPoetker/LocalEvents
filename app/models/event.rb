class Event < Listing
	include ActiveModel::ForbiddenAttributesProtection
	belongs_to :category
	belongs_to :host
end
