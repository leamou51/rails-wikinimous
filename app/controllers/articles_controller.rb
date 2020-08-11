class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :update, :edit, :destroy]

  # READ

  def index
    @articles = Article.all
  end

  def show
    # @article = Article.find(params[:id])
  end

  # CREATE

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(task_params)
    @article.save

    redirect_to articles_path
  end

  # UPDATE

  def edit
    # @article = Article.find(params[:id])
  end

  def update
   # @article = Article.find(params[:id])
    @article.update(task_params)
    @article.save

    redirect_to articles_path
  end

  # DELETE

  def destroy
   # @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  # --------

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def task_params
    params.require(:article).permit(:title, :content)
  end

end
