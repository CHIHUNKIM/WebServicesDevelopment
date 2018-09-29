package ass.wsd;

import java.io.*;
import java.util.*;
import javax.xml.bind.annotation.*;

@XmlRootElement(name = "movies")
@XmlAccessorType(XmlAccessType.FIELD)
public class Movies implements Serializable{
    
    @XmlElementWrapper(name = "movies")
    @XmlElement(name = "movie")
    private ArrayList<Movie> movies = new ArrayList<>();

    public Movies() {
    }
    public ArrayList<Movie> getMovies() {
        return movies;
    }
    public void addMovie(Movie movie){
        movies.add(movie);
    }
    public void remove(Movie movie){
        movies.remove(movie);
    }
    public void addAll(ArrayList<Movie> list){
        this.movies.addAll(list);
    }
    public void removeAll(ArrayList<Movie> list){
        this.movies.removeAll(list);
    }
    public ArrayList<Movie> getMatches(String genre){
        ArrayList<Movie> matches = new ArrayList<>();
        for(Movie movie:movies)
            if(movie.matchTitle(genre))
                matches.add(movie);
        return matches;
    }
}




