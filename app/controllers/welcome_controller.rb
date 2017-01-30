class WelcomeController < ApplicationController
  
  def index
  	@events = Event.all
  	@categories = Category.all
  	@hosts = Host.all
  end
end
