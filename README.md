
# 7/26/23

working through https://railsandhotwirecodex.com/assets/the_rails_and_hotwire_codex_preview_v1_0_2.pdf

Just finished step 1.3.

I've now set up the Render stuff, finishing up at https://dashboard.render.com/blueprint/new.

I've got something up at https://piazza-web-l9ml.onrender.com/, but having issues deploying at the moment. I'll come back to this issue later - I have a few ideas of what it could be, it'll be easier to debug once I've made nearly any change to the default app.

Next... I need to install xcode, which requires me to update the operating system. From Catalina (current) to Ventura. Is that a city in California? 

upgraded OS, installed xcode. used a personal access token instead of gh password to get hub working, ptl: https://github.com/mislav/hub/issues/2655#issuecomment-735836048

https://github.com/josh-works/piazza-ios

on to the android app!

Downloading/installing Android Studio. (done)

finished setting up android app: https://github.com/josh-works/piazza-android/tree/main.

# 7/27/23

Finished the setup yesterday, read chapter two on Hotwire. 

I'd like to get a Rails app up and running and play with these tools at some point. I didn't make the changes the author explained in chapter 2, in my editor, but the shape of it makes sense.

Let's do chapter 3 today.

```shell
530  rails g model User name:string email:string:uniq password_digest:string
  531  rails g model Organization
  532  rails g model Membership user:references organization:references
  533  bin/rails db:migrate
```

OK, got to:

```
Listing 9. Model tests for name and email validation
(test/models/user_test.rb)
```

small progress, coffee shop is closing so I gotta bounce