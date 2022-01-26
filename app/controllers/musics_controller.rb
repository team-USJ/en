class MusicsController < ApplicationController
    def groups
        @groups = Group.where(category_id: Category.find_by(name: "音楽").id)
    end
    
    def new
        @music = Music.new
    end
    
    def create
        @music = Music.new(music_params)
        @music.category_id = Category.find_by(name: "音楽").id
        if @music.save
            redirect_to groups_path
        else
            render :new
        end
    end
    
    private
    def music_params
        params.require(:music).permit(:artist)
    end
    
end
