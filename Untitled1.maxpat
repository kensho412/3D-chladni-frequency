{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 2283.0, 35.0, 960.0, 1194.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1074.75, 250.17, 44.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 928.0, 277.0, 80.0, 22.0 ],
                    "text": "loadmess 0.1"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 836.0, 277.0, 87.0, 22.0 ],
                    "text": "loadmess 100."
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 120.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 208.0, 100.0, 114.0, 22.0 ],
                                    "text": "mc.sig~ @chans 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 50.0, 332.0, 84.0, 22.0 ],
                                    "text": "mc.unpack~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 285.0, 92.0, 22.0 ],
                                    "text": "mc.mixdown~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 222.0, 40.0, 22.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 100.0, 114.0, 22.0 ],
                                    "text": "mc.sig~ @chans 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 50.0, 156.0, 126.0, 22.0 ],
                                    "text": "mc.cycle~ @chans 32"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-18",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-19",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 208.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 414.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 1 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 2007.0, 880.0, 90.0, 22.0 ],
                    "text": "p addictiveSine"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 857.5, 476.5899999999999, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 856.5, 546.5899999999999, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 952.5, 526.0, 78.0, 22.0 ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "code": "inlets = 1;\noutlets = 2;\n// outlet 0: gain list\n// outlet 1: freq list\n\nconst NUM_MODES = 32;\n\nlet smooth = 0.12;\nlet intervalMs = 16;\n\nlet targetGain = new Array(NUM_MODES).fill(0);\nlet targetFreq = new Array(NUM_MODES).fill(0);\n\nlet currentGain = new Array(NUM_MODES).fill(0);\nlet currentFreq = new Array(NUM_MODES).fill(0);\n\nlet gainScale = 10.0;\n\nlet task = new Task(tick, this);\ntask.interval = intervalMs;\ntask.repeat();\n\nfunction anything(...args) {\n    // expected:\n    // /0 gain freq Q weight\n    // /1 gain freq Q weight\n    // ...\n    let idxRaw = messagename;\n\n    if (typeof idxRaw === \"string\") {\n        idxRaw = idxRaw.replace(\"/\", \"\");\n    }\n\n    const i = Math.floor(Number(idxRaw));\n\n    if (Number.isNaN(i)) return;\n    if (i < 0 || i >= NUM_MODES) return;\n    if (args.length < 2) return;\n\n    const gain = Number(args[0]);\n    const freq = Number(args[1]);\n\n    targetGain[i] = Math.min(1.0, gain * gainScale);\n    targetFreq[i] = freq;\n}\n\nfunction tick() {\n    for (let i = 0; i < NUM_MODES; i++) {\n        currentGain[i] += (targetGain[i] - currentGain[i]) * smooth;\n        currentFreq[i] += (targetFreq[i] - currentFreq[i]) * smooth;\n    }\n\n    emit();\n}\n\nfunction emit() {\n    outlet(1, currentFreq);\n    outlet(0, currentGain);\n}\n\nfunction bang() {\n    emit();\n}\n\nfunction clear() {\n    for (let i = 0; i < NUM_MODES; i++) {\n        targetGain[i] = 0;\n        targetFreq[i] = 0;\n        currentGain[i] = 0;\n        currentFreq[i] = 0;\n    }\n\n    emit();\n}\n\nfunction setsmooth(v) {\n    smooth = Math.max(0.001, Math.min(1.0, Number(v)));\n}\n\nfunction setinterval(v) {\n    intervalMs = Math.max(1, Number(v));\n    task.interval = intervalMs;\n}\n\nfunction setgainscale(v) {\n    gainScale = Math.max(0.0, Number(v));\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 2007.0, 559.0, 489.0, 273.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 952.5, 905.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-345",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2431.0, 207.0, 88.0, 22.0 ],
                    "text": "prepend /QMin"
                }
            },
            {
                "box": {
                    "id": "obj-344",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2338.0, 207.0, 91.0, 22.0 ],
                    "text": "prepend /QMax"
                }
            },
            {
                "box": {
                    "id": "obj-342",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2431.0, 54.0, 51.0, 22.0 ],
                    "text": "r bwMin"
                }
            },
            {
                "box": {
                    "id": "obj-343",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2338.0, 54.0, 54.0, 22.0 ],
                    "text": "r bwMax"
                }
            },
            {
                "box": {
                    "id": "obj-341",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 921.0, 383.0, 53.0, 22.0 ],
                    "text": "s bwMin"
                }
            },
            {
                "box": {
                    "id": "obj-340",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 851.0, 383.0, 56.0, 22.0 ],
                    "text": "s bwMax"
                }
            },
            {
                "box": {
                    "id": "obj-334",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 867.0, 722.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-332",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 866.82, 791.2, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-330",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1109.5, 846.0, 76.0, 22.0 ],
                    "text": "receive~ inR"
                }
            },
            {
                "box": {
                    "id": "obj-331",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1011.5, 846.0, 74.0, 22.0 ],
                    "text": "receive~ inL"
                }
            },
            {
                "box": {
                    "id": "obj-329",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1269.0, 355.0, 63.0, 22.0 ],
                    "text": "send~ inR"
                }
            },
            {
                "box": {
                    "id": "obj-328",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1201.0, 355.0, 61.0, 22.0 ],
                    "text": "send~ inL"
                }
            },
            {
                "box": {
                    "id": "obj-327",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1050.5, 873.0, 78.0, 22.0 ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-326",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 952.5, 873.0, 78.0, 22.0 ],
                    "text": "selector~ 2 1"
                }
            },
            {
                "box": {
                    "id": "obj-323",
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1165.5, 284.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-320",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 768.0, 73.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-318",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 901.0, 341.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-316",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 836.0, 341.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-314",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 901.0, 430.0, 60.0, 22.0 ],
                    "text": "bwMin $1"
                }
            },
            {
                "box": {
                    "id": "obj-313",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 836.0, 430.0, 63.0, 22.0 ],
                    "text": "bwMax $1"
                }
            },
            {
                "box": {
                    "id": "obj-306",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 768.0, 151.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-304",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 768.0, 107.0, 119.0, 22.0 ],
                    "text": "metro 100 @active 1"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "ei_noise.aiff",
                                "filename": "ei_noise.aiff",
                                "filekind": "audiofile",
                                "id": "u768006402",
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-303",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 768.0, 189.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-292",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2243.0, 54.0, 60.0, 22.0 ],
                    "text": "rand~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-291",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2156.0, 54.0, 60.0, 22.0 ],
                    "text": "rand~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-290",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 2069.0, 54.0, 60.0, 22.0 ],
                    "text": "rand~ 0.5"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-279",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1090.0, 425.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-277",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1090.0, 463.0, 84.0, 22.0 ],
                    "text": "outputGain $1"
                }
            },
            {
                "box": {
                    "id": "obj-269",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1189.0, 654.0, 29.5, 22.0 ],
                    "text": "!- 1."
                }
            },
            {
                "box": {
                    "id": "obj-268",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1189.0, 561.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.5 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial",
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.dial",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-267",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1058.0, 759.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-266",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1058.0, 715.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-262",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2243.0, 160.0, 67.0, 22.0 ],
                    "text": "slide 10 10"
                }
            },
            {
                "box": {
                    "id": "obj-261",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2156.0, 160.0, 67.0, 22.0 ],
                    "text": "slide 10 10"
                }
            },
            {
                "box": {
                    "id": "obj-260",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 2069.0, 160.0, 67.0, 22.0 ],
                    "text": "slide 10 10"
                }
            },
            {
                "box": {
                    "id": "obj-259",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2069.0, 273.0, 138.0, 22.0 ],
                    "text": "udpsend 127.0.0.1 4900"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-258",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 2243.0, 108.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-257",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 2156.0, 108.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-254",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 2069.0, 108.0, 56.0, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-248",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2243.0, 207.0, 85.0, 22.0 ],
                    "text": "prepend /zpos"
                }
            },
            {
                "box": {
                    "id": "obj-247",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2156.0, 207.0, 85.0, 22.0 ],
                    "text": "prepend /ypos"
                }
            },
            {
                "box": {
                    "id": "obj-246",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 2069.0, 207.0, 85.0, 22.0 ],
                    "text": "prepend /xpos"
                }
            },
            {
                "box": {
                    "id": "obj-238",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1168.0, 715.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "channels": 1,
                    "id": "obj-224",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 982.0, 630.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-209",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 982.0, 778.0, 45.0, 22.0 ],
                    "text": "tanh~"
                }
            },
            {
                "box": {
                    "id": "obj-207",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1363.0, 277.0, 300.0, 100.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-181",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 952.5, 1068.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "buffername": "weightBuf",
                    "id": "obj-166",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 1756.0, 134.0, 256.0, 64.0 ]
                }
            },
            {
                "box": {
                    "buffername": "qBuf",
                    "id": "obj-165",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 1498.0, 134.0, 256.0, 64.0 ]
                }
            },
            {
                "box": {
                    "buffername": "freqBuf",
                    "id": "obj-164",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 1240.0, 134.0, 256.0, 64.0 ]
                }
            },
            {
                "box": {
                    "buffername": "gainBuf",
                    "id": "obj-163",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 982.0, 134.0, 256.0, 64.0 ]
                }
            },
            {
                "box": {
                    "code": "inlets = 1;\noutlets = 0;\n\nconst NUM_MODES = 32;\n\nlet gainBuf   = new Buffer(\"gainBuf\");\nlet freqBuf   = new Buffer(\"freqBuf\");\nlet qBuf      = new Buffer(\"qBuf\");\nlet weightBuf = new Buffer(\"weightBuf\");\n\n// smoothing係数\n// 小さいほど滑らか・遅い\nlet smooth = 0.12;\n\n// 書き込み周期 ms\nlet intervalMs = 16; // 約60fps\n\nlet targetGain   = new Array(NUM_MODES).fill(0);\nlet targetFreq   = new Array(NUM_MODES).fill(0);\nlet targetQ      = new Array(NUM_MODES).fill(0);\nlet targetWeight = new Array(NUM_MODES).fill(0);\n\nlet currentGain   = new Array(NUM_MODES).fill(0);\nlet currentFreq   = new Array(NUM_MODES).fill(0);\nlet currentQ      = new Array(NUM_MODES).fill(0);\nlet currentWeight = new Array(NUM_MODES).fill(0);\n\nlet task = new Task(tick, this);\ntask.interval = intervalMs;\ntask.repeat();\n\nfunction anything(...args) {\n    // selector が /0, /1, ... /31 として来る\n    let idxRaw = messagename;\n\n    if (typeof idxRaw === \"string\") {\n        idxRaw = idxRaw.replace(\"/\", \"\");\n    }\n\n    const i = Math.floor(Number(idxRaw));\n\n    if (Number.isNaN(i)) return;\n    if (i < 0 || i >= NUM_MODES) return;\n    if (args.length < 4) return;\n\n    let gainScale = 10.0;\n\n    targetGain[i] = Math.min(1.0, Number(args[0]) * gainScale);\n    targetFreq[i]   = Number(args[1]);\n    targetQ[i]      = Number(args[2]);\n    targetWeight[i] = Number(args[3]);\n}\n\nfunction tick() {\n    for (let i = 0; i < NUM_MODES; i++) {\n        currentGain[i]   += (targetGain[i]   - currentGain[i])   * smooth;\n        currentFreq[i]   += (targetFreq[i]   - currentFreq[i])   * smooth;\n        currentQ[i]      += (targetQ[i]      - currentQ[i])      * smooth;\n        currentWeight[i] += (targetWeight[i] - currentWeight[i]) * smooth;\n\n        gainBuf.poke(1, i, currentGain[i]);\n        freqBuf.poke(1, i, currentFreq[i]);\n        qBuf.poke(1, i, currentQ[i]);\n        weightBuf.poke(1, i, currentWeight[i]);\n    }\n}\n\nfunction clear() {\n    for (let i = 0; i < NUM_MODES; i++) {\n        targetGain[i] = 0;\n        targetFreq[i] = 0;\n        targetQ[i] = 0;\n        targetWeight[i] = 0;\n\n        currentGain[i] = 0;\n        currentFreq[i] = 0;\n        currentQ[i] = 0;\n        currentWeight[i] = 0;\n\n        gainBuf.poke(1, i, 0);\n        freqBuf.poke(1, i, 0);\n        qBuf.poke(1, i, 0);\n        weightBuf.poke(1, i, 0);\n    }\n}\n\n// 外から smooth 0.05 みたいに送れる\nfunction setsmooth(v) {\n    smooth = Math.max(0.001, Math.min(1.0, Number(v)));\n}\n\n// 外から setinterval 33 みたいに送れる\nfunction setinterval(v) {\n    intervalMs = Math.max(1, Number(v));\n    task.interval = intervalMs;\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-162",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1363.0, 559.0, 576.0, 273.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1363.0, 500.0, 73.0, 22.0 ],
                    "text": "route /mode"
                }
            },
            {
                "box": {
                    "id": "obj-489",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 106.0, 640.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 218.0, 297.0, 292.0, 22.0 ],
                                    "text": "zl join"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 218.0, 197.0, 292.0, 22.0 ],
                                    "text": "zl slice 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 218.0, 80.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 218.0, 384.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 218.0, 253.0, 145.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacyoutputorder": 1
                                    },
                                    "text": "regexp (/) @substitute \" /\""
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            }
                        ],
                        "bgcolor": [ 0.776470588235294, 0.776470588235294, 0.776470588235294, 1.0 ],
                        "editing_bgcolor": [ 0.776470588235294, 0.776470588235294, 0.776470588235294, 1.0 ]
                    },
                    "patching_rect": [ 1363.0, 454.0, 55.0, 22.0 ],
                    "saved_object_attributes": {
                        "editing_bgcolor": [ 0.776470588235294, 0.776470588235294, 0.776470588235294, 1.0 ],
                        "locked_bgcolor": [ 0.776470588235294, 0.776470588235294, 0.776470588235294, 1.0 ]
                    },
                    "text": "p divOsc"
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1756.0, 88.0, 227.0, 22.0 ],
                    "text": "buffer~ weightBuf @samps 32 @chans 1"
                }
            },
            {
                "box": {
                    "id": "obj-154",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1498.0, 88.0, 199.0, 22.0 ],
                    "text": "buffer~ qBuf @samps 32 @chans 1"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 1240.0, 88.0, 213.0, 22.0 ],
                    "text": "buffer~ freqBuf @samps 32 @chans 1"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 982.0, 88.0, 215.0, 22.0 ],
                    "text": "buffer~ gainBuf @samps 32 @chans 1"
                }
            },
            {
                "box": {
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 2465.0, 448.0, 1951.0, 739.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1188.0, 14.0, 133.0, 22.0 ],
                                    "text": "Param outputGain 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1026.0, 14.0, 90.0, 22.0 ],
                                    "text": "data y2Data 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 928.0, 14.0, 90.0, 22.0 ],
                                    "text": "data y1Data 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 828.0, 14.0, 90.0, 22.0 ],
                                    "text": "data x2Data 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 725.0, 14.0, 90.0, 22.0 ],
                                    "text": "data x1Data 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 595.0, 14.0, 95.0, 22.0 ],
                                    "text": "buffer weightBuf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 499.0, 14.0, 67.0, 22.0 ],
                                    "text": "buffer qBuf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 403.0, 14.0, 81.0, 22.0 ],
                                    "text": "buffer freqBuf"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 307.0, 14.0, 83.0, 22.0 ],
                                    "text": "buffer gainBuf"
                                }
                            },
                            {
                                "box": {
                                    "code": "Buffer gainBuf(\"gainBuf\");\nBuffer freqBuf(\"freqBuf\");\nBuffer qBuf(\"qBuf\");\nBuffer weightBuf(\"weightBuf\");\nData x1Data(32);\nData x2Data(32);\nData y1Data(32);\nData y2Data(32);\nParam gainScale(1);\nParam outputGain(100);\nParam bwMin(10);\nParam bwMax(2000);\n\nlimit = samplerate / 2;\n\n// ========== peak 0 ==========\ngain0 = peek(gainBuf,   0, 0);\ncf0   = peek(freqBuf,   0, 0);\nbw0   = peek(qBuf,      0, 0);\nw0    = peek(weightBuf, 0, 0);\ncf0 = clip(cf0, 20, limit);\nbw0 = clip(bw0, bwMin, bwMax);\nx1_0 = x1Data.peek(0, 0);\nx2_0 = x2Data.peek(0, 0);\ny1_0 = y1Data.peek(0, 0);\ny2_0 = y2Data.peek(0, 0);\nr0  = exp((bw0 * pi / samplerate) * -1);\nc1_0 = 2 * r0 * cos(cf0 * twopi / samplerate);\nc2_0 = r0 * r0;\nyv0 = ((1 - c2_0) * 0.5) * (in1 - x2_0) + c1_0 * y1_0 - c2_0 * y2_0;\nx2Data.poke(x1_0, 0, 0);\nx1Data.poke(in1,  0, 0);\ny2Data.poke(y1_0, 0, 0);\ny1Data.poke(yv0,  0, 0);\n\n// ========== peak 1 ==========\ngain1 = peek(gainBuf,   1, 0);\ncf1   = peek(freqBuf,   1, 0);\nbw1   = peek(qBuf,      1, 0);\nw1    = peek(weightBuf, 1, 0);\ncf1 = clip(cf1, 20, limit);\nbw1 = clip(bw1, bwMin, bwMax);\nx1_1 = x1Data.peek(1, 0);\nx2_1 = x2Data.peek(1, 0);\ny1_1 = y1Data.peek(1, 0);\ny2_1 = y2Data.peek(1, 0);\nr1  = exp((bw1 * pi / samplerate) * -1);\nc1_1 = 2 * r1 * cos(cf1 * twopi / samplerate);\nc2_1 = r1 * r1;\nyv1 = ((1 - c2_1) * 0.5) * (in1 - x2_1) + c1_1 * y1_1 - c2_1 * y2_1;\nx2Data.poke(x1_1, 1, 0);\nx1Data.poke(in1,  1, 0);\ny2Data.poke(y1_1, 1, 0);\ny1Data.poke(yv1,  1, 0);\n\n// ========== peak 2 ==========\ngain2 = peek(gainBuf,   2, 0);\ncf2   = peek(freqBuf,   2, 0);\nbw2   = peek(qBuf,      2, 0);\nw2    = peek(weightBuf, 2, 0);\ncf2 = clip(cf2, 20, limit);\nbw2 = clip(bw2, bwMin, bwMax);\nx1_2 = x1Data.peek(2, 0);\nx2_2 = x2Data.peek(2, 0);\ny1_2 = y1Data.peek(2, 0);\ny2_2 = y2Data.peek(2, 0);\nr2  = exp((bw2 * pi / samplerate) * -1);\nc1_2 = 2 * r2 * cos(cf2 * twopi / samplerate);\nc2_2 = r2 * r2;\nyv2 = ((1 - c2_2) * 0.5) * (in1 - x2_2) + c1_2 * y1_2 - c2_2 * y2_2;\nx2Data.poke(x1_2, 2, 0);\nx1Data.poke(in1,  2, 0);\ny2Data.poke(y1_2, 2, 0);\ny1Data.poke(yv2,  2, 0);\n\n// ========== peak 3 ==========\ngain3 = peek(gainBuf,   3, 0);\ncf3   = peek(freqBuf,   3, 0);\nbw3   = peek(qBuf,      3, 0);\nw3    = peek(weightBuf, 3, 0);\ncf3 = clip(cf3, 20, limit);\nbw3 = clip(bw3, bwMin, bwMax);\nx1_3 = x1Data.peek(3, 0);\nx2_3 = x2Data.peek(3, 0);\ny1_3 = y1Data.peek(3, 0);\ny2_3 = y2Data.peek(3, 0);\nr3  = exp((bw3 * pi / samplerate) * -1);\nc1_3 = 2 * r3 * cos(cf3 * twopi / samplerate);\nc2_3 = r3 * r3;\nyv3 = ((1 - c2_3) * 0.5) * (in1 - x2_3) + c1_3 * y1_3 - c2_3 * y2_3;\nx2Data.poke(x1_3, 3, 0);\nx1Data.poke(in1,  3, 0);\ny2Data.poke(y1_3, 3, 0);\ny1Data.poke(yv3,  3, 0);\n\n// ========== peak 4 ==========\ngain4 = peek(gainBuf,   4, 0);\ncf4   = peek(freqBuf,   4, 0);\nbw4   = peek(qBuf,      4, 0);\nw4    = peek(weightBuf, 4, 0);\ncf4 = clip(cf4, 20, limit);\nbw4 = clip(bw4, bwMin, bwMax);\nx1_4 = x1Data.peek(4, 0);\nx2_4 = x2Data.peek(4, 0);\ny1_4 = y1Data.peek(4, 0);\ny2_4 = y2Data.peek(4, 0);\nr4  = exp((bw4 * pi / samplerate) * -1);\nc1_4 = 2 * r4 * cos(cf4 * twopi / samplerate);\nc2_4 = r4 * r4;\nyv4 = ((1 - c2_4) * 0.5) * (in1 - x2_4) + c1_4 * y1_4 - c2_4 * y2_4;\nx2Data.poke(x1_4, 4, 0);\nx1Data.poke(in1,  4, 0);\ny2Data.poke(y1_4, 4, 0);\ny1Data.poke(yv4,  4, 0);\n\n// ========== peak 5 ==========\ngain5 = peek(gainBuf,   5, 0);\ncf5   = peek(freqBuf,   5, 0);\nbw5   = peek(qBuf,      5, 0);\nw5    = peek(weightBuf, 5, 0);\ncf5 = clip(cf5, 20, limit);\nbw5 = clip(bw5, bwMin, bwMax);\nx1_5 = x1Data.peek(5, 0);\nx2_5 = x2Data.peek(5, 0);\ny1_5 = y1Data.peek(5, 0);\ny2_5 = y2Data.peek(5, 0);\nr5  = exp((bw5 * pi / samplerate) * -1);\nc1_5 = 2 * r5 * cos(cf5 * twopi / samplerate);\nc2_5 = r5 * r5;\nyv5 = ((1 - c2_5) * 0.5) * (in1 - x2_5) + c1_5 * y1_5 - c2_5 * y2_5;\nx2Data.poke(x1_5, 5, 0);\nx1Data.poke(in1,  5, 0);\ny2Data.poke(y1_5, 5, 0);\ny1Data.poke(yv5,  5, 0);\n\n// ========== peak 6 ==========\ngain6 = peek(gainBuf,   6, 0);\ncf6   = peek(freqBuf,   6, 0);\nbw6   = peek(qBuf,      6, 0);\nw6    = peek(weightBuf, 6, 0);\ncf6 = clip(cf6, 20, limit);\nbw6 = clip(bw6, bwMin, bwMax);\nx1_6 = x1Data.peek(6, 0);\nx2_6 = x2Data.peek(6, 0);\ny1_6 = y1Data.peek(6, 0);\ny2_6 = y2Data.peek(6, 0);\nr6  = exp((bw6 * pi / samplerate) * -1);\nc1_6 = 2 * r6 * cos(cf6 * twopi / samplerate);\nc2_6 = r6 * r6;\nyv6 = ((1 - c2_6) * 0.5) * (in1 - x2_6) + c1_6 * y1_6 - c2_6 * y2_6;\nx2Data.poke(x1_6, 6, 0);\nx1Data.poke(in1,  6, 0);\ny2Data.poke(y1_6, 6, 0);\ny1Data.poke(yv6,  6, 0);\n\n// ========== peak 7 ==========\ngain7 = peek(gainBuf,   7, 0);\ncf7   = peek(freqBuf,   7, 0);\nbw7   = peek(qBuf,      7, 0);\nw7    = peek(weightBuf, 7, 0);\ncf7 = clip(cf7, 20, limit);\nbw7 = clip(bw7, bwMin, bwMax);\nx1_7 = x1Data.peek(7, 0);\nx2_7 = x2Data.peek(7, 0);\ny1_7 = y1Data.peek(7, 0);\ny2_7 = y2Data.peek(7, 0);\nr7  = exp((bw7 * pi / samplerate) * -1);\nc1_7 = 2 * r7 * cos(cf7 * twopi / samplerate);\nc2_7 = r7 * r7;\nyv7 = ((1 - c2_7) * 0.5) * (in1 - x2_7) + c1_7 * y1_7 - c2_7 * y2_7;\nx2Data.poke(x1_7, 7, 0);\nx1Data.poke(in1,  7, 0);\ny2Data.poke(y1_7, 7, 0);\ny1Data.poke(yv7,  7, 0);\n\n// ========== peak 8 ==========\ngain8 = peek(gainBuf,   8, 0);\ncf8   = peek(freqBuf,   8, 0);\nbw8   = peek(qBuf,      8, 0);\nw8    = peek(weightBuf, 8, 0);\ncf8 = clip(cf8, 20, limit);\nbw8 = clip(bw8, bwMin, bwMax);\nx1_8 = x1Data.peek(8, 0);\nx2_8 = x2Data.peek(8, 0);\ny1_8 = y1Data.peek(8, 0);\ny2_8 = y2Data.peek(8, 0);\nr8  = exp((bw8 * pi / samplerate) * -1);\nc1_8 = 2 * r8 * cos(cf8 * twopi / samplerate);\nc2_8 = r8 * r8;\nyv8 = ((1 - c2_8) * 0.5) * (in1 - x2_8) + c1_8 * y1_8 - c2_8 * y2_8;\nx2Data.poke(x1_8, 8, 0);\nx1Data.poke(in1,  8, 0);\ny2Data.poke(y1_8, 8, 0);\ny1Data.poke(yv8,  8, 0);\n\n// ========== peak 9 ==========\ngain9 = peek(gainBuf,   9, 0);\ncf9   = peek(freqBuf,   9, 0);\nbw9   = peek(qBuf,      9, 0);\nw9    = peek(weightBuf, 9, 0);\ncf9 = clip(cf9, 20, limit);\nbw9 = clip(bw9, bwMin, bwMax);\nx1_9 = x1Data.peek(9, 0);\nx2_9 = x2Data.peek(9, 0);\ny1_9 = y1Data.peek(9, 0);\ny2_9 = y2Data.peek(9, 0);\nr9  = exp((bw9 * pi / samplerate) * -1);\nc1_9 = 2 * r9 * cos(cf9 * twopi / samplerate);\nc2_9 = r9 * r9;\nyv9 = ((1 - c2_9) * 0.5) * (in1 - x2_9) + c1_9 * y1_9 - c2_9 * y2_9;\nx2Data.poke(x1_9, 9, 0);\nx1Data.poke(in1,  9, 0);\ny2Data.poke(y1_9, 9, 0);\ny1Data.poke(yv9,  9, 0);\n\n// ========== peak 10 ==========\ngain10 = peek(gainBuf,   10, 0);\ncf10   = peek(freqBuf,   10, 0);\nbw10   = peek(qBuf,      10, 0);\nw10    = peek(weightBuf, 10, 0);\ncf10 = clip(cf10, 20, limit);\nbw10 = clip(bw10, bwMin, bwMax);\nx1_10 = x1Data.peek(10, 0);\nx2_10 = x2Data.peek(10, 0);\ny1_10 = y1Data.peek(10, 0);\ny2_10 = y2Data.peek(10, 0);\nr10  = exp((bw10 * pi / samplerate) * -1);\nc1_10 = 2 * r10 * cos(cf10 * twopi / samplerate);\nc2_10 = r10 * r10;\nyv10 = ((1 - c2_10) * 0.5) * (in1 - x2_10) + c1_10 * y1_10 - c2_10 * y2_10;\nx2Data.poke(x1_10, 10, 0);\nx1Data.poke(in1,   10, 0);\ny2Data.poke(y1_10, 10, 0);\ny1Data.poke(yv10,  10, 0);\n\n// ========== peak 11 ==========\ngain11 = peek(gainBuf,   11, 0);\ncf11   = peek(freqBuf,   11, 0);\nbw11   = peek(qBuf,      11, 0);\nw11    = peek(weightBuf, 11, 0);\ncf11 = clip(cf11, 20, limit);\nbw11 = clip(bw11, bwMin, bwMax);\nx1_11 = x1Data.peek(11, 0);\nx2_11 = x2Data.peek(11, 0);\ny1_11 = y1Data.peek(11, 0);\ny2_11 = y2Data.peek(11, 0);\nr11  = exp((bw11 * pi / samplerate) * -1);\nc1_11 = 2 * r11 * cos(cf11 * twopi / samplerate);\nc2_11 = r11 * r11;\nyv11 = ((1 - c2_11) * 0.5) * (in1 - x2_11) + c1_11 * y1_11 - c2_11 * y2_11;\nx2Data.poke(x1_11, 11, 0);\nx1Data.poke(in1,   11, 0);\ny2Data.poke(y1_11, 11, 0);\ny1Data.poke(yv11,  11, 0);\n\n// ========== peak 12 ==========\ngain12 = peek(gainBuf,   12, 0);\ncf12   = peek(freqBuf,   12, 0);\nbw12   = peek(qBuf,      12, 0);\nw12    = peek(weightBuf, 12, 0);\ncf12 = clip(cf12, 20, limit);\nbw12 = clip(bw12, bwMin, bwMax);\nx1_12 = x1Data.peek(12, 0);\nx2_12 = x2Data.peek(12, 0);\ny1_12 = y1Data.peek(12, 0);\ny2_12 = y2Data.peek(12, 0);\nr12  = exp((bw12 * pi / samplerate) * -1);\nc1_12 = 2 * r12 * cos(cf12 * twopi / samplerate);\nc2_12 = r12 * r12;\nyv12 = ((1 - c2_12) * 0.5) * (in1 - x2_12) + c1_12 * y1_12 - c2_12 * y2_12;\nx2Data.poke(x1_12, 12, 0);\nx1Data.poke(in1,   12, 0);\ny2Data.poke(y1_12, 12, 0);\ny1Data.poke(yv12,  12, 0);\n\n// ========== peak 13 ==========\ngain13 = peek(gainBuf,   13, 0);\ncf13   = peek(freqBuf,   13, 0);\nbw13   = peek(qBuf,      13, 0);\nw13    = peek(weightBuf, 13, 0);\ncf13 = clip(cf13, 20, limit);\nbw13 = clip(bw13, bwMin, bwMax);\nx1_13 = x1Data.peek(13, 0);\nx2_13 = x2Data.peek(13, 0);\ny1_13 = y1Data.peek(13, 0);\ny2_13 = y2Data.peek(13, 0);\nr13  = exp((bw13 * pi / samplerate) * -1);\nc1_13 = 2 * r13 * cos(cf13 * twopi / samplerate);\nc2_13 = r13 * r13;\nyv13 = ((1 - c2_13) * 0.5) * (in1 - x2_13) + c1_13 * y1_13 - c2_13 * y2_13;\nx2Data.poke(x1_13, 13, 0);\nx1Data.poke(in1,   13, 0);\ny2Data.poke(y1_13, 13, 0);\ny1Data.poke(yv13,  13, 0);\n\n// ========== peak 14 ==========\ngain14 = peek(gainBuf,   14, 0);\ncf14   = peek(freqBuf,   14, 0);\nbw14   = peek(qBuf,      14, 0);\nw14    = peek(weightBuf, 14, 0);\ncf14 = clip(cf14, 20, limit);\nbw14 = clip(bw14, bwMin, bwMax);\nx1_14 = x1Data.peek(14, 0);\nx2_14 = x2Data.peek(14, 0);\ny1_14 = y1Data.peek(14, 0);\ny2_14 = y2Data.peek(14, 0);\nr14  = exp((bw14 * pi / samplerate) * -1);\nc1_14 = 2 * r14 * cos(cf14 * twopi / samplerate);\nc2_14 = r14 * r14;\nyv14 = ((1 - c2_14) * 0.5) * (in1 - x2_14) + c1_14 * y1_14 - c2_14 * y2_14;\nx2Data.poke(x1_14, 14, 0);\nx1Data.poke(in1,   14, 0);\ny2Data.poke(y1_14, 14, 0);\ny1Data.poke(yv14,  14, 0);\n\n// ========== peak 15 ==========\ngain15 = peek(gainBuf,   15, 0);\ncf15   = peek(freqBuf,   15, 0);\nbw15   = peek(qBuf,      15, 0);\nw15    = peek(weightBuf, 15, 0);\ncf15 = clip(cf15, 20, limit);\nbw15 = clip(bw15, bwMin, bwMax);\nx1_15 = x1Data.peek(15, 0);\nx2_15 = x2Data.peek(15, 0);\ny1_15 = y1Data.peek(15, 0);\ny2_15 = y2Data.peek(15, 0);\nr15  = exp((bw15 * pi / samplerate) * -1);\nc1_15 = 2 * r15 * cos(cf15 * twopi / samplerate);\nc2_15 = r15 * r15;\nyv15 = ((1 - c2_15) * 0.5) * (in1 - x2_15) + c1_15 * y1_15 - c2_15 * y2_15;\nx2Data.poke(x1_15, 15, 0);\nx1Data.poke(in1,   15, 0);\ny2Data.poke(y1_15, 15, 0);\ny1Data.poke(yv15,  15, 0);\n\n// ========== peak 16 ==========\ngain16 = peek(gainBuf,   16, 0);\ncf16   = peek(freqBuf,   16, 0);\nbw16   = peek(qBuf,      16, 0);\nw16    = peek(weightBuf, 16, 0);\ncf16 = clip(cf16, 20, limit);\nbw16 = clip(bw16, bwMin, bwMax);\nx1_16 = x1Data.peek(16, 0);\nx2_16 = x2Data.peek(16, 0);\ny1_16 = y1Data.peek(16, 0);\ny2_16 = y2Data.peek(16, 0);\nr16  = exp((bw16 * pi / samplerate) * -1);\nc1_16 = 2 * r16 * cos(cf16 * twopi / samplerate);\nc2_16 = r16 * r16;\nyv16 = ((1 - c2_16) * 0.5) * (in1 - x2_16) + c1_16 * y1_16 - c2_16 * y2_16;\nx2Data.poke(x1_16, 16, 0);\nx1Data.poke(in1,   16, 0);\ny2Data.poke(y1_16, 16, 0);\ny1Data.poke(yv16,  16, 0);\n\n// ========== peak 17 ==========\ngain17 = peek(gainBuf,   17, 0);\ncf17   = peek(freqBuf,   17, 0);\nbw17   = peek(qBuf,      17, 0);\nw17    = peek(weightBuf, 17, 0);\ncf17 = clip(cf17, 20, limit);\nbw17 = clip(bw17, bwMin, bwMax);\nx1_17 = x1Data.peek(17, 0);\nx2_17 = x2Data.peek(17, 0);\ny1_17 = y1Data.peek(17, 0);\ny2_17 = y2Data.peek(17, 0);\nr17  = exp((bw17 * pi / samplerate) * -1);\nc1_17 = 2 * r17 * cos(cf17 * twopi / samplerate);\nc2_17 = r17 * r17;\nyv17 = ((1 - c2_17) * 0.5) * (in1 - x2_17) + c1_17 * y1_17 - c2_17 * y2_17;\nx2Data.poke(x1_17, 17, 0);\nx1Data.poke(in1,   17, 0);\ny2Data.poke(y1_17, 17, 0);\ny1Data.poke(yv17,  17, 0);\n\n// ========== peak 18 ==========\ngain18 = peek(gainBuf,   18, 0);\ncf18   = peek(freqBuf,   18, 0);\nbw18   = peek(qBuf,      18, 0);\nw18    = peek(weightBuf, 18, 0);\ncf18 = clip(cf18, 20, limit);\nbw18 = clip(bw18, bwMin, bwMax);\nx1_18 = x1Data.peek(18, 0);\nx2_18 = x2Data.peek(18, 0);\ny1_18 = y1Data.peek(18, 0);\ny2_18 = y2Data.peek(18, 0);\nr18  = exp((bw18 * pi / samplerate) * -1);\nc1_18 = 2 * r18 * cos(cf18 * twopi / samplerate);\nc2_18 = r18 * r18;\nyv18 = ((1 - c2_18) * 0.5) * (in1 - x2_18) + c1_18 * y1_18 - c2_18 * y2_18;\nx2Data.poke(x1_18, 18, 0);\nx1Data.poke(in1,   18, 0);\ny2Data.poke(y1_18, 18, 0);\ny1Data.poke(yv18,  18, 0);\n\n// ========== peak 19 ==========\ngain19 = peek(gainBuf,   19, 0);\ncf19   = peek(freqBuf,   19, 0);\nbw19   = peek(qBuf,      19, 0);\nw19    = peek(weightBuf, 19, 0);\ncf19 = clip(cf19, 20, limit);\nbw19 = clip(bw19, bwMin, bwMax);\nx1_19 = x1Data.peek(19, 0);\nx2_19 = x2Data.peek(19, 0);\ny1_19 = y1Data.peek(19, 0);\ny2_19 = y2Data.peek(19, 0);\nr19  = exp((bw19 * pi / samplerate) * -1);\nc1_19 = 2 * r19 * cos(cf19 * twopi / samplerate);\nc2_19 = r19 * r19;\nyv19 = ((1 - c2_19) * 0.5) * (in1 - x2_19) + c1_19 * y1_19 - c2_19 * y2_19;\nx2Data.poke(x1_19, 19, 0);\nx1Data.poke(in1,   19, 0);\ny2Data.poke(y1_19, 19, 0);\ny1Data.poke(yv19,  19, 0);\n\n// ========== peak 20 ==========\ngain20 = peek(gainBuf,   20, 0);\ncf20   = peek(freqBuf,   20, 0);\nbw20   = peek(qBuf,      20, 0);\nw20    = peek(weightBuf, 20, 0);\ncf20 = clip(cf20, 20, limit);\nbw20 = clip(bw20, bwMin, bwMax);\nx1_20 = x1Data.peek(20, 0);\nx2_20 = x2Data.peek(20, 0);\ny1_20 = y1Data.peek(20, 0);\ny2_20 = y2Data.peek(20, 0);\nr20  = exp((bw20 * pi / samplerate) * -1);\nc1_20 = 2 * r20 * cos(cf20 * twopi / samplerate);\nc2_20 = r20 * r20;\nyv20 = ((1 - c2_20) * 0.5) * (in1 - x2_20) + c1_20 * y1_20 - c2_20 * y2_20;\nx2Data.poke(x1_20, 20, 0);\nx1Data.poke(in1,   20, 0);\ny2Data.poke(y1_20, 20, 0);\ny1Data.poke(yv20,  20, 0);\n\n// ========== peak 21 ==========\ngain21 = peek(gainBuf,   21, 0);\ncf21   = peek(freqBuf,   21, 0);\nbw21   = peek(qBuf,      21, 0);\nw21    = peek(weightBuf, 21, 0);\ncf21 = clip(cf21, 20, limit);\nbw21 = clip(bw21, bwMin, bwMax);\nx1_21 = x1Data.peek(21, 0);\nx2_21 = x2Data.peek(21, 0);\ny1_21 = y1Data.peek(21, 0);\ny2_21 = y2Data.peek(21, 0);\nr21  = exp((bw21 * pi / samplerate) * -1);\nc1_21 = 2 * r21 * cos(cf21 * twopi / samplerate);\nc2_21 = r21 * r21;\nyv21 = ((1 - c2_21) * 0.5) * (in1 - x2_21) + c1_21 * y1_21 - c2_21 * y2_21;\nx2Data.poke(x1_21, 21, 0);\nx1Data.poke(in1,   21, 0);\ny2Data.poke(y1_21, 21, 0);\ny1Data.poke(yv21,  21, 0);\n\n// ========== peak 22 ==========\ngain22 = peek(gainBuf,   22, 0);\ncf22   = peek(freqBuf,   22, 0);\nbw22   = peek(qBuf,      22, 0);\nw22    = peek(weightBuf, 22, 0);\ncf22 = clip(cf22, 20, limit);\nbw22 = clip(bw22, bwMin, bwMax);\nx1_22 = x1Data.peek(22, 0);\nx2_22 = x2Data.peek(22, 0);\ny1_22 = y1Data.peek(22, 0);\ny2_22 = y2Data.peek(22, 0);\nr22  = exp((bw22 * pi / samplerate) * -1);\nc1_22 = 2 * r22 * cos(cf22 * twopi / samplerate);\nc2_22 = r22 * r22;\nyv22 = ((1 - c2_22) * 0.5) * (in1 - x2_22) + c1_22 * y1_22 - c2_22 * y2_22;\nx2Data.poke(x1_22, 22, 0);\nx1Data.poke(in1,   22, 0);\ny2Data.poke(y1_22, 22, 0);\ny1Data.poke(yv22,  22, 0);\n\n// ========== peak 23 ==========\ngain23 = peek(gainBuf,   23, 0);\ncf23   = peek(freqBuf,   23, 0);\nbw23   = peek(qBuf,      23, 0);\nw23    = peek(weightBuf, 23, 0);\ncf23 = clip(cf23, 20, limit);\nbw23 = clip(bw23, bwMin, bwMax);\nx1_23 = x1Data.peek(23, 0);\nx2_23 = x2Data.peek(23, 0);\ny1_23 = y1Data.peek(23, 0);\ny2_23 = y2Data.peek(23, 0);\nr23  = exp((bw23 * pi / samplerate) * -1);\nc1_23 = 2 * r23 * cos(cf23 * twopi / samplerate);\nc2_23 = r23 * r23;\nyv23 = ((1 - c2_23) * 0.5) * (in1 - x2_23) + c1_23 * y1_23 - c2_23 * y2_23;\nx2Data.poke(x1_23, 23, 0);\nx1Data.poke(in1,   23, 0);\ny2Data.poke(y1_23, 23, 0);\ny1Data.poke(yv23,  23, 0);\n\n// ========== peak 24 ==========\ngain24 = peek(gainBuf,   24, 0);\ncf24   = peek(freqBuf,   24, 0);\nbw24   = peek(qBuf,      24, 0);\nw24    = peek(weightBuf, 24, 0);\ncf24 = clip(cf24, 20, limit);\nbw24 = clip(bw24, bwMin, bwMax);\nx1_24 = x1Data.peek(24, 0);\nx2_24 = x2Data.peek(24, 0);\ny1_24 = y1Data.peek(24, 0);\ny2_24 = y2Data.peek(24, 0);\nr24  = exp((bw24 * pi / samplerate) * -1);\nc1_24 = 2 * r24 * cos(cf24 * twopi / samplerate);\nc2_24 = r24 * r24;\nyv24 = ((1 - c2_24) * 0.5) * (in1 - x2_24) + c1_24 * y1_24 - c2_24 * y2_24;\nx2Data.poke(x1_24, 24, 0);\nx1Data.poke(in1,   24, 0);\ny2Data.poke(y1_24, 24, 0);\ny1Data.poke(yv24,  24, 0);\n\n// ========== peak 25 ==========\ngain25 = peek(gainBuf,   25, 0);\ncf25   = peek(freqBuf,   25, 0);\nbw25   = peek(qBuf,      25, 0);\nw25    = peek(weightBuf, 25, 0);\ncf25 = clip(cf25, 20, limit);\nbw25 = clip(bw25, bwMin, bwMax);\nx1_25 = x1Data.peek(25, 0);\nx2_25 = x2Data.peek(25, 0);\ny1_25 = y1Data.peek(25, 0);\ny2_25 = y2Data.peek(25, 0);\nr25  = exp((bw25 * pi / samplerate) * -1);\nc1_25 = 2 * r25 * cos(cf25 * twopi / samplerate);\nc2_25 = r25 * r25;\nyv25 = ((1 - c2_25) * 0.5) * (in1 - x2_25) + c1_25 * y1_25 - c2_25 * y2_25;\nx2Data.poke(x1_25, 25, 0);\nx1Data.poke(in1,   25, 0);\ny2Data.poke(y1_25, 25, 0);\ny1Data.poke(yv25,  25, 0);\n\n// ========== peak 26 ==========\ngain26 = peek(gainBuf,   26, 0);\ncf26   = peek(freqBuf,   26, 0);\nbw26   = peek(qBuf,      26, 0);\nw26    = peek(weightBuf, 26, 0);\ncf26 = clip(cf26, 20, limit);\nbw26 = clip(bw26, bwMin, bwMax);\nx1_26 = x1Data.peek(26, 0);\nx2_26 = x2Data.peek(26, 0);\ny1_26 = y1Data.peek(26, 0);\ny2_26 = y2Data.peek(26, 0);\nr26  = exp((bw26 * pi / samplerate) * -1);\nc1_26 = 2 * r26 * cos(cf26 * twopi / samplerate);\nc2_26 = r26 * r26;\nyv26 = ((1 - c2_26) * 0.5) * (in1 - x2_26) + c1_26 * y1_26 - c2_26 * y2_26;\nx2Data.poke(x1_26, 26, 0);\nx1Data.poke(in1,   26, 0);\ny2Data.poke(y1_26, 26, 0);\ny1Data.poke(yv26,  26, 0);\n\n// ========== peak 27 ==========\ngain27 = peek(gainBuf,   27, 0);\ncf27   = peek(freqBuf,   27, 0);\nbw27   = peek(qBuf,      27, 0);\nw27    = peek(weightBuf, 27, 0);\ncf27 = clip(cf27, 20, limit);\nbw27 = clip(bw27, bwMin, bwMax);\nx1_27 = x1Data.peek(27, 0);\nx2_27 = x2Data.peek(27, 0);\ny1_27 = y1Data.peek(27, 0);\ny2_27 = y2Data.peek(27, 0);\nr27  = exp((bw27 * pi / samplerate) * -1);\nc1_27 = 2 * r27 * cos(cf27 * twopi / samplerate);\nc2_27 = r27 * r27;\nyv27 = ((1 - c2_27) * 0.5) * (in1 - x2_27) + c1_27 * y1_27 - c2_27 * y2_27;\nx2Data.poke(x1_27, 27, 0);\nx1Data.poke(in1,   27, 0);\ny2Data.poke(y1_27, 27, 0);\ny1Data.poke(yv27,  27, 0);\n\n// ========== peak 28 ==========\ngain28 = peek(gainBuf,   28, 0);\ncf28   = peek(freqBuf,   28, 0);\nbw28   = peek(qBuf,      28, 0);\nw28    = peek(weightBuf, 28, 0);\ncf28 = clip(cf28, 20, limit);\nbw28 = clip(bw28, bwMin, bwMax);\nx1_28 = x1Data.peek(28, 0);\nx2_28 = x2Data.peek(28, 0);\ny1_28 = y1Data.peek(28, 0);\ny2_28 = y2Data.peek(28, 0);\nr28  = exp((bw28 * pi / samplerate) * -1);\nc1_28 = 2 * r28 * cos(cf28 * twopi / samplerate);\nc2_28 = r28 * r28;\nyv28 = ((1 - c2_28) * 0.5) * (in1 - x2_28) + c1_28 * y1_28 - c2_28 * y2_28;\nx2Data.poke(x1_28, 28, 0);\nx1Data.poke(in1,   28, 0);\ny2Data.poke(y1_28, 28, 0);\ny1Data.poke(yv28,  28, 0);\n\n// ========== peak 29 ==========\ngain29 = peek(gainBuf,   29, 0);\ncf29   = peek(freqBuf,   29, 0);\nbw29   = peek(qBuf,      29, 0);\nw29    = peek(weightBuf, 29, 0);\ncf29 = clip(cf29, 20, limit);\nbw29 = clip(bw29, bwMin, bwMax);\nx1_29 = x1Data.peek(29, 0);\nx2_29 = x2Data.peek(29, 0);\ny1_29 = y1Data.peek(29, 0);\ny2_29 = y2Data.peek(29, 0);\nr29  = exp((bw29 * pi / samplerate) * -1);\nc1_29 = 2 * r29 * cos(cf29 * twopi / samplerate);\nc2_29 = r29 * r29;\nyv29 = ((1 - c2_29) * 0.5) * (in1 - x2_29) + c1_29 * y1_29 - c2_29 * y2_29;\nx2Data.poke(x1_29, 29, 0);\nx1Data.poke(in1,   29, 0);\ny2Data.poke(y1_29, 29, 0);\ny1Data.poke(yv29,  29, 0);\n\n// ========== peak 30 ==========\ngain30 = peek(gainBuf,   30, 0);\ncf30   = peek(freqBuf,   30, 0);\nbw30   = peek(qBuf,      30, 0);\nw30    = peek(weightBuf, 30, 0);\ncf30 = clip(cf30, 20, limit);\nbw30 = clip(bw30, bwMin, bwMax);\nx1_30 = x1Data.peek(30, 0);\nx2_30 = x2Data.peek(30, 0);\ny1_30 = y1Data.peek(30, 0);\ny2_30 = y2Data.peek(30, 0);\nr30  = exp((bw30 * pi / samplerate) * -1);\nc1_30 = 2 * r30 * cos(cf30 * twopi / samplerate);\nc2_30 = r30 * r30;\nyv30 = ((1 - c2_30) * 0.5) * (in1 - x2_30) + c1_30 * y1_30 - c2_30 * y2_30;\nx2Data.poke(x1_30, 30, 0);\nx1Data.poke(in1,   30, 0);\ny2Data.poke(y1_30, 30, 0);\ny1Data.poke(yv30,  30, 0);\n\n// ========== peak 31 ==========\ngain31 = peek(gainBuf,   31, 0);\ncf31   = peek(freqBuf,   31, 0);\nbw31   = peek(qBuf,      31, 0);\nw31    = peek(weightBuf, 31, 0);\ncf31 = clip(cf31, 20, limit);\nbw31 = clip(bw31, bwMin, bwMax);\nx1_31 = x1Data.peek(31, 0);\nx2_31 = x2Data.peek(31, 0);\ny1_31 = y1Data.peek(31, 0);\ny2_31 = y2Data.peek(31, 0);\nr31  = exp((bw31 * pi / samplerate) * -1);\nc1_31 = 2 * r31 * cos(cf31 * twopi / samplerate);\nc2_31 = r31 * r31;\nyv31 = ((1 - c2_31) * 0.5) * (in1 - x2_31) + c1_31 * y1_31 - c2_31 * y2_31;\nx2Data.poke(x1_31, 31, 0);\nx1Data.poke(in1,   31, 0);\ny2Data.poke(y1_31, 31, 0);\ny1Data.poke(yv31,  31, 0);\n\n// ========== sum & output ==========\nsum_out = yv0  * gain0  * w0\n        + yv1  * gain1  * w1\n        + yv2  * gain2  * w2\n        + yv3  * gain3  * w3\n        + yv4  * gain4  * w4\n        + yv5  * gain5  * w5\n        + yv6  * gain6  * w6\n        + yv7  * gain7  * w7\n        + yv8  * gain8  * w8\n        + yv9  * gain9  * w9\n        + yv10 * gain10 * w10\n        + yv11 * gain11 * w11\n        + yv12 * gain12 * w12\n        + yv13 * gain13 * w13\n        + yv14 * gain14 * w14\n        + yv15 * gain15 * w15\n        + yv16 * gain16 * w16\n        + yv17 * gain17 * w17\n        + yv18 * gain18 * w18\n        + yv19 * gain19 * w19\n        + yv20 * gain20 * w20\n        + yv21 * gain21 * w21\n        + yv22 * gain22 * w22\n        + yv23 * gain23 * w23\n        + yv24 * gain24 * w24\n        + yv25 * gain25 * w25\n        + yv26 * gain26 * w26\n        + yv27 * gain27 * w27\n        + yv28 * gain28 * w28\n        + yv29 * gain29 * w29\n        + yv30 * gain30 * w30\n        + yv31 * gain31 * w31;\n\nout1 = sum_out * gainScale * outputGain;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 84.0, 808.0, 471.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 14.0, 28.0, 22.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 583.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 982.0, 463.0, 96.0, 22.0 ],
                    "text": "gen~ @title filter"
                }
            },
            {
                "box": {
                    "id": "obj-141",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1363.0, 414.0, 97.0, 22.0 ],
                    "text": "udpreceive 5050"
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 960.0, 1384.0, 138.0, 22.0 ],
                    "text": "udpsend 127.0.0.1 9992"
                }
            },
            {
                "box": {
                    "id": "obj-128",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 960.0, 1248.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1186.0, 138.0, 22.0 ],
                    "text": "udpsend 127.0.0.1 9991"
                }
            },
            {
                "box": {
                    "code": "// inlets: 2\n// inlet0: 周波数リスト32個\n// inlet1: ゲインリスト32個\n// outlet0~31: /mode/i uFreq1 uFreq2 uFreq3 gain\n\ninlets = 2;\noutlets = 32;\n\nconst NUM_PEAKS = 32;\n\n// smoothing係数\n// 小さいほど滑らか・遅い\nlet smooth = 0.12;\n\n// 出力周期 ms\nlet intervalMs = 16; // 約60fps\n\nlet targetFreqs = new Array(NUM_PEAKS).fill(0);\nlet targetGains = new Array(NUM_PEAKS).fill(0);\n\nlet currentFreqs = new Array(NUM_PEAKS).fill(0);\nlet currentGains = new Array(NUM_PEAKS).fill(0);\n\nlet task = new Task(tick, this);\ntask.interval = intervalMs;\ntask.repeat();\n\nfunction list(...args) {\n    if (inlet === 0) {\n        for (let i = 0; i < NUM_PEAKS; i++) {\n            targetFreqs[i] = (i < args.length) ? args[i] : 0;\n        }\n    } else if (inlet === 1) {\n        for (let i = 0; i < NUM_PEAKS; i++) {\n            targetGains[i] = (i < args.length) ? args[i] : 0;\n        }\n    }\n}\n\nfunction tick() {\n    for (let i = 0; i < NUM_PEAKS; i++) {\n        currentFreqs[i] += (targetFreqs[i] - currentFreqs[i]) * smooth;\n        currentGains[i] += (targetGains[i] - currentGains[i]) * smooth;\n    }\n\n    emit();\n}\n\nfunction emit() {\n    for (let i = NUM_PEAKS - 1; i >= 0; i--) {\n        const f = currentFreqs[i] / 440.0;\n        const g = currentGains[i];\n\n        outlet(i, \"/mode/\" + i, f, f * 0.5, f * 0.75, g);\n    }\n}\n\nfunction bang() {\n    emit();\n}\n\n// smoothingを外から変えたい時用\nfunction setsmooth(v) {\n    smooth = Math.max(0.001, Math.min(1.0, v));\n}\n\n// 出力周期を変えたい時用\nfunction setinterval(v) {\n    intervalMs = Math.max(1, v);\n    task.interval = intervalMs;\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-116",
                    "maxclass": "v8.codebox",
                    "numinlets": 2,
                    "numoutlets": 32,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 24.0, 773.0, 776.0, 316.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 960.0, 1211.0, 77.0, 22.0 ],
                    "text": "loadmess 32"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 960.0, 1296.0, 121.0, 22.0 ],
                    "text": "prepend /modeCount"
                }
            },
            {
                "box": {
                    "code": "inlets = 1;\noutlets = 2;\n\nconst FFT_SIZE = 8192;\nconst HALF_N = FFT_SIZE / 2;\nconst NUM_BINS = HALF_N;       // bin 0 〜 1023\nconst NUM_PEAKS = 32;\n\n// 窓関数補正 + FFT正規化 + 片側スペクトラム補正\n// Hann窓のコヒーレントゲイン = 0.5\n// 補正係数 = (2 / FFT_SIZE) * (1 / 0.5) = 4 / FFT_SIZE\nconst MAG_SCALE = 4.0 / FFT_SIZE;\n\nlet samplerate = 44100;\nlet realBufName = \"specReal\";\nlet imagBufName = \"specImg\";\n\nfunction bang() {\n    analyze();\n}\n\nfunction setsamplerate(sr) {\n    samplerate = sr;\n}\n\nfunction setbuffers(realName, imagName) {\n    realBufName = realName;\n    imagBufName = imagName;\n}\n\nfunction analyze() {\n    const realBuf = new Buffer(realBufName);\n    const imagBuf = new Buffer(imagBufName);\n    \n    if (!realBuf || !imagBuf) {\n        post(\"buffer~ not found\\n\");\n        return;\n    }\n    \n    const realSamples = realBuf.peek(1, 0, NUM_BINS);\n    const imagSamples = imagBuf.peek(1, 0, NUM_BINS);\n    \n    if (!realSamples || !imagSamples) {\n        post(\"failed to read buffers\\n\");\n        return;\n    }\n    \n    // 正規化済み magnitude\n    const mags = new Float64Array(NUM_BINS);\n    for (let k = 0; k < NUM_BINS; k++) {\n        const re = realSamples[k];\n        const im = imagSamples[k];\n        mags[k] = Math.sqrt(re * re + im * im) * MAG_SCALE;\n    }\n    \n    // ピーク検出 + QIFFT 補間\n    const binHz = samplerate / FFT_SIZE;\n    const peaks = [];\n    \n    for (let k = 1; k < NUM_BINS - 1; k++) {\n        const mPrev = mags[k - 1];\n        const mCur  = mags[k];\n        const mNext = mags[k + 1];\n        \n        if (mCur > mPrev && mCur > mNext) {\n            const denom = mPrev - 2 * mCur + mNext;\n            let dp = 0;\n            let magInterp = mCur;\n            if (Math.abs(denom) > 1e-20) {\n                dp = 0.5 * (mPrev - mNext) / denom;\n                magInterp = mCur - 0.25 * (mPrev - mNext) * dp;\n            }\n            const freq = (k + dp) * binHz;\n            peaks.push({ freq: freq, gain: magInterp });\n        }\n    }\n    \n    // 降順ソート → 上位32\n    peaks.sort((a, b) => b.gain - a.gain);\n    const topPeaks = peaks.slice(0, NUM_PEAKS);\n    \n    while (topPeaks.length < NUM_PEAKS) {\n        topPeaks.push({ freq: 0, gain: 0 });\n    }\n    \n    const freqList = topPeaks.map(p => p.freq);\n    const gainList = topPeaks.map(p => p.gain);\n    \n    outlet(1, gainList);\n    outlet(0, freqList);\n}",
                    "filename": "none",
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 12.0,
                    "id": "obj-88",
                    "maxclass": "v8.codebox",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 24.0, 301.0, 776.0, 458.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 24.0, 246.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 24.0, 211.0, 73.0, 22.0 ],
                    "text": "r framedone"
                }
            },
            {
                "box": {
                    "buffername": "specImg",
                    "id": "obj-83",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 294.0, 85.0, 256.0, 64.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 294.0, 45.0, 135.0, 22.0 ],
                    "text": "buffer~ specImg 8192 1"
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 24.0, 45.0, 139.0, 22.0 ],
                    "text": "buffer~ specReal 8192 1"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1058.0, 812.0, 116.0, 22.0 ],
                    "text": "pfft~ freq.pfft 8192 1"
                }
            },
            {
                "box": {
                    "buffername": "specReal",
                    "id": "obj-39",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 24.0, 85.0, 256.0, 64.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-111",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1313.0, 848.0, 141.0 ],
                    "text": "xy = sin(freq1*x) * sin(freq2*y) + sin(freq2*x) * sin(freq1*y)\nyz = sin(freq2*y) * sin(freq3*z) + sin(freq3*y) * sin(freq2*z)\nzx = sin(freq3*z) * sin(freq1*x) + sin(freq1*z) * sin(freq3*x)\n\npos = xy + yz + zx"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 24.0, 1238.0, 766.0, 33.0 ],
                    "text": "pos = (sin(pi*freq1*x) * sin(pi*freq2*y) + sin(pi*freq2*x) * sin(pi*freq1*y)"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-181", 1 ],
                    "source": [ "obj-1", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-181", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-128", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 31 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 30 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 29 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 28 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 27 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 26 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 25 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 24 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 23 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 22 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 21 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 20 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 19 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 18 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 17 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 16 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 15 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 14 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 13 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 12 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 11 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 10 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-128", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-489", 0 ],
                    "source": [ "obj-141", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-207", 0 ],
                    "order": 0,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-224", 0 ],
                    "order": 2,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 0 ],
                    "order": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 1 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "order": 1,
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 1 ],
                    "order": 1,
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-327", 1 ],
                    "order": 0,
                    "source": [ "obj-209", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 2 ],
                    "midpoints": [ 2016.5, 903.0, 1242.0, 903.0, 1242.0, 522.0, 1021.0, 522.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-279", 0 ],
                    "order": 0,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-316", 0 ],
                    "order": 1,
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-209", 0 ],
                    "source": [ "obj-224", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-318", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 1 ],
                    "source": [ "obj-238", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-246", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-247", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-248", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-260", 0 ],
                    "source": [ "obj-254", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-261", 0 ],
                    "source": [ "obj-257", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-262", 0 ],
                    "source": [ "obj-258", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-246", 0 ],
                    "source": [ "obj-260", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-247", 0 ],
                    "source": [ "obj-261", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-248", 0 ],
                    "source": [ "obj-262", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-267", 0 ],
                    "source": [ "obj-266", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-267", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-266", 1 ],
                    "order": 1,
                    "source": [ "obj-268", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-269", 0 ],
                    "order": 0,
                    "source": [ "obj-268", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 1 ],
                    "source": [ "obj-269", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-277", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-277", 0 ],
                    "source": [ "obj-279", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-254", 0 ],
                    "source": [ "obj-290", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-257", 0 ],
                    "source": [ "obj-291", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-258", 0 ],
                    "source": [ "obj-292", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-306", 0 ],
                    "source": [ "obj-304", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-303", 0 ],
                    "source": [ "obj-306", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-313", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-314", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-313", 0 ],
                    "order": 1,
                    "source": [ "obj-316", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-340", 0 ],
                    "order": 0,
                    "source": [ "obj-316", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-314", 0 ],
                    "order": 1,
                    "source": [ "obj-318", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-341", 0 ],
                    "order": 0,
                    "source": [ "obj-318", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-304", 0 ],
                    "source": [ "obj-320", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "order": 2,
                    "source": [ "obj-323", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-238", 0 ],
                    "order": 1,
                    "source": [ "obj-323", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-328", 0 ],
                    "order": 0,
                    "source": [ "obj-323", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-329", 0 ],
                    "source": [ "obj-323", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-326", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-327", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-327", 2 ],
                    "source": [ "obj-330", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 2 ],
                    "source": [ "obj-331", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-326", 0 ],
                    "order": 1,
                    "source": [ "obj-332", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-327", 0 ],
                    "order": 0,
                    "source": [ "obj-332", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-332", 0 ],
                    "source": [ "obj-334", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-345", 0 ],
                    "source": [ "obj-342", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-344", 0 ],
                    "source": [ "obj-343", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-344", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-259", 0 ],
                    "source": [ "obj-345", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-489", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 1 ],
                    "source": [ "obj-88", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "live.gain~[1]", "live.gain~[1]", 0 ],
            "obj-224": [ "live.gain~", "live.gain~", 0 ],
            "obj-268": [ "live.dial", "live.dial", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "oscsendudpport": 4000
    }
}