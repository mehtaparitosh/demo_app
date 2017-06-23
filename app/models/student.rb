class Student < ApplicationRecord
  def self.search(support)
    if support.present?
      where(["support LIKE ?", support])
    else
      all
    end
  end
end
