class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name
      t.string :address
      t.string :vpn
      t.string :co
      t.string :anydesk
      t.string :isp

      t.timestamps
    end
  end
end
