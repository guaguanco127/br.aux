# Max/MSP Abstraction: br.aux.1.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.aux.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.aux](https://github.com/guaguanco127/br.aux)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  

## <a name="About"></a>About

A minimal aux send for parallel effects. br.aux outputs a copy of its input at the Level you set, for an effect. Keep the dry signal on its own path and add the effect's output to it with [+~]: the dry sound stays at full level and Level sets how much effect you hear, like an aux knob on a mixer. Level glides, so turning it never clicks. Stereo and mono versions. Works at any sample rate.

**Uses:**  
**Parallel reverb or delay:** br.aux into a fully wet reverb, the reverb's output added to the dry signal.  
**Parallel distortion or compression:** keep the clean attack of the dry signal and blend in the processed copy.  
**Feeding several effects:** one br.aux per effect, each with its own Level.  

**Level:** -72 dB to +6 dB. -72 is true silence (the default, so nothing is sent until you turn it up), 0 is unity. Every change glides over 10 ms.

The effect's output can't go back into br.aux itself: Max would see a signal loop. Add it to the dry signal with [+~], or blend the two with [br.xfade](https://github.com/guaguanco127/br.xfade).

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.aux.1.2 | Stereo, no UI. The plain object to patch with |
| br.aux.ui.1.2 | Stereo, with a Level number box, ready for a [bpatcher] |
| br.aux.mono.1.2 | Mono, no UI |
| br.aux.mono.ui.1.2 | Mono, with the same Level box, ready for a [bpatcher] |
| _br.aux.example.1.2 | Example patch: open this first |

Each UI version contains its plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open a UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. Each UI version needs its plain version next to it (br.aux.ui.1.2 uses br.aux.1.2; br.aux.mono.ui.1.2 uses br.aux.mono.1.2).

3. In your patch, create an object called br.aux.1.2 (or br.aux.mono.1.2). For the version with controls, create a [bpatcher] and choose br.aux.ui.1.2.maxpat (or br.aux.mono.ui.1.2.maxpat) as its patcher.

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

Double-click the object to see inside it and study how it was built.
