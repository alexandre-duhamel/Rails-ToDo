class Task < ApplicationRecord

  validates :nom, :date, presence: true
  validates_format_of :date, :with => /\d{4}\-\d{2}\-\d{2}/, allow_blank: true, message: :myformat

  def self.today
      Task.where("date = '#{Date.today}'")
  end

  def self.tomorrow
      Task.where("date = '#{Date.tomorrow}'")
  end

  def self.late
      Task.where("date < ?", Date.today)
  end

  def self.validate
      Task.set("complete", true)
  end

end
