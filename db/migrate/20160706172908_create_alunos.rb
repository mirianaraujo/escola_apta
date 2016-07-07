class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :cpf
      t.references :curso_escola, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
