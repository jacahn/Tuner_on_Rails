# This is our database query

class ArtistsController < ApplicationController
  # this is called a callback, used to DRY up code, see below
  before_action :set_artist, only: [:show, :destroy, :edit, :update]
  def index
    @artists=Artist.all
  end

  def show
    # @artist = Artist.find(params[:id])
  end

  def new
    @artist=Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def destroy
    # @artist= Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  def edit
    # @artist=Artist.find(params[:id])
  end

  def update
    # @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
