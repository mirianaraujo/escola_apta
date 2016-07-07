class AddColumnAtivoToAluno < ActiveRecord::Migration
  def change
  	add_column :alunos, :ativo, :boolean, :default => true
  	add_column :alunos, :emai, :string
  end
end
