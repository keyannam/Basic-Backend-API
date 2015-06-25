class CreateSshhhs < ActiveRecord::Migration
  def change
    create_table :sshhhs do |t|
      t.string :secrets
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
