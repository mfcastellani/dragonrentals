class CreateDragons < ActiveRecord::Migration[6.1]
  def change
    create_table :dragons do |t|
      t.string :name
      t.date :birth_date
      t.string :color
      t.string :characteristics

      t.timestamps
    end
  end
end
