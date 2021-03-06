#Tune System



It is a simple yet effective filterscript designed for Freeroam servers which allows you to tune a vehicle outside of mod shops. It currently does not support _Nitro_ or _Stereo_ and probably never will.

There are only 4 commands available at the moment which are:
- /paintjob - Shows a list with the available paintjobs supported for a specific vehicle and an option to unset (remove) the paintjob.
- /tune - Shows a list with all the available categories of components.
- /vcolor - Allows you to change the colors of your vehicle!
- /vcolorlist - Shows a list with all the available vehicle colors (both the existing colors from San Andreas and extended colors were added in 0.3x).



How to install:
---------------
- MySQL:
--------
1. Import the .sql file to your database.
2. Find the version (__R33 to R39-6__ or __R40+__) that matches the plugin version you've loaded into your server. Change the mysql configuration and save (compile) the filterscript as ___tune_system.pwn___
3. Open _server.cfg_ and add _tune_system_ in the __filterscripts__ line.

- SQLite:
---------
1. Import the .sql file to your database or paste tune_system.db into _scriptfiles_ folder.
2. Change the configuration (database name) if you import the .sql file to a different database name.
3. Save (compile) the filterscript as ___tune_system.pwn___
4. Open _server.cfg_ and add _tune_system_ in the __filterscripts__ line.



Important notes:
----------------
- It requires a vehicle spawner system at the very least.
- If the connection to the mysql server fails or the .db file (SQLite) couldn't be opened, it will try to unload the filterscript. Make sure the filterscript is named as _tune_system_.

- MySQL:
--------
  - Create a different database if you can. Using the same server and database will result in duplicate connections. You can allow them using:
```
mysql_option(DUPLICATE_CONNECTIONS, true);
```
for __R33__ to __R39-6__ versions or:
```
mysql_global_options(DUPLICATE_CONNECTIONS, true);
```
for __R40+__ versions of the mysql plugin. If you want to use only one connection for filterscripts and the gamemode (in __R40+__ versions), you'll need to disable __DUPLICATE_CONNECTION_WARNING__ to avoid a warning:
```
mysql_global_options(DUPLICATE_CONNECTION_WARNING, false);
```

- You can either use __Import__ tab in _phpMyAdmin_ or even _mysql console_ to import the .sql file.
- In case you get an error while trying to import the .sql file:
```mysql
Error

SQL query:

/*!40101 SET NAMES utf8mb4 */;

MySQL said: Documentation
#1115 - Unknown character set: 'utf8mb4'
```
indicates that you use an older version of the mysql server. It is always recommended to update but if you cannot/don't want to, replace ___character set___ as __'utf8'__.



Credits
-------
- BlueG & maddinat0r (MySQL plugin)
- Y_Less, Emmet_ & maddinat0r (sscanf plugin)
- Zeex (zcmd)
- iJumbo (Color list idea - it was based on one of his [post](http://forum.sa-mp.com/showpost.php?p=2579670&postcount=1011) in __Useful Snippets__ thread)
- oMa37 (testing)
