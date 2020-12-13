class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.text :name
      t.string :business_type
      t.text :phone
      t.text :address
      t.text :email
      t.integer :num_employees
      t.float :avg_salary
      t.date :established_date
      t.integer :total_branches

      t.timestamps
    end
  end
end
