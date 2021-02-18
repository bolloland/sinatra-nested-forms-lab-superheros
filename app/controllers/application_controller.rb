require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

        get '/' do
            erb :super_hero
        end

        post '/teams' do
            binding.pry
            #why won't pry work?
            #how the hell do I get this without params working?
            #where's the model?!?1
            @team_name = params[:team][:name]
            @team_motto = params[:team][:motto]
            @my_hero_name = []
            @my_hero_power = []
            @my_hero_bio = []
            @team_members = params[:team][:members]
            @team_members.each do |h|
              @my_hero_name << h[:name]
              @my_hero_power << h[:power]
              @my_hero_bio << h[:bio]
            end
            erb :team
        end

end
