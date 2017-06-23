class Student < ApplicationRecord
  def self.search(support)
    if support.present?
      where(["support LIKE ?", support])
    else
      all
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Student.create! row.to_hash
    end
  end
end
