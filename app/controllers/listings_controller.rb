class ListingsController < ApplicationController
	before_action :require_user, only: [:edit, :new]

	def index
		@listings = Listing.all

	end
	def show
		@listing = Listing.find(params[:id])
	end
	def edit
		@listing = Listing.find(params[:id])
	end
	def new
		@listing = Listing.new
	end
	def create
		@listing = Listing.new(params.require(:listing).permit(:name))

		@listing.host = Host.find(session[:host_id])
		puts "Listing host: " + @listing.host.inspect 
		puts "First Category: " + Category.first.inspect
		@listing.category = Category.first
		puts "Listing category: " + @listing.category.inspect
		if @listing.save
        	flash[:notice] = "Event created successfully"
      		redirect_to '/'
    	else
      		render('new')
      		flash[:notice] = @event.errors if @event.errors.any?
    	end
  		
	end
end