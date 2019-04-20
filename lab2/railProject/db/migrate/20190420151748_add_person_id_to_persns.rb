class AddPersonIdToPersns < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :person_id, :integer
  end
end
