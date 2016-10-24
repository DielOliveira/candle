class Pregoestitulosgrafico < ActiveRecord::Base
  belongs_to :pregoestitulo
  belongs_to :arquivo
  belongs_to :tempografico
end
