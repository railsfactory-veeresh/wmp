class CreateQualities < ActiveRecord::Migration
  def change
    create_table :qualities do |t|
      t.boolean :conisiderate
      t.boolean :boisterous
      t.boolean :wise
      t.boolean :relaxed
      t.boolean :forward_looking
      t.boolean :intense
      t.boolean :indecisive
      t.boolean :strong
      t.boolean :grounded
      t.boolean :emotional
      t.boolean :demonstrative
      t.boolean :wity
      t.boolean :unaffected
      t.boolean :inscrutable
      t.boolean :mercurial
      t.references :user, index: true

      t.timestamps
    end
  end
end
