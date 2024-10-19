# Destiny

## Our Goal

In this challenge, you will be building a choose your own adventure game. In the process, you should apply your knowledge from the last section (Quiz) to use Dart OOP principles to build a well organised project.

## Demo
<img src="https://github.com/Aalem/destiny_starting_project/blob/master/destini_gif.gif" alt="GIF" style="width:300px;"/>

# Steps
Step 1 - Add a linear gradient background to the container, using the decoration property which takes a BoxDecoration. You can use Grey (shade 300), Pink (shade 900), and Deep Purple colors.

Step 2 - Create a new class called Story.

Step 3 - Create 3 properties for this class:
A. storyTitle to store the story text.
B. choice1 to store the text for choice 1.
C. choice2 to store the text for choice 2.

Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.

Step 5 - Create a new class called StoryBrain.

Step 6 - Import the story.dart file into this file.

Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

Step 9 - Create a new storyBrain object from the StoryBrain class.

Step 10 - Use the storyBrain to get the first story title and display it in this Text Widget.

Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

Step 13 - Use the storyBrain to get the text for choice 1.

Step 14 - Use the storyBrain to get the text for choice 2.

Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.

Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.

Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

Step 21 - Using the story plan, update nextStory to change the storyNumber depending on the choice made by the user.

When user is on story0 and they choose choice1, the story should progress to story2.
Step 22 - In nextStory(), if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

Step 23 - Use the storyNumber property inside getStory(), getChoice1(), and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons. (What code should you use to see changes live?)

Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

Step 26 - Use a Flutter Visibility Widget to wrap this TextButton.

Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.

Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in storyBrain.

Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps.

Step 30 -
A. Use textDirection to display the text in a Right to Left direction.
B. Use textDirection to display the text in a Right to Left direction.

Step 31 -
A. Use the shape property with RoundedRectangleBorder to give the text a rounded corner of 22 points.
B. Use the shape property with RoundedRectangleBorder to give the text a rounded corner of 22 points.