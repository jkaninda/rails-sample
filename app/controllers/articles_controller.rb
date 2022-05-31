class ArticlesController < ApplicationController
  def index
    @articles = Article.all

  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find(params[:id])
  
    if @article.nil?
      render plain: "Article not found"
      
    else
      render 'show'
    end

    end
end
