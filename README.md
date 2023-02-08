# GeoLearn

### Table of Contents:
1. [About The Project](#about)
2. [Programming Language Use](#programming-language)
3. [Goal](#goal)
4. [Possible Improvements](#improvements)

<a name="about"></a>
_____________________________________

## About The Project

This is a Master-2 engineering school project at [ESME Sudria](https://www.esme.fr) for the [major of Embedded Systems](https://www.esme.fr/formation-ingenieur/ingenieur-innovation/#systmes-embarqus).





<a name="programming-language"></a>
_____________________________________

## Programming Language Use

For this project, we used a programming language which can be able to make mobile applications. We decided to choose Flutter-Dart. As Kotlin, Swift and Java, Flutter is able to make mobile applications and the major advantage of this programming language is the possibility of creating an application usable for Android, iOS, Web or MacOS, Windows and iTV from a single source code (coded in Flutter so).





<a name="goal"></a>
_____________________________________

## Goal

The goal of this project was to create a mobile application allowing a lambda user to learn more and more about geography and all the themes that could be associated with it.

For this, we have created a random quiz generator so that the user can learn from himself on various questions (provided in a local database).
However, the user can also create his own quiz (from the list of questions provided) in order to challenge his colleagues and friends.


<ins>Currently, the application has 4 separate pages:</ins>
1. The HomePage:
This page contains the name and logo of the "Geo-Learn" application, a "Did you know it?" (automatically generated using results retrieval following ChatGPT queries - the ChatGPT request have a fixed structure, only the country and the theme of the "Did You Know it?" are random) as well as 3 buttons for navigating between the different other pages (Quizzes / Create and Send a Quizz / Receive a Quizz).
2. The QuizPage:
Whether following the recovery of a quiz by QR-Code or not, this page allows you to display the questions as you go along. Allowing to display questions containing images and others without. This page is linked to a logic in order to move from one question to another, to be able to count the score of the user and to have a display for his results.
3. The QuizCreationPage:
This page displays the questions of the local database and allows the user to choose or not the question which is proposed to him to add it to his personal Quiz. Once the quiz has been created, a button to display a QR-Code is displayed on the screen containing the information necessary to be able to read the quiz from another phone.
4. The QRScanningPage:
This page allows the user to retrieve a Quizz previously created using a QR-Code scanner. Once the questions and answers of the Quizz have been retrieved, the display is done using the QuizzPage.





<a name="improvements"></a>
_____________________________________

## Possible Improvements

There are plenty of ideas for possible improvements.

From a <ins>strictly technical point of view</ins>, it is possible to go very far still, such as for example:
1. Allow the user to create his own Quiz (create the question, choose the theme, choose a possible image from his photo gallery, define the wrong answers and THE only right answer).
2. Give the possibility to create a question using ChatGPT.
3. Thanks to the addition of an authentication, one could also imagine the creation of a working group where the Quizzes could be sent automatically to the other members of the group once created, allow to recover the notes and do data analysis.


From another point of view we can also <ins>set up other tools allowing the incusivity of a maximum of people</ins>. For example :
1. Add a "Contrast" mode allowing people with sight problems to use the application more easily.
2. Ditto for blind people, allowing Text-To-Speech and a function with a micro caption to know what the user wants to do.
3. The addition of class groups. One could imagine a teacher using the application in progress in order to be able to do small quizzes regularly in order to know if his class has understood the subject well or if it is necessary to repeat part of the lesson to re-explain it (thus allowing avoid digging into possible delays between his students and the program he has to tackle).


