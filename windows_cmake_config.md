#### Configuring path and cmake for Windows
    * Download MinGW32 from the official site
    * Choose a path to download and save the path
    * on windows search for "settings" search bar
    * Type: "edit environment variables"
    * Go to "path" and add the path to there.
    * Otherwise create a new variable with the reference path then the
      variable is the new command.

    * Reopen the terminal cmd or anaconda prompt and check the path with "where gcc"
    * then for MinGW compile with cmake -G "MinGW Makefiles" .. after "cd build"

##### Runnning cmd with administrative priviledges
      * open cmd, then ctr + shift + enter

#### References:
     * https://stackoverflow.com/questions/51509173/how-can-i-make-cmake-use-mingw-w64-gcc-g
     * https://medium.com/@bhargav.chippada/how-to-setup-opengl-on-mingw-w64-in-windows-10-64-bits-b77f350cea7e
