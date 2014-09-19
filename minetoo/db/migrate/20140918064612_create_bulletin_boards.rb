class CreateBulletinBoards < ActiveRecord::Migration
  def change
    create_table :bulletin_boards do |t|
      t.references :user, index: true
      t.text :post

      t.timestamps
    end
  end
end
