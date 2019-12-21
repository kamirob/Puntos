class AddInvoiceNumberToItemEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :item_entries, :invoice_number, :integer
  end
end
