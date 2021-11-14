class Usuario < ApplicationRecord
 
 validates :nombre, :apellido, presence: true, length: { in: 2..40 }
 validates :edad, :email, presence: true
 validates_numericality_of :edad, on: :create
 validates :edad, :inclusion => 10..150
 

 #validates :edad, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 150}


#  validates_inclusion_of :edad, :in => 10..150
end  
