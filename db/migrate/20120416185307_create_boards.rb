class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.decimal :amount, :scale => 2

      t.timestamps
    end
  end
end
