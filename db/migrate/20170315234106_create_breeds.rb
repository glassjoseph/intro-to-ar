class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.text :breed

      t.timestamps null: false
    end
  end
end
