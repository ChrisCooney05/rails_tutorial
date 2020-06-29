# frozen_string_literal: true

class ArticlesController < ApplicationController
  def new; end

  def create
    @articles = Article.new(params.require(:article).permit(:title, :text))
    # Article.new is referring to app/models/article.rb
    # info in article params are auto mapped to the correct tables
    # for safety we need to tell ruby what information is permitted before it can be accepted
    @article.save
    redirect_to @article
  end
end
