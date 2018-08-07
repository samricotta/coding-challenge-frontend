class PagesController < ApplicationController
  def home

   # Needed because no way to get genre from an id with this api
    @all_genres = Tmdb::Genre.movie_list

    # Needed because API give only partial path of the image
    @base_image_url = "https://image.tmdb.org/t/p/w500"

    if params[:search].present?
      @movies = []
      # Use API to find the ids of all the movies matching the search
      ids = Tmdb::Search.movie(params[:search]).results.map(&:id)

      # Use API and specific id to load all the details of the movies
      ids.each { |id| @movies << Tmdb::Movie.detail(id) }
    else
      # If no search, will give popular movies instead
      @movies = Tmdb::Movie.popular.results
    end
  end
end
