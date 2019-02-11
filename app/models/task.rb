class Task < ApplicationRecord

  def self.today
      Task.where("date = '#{Date.today}'")
  end

  def self.tomorrow
      Task.where("date = '#{Date.tomorrow}'")
  end

  def self.late
      Task.where("date < ?", Date.today)
  end

end
