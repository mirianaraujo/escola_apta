class RenameColumnEmailToAluno < ActiveRecord::Migration
  def change
  	rename_column :alunos, :emai, :email
  end
end
