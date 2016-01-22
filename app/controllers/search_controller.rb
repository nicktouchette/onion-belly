class SearchController < ApplicationController

  def new
  end

  def search
    @searched = search_params['term']
    @search = Ingredient.find_by(name: search_params['term'])
  end

  private

  def search_params
    params.require(:search).permit(:term)
  end
end
