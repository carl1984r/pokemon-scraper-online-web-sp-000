class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
     Pokemon.new(id: id, name: pokemon[1], type: pokemon[2])
     binding.pry
  #  p_instance =
  #  p_instance.id = id
  #  p_instance.name = pokemon[1]
  #  p_instance.type = pokemon[2]
  #  p_instance
  end

end
