require 'pg'
class Connection
  def self.setup(dbname)
    @connection = PG.connect(dbname: dbname)
  end

  def self.cleartable
    query('TRUNCATE cheets')
  end

  def self.query(query)
    @connection.exec(query)
  end
end
