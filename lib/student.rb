class Student
  
  attr_reader :id 
  attr_accessor :name,:grade
  
  def initialize(name, grade, id=nil)
    @name = name 
    @grade = grade 
    @id = id 
  end 
  
  def self.create_table
    sql = <<-SQL 
    CREATE TABLE IF NOT EXISTS students
    (id INTEGER PRIMARY KEY,
    name TEXT,grade INTEGER)
    SQL
  # Remember, you can access your database connection anywhere in this class
    DB[:conn].execute(sql)
  end 
  
  def self.drop_table
    sql = <<-SQL 
    DROP TABLE IF EXISTS students 
    SQL
  end 
  
end
