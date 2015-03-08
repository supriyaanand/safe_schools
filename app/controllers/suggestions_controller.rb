class SuggestionsController < ApplicationController
    def new
      @suggestion = Suggestion.new
    end

    def index
      @suggestions = Suggestion.all
    end

    def show
      @suggestion = Suggestion.find(params[:id])
    end

    def create
      @suggestion = Suggestion.new(suggestion_params)
      @suggestion.save
      flash[:success] = "Suggestion has been saved, thanks!"
      redirect_to suggestions_path
    end

    private
    def suggestion_params
      params.require(:suggestion).permit(:desc)
    end
end