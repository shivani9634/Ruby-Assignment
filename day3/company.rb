class Company
  
  @@employee_count =0 
  @@employees = []

  def initialize(name, department)
    @name = name
    @department = department
    @@employee_count = @@employee_count +1
    @@employees << self
  end

  #instance method, public method(access specifier)
  def introduce
    puts "My name is #{@name}"
    puts "I am working in the #{@department}"
    salary
    puts "-----------------------------------------------------"
  end

  #class method
  def self.total_no_of_employees
    puts "Total number of employees #{@@employee_count}"
  end

  def self.details_of_all_employees
    @@employees.each do |employee|
      employee.introduce
    end
  end

  #getter
  def get_department
    @department
  end
  #setter
  def set_department
    @department = department
  end

  #private method (access specifier)
  private

  def salary
    puts "It is confidential"
  end
end

company_employee1 = Company.new("Shivani Poonia", "Development")
company_employee2 = Company.new("Pranali More", "HR")
company_employee3 = Company.new("Kunal Singh", "Marketing")
Company.details_of_all_employees
Company.total_no_of_employees

  
  
    
