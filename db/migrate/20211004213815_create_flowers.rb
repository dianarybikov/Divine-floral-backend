class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :image
      t.string :cost

      t.timestamps
    end
  end
end
