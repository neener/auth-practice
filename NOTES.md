# Step 1: Integrate Basic Theme into Asset Pipeline

[X] / - see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow people to CRUD leftovers.

[ ] LeftoversController
	#index
	- see all their leftovers
	- doubling as my #new action in that it is presenting the person with a form to create a new list
	/ - Index all the leftovers...
- create a leftover


- show a leftover

- i need a model
- i need a controller
- i should generate a resource

Does it impact the DB?
Does it impact my URLS? '/leftovers/1' 


# Step 3: Add Foodgroups to a Leftover

	- Make the foodgroups in a leftover real
		- a leftover has many foodgroups and every foodgroup belongs to a list

		leftovers

		foodgroups
		id		description		leftover_id

	CREATE ACTION for an FOODGROUP in a LEFTOVER - What is the URL / HTTP method for that?


	Does it impact the DB? - I probably need a foodgroups table - associated with a leftover

	Does it impact my URLS? '/leftovers/1' 

	



*User Authentication*

how does impact my db?

- a new model, user, email

what urls do I need

	get /users/new UserController#new
		-form
	post /users UserController#create
		- create the user in the db

	GET /login Sessions#new
		-form
	post /sessions Sessions#create
		- "log the user in" - whatever that means