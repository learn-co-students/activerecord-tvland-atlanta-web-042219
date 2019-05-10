class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(args)
    network = Network.create(args)
    self.network_id = network.id
    self.save
    network
  end
end