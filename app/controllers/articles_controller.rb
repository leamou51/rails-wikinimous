class ArticlesController < ApplicationController

# READ

def index
  @articles = Article.all
end

def show
  @article = Article.find(params[:id])
end

# CREATE

def new
  @article = Article.new
end

def update

end

# UPDATE

# DESTROY

end
