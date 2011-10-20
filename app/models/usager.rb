class Usager < ActiveRecord::Base
validates :sexe, :presence => true
validates :tranche_age, :presence => true
validates :niv_formation, :presence => true
validates :situation, :presence => true
validates :ville_id, :presence => true
validates :domaine, :presence => true
validates :service, :presence => true

belongs_to :ville
end
