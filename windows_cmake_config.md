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


#### References:
     * https://stackoverflow.com/questions/51509173/how-can-i-make-cmake-use-mingw-w64-gcc-g
     *
