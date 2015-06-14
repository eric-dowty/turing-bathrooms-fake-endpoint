class Bathroom 

  def self.statuses
    { 
      bathroom1: open?,
      bathroom2: open?,
      bathroom3: open?
    }
  end

  def self.open?
    rand(0..1)
  end

end