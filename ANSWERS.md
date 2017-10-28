# Q0: Why is this error being thrown?
Pokemon model hasn't been made yet for the controller
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Seeding the database enables the pokemon to appear, and the common factor is that they have no trainer yet
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Capture_path(id: @pokemon) passes the pokemon ID to the capture method within the Pokemon Controller. Then, the pokemon ID can be updated and associated with the trainer.

# Question 3: What would you name your own Pokemon?
UCBMFET

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path, needed a trainer ID
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It shows error messages by passing the name through the model which contains the validations. Thus, the new name contains errors that will then be displayed.
# Give us feedback on the project and decal below!
It was kinda difficult but very interesting!
# Extra credit: Link your Heroku deployed app
