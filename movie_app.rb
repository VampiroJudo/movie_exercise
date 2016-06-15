

require("imdb")

def the_search (movie) 
	Imdb::Search.new(movie).movies[0]

end

 movie_results = [ ]

      	
       	movies_array =  File.read('movies.txt').split("\n")
       	movies_array.each do |film|
       		movie_results.push(the_search(film))
       	end

#




counter = 10
   while counter > 0 do
    	graph = "" 

 	movie_results.each do |movie|
 		if movie.rating >= counter 
 			graph += "|#"
 		else graph += "| "
		end
	  end
 		counter -= 1
 			puts graph
 end
         puts " 1" " 2" " 3" " 4" " 5" " 6" " 7"

         puts "\n"

        movies_array.each_with_index  { |movie_name, index|
        	puts "#{index+1} #{movie_name}"}
        

