class Pregoestitulo < ActiveRecord::Base
  belongs_to :pregao
  belongs_to :titulo
  has_many :pregoestitulosgrafico, dependent: :destroy

	def date
	  @date
	end

	def date=(val)
	  @date = val
	end 

end
