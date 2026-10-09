{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            1160.0,
            330.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "br.aux.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "dependency_cache": [],
        "autosave": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.aux.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            },
            {
                "box": {
                    "id": "obj-in1",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left In (Signal)",
                    "fontsize": 12.0,
                    "fontname": "Arial",
                    "index": 0
                }
            },
            {
                "box": {
                    "id": "obj-in2",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right In (Signal)",
                    "fontsize": 12.0,
                    "fontname": "Arial",
                    "index": 1
                }
            },
            {
                "box": {
                    "id": "obj-in3",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Level (Signal/Float) dB -72. to 6. Level of the copy sent to the effect. -72 = silent, 0 = unity. Default -72",
                    "fontsize": 12.0,
                    "fontname": "Arial",
                    "index": 2
                }
            },
            {
                "box": {
                    "id": "obj-out1",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Aux Left (Signal) to the effect",
                    "fontsize": 12.0,
                    "fontname": "Arial",
                    "index": 0
                }
            },
            {
                "box": {
                    "id": "obj-out2",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        170.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Aux Right (Signal) to the effect",
                    "fontsize": 12.0,
                    "fontname": "Arial",
                    "index": 1
                }
            },
            {
                "box": {
                    "id": "obj-gen",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        110.0,
                        180.0,
                        22.0
                    ],
                    "text": "gen~ @title br.aux.1.2",
                    "fontsize": 12.0,
                    "fontname": "Arial",
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            100.0,
                            100.0,
                            1100.0,
                            760.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "dependency_cache": [],
                        "autosave": 0,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-gin1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        20.0,
                                        140.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment \"Left In (Signal)\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        170.0,
                                        20.0,
                                        140.0,
                                        22.0
                                    ],
                                    "text": "in 2 @comment \"Right In (Signal)\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gin3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        320.0,
                                        20.0,
                                        140.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment \"Level (Signal/Float) dB -72. to 6. Level of the copy sent to the effect. -72 = silent, 0 = unity. Default -72\" @default -72",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-code",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        70.0,
                                        640.0,
                                        520.0
                                    ],
                                    "parameter_enable": 0,
                                    "code": "// br.aux.1.2 -- aux send for parallel effects\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: the core, the UI by reference and the RNBO host embed this same code\n// in1/in2 audio L/R, in3 level dB -72..6\n// out1/out2 aux L/R\n// Outputs a copy of the input at the level, for an effect. Keep the dry signal on its own path\n// and add the effect's output to it with +~. -72 = true silence, 0 = unity.\n// The level glides over 10 ms in amplitude and lands exactly on its target, so turning it never clicks.\n\nHistory gs(0);\n\ng = gs;\nk = 1 - exp(-1 / max(1, mstosamps(10)));\ndb = clip(in3, -72, 6);\ngoal = (db > -72) ? dbtoa(db) : 0;\ng = g + (goal - g) * k;\n// within -120 dB of the target: land on it\nif (abs(goal - g) < 0.000001) {\n    g = goal;\n}\ngs = g;\n\nout1 = in1 * g;\nout2 = in2 * g;\n",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gout1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        20.0,
                                        610.0,
                                        140.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Aux Left (Signal) to the effect\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gout2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        170.0,
                                        610.0,
                                        140.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment \"Aux Right (Signal) to the effect\"",
                                    "fontsize": 12.0,
                                    "fontname": "Arial"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gin3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-code",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gout1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-code",
                                        1
                                    ],
                                    "destination": [
                                        "obj-gout2",
                                        0
                                    ]
                                }
                            }
                        ]
                    }
                }
            },
            {
                "box": {
                    "id": "obj-why",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270.0,
                        60.0,
                        360.0,
                        100.0
                    ],
                    "text": "Aux send for parallel effects: outputs a copy of the input at the Level (dB), for an effect. Keep the dry signal on its own path and add the effect's output to it with +~. Level starts at -72 (true silence) and glides over 10 ms, so it never clicks. No State outlet here: whatever drives the core already knows the values. The .ui version reports its controls.",
                    "fontsize": 12.0,
                    "fontname": "Arial"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            }
        ]
    }
}