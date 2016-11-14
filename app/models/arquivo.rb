class Arquivo < ActiveRecord::Base

	has_many :pregoestitulosgrafico, dependent: :destroy
	
end
