class ArticlesController < ApplicationController
  def new

  end
  def index

    @articles = Article.all
    render :layout => "article_index"

  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(article_params)
    @article.save
  end

   private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
