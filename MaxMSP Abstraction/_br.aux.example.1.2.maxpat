{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            197.0,
            145.0,
            1160.0,
            620.0
        ],
        "description": "_br.aux.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        627.0,
                        45.0,
                        426.0,
                        33.0
                    ],
                    "text": "_br.aux.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        20.0
                    ],
                    "text": "br.aux"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        45.0,
                        560.0,
                        47.0
                    ],
                    "text": "An aux send for parallel effects: br.aux outputs a copy of the input at the Level (dB), for an effect. Keep the dry signal on its own path and add the effect's output to it with +~: the dry sound stays at full level and Level sets how much effect you hear."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        100.0,
                        463.0,
                        74.0
                    ],
                    "text": "Four files, same DSP inside:\nbr.aux.1.2 = stereo core, no UI (in: L, R, Level / out: Aux L, Aux R)\nbr.aux.mono.1.2 = mono core (in: In, Level / out: Aux)\nbr.aux.ui.1.2 / br.aux.mono.ui.1.2 = the same with a Level box, for bpatchers\nUI and core have the same inlets and audio outlets (the UI adds State last), so either drops in."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        185.0,
                        441.0,
                        33.0
                    ],
                    "text": "A: stereo UI, drum loop into a simple echo (tapin~/tapout~, fully wet), added to the dry loop with +~. Raise A's slider, then turn Level up."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        230.0,
                        365.0,
                        33.0
                    ],
                    "text": "B: mono core, Anton. Click 0 (unity) or -72 (off): the echo fades in or out over 10 ms, and the dry voice never changes."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        275.0,
                        431.0,
                        33.0
                    ],
                    "text": "The effect's output can't go back into br.aux itself (Max would see a signal loop), so add it to the dry signal with +~ (or blend with br.xfade)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        492.0,
                        408.0,
                        20.0
                    ],
                    "text": "Outputs start muted at -70 dB: turn on audio, then raise ONE slider slowly."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        530.0,
                        300.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            420.0,
                            260.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-note",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        15.0,
                                        330.0,
                                        33.0
                                    ],
                                    "text": "A = drum loop, B = Anton (both ship with Max), each on both sides."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        60.0,
                                        60.0,
                                        22.0
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        90.0,
                                        40.0,
                                        22.0
                                    ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        120.0,
                                        180.0,
                                        22.0
                                    ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        120.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        150.0,
                                        70.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "src-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210.0,
                                        150.0,
                                        70.0,
                                        22.0
                                    ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Source A (Signal) drum loop",
                                    "id": "src-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        190.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Source B (Signal) Anton",
                                    "id": "src-o2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        210.0,
                                        190.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "src-t",
                                        0
                                    ],
                                    "source": [
                                        "src-lb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-p1",
                                        0
                                    ],
                                    "source": [
                                        "src-m1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-p2",
                                        0
                                    ],
                                    "source": [
                                        "src-m2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-o1",
                                        0
                                    ],
                                    "source": [
                                        "src-p1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-o2",
                                        0
                                    ],
                                    "source": [
                                        "src-p2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-m1",
                                        0
                                    ],
                                    "source": [
                                        "src-t",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "src-m2",
                                        0
                                    ],
                                    "source": [
                                        "src-t",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        503.0,
                        116.0,
                        120.0,
                        22.0
                    ],
                    "text": "p sources"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        633.0,
                        232.0,
                        104.0,
                        20.0
                    ],
                    "text": "A: br.aux.ui.1.2"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.aux.ui.1.2.maxpat",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        573.0,
                        228.0,
                        58.0,
                        28.0
                    ],
                    "varname": "br.aux.ui.1.2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "tapL-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "tapconnect"
                    ],
                    "patching_rect": [
                        575.0,
                        288.0,
                        72.0,
                        22.0
                    ],
                    "text": "tapin~ 1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "tapL-out",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        575.0,
                        318.0,
                        75.0,
                        22.0
                    ],
                    "text": "tapout~ 300"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "tapR-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "tapconnect"
                    ],
                    "patching_rect": [
                        655.0,
                        288.0,
                        72.0,
                        22.0
                    ],
                    "text": "tapin~ 1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "tapR-out",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        655.0,
                        318.0,
                        75.0,
                        22.0
                    ],
                    "text": "tapout~ 450"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-tapnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        735.0,
                        288.0,
                        80.0,
                        20.0
                    ],
                    "text": "echo, wet"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-sumL",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        503.0,
                        364.0,
                        40.0,
                        22.0
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-sumR",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        573.0,
                        364.0,
                        40.0,
                        22.0
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        862.0,
                        90.0,
                        200.0,
                        20.0
                    ],
                    "text": "B: br.aux.mono.1.2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-m0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1007.0,
                        120.0,
                        30.0,
                        22.0
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-m72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        958.0,
                        116.0,
                        35.0,
                        22.0
                    ],
                    "text": "-72"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-mnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1014.0,
                        184.0,
                        80.0,
                        20.0
                    ],
                    "text": "Level dB"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        862.0,
                        155.0,
                        150.0,
                        22.0
                    ],
                    "text": "br.aux.mono.1.2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "tapB-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "tapconnect"
                    ],
                    "patching_rect": [
                        962.0,
                        256.0,
                        72.0,
                        22.0
                    ],
                    "text": "tapin~ 1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "tapB-out",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        962.0,
                        286.0,
                        75.0,
                        22.0
                    ],
                    "text": "tapout~ 375"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-sumB",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        939.0,
                        349.0,
                        40.0,
                        22.0
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        503.0,
                        424.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        939.0,
                        409.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        573.0,
                        424.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dacnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        603.0,
                        424.0,
                        75.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        503.0,
                        584.0,
                        72.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        318.0,
                        470.0,
                        47.0
                    ],
                    "text": "State outlet: each UI has a last outlet that sends level <dB> the moment a control changes. The cores have none: whatever drives a core already knows the values. Open [p State outlet] (also a tab at the top) to see it read by name with [route level]."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            0.0,
                            26.0,
                            1160.0,
                            594.0
                        ],
                        "showontab": 1,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from A (UI)",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        95.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        15.0,
                                        600.0,
                                        47.0
                                    ],
                                    "text": "Each br.aux UI sends its state out of its LAST outlet as named messages: level <dB>, the moment a control changes. Read them by NAME with [route level], never by position: names stay put when a tool gains controls."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        70.0,
                                        100.0,
                                        58.0,
                                        20.0
                                    ],
                                    "text": "A (UI)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        135.0,
                                        93.0,
                                        22.0
                                    ],
                                    "text": "route level"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        30.0,
                                        170.0,
                                        50.0,
                                        22.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        195.0,
                                        51.0,
                                        20.0
                                    ],
                                    "text": "level"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-4",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-5",
                                        0
                                    ],
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        722.0,
                        356.0,
                        128.0,
                        22.0
                    ],
                    "text": "p \"State outlet\""
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "midpoints": [
                        621.5,
                        262.8026123046875,
                        731.5,
                        262.8026123046875
                    ],
                    "source": [
                        "obj-a",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tapL-in",
                        0
                    ],
                    "source": [
                        "obj-a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tapR-in",
                        0
                    ],
                    "source": [
                        "obj-a",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tapB-in",
                        0
                    ],
                    "midpoints": [
                        871.5,
                        193.45297241210938,
                        971.5,
                        193.45297241210938
                    ],
                    "source": [
                        "obj-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-dactog",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "source": [
                        "obj-gaina",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-gaina",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "source": [
                        "obj-gainb",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-gainb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        1
                    ],
                    "source": [
                        "obj-m0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        1
                    ],
                    "source": [
                        "obj-m72",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-a",
                        1
                    ],
                    "order": 2,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-a",
                        0
                    ],
                    "order": 3,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-source",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sumB",
                        0
                    ],
                    "midpoints": [
                        613.5,
                        203.39486694335938,
                        948.5,
                        203.39486694335938
                    ],
                    "order": 0,
                    "source": [
                        "obj-source",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sumL",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sumR",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gainb",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-sumB",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gainb",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-sumB",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gaina",
                        0
                    ],
                    "source": [
                        "obj-sumL",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gaina",
                        1
                    ],
                    "source": [
                        "obj-sumR",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tapB-out",
                        0
                    ],
                    "source": [
                        "tapB-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sumB",
                        1
                    ],
                    "source": [
                        "tapB-out",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tapL-out",
                        0
                    ],
                    "source": [
                        "tapL-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sumL",
                        1
                    ],
                    "source": [
                        "tapL-out",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "tapR-out",
                        0
                    ],
                    "source": [
                        "tapR-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-sumR",
                        1
                    ],
                    "source": [
                        "tapR-out",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-a::obj-19": [
                "Level",
                "Level",
                0
            ],
            "obj-gaina": [
                "A out",
                "A",
                0
            ],
            "obj-gainb": [
                "B out",
                "B",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}