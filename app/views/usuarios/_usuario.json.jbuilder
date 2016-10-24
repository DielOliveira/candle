json.extract! usuario, :id, :email, :senha, :nomecompleto, :datascimento, :ultimologin, :flagativo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)