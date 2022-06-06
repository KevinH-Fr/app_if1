class CreatePilotes < ActiveRecord::Migration[7.0]
  def change
    create_table :pilotes do |t|
      t.string :nom
      t.string :statut
      t.string :ecurie
      t.string :division

      t.timestamps
    end
  end
end
