class HomeController < ApplicationController
 skip_before_filter  :verify_authenticity_token
  def index
  end

  def submit
    name = params[:name]
    invite = params[:invite]
    attend = params[:attend]

    Guest.create('name'=>name, 'invites'=>invite, 'attend'=>attend)

  end

  def admin
    
    @guests = Guest.all

    @coming = 0
    @invitee = 0

    @guests.each do |guest|
    	if guest.attend
    		@coming += 1
    		if guest.invites
    			@invitee += 1
    		end
    	end
    end

  end
end
