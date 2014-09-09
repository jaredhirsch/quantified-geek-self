Applescript is a funny, weird little language.

Every mac has the 'Applescript editor' built in, just search for it. That editor has a crucially important help application, which shows you all the available commands for every installed application on your mac, including built-in system apps.

By default, the Applescript editor saves scripts in the compiled format, with file ending `.scpt`.

What we want is source code. You can do this from the editor by exporting the script as text, and then it's saved as a file with extension `.applescript`.

I'm only keeping source code, not compiled bits, in the repo.

Can you run the uncompiled source? Yeah, and to make life even easier, you can add an osascript hashbang at the start of the file and just run it like any other shell script.
