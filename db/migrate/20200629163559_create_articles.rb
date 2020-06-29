# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
# rails generate model Article title:string text:text was used in the CL to make this
