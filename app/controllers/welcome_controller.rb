class WelcomeController < ApplicationController

  def index
  	@events = Listing.where(:type => 'event').order(session[:order]).first(10)
  	@categories = Category.all
  	@hosts = Host.all

  end
  def order_by
    @event_order = params[:order_by]
    puts @event_order
  	@events = Event.order(@event_order).first(10)
    session[:order] = @event_order
  	respond_to do |format|
      format.js
    end
  end
end
