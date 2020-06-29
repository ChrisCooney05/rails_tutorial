# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end
  # Article.find is used to find the article we want, using the passed in ID params from the url

  def new; end

  def create
    @article = Article.new(article_params)
    # Article.new is referring to app/models/article.rb
    # info in article params are auto mapped to the correct tables
    # for safety we need to tell ruby what information is permitted before it can be accepted
    @article.save
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end

# A frequent practice is to place the standard CRUD actions in each controller in the following order:
# index, show, new, edit, create, update and destroy.
