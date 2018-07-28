class HostsController < ApplicationController
	def index
		@hosts = Host.all 
	end
	def show
		@host = Host.find(params[:id]) 
	end
	def edit
		@host = Host.find(params[:id])
	end
	def new
		@host = Host.new
	end
	def create
		@host = Host.new(host_params)
		if @host.save!
			session[:host_id] = @host.id 
			redirect_to '/'
		else
			flash[:notice] = "There was a problem creating this user:" 
			@error_hash = []
			@host.errors.full_messages.each do |e|
     			flash[:notice] += "\n" + e + "."
     			puts e
			end
			render 'new'
			
		end
	end
	def host_params
		params.require(:host).permit(:name,:email,:password,:website)
	end


end
