# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  # Article.find is used to find the article we want, using the passed in ID params from the url

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    # Article.new is referring to app/models/article.rb
    # info in article params are auto mapped to the correct tables
    # for safety we need to tell ruby what information is permitted before it can be accepted
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
    # checks if there are any errors on the saving of @article due to model validators
  end

  def update
    @article = Article.find(params[:id])
    # checks that the updated article passes checks, if not renders edit with errors
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end

# A frequent practice is to place the standard CRUD actions in each controller in the following order:
# index, show, new, edit, create, update and destroy.
