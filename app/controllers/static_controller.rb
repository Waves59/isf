class StaticController < ApplicationController
    def index
        @intuitors = Intuitor.all
    end

  # GET /about
    def about

    end
end