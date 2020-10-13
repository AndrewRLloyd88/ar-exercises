class Store < ActiveRecord::Base
#1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
  has_many :employees

  # * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  # * Stores must always have a name that is a minimum of 3 characters
  # * Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validate :apparel

  # * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)
  def apparel
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:mens_apparel, "at least one kind of apparel must be carried")
    end
  end
end
