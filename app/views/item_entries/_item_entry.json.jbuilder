json.extract! item_entry, :id, :quantity, :unit_value, :total_value, :supplier_id, :equipment_id, :created_at, :updated_at
json.url item_entry_url(item_entry, format: :json)
