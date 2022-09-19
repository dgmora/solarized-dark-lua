--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()

  local colors = {
    none    = 'none',
    base02  = '#073642',
    red     = '#DC322F',
    green   = '#859900',
    yellow  = '#B58900',
    blue    = '#268BD2',
    magenta = '#D33682',
    cyan    = '#2AA198',
    base2   = '#EEE8D5',
    base03  = '#002B36',
    back    = '#002B36',
    orange  = '#CB4B16',
    base01  = '#586E75',
    base00  = '#657B83',
    base0   = '#839496',
    violet  = '#6C71C4',
    base1   = '#93A1A1',
    base3   = '#FDF6E3',
    err_bg  = '#FDF6E3'
  }

  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --

    -- bg = hsl(208, 90, 30), fg = "#A3CFF5"
    -- fg = Normal.fg.darken(40)

    ColorColumn  { fg = colors.none , bg = colors.base02 }, -- Columns set with 'colorcolumn'
    Conceal      { fg = colors.blue                      }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { }, -- Character under the cursor
    CursorColumn { fg = colors.none, bg = colors.base02 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    lCursor      { Cursor }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { fg = colors.none, bg = colors.base0  }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine   { fg = colors.none, bg = colors.base02 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr { fg=colors.base0,  bg=colors.base02, style = 'bold'}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    DiffAdd { fg = colors.green },
    DiffChange   { fg = colors.yellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { fg = colors.red, gui = 'bold' }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { fg = colors.blue, bg = colors.base02 }, -- Diff mode: Changed text within a changed line |diff.txt|
    Directory    { fg = colors.blue }, -- Directory names (and other special names in listings)
    --  ?? should use this or what EndOfBuffer  { fg = colors.none, ctermfg=colors.none, ctermbg=colors.none},
    EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    ErrorMsg     { fg = colors.red, bg = colors.err_bg, gui = 'reverse' }, -- Error messages on the command line
    FoldColumn   { fg = colors.base0 }, -- 'foldcolumn'
    Folded       { fg = colors.base0, gui = 'bold' }, -- Line used for closed folds
    IncSearch    { fg = colors.orange, gui = 'standout' }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    LineNr       { fg = colors.base01 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen   { fg = colors.base3, bg = colors.base02, gui = 'bold' }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = colors.blue }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg      { fg = colors.blue }, -- |more-prompt|
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    NonText      { fg = colors.base00, gui = 'bold' }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = colors.base0, bg = colors.base03 }, -- Normal text
    NormalFloat  { }, -- Normal text in floating windows.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = colors.base0, bg = colors.base02 }, -- Popup menu: Normal item.
    PmenuSbar    { fg = colors.none, bg = colors.base02 }, -- Popup menu: Scrollbar.
    PmenuSel     { fg = colors.base2, bg = colors.base01 }, -- Popup menu: Selected item.
    PmenuThumb   { fg = colors.none, bg = colors.base01 }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = colors.cyan, gui = 'bold' }, -- |hit-enter| prompt and yes/no questions
    Search       { fg = colors.yellow, gui = 'reverse' }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    QuickFixLine { Search }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SignColumn   { fg = colors.base0 }, -- Column where |signs| are displayed
    SpecialKey   { fg = colors.base00, bg = colors.base02, gui = 'bold' }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg = colors.violet,guisp=colors.violet, gui = 'underline' }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { fg = colors.violet,guisp=colors.violet, gui = 'underline' }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { fg = colors.yellow,guisp=colors.yellow, gui = 'underline' }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { fg = colors.cyan,guisp=colors.cyan, gui = 'underline' }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = colors.base02, bg = colors.base2, gui = 'reverse' }, -- Status line of current window
    StatusLineNC {  fg = colors.base02, bg = colors.base1, gui = 'reverse'}, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute   { }, -- |:substitute| replacement text highlighting
    TabLine      { fg = colors.base01, bg = colors.base02 }, -- Tab pages line, not active tab page label
    TabLineFill  {  fg = colors.base01, bg = colors.base02}, -- Tab pages line, where there are no labels
    TabLineSel   {  fg = colors.base2, bg = colors.base02}, -- Tab pages line, active tab page label
    TermCursor   { }, -- Cursor in a focused terminal
    TermCursorNC { }, -- Cursor in an unfocused terminal
    Title        { fg = colors.orange, gui = 'bold' }, -- Titles for output from ":set all", ":autocmd" etc.
    VertSplit    { fg = colors.base01 }, -- Column separating vertically split windows
    Visual       { fg = colors.base01, bg = colors.base03, gui = 'reverse' }, -- Visual mode selection
    VisualNOS    { fg = colors.none, bg = colors.base02, gui = 'reverse' }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   {  fg = colors.orange, gui = 'bold' }, -- Warning messages
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     {  fg = colors.base00, bg = colors.base2, gui = 'reverse' }, -- Current match in 'wildmenu' completion
    Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.


    -- Missing in template but in solarized
    --
    -- CommandMode  { fg = colors.base02, bg = colors.magenta, gui = 'bold,reverse'},
    -- FloatBorder  { VertSplit }
    -- InsertMode  { fg = colors.base02, bg = colors.cyan, gui = 'bold,reverse'},
    -- NormalMode { fg = colors.base02, bg = colors.base2, gui = 'reverse'},
    -- ReplaceMode  { fg = colors.base02, bg = colors.orange, gui = 'bold,reverse'},
    -- Terminal  syntax['Normal']
    -- ToolbarButton  { fg = colors.base1, bg = colors.base02, gui = 'bold'},
    -- ToolbarLine  { fg = colors.none, bg = colors.base02},
    -- VisualMode  { fg = colors.base02, bg = colors.magenta, gui = 'bold,reverse'},

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        {  fg = colors.base01, gui = 'italic' }, -- Any comment

    Constant       { fg = colors.cyan }, -- (*) Any constant
    String         { Constant }, --   A string constant: "this is a string"
    Character      { Constant }, --   A character constant: 'c', '\n'
    Number         { Constant }, --   A number constant: 234, 0xff
    Boolean        { Constant }, --   A boolean constant: TRUE, false
    Float          { Constant }, --   A floating point constant: 2.3e10

    Identifier     { fg=colors.blue }, -- (*) Any variable name
    Function       { Identifier }, --   Function name (also: methods for classes)

    Statement      { fg=colors.green }, -- (*) Any statement
    Conditional    { Statement }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --   case, default, etc.
    Operator       { Statement }, --   "sizeof", "+", "*", etc.
    Keyword        { Statement }, --   any other keyword
    Exception      { Statement }, --   try, catch, throw

    PreProc        { fg=colors.orange }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = colors.yellow }, -- (*) int, long, char, etc.
    StorageClass   { Type }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { fg = colors.orange }, -- (*) Any special symbol
    SpecialChar    { Special }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { fg = colors.base0 }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug          { Special }, --   Debugging statements

    Underlined     { fg = colors.violet, gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { fg = colors.none , bg = colors.none }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)

    Error          {  fg = colors.red, bg = colors.err_bg, gui = 'bold,reverse' }, -- Any erroneous construct
    Todo           {  fg = colors.magenta, gui = 'bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- StatusLineTerm  { StatusLine }
    -- StatusLineTermNC  { StatusLineNC }

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            {  fg = colors.none, gui = 'underline' } , -- Used for highlighting "text" references
    LspReferenceRead            { LspReferenceText } , -- Used for highlighting "read" references
    LspReferenceWrite           {  fg = colors.none, gui = 'underline,bold' } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = colors.red,guisp=colors.red, gui = 'none' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = colors.yellow,guisp=colors.yellow, gui = 'none' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = colors.cyan,guisp=colors.cyan, gui = 'none' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = colors.green,guisp=colors.green, gui = 'none' } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint"  diagnostic virtual text.
    -- DiagnosticUnderlineError   {  fg = colors.none, sp = colors.red, gui = 'underline' } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    {  fg = colors.none, sp = colors.yellow, gui = 'underline' } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    {  fg = colors.none, sp = colors.cyan, gui = 'underline' } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    {  fg = colors.none, sp = colors.green, gui = 'underline' } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean            { Constant } , -- Boolean literals: `True` and `False` in Python.
    TSCharacter          { Constant } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    TSComment            { Comment } , -- Line comments and block comments.
    TSConditional        { Conditional } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstBuiltin       { Constant } , -- Built-in constant values: `nil` in Lua.
    TSConstMacro         { Constant } , -- Constants defined by macros: `NULL` in C.
    TSConstant           { Constant } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstructor        { Function } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDanger             { } , -- Text representation of a danger note.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSError              { fg = colors.red } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    TSException          { Exception } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              { Identifier } , -- Object and struct fields.
    TSFloat              { Float } , -- Floating-point number literals.
    TSFuncBuiltin        { Function } , -- Built-in functions: `print` in Lua.
    TSFuncMacro          { Function } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSFunction           { Function } , -- Function calls and definitions.
    TSInclude            { Include } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            { Keyword } , -- Keywords that don't fit into other categories.
    TSKeywordFunction    { Identifier } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
    TSLabel              { Label } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSLiteral            { Normal } , -- Literal or verbatim text.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    TSMethod             { Function } , -- Method calls and definitions.
    TSNamespace          { Identifier } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNote               { } , -- Text representation of an informational note.
    TSNumber             { Constant } , -- Numeric literals that don't fit into other categories.
    TSOperator           { Operator } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          { Identifier } , -- Parameters of a function.
    TSParameterReference { Identifier } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    TSProperty           { TSField } , -- Same as `TSField`.
    TSPunctBracket       { Delimiter } , -- Brackets, braces, parentheses, etc.
    TSPunctDelimiter     { Delimiter } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctSpecial       { Special } , -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat             { Repeat } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- TSStrike             { } , -- Strikethrough text.
    TSString             { Constant } , -- String literals.
    TSStringEscape       { Constant } , -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringRegex        { Constant } , -- Regular expression literals.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    TSStrong             {  fg = colors.base1, bg = colors.base03, gui = 'bold' } , -- Text to be represented in bold.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    TSTag                { Special } , -- Tags like HTML tag names.
    -- TSTagAttribute       { } , -- HTML tag attributes.
    TSTagDelimiter       { Delimiter } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    TSTitle              { Title } , -- Text that is part of a title.
    TSType               { Type } , -- Type (and class) definitions and annotations.
    TSTypeBuiltin        { Type } , -- Built-in types: `i32` in Rust.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    TSVariable           { fg = colors.base0 } , -- Variable names that don't fit into other categories.
    TSVariableBuiltin    { Identifier } , -- Variable names defined by the language: `this` or `self` in Javascript.
    -- TSWarning            { } , -- Text representation of a warning note.

    -- This is some stuff that the other solarized from ishan had

    -- vimCommentString  { fg = colors.violet},
    -- vimCommand  { fg = colors.yellow},
    -- vimCmdSep  { fg = colors.blue, gui = 'bold'},
    -- helpExample  { fg = colors.base1},
    -- helpOption  { fg = colors.cyan},
    -- helpNote  { fg = colors.magenta},
    -- helpVim  { fg = colors.magenta},
    -- helpHyperTextJump  { fg = colors.blue},
    -- helpHyperTextEntry  { fg = colors.green},
    -- vimIsCommand  { fg = colors.base00},
    -- vimSynMtchOpt  { fg = colors.yellow},
    -- vimSynType  { fg = colors.cyan},
    -- vimHiLink  { fg = colors.blue},
    -- vimHiGroup  { fg = colors.blue},
    -- vimGroup  { fg = colors.blue, gui = 'bold'},
    -- gitcommitComment  { fg = colors.base01, style=utils.italics()},
    -- gitcommitUnmerged  { fg = colors.green, gui = 'bold'},
    -- gitcommitOnBranch  { fg = colors.base01, gui = 'bold'},
    -- gitcommitBranch  { fg = colors.magenta, gui = 'bold'},
    -- gitcommitUnmerged  { fg = colors.green, gui = 'bold'},
    -- gitcommitOnBranch  { fg = colors.base01, gui = 'bold'},
    -- gitcommitBranch  { fg = colors.magenta, gui = 'bold'},
    -- gitcommitdiscardedtype  { fg = colors.red},
    -- gitcommitselectedtype  { fg = colors.green},
    -- gitcommitHeader  { fg = colors.base01},
    -- gitcommitUntrackedFile  { fg = colors.cyan, gui = 'bold'},
    -- gitcommitDiscardedFile  { fg = colors.red, gui = 'bold'},
    -- gitcommitSelectedFile  { fg = colors.green, gui = 'bold'},
    -- gitcommitUnmergedFile  { fg = colors.yellow, gui = 'bold'},
    -- gitcommitFile  { fg = colors.base0, gui = 'bold'},
    -- htmlTag  { fg = colors.base01},
    -- htmlEndTag  { fg = colors.base01},
    -- htmlTagN  { fg = colors.base1, gui = 'bold'},
    -- htmlTagName  { fg = colors.blue, gui = 'bold'},
    -- htmlSpecialTagName  { fg = colors.blue, style=utils.italics()},
    -- htmlArg  { fg = colors.base00},
    -- javaScript  { fg = colors.yellow},
    -- perlHereDoc  { fg = colors.base1},
    -- perlVarPlain  { fg = colors.yellow},
    -- perlStatementFileDesc  { fg = colors.cyan},
    -- texstatement  { fg = colors.cyan},
    -- texmathzonex  { fg = colors.yellow},
    -- texmathmatcher  { fg = colors.yellow},
    -- texreflabel  { fg = colors.yellow},
    -- rubyDefine  { fg = colors.base1, gui = 'bold'},
    -- rubyBoolean  { fg = colors.magenta},
    -- cPreCondit  { fg = colors.orange},
    -- VarId  { fg = colors.blue},
    -- ConId  { fg = colors.yellow},
    -- hsImport  { fg = colors.magenta},
    -- hsString  { fg = colors.base00},
    -- hsStructure  { fg = colors.cyan},
    -- hs_hlFunctionName  { fg = colors.blue},
    -- hsStatement  { fg = colors.cyan},
    -- hsImportLabel  { fg = colors.cyan},
    -- hs_OpFunctionName  { fg = colors.yellow},
    -- hs_DeclareFunction  { fg = colors.orange},
    -- hsVarSym  { fg = colors.cyan},
    -- hsType  { fg = colors.yellow},
    -- hsTypedef  { fg = colors.cyan},
    -- hsModuleName  { fg = colors.green},
    -- hsNiceOperator  { fg = colors.cyan},
    -- hsniceoperator  { fg = colors.cyan},
    -- pandocTitleBlock  { fg = colors.blue},
    -- pandocTitleBlockTitle  { fg = colors.blue, gui = 'bold'},
    -- pandocTitleComment  { fg = colors.blue, gui = 'bold'},
    -- pandocComment  { fg = colors.base01, style=utils.italics()},
    -- pandocVerbatimBlock  { fg = colors.yellow},
    -- pandocBlockQuote  { fg = colors.blue},
    -- pandocBlockQuoteLeader1  { fg = colors.blue},
    -- pandocBlockQuoteLeader2  { fg = colors.cyan},
    -- pandocBlockQuoteLeader3  { fg = colors.yellow},
    -- pandocBlockQuoteLeader4  { fg = colors.red},
    -- pandocBlockQuoteLeader5  { fg = colors.base0},
    -- pandocBlockQuoteLeader6  { fg = colors.base01},
    -- pandocListMarker  { fg = colors.magenta},
    -- pandocListReference  { fg = colors.magenta},
    -- pandocDefinitionBlock  { fg = colors.violet},
    -- pandocDefinitionTerm  { fg = colors.violet, gui = 'standout'},
    -- pandocDefinitionIndctr  { fg = colors.violet, gui = 'bold'},
    -- pandocEmphasisDefinition  { fg = colors.violet, style=utils.italics()},
    -- pandocEmphasisNestedDefinition  { fg = colors.violet, gui = 'bold'},
    -- pandocStrongEmphasisDefinition  { fg = colors.violet, gui = 'bold'},
    -- pandocStrongEmphasisNestedDefinition  { fg = colors.violet, gui = 'bold'},
    -- pandocStrongEmphasisEmphasisDefinition  { fg = colors.violet, gui = 'bold'},
    -- pandocStrikeoutDefinition  { fg = colors.violet, gui = 'reverse'},
    -- pandocVerbatimInlineDefinition  { fg = colors.violet},
    -- pandocSuperscriptDefinition  { fg = colors.violet},
    -- pandocSubscriptDefinition  { fg = colors.violet},
    -- pandocTable  { fg = colors.blue},
    -- pandocTableStructure  { fg = colors.blue},
    -- pandocTableZebraLight  { fg = colors.blue, bg = colors.base03},
    -- pandocTableZebraDark  { fg = colors.blue, bg = colors.base02},
    -- pandocEmphasisTable  { fg = colors.blue, style=utils.italics()},
    -- pandocEmphasisNestedTable  { fg = colors.blue, gui = 'bold'},
    -- pandocStrongEmphasisTable  { fg = colors.blue, gui = 'bold'},
    -- pandocStrongEmphasisNestedTable  { fg = colors.blue, gui = 'bold'},
    -- pandocStrongEmphasisEmphasisTable  { fg = colors.blue, gui = 'bold'},
    -- pandocStrikeoutTable  { fg = colors.blue, gui = 'reverse'},
    -- pandocVerbatimInlineTable  { fg = colors.blue},
    -- pandocSuperscriptTable  { fg = colors.blue},
    -- pandocSubscriptTable  { fg = colors.blue},
    -- pandocHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocHeadingMarker  { fg = colors.orange, gui = 'bold'},
    -- pandocEmphasisHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocEmphasisNestedHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocStrongEmphasisHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocStrongEmphasisNestedHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocStrongEmphasisEmphasisHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocStrikeoutHeading  { fg = colors.orange, gui = 'reverse'},
    -- pandocVerbatimInlineHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocSuperscriptHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocSubscriptHeading  { fg = colors.orange, gui = 'bold'},
    -- pandocLinkDelim  { fg = colors.base01},
    -- pandocLinkLabel  { fg = colors.blue},
    -- pandocLinkText  { fg = colors.blue},
    -- pandocLinkURL  { fg = colors.base00},
    -- pandocLinkTitle  { fg = colors.base00},
    -- pandocLinkTitleDelim  { fg = colors.base01,guisp=colors.base00},
    -- pandocLinkDefinition  { fg = colors.cyan,guisp=colors.base00},
    -- pandocLinkDefinitionID  { fg = colors.blue, gui = 'bold'},
    -- pandocImageCaption  { fg = colors.violet, gui = 'bold'},
    -- pandocFootnoteLink  { fg = colors.green},
    -- pandocFootnoteDefLink  { fg = colors.green, gui = 'bold'},
    -- pandocFootnoteInline  { fg = colors.green, gui = 'bold'},
    -- pandocFootnote  { fg = colors.green},
    -- pandocCitationDelim  { fg = colors.magenta},
    -- pandocCitation  { fg = colors.magenta},
    -- pandocCitationID  { fg = colors.magenta},
    -- pandocCitationRef  { fg = colors.magenta},
    -- pandocStyleDelim  { fg = colors.base01},
    -- pandocEmphasis  { fg = colors.base0, style=utils.italics()},
    -- pandocEmphasisNested  { fg = colors.base0, gui = 'bold'},
    -- pandocStrongEmphasis  { fg = colors.base0, gui = 'bold'},
    -- pandocStrongEmphasisNested  { fg = colors.base0, gui = 'bold'},
    -- pandocStrongEmphasisEmphasis  { fg = colors.base0, gui = 'bold'},
    -- pandocStrikeout  { fg = colors.base01, gui = 'reverse'},
    -- pandocVerbatimInline  { fg = colors.yellow},
    -- pandocSuperscript  { fg = colors.violet},
    -- pandocSubscript  { fg = colors.violet},
    -- pandocRule  { fg = colors.blue, gui = 'bold'},
    -- pandocRuleLine  { fg = colors.blue, gui = 'bold'},
    -- pandocEscapePair  { fg = colors.red, gui = 'bold'},
    -- pandocCitationRef  { fg = colors.magenta},
    -- pandocNonBreakingSpace  { fg = colors.red, gui = 'reverse'},
    -- pandocMetadataDelim  { fg = colors.base01},
    -- pandocMetadata  { fg = colors.blue},
    -- pandocMetadataKey  { fg = colors.blue},
    -- pandocMetadata  { fg = colors.blue, gui = 'bold'},


    -- vimVar  syntax['Identifier']
    -- vimFunc  syntax['Function']
    -- vimUserFunc  syntax['Function']
    -- helpSpecial  syntax['Special']
    -- vimSet  syntax['Normal']
    -- vimSetEqual  syntax['Normal']
    -- diffAdded  syntax['Statement']
    -- diffLine  syntax['Identifier']
    -- gitcommitUntracked  syntax['gitcommitComment']
    -- gitcommitDiscarded  syntax['gitcommitComment']
    -- gitcommitSelected  syntax['gitcommitComment']
    -- gitcommitNoBranch  syntax['gitcommitBranch']
    -- gitcommitDiscardedArrow  syntax['gitcommitDiscardedFile']
    -- gitcommitSelectedArrow  syntax['gitcommitSelectedFile']
    -- gitcommitUnmergedArrow  syntax['gitcommitUnmergedFile']
    -- jsFuncCall  syntax['Function']
    -- rubySymbol  syntax['String']
    -- hsImportParams  syntax['Delimiter']
    -- hsDelimTypeExport  syntax['Delimiter']
    -- hsModuleStartLabel  syntax['hsStructure']
    -- hsModuleWhereLabel  syntax['hsModuleStartLabel']
    -- pandocVerbatimBlockDeep  syntax['pandocVerbatimBlock']
    -- pandocCodeBlock  syntax['pandocVerbatimBlock']
    -- pandocCodeBlockDelim  syntax['pandocVerbatimBlock']
    -- pandocTableStructureTop  syntax['pandocTableStructre']
    -- pandocTableStructureEnd  syntax['pandocTableStructre']
    -- pandocEscapedCharacter  syntax['pandocEscapePair']
    -- pandocLineBreak  syntax['pandocEscapePair']
    -- pandocMetadataTitle  syntax['pandocMetadata']


    -- LspSagaFinderSelection  syntax['Search']
    -- TargetWord  syntax['Title']

    -- plugin GitSigns
    GitSignsAdd  { DiffAdd },
    GitSignsChange  { DiffChange },
    GitSignsDelete  { DiffDelete },

    -- VGitSignAdd  syntax['DiffAdd']
    -- VgitSignChange  syntax['DiffChange']
    -- VGitSignRemove  syntax['DiffDelete']

	    -- nvim-cmp syntax support
    -- CmpDocumentation = { fg = colors.base1, bg=colors.base02 },
    -- CmpDocumentationBorder = { fg = colors.base1, bg=colors.base02 },

    -- CmpItemAbbr = { fg = colors.base0, bg=colors.none },
    -- CmpItemAbbrDeprecated = { fg = colors.base0, bg=colors.none },
    -- CmpItemAbbrMatch = { fg = colors.base1, bg=colors.none },
    -- CmpItemAbbrMatchFuzzy = { fg = colors.base1, bg=colors.none },

    -- CmpItemKindDefault = { fg = colors.base0, bg=colors.none },
    -- CmpItemMenu = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindKeyword = { fg = colors.yellow, bg=colors.none },
    -- CmpItemKindVariable = { fg = colors.green, bg=colors.none },
    -- CmpItemKindConstant = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindReference = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindValue = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindFunction = { fg = colors.blue, bg=colors.none },
    -- CmpItemKindMethod = { fg = colors.blue, bg=colors.none },
    -- CmpItemKindConstructor = { fg = colors.blue, bg=colors.none },
    -- CmpItemKindClass = { fg = colors.red, bg=colors.none },
    -- CmpItemKindInterface = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindStruct = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindEvent = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindEnum = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindUnit = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindModule = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindProperty = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindField = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindTypeParameter = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindEnumMember = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindOperator = { fg = colors.base0, bg=colors.none },
    -- CmpItemKindSnippet = { fg = colors.orange, bg=colors.none }


  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
