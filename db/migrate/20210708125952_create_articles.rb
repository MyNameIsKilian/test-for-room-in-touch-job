class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.text :content
      t.boolean :visible
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
