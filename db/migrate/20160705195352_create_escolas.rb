class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|
      t.string :nome
      t.string :cnpj
      t.string :endereco
      t.string :telefone

      t.timestamps null: false
    end
  end
end
