class CreateBblws < ActiveRecord::Migration[5.2]
  def change
    create_table :bblws do |t|
      t.string :title
      t.string :author
      t.string :category
      t.text :body

      t.timestamps
    end
  end
end
