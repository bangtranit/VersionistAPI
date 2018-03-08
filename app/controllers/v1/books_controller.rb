class V1::BooksController < V1::BaseController
	def index
		#@books = Book.where("title LIKE ?", "%Atlas%")
		books  = Book.all
  		render json: success_template(books, "Ok roi chu")
	end

	def create
		book = Book.new(book_params)
		
		if book.save
			render json: success_template(book, "Ok")
		else
			render json: error_template(book.errors)
		end
	end

	def show
		book = Book.find_by_id(params[:id])
		if book.present?
			render json: success_template(book, "Ok")
		else 
			render json: error_template("This book's not found")
		end
	end

	def update
		book = Book.find_by_id(params[:id])
		if book.present? && book.update(book_params)
			render json: success_template(book, "Update successfully")
		else
			render json: error_template("Update failed")
		end
		
	end

	def destroy
		book = Book.find_by_id(params[:id])
		if book.present? && book.destroy
			render json: success_message_template("Delete successfully")
		else
			render json: error_template("Delete failed")
		end
		
	end

	private
		def book_params
			params.permit(:title, :author, :weight, :publisher, :language, :pages, :publication_date)
		end
end
