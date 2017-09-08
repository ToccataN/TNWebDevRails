class NewsController < ApplicationController
  def new
    if !logged_in?
      redirect_to root_path
    end
    @newsfeed = News.all
  end

  def create
    @news = News.new(news_param)
    @news.save
    redirect_to root_path
  end

  def show
    @newsfeed = News.all
  end

  def destroy
    @news = News.find_by(params[:id])
    @news.delete
    redirect_to root_path
  end

  private
  def news_param
    params.require(:news).permit(:title,  :text)
  end
end
