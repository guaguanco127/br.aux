# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.aux.1.0
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.aux.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.aux](https://github.com/guaguanco127/br.aux)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.aux/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External](https://github.com/guaguanco127/br.aux/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or to reuse the code in your own RNBO patches (needs RNBO)  

## <a name="About"></a>About

A minimal aux send for parallel effects. br.aux outputs a copy of its input at the Level you set, for an effect. Keep the dry signal on its own path and add the effect's output to it with [+~]: the dry sound stays at full level and Level sets how much effect you hear, like an aux knob on a mixer. Level glides, so turning it never clicks. Stereo and mono versions. Works at any sample rate.

You can use it as an abstraction within Max/MSP. With RNBO you can also build your own Max external from the included RNBO patch (stereo).

**Uses:**  
**Parallel reverb or delay:** br.aux into a fully wet reverb, the reverb's output added to the dry signal.  
**Parallel distortion or compression:** keep the clean attack of the dry signal and blend in the processed copy.  
**Feeding several effects:** one br.aux per effect, each with its own Level.  

**Level:** -72 dB to +6 dB. -72 is true silence (the default, so nothing is sent until you turn it up), 0 is unity. Every change glides over 10 ms.

The effect's output can't go back into br.aux itself: Max would see a signal loop. Add it to the dry signal with [+~], or blend the two with [br.xfade](https://github.com/guaguanco127/br.xfade).

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.aux.1.0 | Stereo, no UI. The plain object to patch with |
| br.aux.ui.1.0 | Stereo, with a Level number box, ready for a [bpatcher] |
| br.aux.mono.1.0 | Mono, no UI |
| br.aux.mono.ui.1.0 | Mono, with the same Level box, ready for a [bpatcher] |
| _br.aux.example.1.0 | Example patch: open this first |

Each UI version contains its plain version and has the same inlets and outlets, so either swaps in without rewiring. Open a UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

**br.aux.1.0 (stereo)**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Level | Signal or Float (UI: Float only) | dB -72 to 6: -72 = silent, 0 = unity | -72 |

Outlets 1 / 2: Aux Left / Aux Right (Signal), to the effect

**br.aux.mono.1.0 (mono)**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | In | Signal | | |
| 2 | Level | Signal or Float (UI: Float only) | dB -72 to 6: -72 = silent, 0 = unity | -72 |

Outlet 1: Aux (Signal), to the effect

Both versions use the same code. In the UI versions a number into the Level inlet moves the number box, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.
