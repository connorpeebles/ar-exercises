class Employee < ActiveRecord::Base
  belongs_to :store
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  after_create :assign_random_password

  private

  def assign_random_password
    chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    password = ""

    8.times do
      rand_num = rand(62)
      password += chars[rand_num]
    end

    self.password = password
    self.save
  end
end
