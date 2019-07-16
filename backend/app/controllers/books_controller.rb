class BooksController < ApplicationController

    def books_index
        token = ENV['GOOGLE_BOOKS_TOKEN']
        response = RestClient.get "https://www.googleapis.com/books/v1/volumes?q=time&printType=books&key=#{token}"
        render json: JSON.parse(response)['items']
        
        
    end 

    def books_search
        token = ENV['GOOGLE_BOOKS_TOKEN']
        response = RestClient.get "https://www.googleapis.com/books/v1/volumes?q=#{search_term}&printType=books&key=#{token}"
        render json: JSON.parse(response)['items']
    end 

end
