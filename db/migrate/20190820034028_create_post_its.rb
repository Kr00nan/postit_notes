class CreatePostIts < ActiveRecord::Migration[6.0]
  def change
    create_table :post_its do |t|
      t.string :title
      t.string :date
      t.text :body

      t.timestamps
    end
  end
end
