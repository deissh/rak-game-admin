class UserController < ApplicationController

    def login
        nick = params[:nick]

        if nick == nil
            render :json => { "status": "error", "message": "empty nickname" }
            return
        end

        selected = User.where(nickname: nick).take
        if selected == nil
            render :json => { "status": "error", "message": "not finded" }
            return
        end

        render :json => { "status": "ok", "user": selected }
    end
end
