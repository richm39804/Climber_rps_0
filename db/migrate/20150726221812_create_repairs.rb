class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
