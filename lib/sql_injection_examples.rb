module SqlInjectionExamples
  BOBBY_TABLES = "Robert'); DROP TABLE students;--"
  SALLY_WHERE = "sally') OR 1;--"
  SALLY_UPDATE = "sally' OR 1;--"

  def alright
    Student.where("name = '#{BOBBY_TABLES}'")
  end

  def where_all
    Student.where("name = '#{SALLY_WHERE}'")
  end

  def all_jev
    Student.update_all("name = 'jev' WHERE name = '#{SALLY_UPDATE}'")
  end
end
