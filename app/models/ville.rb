class Ville < ActiveRecord::Base
validates :code_postal, :presence => true
validates :nom, :presence => true
has_many :usagers
end
