class PiecesController < ApplicationController
  respond_to :html, :json


  def index
    @pieces = Piece.all
    respond_with(@pieces)
  end


  def create
    if params[:some_file]
      uploaded_image = UploadedImage.new
      uploaded_image.image = params[:some_file].read
      uploaded_image.mime_type = params[:some_file].content_type
      uploaded_image.save

      params[:url] = "/uploaded_images/#{uploaded_image.id}"
    end


    if params[:url]
      @piece = Piece.create({url: params[:url], title: params[:title], description: params[:description]}); 
      redirect_to "/pieces/admin"
    end

    
  end

  def admin
  end

  def new
  end

  def edit
  end

  def remove
    @piece = Piece.find_by_id(params[:id])
    @piece.destroy()
    redirect_to "/pieces/admin"

  end

  def update
    @piece = Piece.find_by_id(params[:id])
    @piece.update(params[:piece].permit(:title, :description))
    redirect_to "/pieces/admin"
  end

  def show
    redirect_to "/"
  end


end
