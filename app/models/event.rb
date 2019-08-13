class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :administrator, class_name: "User"
  # validates :start_date, presence: true, inclusion: { in: (Date.today..Date.today+5.years) }
  # validates :duration, presence: true, confirmation :multiple_of_five
  # validates :title, presence: true, :length => { :in => 5..140 }
  # validates :price, presence: true, :greater_than: 0, less_than: 1001
  # validates :description, presence: true, :length => { :in => 20..1000 }
  # validates :location, presence: true

  # def multiple_of_five?
  #   (duration % 5)== 0
  # end
end
