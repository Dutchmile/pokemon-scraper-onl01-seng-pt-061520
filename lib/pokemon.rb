 # DB = {:conn => SQLite3::Database.new("db/pokemon.db")}
class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  
  def initialize(id:, name:, type:, db:)
      @id = id
      @name = name
      @type = type
      @db = db
    end
  
  def self.save(name, type, db)
    db.executeINSERT INTO pokemon (name, type) VALUES (?, ?)
  end
end