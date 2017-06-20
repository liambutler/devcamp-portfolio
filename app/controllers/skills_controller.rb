class SkillsController < ApplicationController

    def index
      @skills = Skill.all
    end

    def new
      @skill = Skill.new
    end

    def create
      @skill = Skill.new(params.require(:skill).permit(:title, :percent_utilized, :body))

      respond_to do |format|
        if @skill.save
          format.html { redirect_to skills_path, notice: 'Your skill item is now live.' }
        else
          format.html { render :new }
        end
      end
    end

    def edit
      @skill = Skill.find(params[:id])
    end

    def update
      @skill = Skill.find(params[:id])

      respond_to do |format|
        if @skill.update(params.require(:skill).permit(:title, :percent_utilized, :body))
          format.html { redirect_to skills_path, notice: 'Skill successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def show
      @skill = Skill.find(params[:id])
    end

    def destroy
      @skill = Skill.find(params[:id])

      @skill.destroy

      respond_to do |format|
        format.html { redirect_to skills_url, notice: 'Skill item was successfully destroyed.' }
      end
    end
end
