# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:id])
    @comment = @article.comments.create(comment_params)
    redirect to article_path(@article)
  end

  # must first call out the article as all comments are linked to them
  # by calling the create method on the comments linked to article,
  # we automatically set up the relation between them

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
