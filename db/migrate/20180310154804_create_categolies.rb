class CreateCategolies < ActiveRecord::Migration[5.1]
  def change
    create_table :categolies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
