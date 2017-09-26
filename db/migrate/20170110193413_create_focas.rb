class CreateFocas < ActiveRecord::Migration[5.0]
  def change
    create_table :focas do |t|
      t.string :nome
      t.integer :altura_cm
      t.float :peso_kg
      t.date :data_nascimento
      t.belongs_to :venda

      t.timestamps
    end
  end
end
