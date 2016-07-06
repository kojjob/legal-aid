class CreateLegals < ActiveRecord::Migration[5.0]
  def change
    create_table :legals do |t|
      t.string :title
      t.text :report

      t.timestamps
    end
  end
end
