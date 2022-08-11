class ArticlesController < ApplicationController
  def index
  end
  def create
    @article = Article.new(params[:article])

    if @article.save
      Resque.enqueue(Sleeper, 5)
      flash[:notice] = "Article was created."
      redirect_to articles_path
    else
      render :new
    end
  end
end