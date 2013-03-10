class AgendasController < ApplicationController
  before_filter :signed_in_user

  def new
  end

  def create
    @agenda = Agenda.new(params[:agenda])
    if @agenda.save
      redirect_to roadmap_url
    else
      render 'index'
    end
  end

  def show
  end

  def index
    @agenda = Agenda.new
    @agendas = Agenda
  end


  private
    # Method to tes if a user is signed in and redirects it if its not authenticated 
    def signed_in_user
        #Method signed_in? defined in app/helpers/sessions_helper.rb
      redirect_to signin_url, notice: "Please sign in." unless signed_in? #notice :"Please sign in" = flash[:notice] = "Please sign in"
    end

end
