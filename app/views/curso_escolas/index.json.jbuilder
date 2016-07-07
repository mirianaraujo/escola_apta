json.array!(@curso_escolas) do |curso_escola|
  json.extract! curso_escola, :id, :escola_id, :curso_id, :professor_id
  json.url curso_escola_url(curso_escola, format: :json)
end
