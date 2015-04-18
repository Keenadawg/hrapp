class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.datetime :date
      t.string :duration
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
