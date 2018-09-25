class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true


    def create
      @author = Author.new(author_params)
      if @author.valid?
        @author.save
        redirect_to author_path(@author)
      else
        render :new
      end
    end
end
