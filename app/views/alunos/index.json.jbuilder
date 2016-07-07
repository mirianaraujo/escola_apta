json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :cpf, :curso_escola_id
  json.url aluno_url(aluno, format: :json)
end
