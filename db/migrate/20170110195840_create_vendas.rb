class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.date :data
      t.string :nome_comprador
      t.decimal :receita

      t.timestamps
    end
  end
end
