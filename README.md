# Gamma - a CLI game manager
Gamma is a simple Linux tool for managing games you've downloaded from the web and left floating around in your downloads folder.
## Features
### Importing games
Gamma is (or will be) capable of automatically unzipping folders into its own directory and making game executables launchable, keeping everything clean.
You can also link already-installed games, making it easier to keep track of them.
### Starting games
Gamma creates launch scripts for each game, which are customizable and editable, making automated launching much easier. It also automatically detects .exe files and launches them with Proton or Wine.
### Managing games, tags
You can add, remove, and search tags for each game, making organizing them easier. It's super easy to rename and delete games, and it's also capable of adding games automatically to PATH.
#### Will be added in the future
I plan to add a time tracking system to Gamma—tracking playtime, sessions, or even sending push notifications after long play sessions.
## Why not just use the app of itch.io
First of all, Gamma isn't just for downloaded itch.io games. Thanks to the script system, it's really easy to write bash scripts that run before starting a game, making it possible to launch games that otherwise couldn't be started (for example, TLauncher needs a Java command to start).
Second, sometimes it's easier to just start something from the already open shell without needing to sign in to your account or anything. Also, in my opinion, it's easier to search for games in a clean environment like the shell.
## Troubleshooting
Since the project is currently unusable, there's no point in writing detailed troubleshooting steps, but there's already a major issue worth mentioning.
Because of the commonly used name I chose for the project, it may conflict with other packages—for example, a test program from mesa-demos under the exact same name.
I recommend using aliases to work around this problem. The name of the project may be changed in the future.
