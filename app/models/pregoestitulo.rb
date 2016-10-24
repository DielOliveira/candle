class Pregoestitulo < ActiveRecord::Base
  belongs_to :pregao
  belongs_to :titulo
end
