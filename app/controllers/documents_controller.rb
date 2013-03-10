class DocumentsController < ApplicationController
  before_filter :signed_in_user

  def new
  end

  def create
    @document = Document.new(params[:document])
    if @document.save
      redirect_to documents_url
    else
      render 'index'
    end

  end

  def index
    @document = Document.new
    @docs = Document
  end

  def destroy
    Document.find_by_id_document(params[:id]).destroy
    flash[:success] = "Document removed."
    redirect_to documents_url 
  end

  private
    # Method to tes if a user is signed in and redirects it if its not authenticated 
    def signed_in_user
        #Method signed_in? defined in app/helpers/sessions_helper.rb
      redirect_to signin_url, notice: "Please sign in." unless signed_in? #notice :"Please sign in" = flash[:notice] = "Please sign in"
    end

end
