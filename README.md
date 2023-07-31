
# 7/26/23

working through https://railsandhotwirecodex.com/assets/the_rails_and_hotwire_codex_preview_v1_0_2.pdf

the setup:

```
rails new piazza -j esbuild --css bulma -a propshaft -d postgresql
```

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

small progress, coffee shop is closing so I gotta bounce.

# 7/28/23 

humming along. Wrote specs for the user, validations. Ran into an xcode select issue, easily fixed with:

```shell
# https://stackoverflow.com/questions/52522565/git-is-not-working-after-macos-update-xcrun-error-invalid-active-developer-p#comment93175770_53089103
xcode-select --reset
sudo xcode-select --reset
```

And this finishes 3.1. On to Internationalization and Localization!

Had issues getting yarn and JS happy. Ended up doing:

https://stackoverflow.com/questions/45237486/the-asset-application-js-is-not-present-in-the-asset-pipeline

```
# install esbuild, bulma
  718  ./bin/rails javascript:install:esbuild
  719  ./bin/rails css:install:bulma
  721  bin/dev # threw errors about hotwired/stimulus, added it to yarn
  722  yarn add @hotwired/stimulus 
  723  bin/dev
  724  yarn add @hotwired/turbo-rails
  725  bin/dev
  ```

# 07-30-23

Finished chapter three! One exercise to do now...

> Add a password confirmation field to the sign up form.
`has_secure_password` supports both a `password` and
`password_confirmation` parameter input and compares the two
before saving the record. This makes it trivial to add a password
confirmation field. 
> - [ ] Ensure a password mismatch error is shown to the
user if their passwords don’t match. 
> - [ ] Ensure you write a controller test for this as well.


https://piazza-web-l9ml.onrender.com/sign_up

eh, I give up. Couldn't make it work cleanly in the front-end, so not bothering adding it. I'll prob come back and update this at some point!

Some notes here: https://gist.github.com/josh-works/c46f8a6d929d25cb4c59807b851f77bb

