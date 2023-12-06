# IOS-HW2
This application will have 3 screens.
The first screen will have a “START” button. When the user taps on that button, application will navigate to the breed list screen. 
Breed list will come from the right and will be pushed to the navigation stack.
The second screen will list of dog breeds. For the API I used https://github.com/ElliottLandsborough/dog-ceo-api 
I used “/breeds/list” API call to list all the master breeds by name in a list. When the user taps on a list item, then the application will show a random picture of a breed in Screen 3 on a sheet. 
The third screen would be displayed on a sheet. I used “/breed/{breed}/images/random” API call to bring that image.
