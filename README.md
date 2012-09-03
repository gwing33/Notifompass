# Notifompass

I took the [Compass-Growl](https://github.com/Compass/compass-growl) gem and modified it to work with the [terminal-notifier](https://github.com/alloy/terminal-notifier).

In the Compass <code>config.rb</code> I just added this...

<pre><code>begin
	require "notifompass"
rescue
	puts "Whoops."
end</code></pre>