# Notifompass

I took the [Compass-Growl](https://github.com/Compass/compass-growl) gem and modified it to work with the [terminal-notifier](https://github.com/alloy/terminal-notifier).

In the Compass <code>config.rb</code> I just added this...

<pre><code>EXCEPTIONS = [StandardError, ScriptError]

begin
	require "notifompass"
rescue *EXCEPTIONS
	puts "You don't have notifompass gem installed."

	begin
		require "compass-growl"
	rescue *EXCEPTIONS
		puts "You don't have compass-growl installed either!"
	end
end</code></pre>