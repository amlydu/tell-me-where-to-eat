class CreateSearch < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :query
      t.integer :query_count

      t.timestamps
    end
  end
end
