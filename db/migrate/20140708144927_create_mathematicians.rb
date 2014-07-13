class CreateMathematicians < ActiveRecord::Migration
  def change
    create_table :mathematicians do |t|
      t.string :name
      t.string :nationality
      t.date :birthday
      t.text :info
      t.timestamps
    end
  end
end
