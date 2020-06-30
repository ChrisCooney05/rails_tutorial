# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
end
# validates that Titles for each blog post exist and have a min length of 5
