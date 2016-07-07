class CreateCursoEscolas < ActiveRecord::Migration
  def change
    create_table :curso_escolas do |t|
      t.references :escola, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true
      t.references :professor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
