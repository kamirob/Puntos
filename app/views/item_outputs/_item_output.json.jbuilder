json.extract! item_output, :id, :item_name, :departure_date, :quantity, :point, :fixed_asset, :created_at, :updated_at
json.url item_output_url(item_output, format: :json)
