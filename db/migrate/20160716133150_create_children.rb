class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.date :birth_date
      t.string :gender
      t.string :language
      t.string :father_name
      t.integer :father_phone
      t.string :mother_name
      t.integer :mother_phone
      t.string :voter_id
      t.string :address
      t.text :dist_character
      t.text :disability_status
      t.string :photo
      t.string :finger_print
      t.date :issue_date
      t.string :issuer

      t.timestamps null: false
    end
  end
end
