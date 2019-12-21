class AddIpToPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :points, :ip, :string
    add_column :points, :subnet_mask, :string
    add_column :points, :dns1, :string
    add_column :points, :dns2, :string
  end
end
