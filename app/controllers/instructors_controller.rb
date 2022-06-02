class InstructorsController < ApplicationController

    #Get list of instructors
    get '/instructors' do 
        instructors = Instructor.all.to_json
    end

    #Get specific instructor information
    get '/instructors/:id' do 
        instructor = Instructor.find(params[:id]).to_json
    end

end