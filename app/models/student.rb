class Student < ApplicationRecord
  def self.by_name(name)
    where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end
