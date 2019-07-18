require 'csv'

class User < ApplicationRecord

  def self.import_data file
    columns = [ :name, :date, :number, :description ]
    values = []
    CSV.foreach(file.path, headers: true) do |row|
      values << [row[0], row[1], row[2], row[3]]  
    end
    User.import columns, values, validate: false

  end 
end
