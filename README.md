# shell-scripting
👨🏻‍💻 Learning shell scripting.

## Problem 1
Create a cron job that will delete files from provided directory based on file type and that are older than specific time.

### Solution

Run:
```console
$ crontab -e
```

Put the following cron-job in editor that opens up. Might have to run "export EDITOR=nano" to change the editor.
```
* * * * * /Users/ankush.g/Desktop/abc.sh
```

To do the same while logging outputs and errors, enter the following: 
```
* * * * * /Users/ankush.g/Desktop/abc.sh >/tmp/stdout.log 2>/tmp/stderr.log
```

Create the "abc.sh" script file.
```
# touch -t 202003261422 refref

find /Users/ankush.g/Desktop/test/ -type f -name '*.txt' -newer /Users/ankush.g/Desktop/test/ref3 -exec rm {} \;
```

Do not forget to make the script file executable:
```console
$ chmod +x abc.sh
```