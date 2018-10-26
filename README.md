# Clockinout
## I have created a Heroku app [here](https://clockinout.herokuapp.com/)

### A few small notes:
- I created the app using the latest version of Ruby on Rails.
- I quickly added a little aesthetic sugar with Bootstrap, it was the only other Gem I used outside of the default ones.
- I considered modifying the devise gem to work as a time clock or building a Teacher model with a login from the ground up, that way clock in events would be registered to a particular teacher simplifying other features you might want in the future. However this seemed to be outside the parameters of the assignment.
### Updates:
- at first I considered adding a search function, but ran into problems as to where to actually put it. I considered making it a part of the update method in the teachers controller but then realized where would I actually put the search bar? Could it go on the new page if it was part of the update method? Usually an update method is accessed through the show function which, in turn, is usually accessed through the index. If I added the search-by-name via this route that would then use update_attribute to clock out, it wouldn't make sense because we would already have access to that particular object.
- I then realized that the aforementioned system could actually work but there were some foreseeable problems, anyone could update anyone elses shift and log them out.
- I decided to test out whether I could just have the update/search function available on a page I created called clockout.html.erb.
- I realized that I could avoid updating the wrong event with an analogous name by adding a second condition that tested for the clock_out type.
- attempted a helper method to update the clockout attributes from the index view but couldn't figure out how to pass the @teacher variable to the method to update its attributes.
- I think there are two easier ways to do this:
  - #1: from the index make the clock ins links that then take you to the show and have a button that clocks you out and updates the event
  - #2: create a new teacher model that functions like a user with a log in and then create a clock in model and a clock out model and create a one-to-many association between the teacher model and the clock in/clock out models.
  - I have created the first way in a branch called clockout-method-1
    - Here I have also added shift length by utilizing a helper method called shift length that can be called in the index that calculates the duration of the shift in hours.
    - the problem I see with this method is it is kind of long winded and redundant; the user has to go to the log and then click the punch out button next to their name, their is also no way to validate if the person clocking out is the person who clocked in. 
