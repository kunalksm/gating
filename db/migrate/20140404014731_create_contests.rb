class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
