class PublicationsController < ApplicationController
  before_action :set_publication, only: [:show, :update, :destroy]

  def index
    @publications = Publication.all

    render json: @publications
  end

  def show
    render json: @publication
  end

  def create
    @publication = Publication.new(publication_params)

    if @publication.save
      render json: @publication, status: :created, location: @publication
    else
      render json: @publication.errors, status: :unprocessable_entity
    end
  end

  def update
    if @publication.update(publication_params)
      render json: @publication
    else
      render json: @publication.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @publication.destroy
  end

  private
    def set_publication
      @publication = Publication.find(params[:id])
    end

    def publication_params
      params.require(:publication).permit(:title, :content, :user_id)
    end
end
