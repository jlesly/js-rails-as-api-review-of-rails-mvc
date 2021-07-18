# Add code from Readme
class BirdController < ApplicationController
    def index  
        @birds = Bird.all 
    end 
end 
