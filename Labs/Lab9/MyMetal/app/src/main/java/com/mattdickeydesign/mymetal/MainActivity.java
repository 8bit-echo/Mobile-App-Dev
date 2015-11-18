package com.mattdickeydesign.mymetal;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.view.View;
import android.widget.ToggleButton;




public class MainActivity extends AppCompatActivity {


    public class SpinnerActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener {


        @Override
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            // code here

            String test =
        }

        @Override
        public void onNothingSelected(AdapterView<?> parent) {
            //code here for nothing selected
        }
    }

    Spinner genreSpinner = (Spinner) findViewById(R.id.genreSpinner);
    String chosenGenre = String.valueOf(genreSpinner.getSelectedItem());



    public void getMetal(View view) {

// GLOBAL VARIABLES
        EditText textField = (EditText) findViewById(R.id.nameTextField);
        String userName = textField.getText().toString();

        ToggleButton toggleButton = (ToggleButton) findViewById(R.id.toggleButton);
        boolean preference = toggleButton.isChecked();
        String prefText;

//        Spinner genreSpinner = (Spinner) findViewById(R.id.genreSpinner);
//        String chosenGenre = String.valueOf(genreSpinner.getSelectedItem());

        CheckBox check0 = (CheckBox) findViewById(R.id.checkBox0);
        CheckBox check1 = (CheckBox) findViewById(R.id.checkBox1);
        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);

        TextView sentence = (TextView) findViewById(R.id.textView);


// TOGGLE LOGIC
        if (preference) {
            prefText = " likes";
        } else {
            prefText = " doesn't like";
        }
//CHECKBOX LOGIC
        String[] metalGenres = getResources().getStringArray(R.array.genres);
        String[] hardcoreBands = getResources().getStringArray(R.array.hardcoreBands);
        String[] metalcoreBands = getResources().getStringArray(R.array.metalcoreBands);
        String[] deathcoreBands = getResources().getStringArray(R.array.deathcoreBands);
        String[] classicBands = getResources().getStringArray(R.array.classicBands);

        if (chosenGenre.contentEquals("Hardcore")) {
            check0.setText(hardcoreBands[0]);
        }else{
            System.out.println("you done fucked up, Dick");
        }

//SET TEXT FOR SENTENCE
        sentence.setText("");


    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
