class StaticPagesController < ApplicationController
  def home

  end

  def about
  end

  def search
  end

  def results
    @query = search_params
  end

  private

  def search_params
    params.require(:search).permit(:term)
  end

end
