class CreateLks < ActiveRecord::Migration
  def change
    create_table :lks do |t|
      t.string :name
      t.text :content
      t.string :url

      t.timestamps
    end
  end
end
