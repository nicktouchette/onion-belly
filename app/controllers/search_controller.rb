class SearchController < ApplicationController

  def new
  end

  def search
    @search = search_params
  end

  private

  def search_params
    params.require(:search).permit(:term)
  end
end
