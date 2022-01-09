Hello!

This is my very first bash script. It is a little semi-AI program that asks you questions and reacts to your replies. Give it a try! It's not perfect but it's my first! :)

### How to install

Clone this repo, cd into that folder and run this command in your terminal:
#### ./myfirstscript.sh
If everything is successful, you should see a greeting from the "bot" in the terminal. Answer its questions and check it out.

### In case you get a "permission denied" message

If you see this message:
#### zsh: permission denied: ./myfirstscript.sh
That simply means that you computer blocked the execution of the script. It's ok, mine did that too. Just a safety feature.
To fix it, you need to allow execution of the script on your machine. Run this in your terminal:
#### chmod +x myfirstscript.sh
This command will allow execution of the script and you only need to do it once (the very first time). After that, try
#### ./myfirstscript.sh
in your terminal again. Voila!
