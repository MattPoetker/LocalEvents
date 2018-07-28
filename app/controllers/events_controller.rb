class EventsController < ApplicationController
	before_action :require_user, only: [:edit, :new]

	def index
		@events = Event.all

	end
	def show
		@event = Event.find(params[:id])
	end
	def edit
		@event = Event.find(params[:id])
	end
	def new
		@event = Event.new
	end
	def create
		@event = Event.new(params.require(:event).permit(:name,:event_date,:time,:description))
		@event.host = Host.find(session[:host_id])
		@event.category = Category.first
		if @event.save
        	flash[:notice] = "Event created successfully"
      		redirect_to '/'
    	else
      		render('new')
      		flash[:notice] = @event.errors if @event.errors.any?
    	end
  		
	end
end
