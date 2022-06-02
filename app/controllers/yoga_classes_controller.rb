class YogaClassesController < ApplicationController
    require 'pry'
    #Get all Yoga Classes
    #Might need to work on this later to correctly filter by the time of the class
    get '/classes' do 
        yoga_classes = YogaClass.all
        yoga_classes.order(schedule_date: :asc, schedule_start_time: :desc).to_json
      end
  
      #Grab class by id
      get '/classes/:id' do 
          yoga_class = YogaClass.find(params[:id]).to_json
      end
  
      #Delete specific Yoga Class
      delete '/classes/:id' do 
          yoga_class = YogaClass.find(params[:id])
          yoga_class.destroy.to_json
      end
  
      #Post a new Yoga Class
      post '/classes' do 
          new_yoga_class = YogaClass.create( 
              yoga_type: params[:yoga_type],
              intensity: params[:intensity],
              schedule_date: params[:schedule_date], 
              schedule_start_time: params[:schedule_start_time], 
              class_length: params[:class_length],
              student_id: params[:student_id], 
              instructor_id: params[:instructor_id]
          ).to_json
      end


    #Wait to enable the patch until we know what features we want to edit
    #On the front end, make sure to prefill the edit fields with the information
    patch '/classes/:id' do 
        yoga_class = YogaClass.find(params[:id])
        yoga_class.update(
            yoga_type: params[:yoga_type],
              intensity: params[:intensity],
              schedule_date: params[:schedule_date], 
              schedule_start_time: params[:schedule_start_time], 
              class_length: params[:class_length],
              student_id: params[:student_id], 
              instructor_id: params[:instructor_id]
        ).to_json
    end
end