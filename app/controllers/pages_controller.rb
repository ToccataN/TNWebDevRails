class PagesController < ApplicationController

  def index
    @newsfeed = News.all
  end
end
