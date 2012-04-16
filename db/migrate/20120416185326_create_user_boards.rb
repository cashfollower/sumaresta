class CreateUserBoards < ActiveRecord::Migration
  def change
    create_table :user_boards do |t|
      t.integer :user_id
      t.integer :board_id

      t.timestamps
    end

    add_index :user_boards, [:user_id, :board_id]
  end
end
