class CreateProvisionings < ActiveRecord::Migration
  def change
    create_table :provisionings do |t|
      t.string :name
      t.string :code
      t.float :amount
      t.date :release

      t.timestamps
    end
  end
end
