## SiteSeer README	

Siteseer is a web-based, lightweight, travel application that implements the Instagram API into the Ruby on Rails framework.

Technologies Used:

* Ruby version 2.2.1

* Bcrypt Authentication

* Instagram API & the Figaro Gem

* Google Maps API

* PostgreSQL Database

* HTML/ERB/CSS/Bootstrap

### Getting Started
First things first, you have to create an account. Don't worry about spam emails (or even using a real email address), the email/password is simply a method for authentication. After you create your account and log in, you will have access to the full SiteSeer app! Get started by creating a 'New Site'.

### Creating New Site & How it Works
What you enter into the first field ('Site Name') will be concatenated into a single string and then searched as a hashtag using the Instagram API, which returns the 20 most recent photos submitted with the entered Site name/hashtag. The second field ('Location') will use the Google Maps API to produce a static map of the inputted location! The other fields do not use APIs, they are simply inputted to the individual show view.

### My Sites & All Sites
Where the bulk of the CRUD functionality takes place! My Sites gives the current user access to all of the Sites they have created, as well as the capability to edit or remove their already created Sites.

All Sites allows the user to see ALL the created sites (that haven't yet been deleted) by ALL the Users. The view allows the user to see the name of the user that created the Site as well as the Site's show page, but the User cannot edit or remove Sites from the All Sites view. Remember, the Instagram API returns the 20 most recent photos every time the page is loaded, so if you create a Site one day, the pictures on the show view will change as more pictures are uploaded to Instagram (depending on the popularity of the hashtag).

### What's Next
* Implement social features. Eg. User Profile with profile pictures, information about the sites they've seen and the ones they want to see, custom pictures from their travels, etc.
* Add a date attribute to each Site so the User can see when they visited the specified location.