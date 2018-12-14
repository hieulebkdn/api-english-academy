json.extract! invoice, :id, :description, :fee, :paid_day, :admin_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
