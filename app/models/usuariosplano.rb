class Usuariosplano < ActiveRecord::Base
  belongs_to :plano
  belongs_to :usuario
end
