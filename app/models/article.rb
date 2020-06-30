# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
end
# validates that Titles for each blog post exist and have a min length of 5
# has many comments is the other side of the belongs_to statement in comments
# if you have an instance variable @article containing an article, you can retrieve all the comments
# belonging to that article as an array using @article.comments
