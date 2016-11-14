class Pregao < ActiveRecord::Base

	validates :data, :presence => { :message => 'é obrigatório.' }  

end
