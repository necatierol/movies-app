class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :title
      t.datetime :date
      t.boolean :is_active
      t.references :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
