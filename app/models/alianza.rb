class Alianza < ActiveRecord::Base
  attr_accessible :nombre, :state
  has_many :users
  AMIGA=1
  HOSTIL=2
  OTRO=3
  PROPIA=4
  def collect_states
    {"Amiga"=>AMIGA,"Hostil"=>HOSTIL,"Otro"=>OTRO,"Propia"=>PROPIA}
  end
  def state_string
    case self.state
    when AMIGA
      return"Amiga"
    when HOSTIL
      return"Hostil"
    when OTRO
      return "Otro"
    when PROPIA
      return "Propia"
    else
      return "No definido"
    end
  end
end
