json.extract! monitem, :id, :item_id, :name, :alias_name, :nation, :birthplace, :occupation, :biographical_text, :created_at, :updated_at
json.url monitem_url(monitem, format: :json)
