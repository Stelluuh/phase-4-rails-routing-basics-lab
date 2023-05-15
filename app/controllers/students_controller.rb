class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        s_order = students.order(grade: :desc)
        render json: s_order
    end

    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end

end
