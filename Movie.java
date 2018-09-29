package ass.wsd;

import java.io.*;
import javax.xml.bind.annotation.*;

@XmlRootElement(name="movie")
@XmlAccessorType(XmlAccessType.FIELD)
public class Movie implements Serializable{
  @XmlAttribute(name = "title")
   private String title;
  @XmlAttribute(name = "genre")
   private String genre;
  @XmlAttribute(name = "date")
   private String date;
  @XmlAttribute(name = "price")
   private int price;
 @XmlAttribute(name = "stock")
   private int stock;

    public Movie() {
        super();
    }  

    public Movie(String title, String genre, String date, int price, int stock) {
        this.title = title;
        this.genre = genre;
        this.date = date;
        this.price = price;
        this.stock = stock;
    }
    
    public boolean matchAll(String title,String genre, String date){        
        return matchTitle(title)&&matchGenre(genre)&&matchDate(date);
    }
    
    public boolean matchAny(String title,String genre, String date){ 
        return matchTitle(title)||matchGenre(genre)||matchDate(date);
    }
    
    public boolean matchTitle(String title){
        return this.title.equals(title.toLowerCase().trim());
    }
    
    public boolean matchGenre(String genre){
        return this.genre.equalsIgnoreCase(genre.toLowerCase().trim());
    }
    
    public boolean matchDate(String date){
        return this.date.equalsIgnoreCase(genre.toLowerCase().trim());
    }
    
    public String getTitle() {
        return title;
    }

    public String getGenre() {
        return genre;
    }

    public String getDate() {
        return date;
    }
    
    public int getPrice() {
        return price;
    }
    
    public int getStock() {
        return stock;
    }
}
  



