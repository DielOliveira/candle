class Titulo < ActiveRecord::Base

	validates :codigo, :presence => { :message => 'é obrigatório.' }  
	validates :valortick, :presence => { :message => 'é obrigatório.' }  
	
end
