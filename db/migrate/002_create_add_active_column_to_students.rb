class CreateAddActiveColumnToStudents <  ActiveRecord::Migration
    def change # adds a column 'active' to the 'students' table, with a default value of false
        add_column :students, :active, :boolean, :default => false
    end
end