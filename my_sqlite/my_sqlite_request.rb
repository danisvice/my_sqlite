require 'csv'

class MySqliteRequest
  attr_reader :table, :columns, :where, :join, :orders, :inserts, :insert_data, :updates, :update_data, :deletes

  def initialize
    @table = nil
    @columns = nil
    @where = []
    @join = nil
    @orders = nil
    @inserts = nil
    @insert_data = {}
    @updates = nil
    @update_data = nil
    @deletes = nil
  end

  def self.insert(table)
    new.tap { |request| request.instance_eval { @inserts = table } }
  end

  def self.from(table)
    new.tap { |request| request.instance_eval { @table = table } }
  end

  def self.update(table)
    new.tap{ |requst| request.instance_eval { @updates = table } }
  end

  def from(table)
    @table = table
    self
  end

  def select(*columns)
    @columns = columns
    self
  end

  def where(column, criteria)
    @where << [column, criteria]
    self
  end

  def join(column1, table2, column2)
    @join = [column1, table2, column2]
    self
  end

  def order(order, column)
    @orders = [order, column]
    self
  end

  def insert(table)
    @inserts = table
    self
  end

  def values(data)
    @insert_data = data
    self
  end

  def update(table)
    @updates = table
    self
  end

  def set(data)
    @update_data = data
    self
  end

  def delete
    @deletes = true
    self
  end

  def run
    rows = read_csv
  
    if @inserts
      rows << @insert_data 
    elsif @updates
      rows.each do |row|  
        @update_data.each do |key, value|
          row[key] = value  
        end
      end
    end
  
    if @where.any?
      rows.select! do |row|
        @where.all? do |column, criteria|
          row[column] == criteria  
        end
      end
    end
  
    if @join
      join_rows = read_csv(@join[1])
      rows = perform_join(rows, join_rows)
    end
    
    if @orders
      rows = order(rows) 
    end
  
    if @columns
      rows = project(rows) 
    end
  
    if @deletes
      rows.clear
    end
  
    rows 
  end
 
  private 

  def read_csv
    csv_file_path = "#{table}.csv"
    return [] unless File.exists?(csv_file_path)
    CSV.read(csv_file_path, headers: true).map(&:to_h)
  end

end