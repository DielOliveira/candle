class Indicadordetalheusuario < ActiveRecord::Base
  belongs_to :indicadorsetupdetalhe
  belongs_to :indicadorsetup
end
