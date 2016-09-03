# green-blue-monitor
a quick & dirty hack to display what environment is live in a green-blue deployment 
really nothing fancy. This could probably be done way nicer with a small python app on the webserver that polls the environment status instead of having a Jenkins job setting it.



jenkins = the nginx config for jenkins (added a context)

switch_to_<green|blue>.sh = an example script to switch from one environment to the other; 

toggle_site.sh = this script is called by jenkins constantly; it just copies the right html file into index.htm so nginx shows it to the user

green/blue = the html file you see in your browser
