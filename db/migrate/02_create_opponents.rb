class CreateOpponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.string :name
      t.intege :president_id
    end
  end
end