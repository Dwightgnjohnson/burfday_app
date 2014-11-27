class CreateBurfdays < ActiveRecord::Migration
  def change
    create_table :burfdays do |t|
      t.string :name
      t.date   :age
      t.string :email
      t.string :photo
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.float  :budget

      t.references :user, index: true, null: false
      t.timestamps
    end
  end
end
