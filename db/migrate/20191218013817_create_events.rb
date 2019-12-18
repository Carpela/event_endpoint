class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :referrer
      t.datetime :time
      t.jsonb :payload, :null => false, :default => {}

      t.timestamps
    end
  end
end
