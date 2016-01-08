package com.mattdickeydesign.whattowatch;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Spinner;

import java.util.Random;

public class MainActivity extends AppCompatActivity {


    public void getLinks(View view) throws InterruptedException {

        Spinner genreSpinner = (Spinner) findViewById(R.id.spinner);
        String suggestedGenre = String.valueOf(genreSpinner.getSelectedItem());

        //Get the String value of the Spinner as a String
        System.out.println(suggestedGenre + " IS THE SELECTED GENERE IN MAIN ACTIVITY");

        NetflixMovie actionMovie1 = new NetflixMovie("http://www.rottentomatoes.com/m/inglourious_basterds", "action", 1);
        actionMovie1.new Title().execute();
        String fetchedMovieTitle = actionMovie1.movieTitle;

        //Set up the new Intent
        Intent intent = new Intent(getApplicationContext(), MovieListActivity.class);

        //Pass the Genre name
        intent.putExtra("movieGenre", suggestedGenre);
        intent.putExtra("fetchedMovieTitle", fetchedMovieTitle);

        startActivity(intent);


        System.out.println("getLinks() has finished runnning and has fetched " + fetchedMovieTitle);
    }


    public void randomizeSelection(View view){

        //Get the Array of Genres from XML
        String[] genreArray = getResources().getStringArray(R.array.genres);
        int numberOfGenres = genreArray.length;

        //Randomly select a number based on number of Genres in the list
        int randomIndex = createRandomNumber(0, numberOfGenres);
        System.out.println(randomIndex + " has been chosen as the random number in MainActivity.randomizeSelection()");

        //Assign the random number to the index corresponding to a genre name
        String randomGenre = genreArray[1];

        //Pass the Genre name
        Intent intent = new Intent(getApplicationContext(), MovieListActivity.class);
        intent.putExtra("movieGenre", randomGenre);

        startActivity(intent);
    }
//Random number generator engine
    public static int createRandomNumber(int min, int max) {

        Random random = new Random();

        int randomNumber = random.nextInt((max - min) + 1) + min;

        return randomNumber;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

}
