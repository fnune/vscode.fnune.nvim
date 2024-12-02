local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#D4D4D4',
            vscBack = '#1F1F1F',

            vscTabCurrent = '#1F1F1F',
            vscTabOther = '#2D2D2D',
            vscTabOutside = '#252526',

            vscLeftDark = '#252526',
            vscLeftMid = '#373737',
            vscLeftLight = '#636369',

            vscPopupFront = '#BBBBBB',
            vscPopupBack = '#272727',
            vscPopupHighlightBlue = '#004b72',
            vscPopupHighlightGray = '#343B41',

            vscSplitLight = '#898989',
            vscSplitDark = '#444444',
            vscSplitThumb = '#424242',

            vscCursorDarkDark = '#222222',
            vscCursorDark = '#51504F',
            vscCursorLight = '#AEAFAD',
            vscSelection = '#264F78',
            vscLineNumber = '#5A5A5A',

            vscDiffRedDark = '#4B1818',
            vscDiffRedLight = '#6F1313',
            vscDiffRedLightLight = '#FB0101',
            vscDiffGreenDark = '#373D29',
            vscDiffGreenLight = '#4B5632',
            vscSearchCurrent = '#515c6a',
            vscSearch = '#613315',

            vscGitAdded = '#81b88b',
            vscGitModified = '#e2c08d',
            vscGitDeleted = '#c74e39',
            vscGitRenamed = '#73c991',
            vscGitUntracked = '#73c991',
            vscGitIgnored = '#8c8c8c',
            vscGitStageModified = '#e2c08d',
            vscGitStageDeleted = '#c74e39',
            vscGitConflicting = '#e4676b',
            vscGitSubmodule = '#8db9e2',

            vscContext = '#404040',
            vscContextCurrent = '#707070',

            vscFoldBackground = '#202d39',

            -- Syntax colors
            vscGray = '#808080',
            vscViolet = '#646695',
            vscBlue = '#569CD6',
            vscAccentBlue = '#4FC1FF',
            vscDarkBlue = '#223E55',
            vscMediumBlue = '#18a2fe',
            vscDisabledBlue = '#729DB3',
            vscLightBlue = '#9CDCFE',
            vscGreen = '#6A9955',
            vscBlueGreen = '#4EC9B0',
            vscLightGreen = '#B5CEA8',
            vscRed = '#F44747',
            vscOrange = '#CE9178',
            vscLightRed = '#D16969',
            vscYellowOrange = '#D7BA7D',
            vscYellow = '#DCDCAA',
            vscDarkYellow = '#FFD602',
            vscPink = '#C586C0',

            -- Low contrast with default background
            vscDimHighlight = '#51504F',
        }
    else
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#343434',
            vscBack = '#EEEEEE',

            vscTabCurrent = '#EEEEEE',
            vscTabOther = '#CFCFCF',
            vscTabOutside = '#D9D9D9',

            vscLeftDark = '#B8B8B8',
            vscLeftMid = '#D1D1D1',
            vscLeftLight = '#E2E2E2',

            vscPopupFront = '#343434',
            vscPopupBack = '#EEEEEE',
            vscPopupHighlightBlue = '#0064c1',
            vscPopupHighlightGray = '#767676',

            vscSplitLight = '#DDDDDD',
            vscSplitDark = '#CCCCCC',
            vscSplitThumb = '#D1D1D1',

            vscCursorDarkDark = '#D6DDE3',
            vscCursorDark = '#A0BDD3',
            vscCursorLight = '#B3CFE8',
            vscSelection = '#B3CFE8',
            vscLineNumber = '#098658',

            vscDiffRedDark = '#FFCCCC',
            vscDiffRedLight = '#FFA3A3',
            vscDiffRedLightLight = '#FFCCCC',
            vscDiffGreenDark = '#DBE6C2',
            vscDiffGreenLight = '#EBF1DD',
            vscSearchCurrent = '#A8AC94',
            vscSearch = '#F8C9AB',

            vscGitAdded = '#587c0c',
            vscGitModified = '#895503',
            vscGitDeleted = '#ad0707',
            vscGitRenamed = '#007100',
            vscGitUntracked = '#007100',
            vscGitIgnored = '#8e8e90',
            vscGitStageModified = '#895503',
            vscGitStageDeleted = '#ad0707',
            vscGitConflicting = '#ad0707',
            vscGitSubmodule = '#1258a7',

            vscContext = '#BEBEBE',
            vscContextCurrent = '#868686',

            vscFoldBackground = '#D4E9FF',

            -- Syntax colors
            vscGray = '#A1A1A1',
            vscViolet = '#000080',
            vscBlue = '#005BBB',
            vscAccentBlue = '#007FFF',
            vscMediumBlue = '#3A9FF5',
            vscDisabledBlue = '#97AEC3',
            vscDarkBlue = '#005BBB',
            vscLightBlue = '#206FCF',
            vscGreen = '#008000',
            vscBlueGreen = '#16825D',
            vscLightGreen = '#098658',
            vscRed = '#d4351c',
            vscOrange = '#B85016',
            vscLightRed = '#A31515',
            vscYellowOrange = '#800000',
            vscYellow = '#A37400',
            vscDarkYellow = '#FFC107',
            vscPink = '#AF00DB',

            -- Low contrast with default background
            vscDimHighlight = '#B2DFDB',
        }
    end

    -- Other ui specific colors
    mycolors.vscUiBlue = '#084671'
    mycolors.vscUiOrange = '#f28b25'
    mycolors.vscPopupHighlightLightBlue = '#d7eafe'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('vscode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
