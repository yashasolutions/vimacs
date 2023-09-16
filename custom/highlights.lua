-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = false,
  },

  NvDashAscii = {
    bg = "none",
    fg = "orange",
  },

  NvDashButtons = {
    fg = "light_grey",
    bg = "none",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },

  -- modicator.nvim
  -- stylua: ignore start
  NormalMode         = { fg = "blue",          bold = true },
  InsertMode         = { fg = "purple",        bold = true },
  VisualMode         = { fg = "cyan",          bold = true },
  CommandMode        = { fg = "vibrant_green", bold = true },
  ReplaceMode        = { fg = "orange",        bold = true },
  SelectMode         = { fg = "nord_blue",     bold = true },
  TerminalMode       = { fg = "green",         bold = true },
  TerminalNormalMode = { fg = "sun",           bold = true },
  -- stylua: ignore end
  -- end modicator.nvim

  -- harpoon FIXME: None of these actually work
  -- stylua: ignore start
  HarpoonInactive       = { fg = "purple", bold = true },
  HarpoonActive         = { fg = "white",  bold = true },
  HarpoonNumberActive   = { fg = "blue",   bold = true },
  HarpoonNumberInactive = { fg = "blue",   bold = true },
  TabLineFill           = { fg = "white",  bold = true },
  -- stylua: ignore end
  -- end harpoon

  -- nvim-biscuits
  BiscuitColor = { fg = "sun" }, -- TODO: make it more sense
  -- end nvim-biscuits

  -- Stutusline
  StCopilot = { fg = "yellow", bg = "black2" },
  -- end Statusline

  -- neotest
  -- stylua: ignore start
  NeotestAdapterName  = { fg = "red"           },
  NeotestBorder       = { fg = "purple"        },
  NeotestDir          = { fg = "teal"          },
  NeotestFailed       = { fg = "red"           },
  NeotestFile         = { fg = "white"         },
  NeotestFocused      = { fg = "green"         },
  NeotestExpandMarker = { fg = "sun"           },
  NeotestIndent       = { fg = "sun"           },
  NeotestMarked       = { fg = "red"           },
  NeotestNamespace    = { fg = "purple"        },
  NeotestPassed       = { fg = "green"         },
  NeotestRunning      = { fg = "grey"          },
  NeotestWinSelect    = { fg = "baby_pink"     },
  NeotestSkipped      = { fg = "grey_fg2"      },
  NeotestTarget       = { fg = "vibrant_green" },
  NeotestTest         = { fg = "dark_purple"   },
  NeotestUnknown      = { fg = "grey"          },
  NeotestWatching     = { fg = "light_grey"    },
  -- stylua: ignore end
  -- end neotest

  -- neogit
  -- PR: NEEDED
  -- stylua: ignore start
  -- NeogitRemote                  = { fg = "white" },
  -- NeogitObjectId                = { fg = "white" },
  -- NeogitStash                   = { fg = "white" },
  -- NeogitFold                    = { fg = "white" },
  -- NeogitRebaseDone              = { fg = "white" },
  -- NeogitTagName                 = { fg = "white" },
  -- NeogitTagDistance             = { fg = "white" },
  -- NeogitSectionHeader           = { fg = "white" },
  -- NeogitUnpushedTo              = { fg = "white" },
  -- NeogitUnmergedInto            = { fg = "white" },
  -- NeogitUnpulledFrom            = { fg = "white" },
  -- NeogitUntrackedfiles          = { fg = "white" },
  -- NeogitUnstagedchanges         = { fg = "white" },
  -- NeogitUnmergedchanges         = { fg = "white" },
  -- NeogitUnpulledchanges         = { fg = "white" },
  -- NeogitRecentcommits           = { fg = "white" },
  -- NeogitStagedchanges           = { fg = "white" },
  -- NeogitStashes                 = { fg = "white" },
  -- NeogitRebasing                = { fg = "white" },
  -- NeogitReverting               = { fg = "white" },
  -- NeogitPicking                 = { fg = "white" },
  -- NeogitChangeModified          = { fg = "white" },
  -- NeogitChangeAdded             = { fg = "white" },
  -- NeogitChangeDeleted           = { fg = "white" },
  -- NeogitChangeRenamed           = { fg = "white" },
  -- NeogitChangeUpdated           = { fg = "white" },
  -- NeogitChangeCopied            = { fg = "white" },
  -- NeogitChangeBothModified      = { fg = "white" },
  -- NeogitChangeNewFile           = { fg = "white" },
  -- NeogitHunkHeader              = { fg = "white" },
  -- NeogitDiffContext             = { fg = "sun"      },
  -- NeogitDiffAdd                 = { fg = "green", bg = "green"    },
  NeogitDiffDelete              = { fg = "red", bg = "NONE"      },
  -- NeogitDiffHeader              = { fg = "grey_fg2" },
  -- NeogitHunkHeaderHighlight     = { fg = "grey_fg2" },
  -- NeogitDiffContextHighlight    = { fg = "grey_fg"  },
  -- NeogitDiffAddHighlight        = { bg = "green"    },
  NeogitDiffDeleteHighlight     = { fg = "red", bg = "NONE"      },
  -- NeogitDiffHeaderHighlight     = { fg = "grey_fg2" },
  -- NeogitCursorLine              = { fg = "white" },
  -- NeogitFilePath                = { fg = "white" },
  -- NeogitCommitViewHeader        = { fg = "white" },
  -- NeogitGraphBlack              = { fg = "black"         },
  -- NeogitGraphBlackBold          = { fg = "black2"        },
  -- NeogitGraphRed                = { fg = "red"           },
  -- NeogitGraphRedBold            = { fg = "red"           },
  -- NeogitGraphGreen              = { fg = "green"         },
  -- NeogitGraphGreenBold          = { fg = "vibrant_green" },
  -- NeogitGraphYellow             = { fg = "yellow"        },
  -- NeogitGraphYellowBold         = { fg = "sun"           },
  -- NeogitGraphBlue               = { fg = "blue"          },
  -- NeogitGraphBlueBold           = { fg = "nord_blue"     },
  -- NeogitGraphPurple             = { fg = "purple"        },
  -- NeogitGraphPurpleBold         = { fg = "dark_purple"   },
  -- NeogitGraphCyan               = { fg = "cyan"          },
  -- NeogitGraphCyanBold           = { fg = "teal"          },
  -- NeogitGraphWhite              = { fg = "white"         },
  -- NeogitGraphWhiteBold          = { fg = "light_grey"    },
  -- NeogitGraphGray               = { fg = "grey"          },
  -- NeogitGraphBoldGray           = { fg = "grey_fg"       },
  -- NeogitGraphOrange             = { fg = "orange"        },
  -- NeogitSignatureGood           = { fg = "green"         },
  -- NeogitSignatureBad            = { fg = "red"           },
  -- NeogitSignatureMissing        = { fg = "grey"          },
  -- NeogitSignatureNone           = { fg = "grey_fg2"      },
  -- NeogitSignatureGoodUnknown    = { fg = "white" },
  -- NeogitSignatureGoodExpired    = { fg = "white" },
  -- NeogitSignatureGoodExpiredKey = { fg = "white" },
  -- NeogitSignatureGoodRevokedKey = { fg = "white" },
  -- NeogitPopupSectionTitle       = { fg = "white" },
  -- NeogitPopupBranchName         = { fg = "white" },
  -- NeogitPopupBold               = { fg = "white" },
  -- NeogitPopupSwitchKey          = { fg = "white" },
  -- NeogitPopupSwitchEnabled      = { fg = "white" },
  -- NeogitPopupSwitchDisabled     = { fg = "white" },
  -- NeogitPopupOptionKey          = { fg = "white" },
  -- NeogitPopupOptionEnabled      = { fg = "white" },
  -- NeogitPopupOptionDisabled     = { fg = "white" },
  -- NeogitPopupConfigKey          = { fg = "white" },
  -- NeogitPopupConfigEnabled      = { fg = "white" },
  -- NeogitPopupConfigDisabled     = { fg = "white" },
  -- NeogitPopupActionKey          = { fg = "white" },
  -- NeogitPopupActionDisabled     = { fg = "white" },
  -- NeogitNotificationInfo        = { fg = "white" },
  -- NeogitNotificationWarning     = { fg = "white" },
  -- NeogitNotificationError       = { fg = "white" },
  -- NeogitCommandText             = { fg = "white" },
  -- NeogitCommandTime             = { fg = "white" },
  -- NeogitCommandCodeNormal       = { fg = "white" },
  -- NeogitCommandCodeError        = { fg = "white" },
  -- stylua: ignore end
  -- end neogit

  -- stylua: ignore start
  BqfPreviewBorder = { fg = "grey_fg2" },
  BqfPreviewTitle  = { fg = "white"    },
  BqfPreviewThumb  = { fg = "white"    },
  BqfPreviewRange  = { fg = "white"    },
  -- stylua: ignore end
}

return M
