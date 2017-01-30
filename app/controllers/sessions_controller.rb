class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  # GET /sessions.json
  def index
    
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    
  	@host = Host.find_by_email(params[:session][:email])

  	if @host && @host.authenticate(params[:session][:password_digest])
    	session[:host_id] = @host.id
    	redirect_to '/'
  	else
    	redirect_to 'login'
  	end 

  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
  	puts 'destroy method activated'
    session[:host_id] = nil
  	redirect_to '/'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      
    end
end
