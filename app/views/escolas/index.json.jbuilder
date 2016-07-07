json.array!(@escolas) do |escola|
  json.extract! escola, :id, :nome, :cnpj, :endereco, :telefone
  json.url escola_url(escola, format: :json)
end
