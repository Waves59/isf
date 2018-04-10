class StaticController < ApplicationController
    def index
        @intuitors = Intuitor.all
    end
end