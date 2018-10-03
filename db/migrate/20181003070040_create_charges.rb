class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :access_code
      t.string :download_1
      t.string :download_2
      t.string :download_3

      t.timestamps
    end
  end
end
