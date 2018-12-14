class AddTypeToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :invoice_type, :string
  end
end
