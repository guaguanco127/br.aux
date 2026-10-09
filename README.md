# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.aux.1.2
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.aux.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.aux](https://github.com/guaguanco127/br.aux)  
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

## <a name="New12"></a>What's new in 1.2

- The [State outlet](#State) is now on the UI versions only (the ones with controls). It reports the controls, so moving them, numbers into the inlets and preset recalls all show up, with the same names and the same position as in 1.1.
- The plain versions (no UI) and the RNBO patch no longer have a State outlet: whatever drives them already knows the values. Their outlets are audio only again.

## <a name="New"></a>What's new in 1.1

- New [State outlet](#State): every abstraction and the RNBO patch now send `level -6.` out of their last outlet the moment it changes, so a display, Mira or another patch can follow along.
- The inlets and the audio outlets are unchanged. Only the file names move from 1.0 to 1.1.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.aux.1.2 | Stereo, no UI. The plain object to patch with |
| br.aux.ui.1.2 | Stereo, with a Level number box, ready for a [bpatcher] |
| br.aux.mono.1.2 | Mono, no UI |
| br.aux.mono.ui.1.2 | Mono, with the same Level box, ready for a [bpatcher] |
| _br.aux.example.1.2 | Example patch: open this first |

Each UI version contains its plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open a UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

**br.aux.1.2 (stereo)**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Level | Signal or Float (UI: Float only) | dB -72 to 6: -72 = silent, 0 = unity | -72 |

Outlets 1 / 2: Aux Left / Aux Right (Signal), to the effect  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

**br.aux.mono.1.2 (mono)**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | In | Signal | | |
| 2 | Level | Signal or Float (UI: Float only) | dB -72 to 6: -72 = silent, 0 = unity | -72 |

Outlet 1: Aux (Signal), to the effect  
Outlet 2 (UI version only): State (Message), see [State outlet](#State)

Both versions use the same code. In the UI versions a number into the Level inlet moves the number box, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of the UI versions (State) sends the current setting as a named message the moment it changes: `level -6.`. Use it to keep a display, Mira or another patch in sync. Pick it out by name with [route level], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| level | Float | dB, -72 to 6, -72 = silent |

The plain versions have no State outlet: whatever drives them already knows the values. The example patch has a State outlet tab that shows this.
