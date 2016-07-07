json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nome, :carga_horaria, :descricao
  json.url curso_url(curso, format: :json)
end
