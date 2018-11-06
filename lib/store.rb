class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens
  before_destroy :cant_delete_store_with_employees

  private

  def must_carry_mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must carry mens or womens apparel")
      errors.add(:womens_apparel, "must carry mens or womens apparel")
    end
  end

  def cant_delete_store_with_employees
    store_employees = Employee.where(store: self.id)

    if store_employees.size > 0
      errors.add(:base, "Cannot delete a store with employees")
      throw :abort
    end
  end
end
