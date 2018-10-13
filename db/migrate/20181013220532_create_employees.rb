class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
