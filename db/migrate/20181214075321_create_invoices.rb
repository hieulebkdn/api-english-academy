class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :description
      t.decimal :fee
      t.date :paid_day
      t.integer :admin_id

      t.timestamps
    end
  end
end
