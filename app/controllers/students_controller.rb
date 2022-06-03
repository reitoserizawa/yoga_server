class StudentsController < ApplicationController
    
    get '/students' do 
        students = Student.all.to_json
    end

    get '/students/:id' do 
        student = Student.find(params[:id]).to_json
    end

end