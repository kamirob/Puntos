class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :nit
      t.string :address
      t.string :city
      t.string :phone
      t.string :email
      t.string :contact_name

      t.timestamps
    end
  end
end
