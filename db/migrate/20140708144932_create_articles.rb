class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :position
      t.string :title
      t.text :introduction
      t.text :body
      t.references :subject
      t.timestamps
    end
  end
end
