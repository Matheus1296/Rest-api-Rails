class CreateProducts < ActiveRecord::Migration[6.0]
  def up
    create_table :products,id: false do |t|
      t.integer :id, null: false
      t.string :name
      t.float :price
      t.integer :amount

      t.timestamps
    end
    execute 'ALTER TABLE products ADD PRIMARY KEY(id);'
    execute 'ALTER TABLE products  MODIFY id BIGINT(20) NOT NULL AUTO_INCREMENT;'
  end
end
