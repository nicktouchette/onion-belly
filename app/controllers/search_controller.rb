class SearchController < ApplicationController

  def new
  end

  def search
  end

  private

  def search_params
    params.require(:search).permit(:term)
  end
end
