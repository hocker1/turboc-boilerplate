# turboc-boilerplate
Empty TurboC project with MAKEFILE to start real projects on.

## Start Your project

1. Locate Your TurboC installation - ex. `C:\dosroot\turboc`.
2. Copy contents of this boiler plate to somewhere like `C:\dosroot\projects\myfirst`.
3. Make copy of `MAKEFILE.LOC.template` named `MAKEFILE.LOC`.
4. Edit `MAKEFILE.LOC` to set Your local paths used in `MAKEFILE`.
5. Edit `MAKEFILE` to match Your needs - compiler options, memory models etc.
5. You may edit the `compile.bat`, which makes compiling and running Your project in DOSbox lot easier.

## Add new source files

1. Create Your new `*.c` file somewhere in the `src` directory (or wherever else You wish).
2. Make sure that the filename is unique among all other used source files.
3. Add the file to `OBJS` in `MAKEFILE`.
4. If You introduced a new source directory, add new rule to `MAKEFILE`:
  ```sh
  {src\test}.c.obj:
      $(CC) $(CFLAGS) -c $<
  ```

## Version Your project

Files to be versioned are:
* `MAKEFILE`
* `MAKEFILE.LOC.template` to show other developers what should their `MAKEFILE.LOC` look like.
* Your source files.

Files *not* to be versioned:
* `MAKEFILE.LOC` as it may differ from developer to developer to match their local environment.
* `compile.bat` as it is specific to every developer's DOSbox installation.
