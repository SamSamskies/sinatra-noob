class Coach
  @@database = ['sam', 'guillaume', 'rao']

  def self.all
    @@database
  end

  def self.create(attributes)
    @@database << attributes[:coach_name]
  end

  def self.find(id)
    @@database[id - 1]
  end
end