class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :cpf

      t.timestamps null: false
    end
  end
end
