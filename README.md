# render_with_abs (WIP)
Super lightweight A/B testing gem for building prototypes and running experiments in Rails apps (work in progress, not yet published).

## Usage
Use partials to represent different states you would like to test. For example, if you want to render a partial that contains a “Sign Up” button you would write:

    = render 'home/partials/button'
    
Folder structure:

    views
      | home
        | index.html.erb
        | partials
          | _button.html.erb
          
Using render_with_abs to run a quick and dirty A/B test:

    = render_with_abs 'home/partials/button'
    
Folder structure:

    views
      | home
        | index.html.erb
        | partials
          | _button_a.html.erb
          | _button_b.html.erb
          
render_with_abs will look for two partials, one called “button_a” and one called “button_b” and will split rendering between them 50/50. That’s it! Simple.

## Tracking
A/B testing without tracking is kind of pointless. render_with_abs is BYOT (Bring Your Own Tracking). Include your tracking code and ids in your partials. For example:

    _button_a.html.erb
    <button class="button" id="button_a">Sign up</button>
    
    _button_b.html.erb
    <button class="button" id="button_b">Sign up for free</button>
    
Now, configure your analytics software to track events attached to id="button_a" and id="button_b".

## License
MIT
