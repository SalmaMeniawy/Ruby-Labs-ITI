class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.belongs_to :person
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
