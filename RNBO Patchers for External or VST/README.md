# Max/MSP RNBO Patch for External Creation: br.aux.rnbo.1.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.aux.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.aux](https://github.com/guaguanco127/br.aux)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  

## <a name="About"></a>About

A minimal aux send for parallel effects. br.aux outputs a copy of its input at the Level you set, for an effect. Keep the dry signal on its own path and add the effect's output to it with [+~]: the dry sound stays at full level and Level sets how much effect you hear, like an aux knob on a mixer. Level glides, so turning it never clicks. Stereo and mono versions. Works at any sample rate.

Inside [rnbo~], Level is a param, and inlet 3 sets the same param, so the external has the same three inlets and two outlets as the stereo abstraction: L, R, Level / Aux L, Aux R. The gen~ code inside is the same as br.aux.1.2, so you can also copy it into your own RNBO patches as a click-free send level. To try it, drop a sample into the [playlist~]: one meter plays the dry signal, the other the aux copy.

There is no State output (as of 1.2): whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.aux.rnbo.1.2.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.aux.1.2~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.aux.1.2, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.aux.1.2~ in any patch. It has the same inlets as the stereo abstraction (L, R, Level), except that Level takes numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can export this patch as a VST3 or AU plugin, but in a DAW use the built-in sends instead. Inserted on a track, this plugin would replace the track's sound with the copy at the Level setting, which is just a volume knob. This patch is for building a Max external, or for reusing the code in your own RNBO patches.
