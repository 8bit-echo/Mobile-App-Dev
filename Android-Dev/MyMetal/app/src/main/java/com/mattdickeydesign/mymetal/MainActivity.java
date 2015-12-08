package com.mattdickeydesign.mymetal;


import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.view.View;
import android.widget.ToggleButton;


public class MainActivity extends AppCompatActivity {

    public void updateChecks(View view) {


        Spinner genreSpinner = (Spinner) findViewById(R.id.genreSpinner);
        String chosenGenre = String.valueOf(genreSpinner.getSelectedItem());

        CheckBox check0 = (CheckBox) findViewById(R.id.checkBox0);
        CheckBox check1 = (CheckBox) findViewById(R.id.checkBox1);
        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);

////CHECKBOX LOGIC
        String[] hardcoreBands = getResources().getStringArray(R.array.hardcoreBands);
        String[] metalcoreBands = getResources().getStringArray(R.array.metalcoreBands);
        String[] deathcoreBands = getResources().getStringArray(R.array.deathcoreBands);
        String[] classicBands = getResources().getStringArray(R.array.classicBands);


        if (chosenGenre.contentEquals("Hardcore")) {
            check0.setText(hardcoreBands[0]);
            check1.setText(hardcoreBands[1]);
            check2.setText(hardcoreBands[2]);
            check3.setText(hardcoreBands[3]);
        } else if (chosenGenre.contentEquals("Metalcore")) {
            check0.setText(metalcoreBands[0]);
            check1.setText(metalcoreBands[1]);
            check2.setText(metalcoreBands[2]);
            check3.setText(metalcoreBands[3]);
        } else if (chosenGenre.contentEquals("Deathcore")) {
            check0.setText(deathcoreBands[0]);
            check1.setText(deathcoreBands[1]);
            check2.setText(deathcoreBands[2]);
            check3.setText(deathcoreBands[3]);
        } else if (chosenGenre.contentEquals("Classic")) {
            check0.setText(classicBands[0]);
            check1.setText(classicBands[1]);
            check2.setText(classicBands[2]);
            check3.setText(classicBands[3]);
        } else {
            System.out.println(" java ln 60 : Error occurred updating checkboxes");
        }
    }


    public void getMetal(View view) {

// GLOBAL VARIABLES
        EditText textField = (EditText) findViewById(R.id.nameTextField);
        String userName;
        userName = textField.getText().toString();

        ToggleButton toggleButton = (ToggleButton) findViewById(R.id.toggleButton);
        boolean preference = toggleButton.isChecked();
        String prefText;

        TextView sentence = (TextView) findViewById(R.id.textView);

        Spinner updatedSpinnerGenre = (Spinner) findViewById(R.id.genreSpinner);
        String spinnerString = updatedSpinnerGenre.getSelectedItem().toString();

        CheckBox check0 = (CheckBox) findViewById(R.id.checkBox0);
        CheckBox check1 = (CheckBox) findViewById(R.id.checkBox1);
        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);


// TOGGLE LOGIC
        if (preference) {
            prefText = " likes";
        } else {
            prefText = " doesn't like";
        }

// GET CHECKED CHECKBOX VALUES

        String bandExamples = "";
        boolean checked0 = check0.isChecked();
        boolean checked1 = check1.isChecked();
        boolean checked2 = check2.isChecked();
        boolean checked3 = check3.isChecked();

        if (checked0) {
            bandExamples += check0.getText().toString() + ", ";
        }
        if (checked1) {
            bandExamples += check1.getText().toString() + ", ";
        }
        if (checked2) {
            bandExamples += check2.getText().toString() + ", ";
        }
        if (checked3) {
            bandExamples += check3.getText().toString() + ".";
        }


//SET TEXT FOR SENTENCE
        sentence.setText(userName + " " + prefText + " " + spinnerString + " metal. This includes bands like: " + bandExamples);

//CHANGE THE IMAGE VIEW
        ImageView metalHandView = (ImageView) findViewById(R.id.image);
        metalHandView.setImageResource(R.drawable.hand);


    }




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
