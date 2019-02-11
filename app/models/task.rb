class Task < ApplicationRecord

  validates :nom, presence: true
  validates_format_of :date, :with => /\d{4}\-\d{2}\-\d{2}/, :message => " must be in the following format: yyyy/mm/dd"

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
