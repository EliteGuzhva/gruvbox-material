" -----------------------------------------------------------------------------
" Name:         Gruvbox Material
" Description:  Gruvbox with Material Palette
" Author:       Sainnhepark <sainnhe@gmail.com>
" Website:      https://github.com/sainnhe/gruvbox-material/
" License:      MIT && Anti-996
" -----------------------------------------------------------------------------

" Initialization: {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

let g:colors_name = 'gruvbox-material'
" }}}
" Configuration: {{{
let s:configuration = {}
let s:configuration.background = get(g:, 'gruvbox_material_background', 'medium')
let s:configuration.palette = get(g:, 'gruvbox_material_palette', 'material')
let s:configuration.transparent_background = get(g:, 'gruvbox_material_transparent_background', 0)
let s:configuration.disable_italic_comment = get(g:, 'gruvbox_material_disable_italic_comment', 0)
let s:configuration.enable_bold = get(g:, 'gruvbox_material_enable_bold', 0)
let s:configuration.enable_italic = get(g:, 'gruvbox_material_enable_italic', 0)
let s:configuration.visual = get(g:, 'gruvbox_material_visual', 'green background')
let s:configuration.menu_selection_background = get(g:, 'gruvbox_material_menu_selection_background', 'grey')
let s:configuration.current_word = get(g:, 'gruvbox_material_current_word', get(g:, 'gruvbox_material_transparent_background', 0) == 0 ? 'grey background' : 'bold')
" }}}
" Palette: {{{
if type(s:configuration.palette) == 4
  let s:palette = s:configuration.palette
else
  if s:configuration.palette ==# 'material'
    if s:configuration.background ==# 'hard'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#1d2021',   '234',  'Black'],
              \ 'bg1':        ['#242525',   '235',  'DarkGrey'],
              \ 'bg2':        ['#282828',   '235',  'DarkGrey'],
              \ 'bg3':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg4':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg5':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#ea6962',   '167',  'Red'],
              \ 'bg_green':   ['#a9b665',   '142',  'Green'],
              \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#d4be98',   '223',  'White'],
              \ 'fg1':        ['#ddc7a1',   '223',  'White'],
              \ 'red':        ['#ea6962',   '167',  'Red'],
              \ 'orange':     ['#e78a4e',   '208',  'DarkYellow'],
              \ 'yellow':     ['#d8a657',   '214',  'Yellow'],
              \ 'green':      ['#a9b665',   '142',  'Green'],
              \ 'aqua':       ['#89b482',   '108',  'Cyan'],
              \ 'blue':       ['#7daea3',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f9f5d7',   '230',  'White'],
              \ 'bg1':        ['#f7f0ce',   '229',  'LightGrey'],
              \ 'bg2':        ['#f3eac7',   '229',  'LightGrey'],
              \ 'bg3':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg4':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg5':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg_grey0':   ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#ae5858',   '88',   'Red'],
              \ 'bg_green':   ['#6f8352',   '100',  'Green'],
              \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow'],
              \ 'bg_green1':  ['#e3f6b4',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dde5c2',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#ffdbcc',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f6d2ba',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#cff1f6',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d9e1cc',   '117',  'LightBlue'],
              \ 'fg0':        ['#654735',   '237',  'Black'],
              \ 'fg1':        ['#4f3829',   '237',  'Black'],
              \ 'red':        ['#c14a4a',   '88',   'Red'],
              \ 'orange':     ['#c35e0a',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b47109',   '136',  'Yellow'],
              \ 'green':      ['#6c782e',   '100',  'Green'],
              \ 'aqua':       ['#4c7a5d',   '165',  'Cyan'],
              \ 'blue':       ['#45707a',   '24',   'Blue'],
              \ 'purple':     ['#945e80',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'medium'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#282828',   '235',  'Black'],
              \ 'bg1':        ['#2e2d2d',   '236',  'DarkGrey'],
              \ 'bg2':        ['#32302f',   '236',  'DarkGrey'],
              \ 'bg3':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg4':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg5':        ['#5a524c',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#ea6962',   '167',  'Red'],
              \ 'bg_green':   ['#a9b665',   '142',  'Green'],
              \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow'],
              \ 'bg_green1':  ['#34381b',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#3b4439',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#402120',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#4c3432',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0e363e',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#374141',   '17',   'DarkBlue'],
              \ 'fg0':        ['#d4be98',   '223',  'White'],
              \ 'fg1':        ['#ddc7a1',   '223',  'White'],
              \ 'red':        ['#ea6962',   '167',  'Red'],
              \ 'orange':     ['#e78a4e',   '208',  'DarkYellow'],
              \ 'yellow':     ['#d8a657',   '214',  'Yellow'],
              \ 'green':      ['#a9b665',   '142',  'Green'],
              \ 'aqua':       ['#89b482',   '108',  'Cyan'],
              \ 'blue':       ['#7daea3',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#fbf1c7',   '229',  'White'],
              \ 'bg1':        ['#f6ebc1',   '228',  'LightGrey'],
              \ 'bg2':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg3':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg4':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg5':        ['#ddccab',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#bdae93',   '248',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#ae5858',   '88',   'Red'],
              \ 'bg_green':   ['#6f8352',   '100',  'Green'],
              \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow'],
              \ 'bg_green1':  ['#daf0a7',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dee2b6',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcdb9',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f7cfae',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#c6eaf0',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#dadec0',   '117',  'LightBlue'],
              \ 'fg0':        ['#654735',   '237',  'Black'],
              \ 'fg1':        ['#4f3829',   '237',  'Black'],
              \ 'red':        ['#c14a4a',   '88',   'Red'],
              \ 'orange':     ['#c35e0a',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b47109',   '136',  'Yellow'],
              \ 'green':      ['#6c782e',   '100',  'Green'],
              \ 'aqua':       ['#4c7a5d',   '165',  'Cyan'],
              \ 'blue':       ['#45707a',   '24',   'Blue'],
              \ 'purple':     ['#945e80',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'soft'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#32302f',   '236',  'Black'],
              \ 'bg1':        ['#383533',   '237',  'DarkGrey'],
              \ 'bg2':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg3':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg4':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg5':        ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#ea6962',   '167',  'Red'],
              \ 'bg_green':   ['#a9b665',   '142',  'Green'],
              \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#d4be98',   '223',  'White'],
              \ 'fg1':        ['#ddc7a1',   '223',  'White'],
              \ 'red':        ['#ea6962',   '167',  'Red'],
              \ 'orange':     ['#e78a4e',   '208',  'DarkYellow'],
              \ 'yellow':     ['#d8a657',   '214',  'Yellow'],
              \ 'green':      ['#a9b665',   '142',  'Green'],
              \ 'aqua':       ['#89b482',   '108',  'Cyan'],
              \ 'blue':       ['#7daea3',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f2e5bc',   '228',  'White'],
              \ 'bg1':        ['#efe0b7',   '223',  'LightGrey'],
              \ 'bg2':        ['#ebdbb2',   '228',  'LightGrey'],
              \ 'bg3':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg4':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg5':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#ae5858',   '88',   'Red'],
              \ 'bg_green':   ['#6f8352',   '100',  'Green'],
              \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow'],
              \ 'bg_green1':  ['#d1ea9b',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#d7d9ae',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcab5',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f0c6a6',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#bee4ea',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d3d5b8',   '117',  'LightBlue'],
              \ 'fg0':        ['#654735',   '237',  'Black'],
              \ 'fg1':        ['#4f3829',   '237',  'Black'],
              \ 'red':        ['#c14a4a',   '88',   'Red'],
              \ 'orange':     ['#c35e0a',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b47109',   '136',  'Yellow'],
              \ 'green':      ['#6c782e',   '100',  'Green'],
              \ 'aqua':       ['#4c7a5d',   '165',  'Cyan'],
              \ 'blue':       ['#45707a',   '24',   'Blue'],
              \ 'purple':     ['#945e80',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif
    endif  " }}}
  elseif s:configuration.palette ==# 'original'
    if s:configuration.background ==# 'hard'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#1d2021',   '234',  'Black'],
              \ 'bg1':        ['#242525',   '235',  'DarkGrey'],
              \ 'bg2':        ['#282828',   '235',  'DarkGrey'],
              \ 'bg3':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg4':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg5':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
              \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#ebdbb2',   '223',  'White'],
              \ 'fg1':        ['#ebdbb2',   '223',  'White'],
              \ 'red':        ['#fb4934',   '167',  'Red'],
              \ 'orange':     ['#fe8019',   '208',  'DarkYellow'],
              \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
              \ 'green':      ['#b8bb26',   '142',  'Green'],
              \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
              \ 'blue':       ['#83a598',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f9f5d7',   '230',  'White'],
              \ 'bg1':        ['#f7f0ce',   '229',  'LightGrey'],
              \ 'bg2':        ['#f3eac7',   '229',  'LightGrey'],
              \ 'bg3':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg4':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg5':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg_grey0':   ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#79740e',   '106',  'Green'],
              \ 'bg_yellow':  ['#b57614',   '172',  'Yellow'],
              \ 'bg_green1':  ['#e3f6b4',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dde5c2',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#ffdbcc',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f6d2ba',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#cff1f6',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d9e1cc',   '117',  'LightBlue'],
              \ 'fg0':        ['#3c3836',   '237',  'Black'],
              \ 'fg1':        ['#3c3836',   '237',  'Black'],
              \ 'red':        ['#9d0006',   '88',   'Red'],
              \ 'orange':     ['#af3a03',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b57614',   '136',  'Yellow'],
              \ 'green':      ['#79740e',   '100',  'Green'],
              \ 'aqua':       ['#427b58',   '165',  'Cyan'],
              \ 'blue':       ['#076678',   '24',   'Blue'],
              \ 'purple':     ['#8f3f71',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'medium'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#282828',   '235',  'Black'],
              \ 'bg1':        ['#2e2d2d',   '236',  'DarkGrey'],
              \ 'bg2':        ['#32302f',   '236',  'DarkGrey'],
              \ 'bg3':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg4':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg5':        ['#5a524c',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
              \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow'],
              \ 'bg_green1':  ['#34381b',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#3b4439',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#402120',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#4c3432',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0e363e',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#374141',   '17',   'DarkBlue'],
              \ 'fg0':        ['#ebdbb2',   '223',  'White'],
              \ 'fg1':        ['#ebdbb2',   '223',  'White'],
              \ 'red':        ['#fb4934',   '167',  'Red'],
              \ 'orange':     ['#fe8019',   '208',  'DarkYellow'],
              \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
              \ 'green':      ['#b8bb26',   '142',  'Green'],
              \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
              \ 'blue':       ['#83a598',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#fbf1c7',   '229',  'White'],
              \ 'bg1':        ['#f6ebc1',   '228',  'LightGrey'],
              \ 'bg2':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg3':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg4':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg5':        ['#ddccab',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#bdae93',   '248',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#79740e',   '106',  'Green'],
              \ 'bg_yellow':  ['#b57614',   '172',  'Yellow'],
              \ 'bg_green1':  ['#daf0a7',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dee2b6',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcdb9',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f7cfae',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#c6eaf0',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#dadec0',   '117',  'LightBlue'],
              \ 'fg0':        ['#3c3836',   '237',  'Black'],
              \ 'fg1':        ['#3c3836',   '237',  'Black'],
              \ 'red':        ['#9d0006',   '88',   'Red'],
              \ 'orange':     ['#af3a03',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b57614',   '136',  'Yellow'],
              \ 'green':      ['#79740e',   '100',  'Green'],
              \ 'aqua':       ['#427b58',   '165',  'Cyan'],
              \ 'blue':       ['#076678',   '24',   'Blue'],
              \ 'purple':     ['#8f3f71',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'soft'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#32302f',   '236',  'Black'],
              \ 'bg1':        ['#383533',   '237',  'DarkGrey'],
              \ 'bg2':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg3':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg4':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg5':        ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
              \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#ebdbb2',   '223',  'White'],
              \ 'fg1':        ['#ebdbb2',   '223',  'White'],
              \ 'red':        ['#fb4934',   '167',  'Red'],
              \ 'orange':     ['#fe8019',   '208',  'DarkYellow'],
              \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
              \ 'green':      ['#b8bb26',   '142',  'Green'],
              \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
              \ 'blue':       ['#83a598',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f2e5bc',   '228',  'White'],
              \ 'bg1':        ['#efe0b7',   '223',  'LightGrey'],
              \ 'bg2':        ['#ebdbb2',   '228',  'LightGrey'],
              \ 'bg3':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg4':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg5':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#79740e',   '106',  'Green'],
              \ 'bg_yellow':  ['#b57614',   '172',  'Yellow'],
              \ 'bg_green1':  ['#d1ea9b',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#d7d9ae',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcab5',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f0c6a6',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#bee4ea',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d3d5b8',   '117',  'LightBlue'],
              \ 'fg0':        ['#3c3836',   '237',  'Black'],
              \ 'fg1':        ['#3c3836',   '237',  'Black'],
              \ 'red':        ['#9d0006',   '88',   'Red'],
              \ 'orange':     ['#af3a03',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b57614',   '136',  'Yellow'],
              \ 'green':      ['#79740e',   '100',  'Green'],
              \ 'aqua':       ['#427b58',   '165',  'Cyan'],
              \ 'blue':       ['#076678',   '24',   'Blue'],
              \ 'purple':     ['#8f3f71',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif
    endif  " }}}
  endif
endif
" }}}
" Function: {{{
" call s:HL(group, foreground, background)
" call s:HL(group, foreground, background, gui, guisp)
"
" E.g.:
" call s:HL('Normal', s:palette.fg0, s:palette.bg0)

if (has('termguicolors') && &termguicolors) || has('gui_running')  " guifg guibg gui cterm guisp
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'guifg=' . a:fg[0],
          \ 'guibg=' . a:bg[0],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'gui=undercurl')
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'gui=' . a:1)
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'gui=NONE')
      call add(hl_string, 'cterm=NONE')
    endif
    if a:0 >= 2
      call add(hl_string, 'guisp=' . a:2[0])
    endif
    execute join(hl_string, ' ')
  endfunction
elseif s:t_Co >= 256  " ctermfg ctermbg cterm
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[1],
          \ 'ctermbg=' . a:bg[1],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
else  " ctermfg ctermbg cterm
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[2],
          \ 'ctermbg=' . a:bg[2],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
endif
" }}}

" Common Highlight Groups: {{{
" UI: {{{
if s:configuration.transparent_background
  call s:HL('Normal', s:palette.fg0, s:palette.none)
  call s:HL('Terminal', s:palette.fg0, s:palette.none)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.none)
  call s:HL('FoldColumn', s:palette.grey, s:palette.none)
  call s:HL('Folded', s:palette.grey, s:palette.none)
  call s:HL('SignColumn', s:palette.fg0, s:palette.none)
  call s:HL('IncSearch', s:palette.none, s:palette.none, 'reverse,bold,underline')
  call s:HL('Search', s:palette.none, s:palette.none, 'reverse')
else
  call s:HL('Normal', s:palette.fg0, s:palette.bg0)
  call s:HL('Terminal', s:palette.fg0, s:palette.bg0)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.bg0)
  call s:HL('FoldColumn', s:palette.grey, s:palette.bg2)
  call s:HL('Folded', s:palette.grey, s:palette.bg2)
  call s:HL('SignColumn', s:palette.fg0, s:palette.bg2)
  call s:HL('IncSearch', s:palette.none, s:palette.none, 'reverse')
  call s:HL('Search', s:palette.none, s:palette.bg_blue2)
endif
call s:HL('ColorColumn', s:palette.none, s:palette.bg2)
call s:HL('Conceal', s:palette.grey, s:palette.none)
call s:HL('Cursor', s:palette.none, s:palette.none, 'reverse')
call s:HL('lCursor', s:palette.none, s:palette.none, 'reverse')
call s:HL('CursorColumn', s:palette.none, s:palette.bg1)
call s:HL('CursorLine', s:palette.none, s:palette.bg1)
call s:HL('LineNr', s:palette.bg_grey0, s:palette.none)
if &relativenumber == 1 && &cursorline == 0
  call s:HL('CursorLineNr', s:palette.bg_grey1, s:palette.none)
else
  call s:HL('CursorLineNr', s:palette.bg_grey1, s:palette.bg1)
endif
call s:HL('DiffAdd', s:palette.none, s:palette.bg_green1)
call s:HL('DiffChange', s:palette.none, s:palette.bg_blue1)
call s:HL('DiffDelete', s:palette.none, s:palette.bg_red1)
call s:HL('DiffText', s:palette.none, s:palette.none, 'reverse')
call s:HL('Directory', s:palette.green, s:palette.none)
call s:HL('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call s:HL('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call s:HL('ModeMsg', s:palette.fg0, s:palette.none, 'bold')
call s:HL('MoreMsg', s:palette.yellow, s:palette.none, 'bold')
call s:HL('MatchParen', s:palette.none, s:palette.bg4)
call s:HL('NonText', s:palette.grey, s:palette.none)
call s:HL('Pmenu', s:palette.fg1, s:palette.bg3)
call s:HL('PmenuSbar', s:palette.none, s:palette.bg3)
if s:configuration.menu_selection_background ==# 'grey'
  call s:HL('PmenuSel', s:palette.bg3, s:palette.bg_grey1)
  call s:HL('WildMenu', s:palette.bg3, s:palette.bg_grey1)
elseif s:configuration.menu_selection_background ==# 'green'
  call s:HL('PmenuSel', s:palette.bg3, s:palette.bg_green)
  call s:HL('WildMenu', s:palette.bg3, s:palette.bg_green)
end
call s:HL('PmenuThumb', s:palette.none, s:palette.bg_grey0)
call s:HL('Question', s:palette.yellow, s:palette.none)
call s:HL('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
call s:HL('SpellCap', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
call s:HL('SpellLocal', s:palette.aqua, s:palette.none, 'undercurl', s:palette.aqua)
call s:HL('SpellRare', s:palette.purple, s:palette.none, 'undercurl', s:palette.purple)
call s:HL('StatusLine', s:palette.fg1, s:palette.bg5)
call s:HL('StatusLineTerm', s:palette.fg1, s:palette.bg5)
call s:HL('StatusLineNC', s:palette.grey, s:palette.bg2)
call s:HL('StatusLineTermNC', s:palette.grey, s:palette.bg2)
call s:HL('TabLine', s:palette.fg1, s:palette.bg5)
call s:HL('TabLineFill', s:palette.fg0, s:palette.bg2)
call s:HL('TabLineSel', s:palette.bg0, s:palette.bg_grey1)
call s:HL('VertSplit', s:palette.bg5, s:palette.none)
if s:configuration.visual ==# 'green background'
  call s:HL('Visual', s:palette.none, s:palette.bg_green2)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg_green2)
elseif s:configuration.visual ==# 'blue background'
  call s:HL('Visual', s:palette.none, s:palette.bg_blue2)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg_blue2)
elseif s:configuration.visual ==# 'red background'
  call s:HL('Visual', s:palette.none, s:palette.bg_red2)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg_red2)
elseif s:configuration.visual ==# 'reverse'
  call s:HL('Visual', s:palette.none, s:palette.none, 'reverse')
  call s:HL('VisualNOS', s:palette.none, s:palette.none, 'reverse')
endif
call s:HL('CursorIM', s:palette.none, s:palette.none, 'reverse')
call s:HL('ToolbarLine', s:palette.none, s:palette.bg2)
call s:HL('ToolbarButton', s:palette.fg1, s:palette.bg5, 'bold')
call s:HL('QuickFixLine', s:palette.yellow, s:palette.none, 'reverse')
call s:HL('Debug', s:palette.orange, s:palette.none)
" }}}
" Syntax: {{{
call s:HL('Boolean', s:palette.purple, s:palette.none)
call s:HL('Number', s:palette.purple, s:palette.none)
call s:HL('Float', s:palette.purple, s:palette.none)
if s:configuration.enable_italic
  call s:HL('PreProc', s:palette.purple, s:palette.none, 'italic')
  call s:HL('PreCondit', s:palette.purple, s:palette.none, 'italic')
  call s:HL('Include', s:palette.purple, s:palette.none, 'italic')
  call s:HL('Define', s:palette.purple, s:palette.none, 'italic')
  call s:HL('Conditional', s:palette.red, s:palette.none, 'italic')
  call s:HL('Repeat', s:palette.red, s:palette.none, 'italic')
  call s:HL('Keyword', s:palette.red, s:palette.none, 'italic')
  call s:HL('Typedef', s:palette.red, s:palette.none, 'italic')
  call s:HL('Exception', s:palette.red, s:palette.none, 'italic')
  call s:HL('Statement', s:palette.red, s:palette.none, 'italic')
else
  call s:HL('PreProc', s:palette.purple, s:palette.none)
  call s:HL('PreCondit', s:palette.purple, s:palette.none)
  call s:HL('Include', s:palette.purple, s:palette.none)
  call s:HL('Define', s:palette.purple, s:palette.none)
  call s:HL('Conditional', s:palette.red, s:palette.none)
  call s:HL('Repeat', s:palette.red, s:palette.none)
  call s:HL('Keyword', s:palette.red, s:palette.none)
  call s:HL('Typedef', s:palette.red, s:palette.none)
  call s:HL('Exception', s:palette.red, s:palette.none)
  call s:HL('Statement', s:palette.red, s:palette.none)
endif
call s:HL('Error', s:palette.red, s:palette.none)
call s:HL('StorageClass', s:palette.orange, s:palette.none)
call s:HL('Tag', s:palette.orange, s:palette.none)
call s:HL('Label', s:palette.orange, s:palette.none)
call s:HL('Structure', s:palette.orange, s:palette.none)
call s:HL('Operator', s:palette.orange, s:palette.none)
call s:HL('Title', s:palette.orange, s:palette.none, 'bold')
call s:HL('Special', s:palette.yellow, s:palette.none)
call s:HL('SpecialChar', s:palette.yellow, s:palette.none)
call s:HL('Type', s:palette.yellow, s:palette.none)
if s:configuration.enable_bold
  call s:HL('Function', s:palette.green, s:palette.none, 'bold')
else
  call s:HL('Function', s:palette.green, s:palette.none)
endif
call s:HL('String', s:palette.green, s:palette.none)
call s:HL('Character', s:palette.green, s:palette.none)
call s:HL('Constant', s:palette.aqua, s:palette.none)
call s:HL('Macro', s:palette.aqua, s:palette.none)
call s:HL('Identifier', s:palette.blue, s:palette.none)
call s:HL('SpecialKey', s:palette.blue, s:palette.none)
if s:configuration.disable_italic_comment
  call s:HL('Comment', s:palette.grey, s:palette.none)
  call s:HL('SpecialComment', s:palette.grey, s:palette.none)
  call s:HL('Todo', s:palette.purple, s:palette.none)
else
  call s:HL('Comment', s:palette.grey, s:palette.none, 'italic')
  call s:HL('SpecialComment', s:palette.grey, s:palette.none, 'italic')
  call s:HL('Todo', s:palette.purple, s:palette.none, 'italic')
endif
call s:HL('Delimiter', s:palette.fg0, s:palette.none)
call s:HL('Ignore', s:palette.grey, s:palette.none)
call s:HL('Underlined', s:palette.none, s:palette.none, 'underline')
" }}}
" Predefined Highlight Groups: {{{
call s:HL('Fg', s:palette.fg0, s:palette.none)
call s:HL('Grey', s:palette.grey, s:palette.none)
call s:HL('Yellow', s:palette.yellow, s:palette.none)
call s:HL('Aqua', s:palette.aqua, s:palette.none)
call s:HL('Blue', s:palette.blue, s:palette.none)
if s:configuration.enable_italic
  call s:HL('RedItalic', s:palette.red, s:palette.none, 'italic')
  call s:HL('OrangeItalic', s:palette.orange, s:palette.none, 'italic')
  call s:HL('PurpleItalic', s:palette.purple, s:palette.none, 'italic')
else
  call s:HL('RedItalic', s:palette.red, s:palette.none)
  call s:HL('OrangeItalic', s:palette.orange, s:palette.none)
  call s:HL('PurpleItalic', s:palette.purple, s:palette.none)
endif
call s:HL('Red', s:palette.red, s:palette.none)
call s:HL('Orange', s:palette.orange, s:palette.none)
call s:HL('Purple', s:palette.purple, s:palette.none)
if s:configuration.enable_bold
  call s:HL('GreenBold', s:palette.green, s:palette.none, 'bold')
else
  call s:HL('GreenBold', s:palette.green, s:palette.none)
endif
call s:HL('Green', s:palette.green, s:palette.none)
if s:configuration.transparent_background
  call s:HL('RedSign', s:palette.red, s:palette.none)
  call s:HL('OrangeSign', s:palette.orange, s:palette.none)
  call s:HL('YellowSign', s:palette.yellow, s:palette.none)
  call s:HL('GreenSign', s:palette.green, s:palette.none)
  call s:HL('AquaSign', s:palette.aqua, s:palette.none)
  call s:HL('BlueSign', s:palette.blue, s:palette.none)
  call s:HL('PurpleSign', s:palette.purple, s:palette.none)
else
  call s:HL('RedSign', s:palette.red, s:palette.bg2)
  call s:HL('OrangeSign', s:palette.orange, s:palette.bg2)
  call s:HL('YellowSign', s:palette.yellow, s:palette.bg2)
  call s:HL('GreenSign', s:palette.green, s:palette.bg2)
  call s:HL('AquaSign', s:palette.aqua, s:palette.bg2)
  call s:HL('BlueSign', s:palette.blue, s:palette.bg2)
  call s:HL('PurpleSign', s:palette.purple, s:palette.bg2)
endif
" }}}
" }}}
" Extended File Types: {{{
" Markdown: {{{
" buildin: {{{
call s:HL('markdownH1', s:palette.red, s:palette.none, 'bold')
call s:HL('markdownH2', s:palette.orange, s:palette.none, 'bold')
call s:HL('markdownH3', s:palette.yellow, s:palette.none, 'bold')
call s:HL('markdownH4', s:palette.green, s:palette.none, 'bold')
call s:HL('markdownH5', s:palette.blue, s:palette.none, 'bold')
call s:HL('markdownH6', s:palette.purple, s:palette.none, 'bold')
call s:HL('markdownUrl', s:palette.blue, s:palette.none, 'underline')
call s:HL('markdownItalic', s:palette.none, s:palette.none, 'italic')
call s:HL('markdownBold', s:palette.none, s:palette.none, 'bold')
call s:HL('markdownItalicDelimiter', s:palette.grey, s:palette.none, 'italic')
highlight! link markdownCode Green
highlight! link markdownCodeBlock Aqua
highlight! link markdownCodeDelimiter Aqua
highlight! link markdownBlockquote Grey
highlight! link markdownListMarker Red
highlight! link markdownOrderedListMarker Red
highlight! link markdownRule Purple
highlight! link markdownHeadingRule Grey
highlight! link markdownUrlDelimiter Grey
highlight! link markdownLinkDelimiter Grey
highlight! link markdownLinkTextDelimiter Grey
highlight! link markdownHeadingDelimiter Grey
highlight! link markdownLinkText Purple
highlight! link markdownUrlTitleDelimiter Green
highlight! link markdownIdDeclaration markdownLinkText
highlight! link markdownBoldDelimiter Grey
highlight! link markdownId Yellow
" }}}
" vim-markdown: https://github.com/gabrielelana/vim-markdown{{{
call s:HL('mkdURL', s:palette.blue, s:palette.none, 'underline')
call s:HL('mkdInlineURL', s:palette.purple, s:palette.none, 'underline')
call s:HL('mkdItalic', s:palette.grey, s:palette.none, 'italic')
highlight! link mkdCodeDelimiter Aqua
highlight! link mkdBold Grey
highlight! link mkdLink Purple
highlight! link mkdHeading Grey
highlight! link mkdListItem Red
highlight! link mkdRule Purple
highlight! link mkdDelimiter Grey
highlight! link mkdId Yellow
" }}}
" }}}
" ReStructuredText: {{{
" buildin: https://github.com/marshallward/vim-restructuredtext{{{
call s:HL('rstStandaloneHyperlink', s:palette.purple, s:palette.none, 'underline')
highlight! link rstSubstitutionReference Blue
highlight! link rstInterpretedTextOrHyperlinkReference Aqua
highlight! link rstTableLines Grey
" }}}
" }}}
" LaTex: {{{
" buildin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_TEX{{{
highlight! link texStatement Green
highlight! link texOnlyMath Grey
highlight! link texDefName Yellow
highlight! link texNewCmd Orange
highlight! link texCmdName Blue
highlight! link texBeginEnd Red
highlight! link texBeginEndName Blue
highlight! link texDocType Purple
highlight! link texDocTypeArgs Orange
" }}}
" }}}
" Html: {{{
" buildin: https://notabug.org/jorgesumle/vim-html-syntax{{{
call s:HL('htmlH1', s:palette.red, s:palette.none, 'bold')
call s:HL('htmlH2', s:palette.orange, s:palette.none, 'bold')
call s:HL('htmlH3', s:palette.yellow, s:palette.none, 'bold')
call s:HL('htmlH4', s:palette.green, s:palette.none, 'bold')
call s:HL('htmlH5', s:palette.blue, s:palette.none, 'bold')
call s:HL('htmlH6', s:palette.purple, s:palette.none, 'bold')
call s:HL('htmlLink', s:palette.none, s:palette.none, 'underline')
call s:HL('htmlBold', s:palette.none, s:palette.none, 'bold')
call s:HL('htmlBoldUnderline', s:palette.none, s:palette.none, 'bold,underline')
call s:HL('htmlBoldItalic', s:palette.none, s:palette.none, 'bold,italic')
call s:HL('htmlBoldUnderlineItalic', s:palette.none, s:palette.none, 'bold,underline,italic')
call s:HL('htmlUnderline', s:palette.none, s:palette.none, 'underline')
call s:HL('htmlUnderlineItalic', s:palette.none, s:palette.none, 'underline,italic')
call s:HL('htmlItalic', s:palette.none, s:palette.none, 'italic')
highlight! link htmlTag Green
highlight! link htmlEndTag Blue
highlight! link htmlTagName OrangeItalic
highlight! link htmlArg Aqua
highlight! link htmlScriptTag Purple
highlight! link htmlSpecialTagName RedItalic
" }}}
" }}}
" Xml: {{{
" buildin: https://github.com/chrisbra/vim-xml-ftplugin{{{
highlight! link xmlTag Green
highlight! link xmlEndTag Blue
highlight! link xmlTagName OrangeItalic
highlight! link xmlEqual Orange
highlight! link xmlAttrib Aqua
highlight! link xmlEntity Red
highlight! link xmlEntityPunct Red
highlight! link xmlDocTypeDecl Grey
highlight! link xmlDocTypeKeyword PurpleItalic
highlight! link xmlCdataStart Grey
highlight! link xmlCdataCdata Purple
" }}}
" }}}
" CSS: {{{
" buildin: https://github.com/JulesWang/css.vim{{{
highlight! link cssAttrComma White
highlight! link cssBraces White
highlight! link cssTagName PurpleItalic
highlight! link cssClassNameDot Red
highlight! link cssClassName RedItalic
highlight! link cssFunctionName Yellow
highlight! link cssAttr Orange
highlight! link cssProp Aqua
highlight! link cssCommonAttr Yellow
highlight! link cssPseudoClassId Blue
highlight! link cssPseudoClassFn Green
highlight! link cssPseudoClass Purple
highlight! link cssImportant RedItalic
highlight! link cssSelectorOp Orange
highlight! link cssSelectorOp2 Orange
highlight! link cssColor Green
highlight! link cssAttributeSelector Aqua
highlight! link cssUnitDecorators Orange
highlight! link cssValueLength Green
highlight! link cssValueInteger Green
highlight! link cssValueNumber Green
highlight! link cssValueAngle Green
highlight! link cssValueTime Green
highlight! link cssValueFrequency Green
highlight! link cssVendor Grey
highlight! link cssNoise Grey
" }}}
" }}}
" SASS: {{{
" buildin: {{{
highlight! link sassProperty Aqua
highlight! link sassAmpersand Orange
highlight! link sassClass RedItalic
highlight! link sassClassChar Red
highlight! link sassMixing PurpleItalic
highlight! link sassMixinName Orange
highlight! link sassCssAttribute Yellow
highlight! link sassInterpolationDelimiter Green
highlight! link sassFunction Yellow
highlight! link sassControl RedItalic
highlight! link sassFor RedItalic
highlight! link sassFunctionName GreenBold
" }}}
" scss-syntax: https://github.com/cakebaker/scss-syntax.vim{{{
highlight! link scssMixinName Yellow
highlight! link scssSelectorChar Red
highlight! link scssSelectorName RedItalic
highlight! link scssInterpolationDelimiter Green
highlight! link scssVariableValue Green
highlight! link scssNull Purple
highlight! link scssBoolean Purple
highlight! link scssVariableAssignment Grey
highlight! link scssForKeyword PurpleItalic
highlight! link scssAttribute Orange
highlight! link scssFunctionName Yellow
" }}}
" }}}
" LESS: {{{
" vim-less: https://github.com/groenewege/vim-less{{{
highlight! link lessMixinChar Grey
highlight! link lessClass RedItalic
highlight! link lessVariable Blue
highlight! link lessAmpersandChar Orange
highlight! link lessFunction Yellow
" }}}
" }}}
" JavaScript: {{{
" buildin: http://www.fleiner.com/vim/syntax/javascript.vim{{{
highlight! link javaScriptNull Aqua
highlight! link javaScriptIdentifier Orange
highlight! link javaScriptParens White
highlight! link javaScriptBraces White
highlight! link javaScriptGlobal Purple
highlight! link javaScriptMessage Yellow
highlight! link javaScriptFunction RedItalic
highlight! link javaScriptOperator OrangeItalic
highlight! link javaScriptMember Aqua
" }}}
" vim-javascript: https://github.com/pangloss/vim-javascript{{{
highlight! link jsThis Purple
highlight! link jsUndefined Aqua
highlight! link jsNull Aqua
highlight! link jsNan Aqua
highlight! link jsSuper Purple
highlight! link jsPrototype Purple
highlight! link jsFunction RedItalic
highlight! link jsGlobalNodeObjects PurpleItalic
highlight! link jsGlobalObjects Yellow
highlight! link jsArrowFunction Purple
highlight! link jsArrowFuncArgs Blue
highlight! link jsFuncArgs Blue
highlight! link jsObjectProp Aqua
highlight! link jsVariableDef Blue
highlight! link jsObjectKey Aqua
highlight! link jsParen Blue
highlight! link jsParenIfElse Blue
highlight! link jsParenRepeat Blue
highlight! link jsParenSwitch Blue
highlight! link jsParenCatch Blue
highlight! link jsBracket Blue
highlight! link jsBlockLabel Aqua
highlight! link jsFunctionKey GreenBold
highlight! link jsClassDefinition Yellow
highlight! link jsDot Grey
highlight! link jsDestructuringBlock Blue
highlight! link jsSpreadExpression Purple
highlight! link jsSpreadOperator Green
highlight! link jsModuleKeyword Yellow
highlight! link jsObjectValue Blue
highlight! link jsTemplateExpression Yellow
highlight! link jsTemplateBraces Yellow
highlight! link jsClassMethodType Orange
" }}}
" }}}
" C/C++: {{{
" vim-cpp-enhanced-highlight :https://github.com/octol/vim-cpp-enhanced-highlight{{{
highlight! link cppSTLnamespace Purple
highlight! link cppSTLtype Yellow
highlight! link cppAccess PurpleItalic
highlight! link cppStructure RedItalic
highlight! link cppSTLios Aqua
highlight! link cppSTLiterator PurpleItalic
highlight! link cppSTLexception Purple
" }}}
" vim-cpp-modern :https://github.com/bfrg/vim-cpp-modern{{{
highlight! link cppSTLVariable Aqua
" }}}
" }}}
" ObjectiveC: {{{
" buildin: {{{
highlight! link objcModuleImport PurpleItalic
highlight! link objcException RedItalic
highlight! link objcProtocolList Aqua
highlight! link objcObjDef PurpleItalic
highlight! link objcDirective RedItalic
highlight! link objcPropertyAttribute Orange
highlight! link objcHiddenArgument Aqua
" }}}
" }}}
" C#: {{{
" buildin: https://github.com/nickspoons/vim-cs{{{
highlight! link csUnspecifiedStatement PurpleItalic
highlight! link csStorage RedItalic
highlight! link csClass RedItalic
highlight! link csNewType Aqua
highlight! link csContextualStatement PurpleItalic
highlight! link csInterpolationDelimiter Yellow
highlight! link csInterpolation Yellow
highlight! link csEndColon Fg
" }}}
" }}}
" }}}
" Plugins: {{{
" junegunn/vim-plug{{{
call s:HL('plug1', s:palette.orange, s:palette.none, 'bold')
call s:HL('plugNumber', s:palette.yellow, s:palette.none, 'bold')
highlight! link plug2 Green
highlight! link plugBracket Grey
highlight! link plugName Aqua
highlight! link plugDash Orange
highlight! link plugError Red
highlight! link plugNotLoaded Grey
highlight! link plugRelDate Grey
highlight! link plugH2 Orange
highlight! link plugMessage Orange
highlight! link plugStar Red
highlight! link plugUpdate Blue
highlight! link plugDeleted Grey
highlight! link plugEdge Yellow
highlight! link plugSha Green
" }}}
" neoclide/coc.nvim{{{
call s:HL('CocHoverRange', s:palette.none, s:palette.none, 'bold,underline')
if s:configuration.current_word ==# 'bold'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'bold')
elseif s:configuration.current_word ==# 'underline'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'underline')
elseif s:configuration.current_word ==# 'italic'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'italic')
elseif s:configuration.current_word ==# 'grey background'
  call s:HL('CocHighlightText', s:palette.none, s:palette.bg3)
endif
highlight! link CocErrorSign RedSign
highlight! link CocWarningSign YellowSign
highlight! link CocInfoSign BlueSign
highlight! link CocHintSign AquaSign
highlight! link CocErrorHighlight ALEError
highlight! link CocWarningHighlight ALEWarning
highlight! link CocInfoHighlight ALEInfo
highlight! link CocWarningVirtualText Grey
highlight! link CocErrorVirtualText Grey
highlight! link CocInfoVirtualText Grey
highlight! link CocHintVirtualText Grey
highlight! link CocCodeLens Grey
highlight! link HighlightedyankRegion Visual
highlight! link CocGitAddedSign GreenSign
highlight! link CocGitChangeRemovedSign PurpleSign
highlight! link CocGitChangedSign BlueSign
highlight! link CocGitRemovedSign RedSign
highlight! link CocGitTopRemovedSign RedSign
highlight! link CocExplorerBufferRoot Orange
highlight! link CocExplorerBufferExpandIcon Aqua
highlight! link CocExplorerBufferBufnr Purple
highlight! link CocExplorerBufferModified Red
highlight! link CocExplorerBufferBufname Grey
highlight! link CocExplorerFileRoot Orange
highlight! link CocExplorerFileExpandIcon Aqua
highlight! link CocExplorerFileFullpath Aqua
highlight! link CocExplorerFileDirectory Green
highlight! link CocExplorerFileGitStage Purple
highlight! link CocExplorerFileGitUnstage Yellow
highlight! link CocExplorerFileSize Blue
highlight! link CocExplorerTimeAccessed Aqua
highlight! link CocExplorerTimeCreated Aqua
highlight! link CocExplorerTimeModified Aqua
" }}}
" dense-analysis/ale{{{
call s:HL('ALEError', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call s:HL('ALEWarning', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call s:HL('ALEInfo', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
highlight! link ALEErrorSign RedSign
highlight! link ALEWarningSign YellowSign
highlight! link ALEInfoSign BlueSign
highlight! link ALEVirtualTextError Grey
highlight! link ALEVirtualTextWarning Grey
highlight! link ALEVirtualTextInfo Grey
highlight! link ALEVirtualTextStyleError Grey
highlight! link ALEVirtualTextStyleWarning Grey
" }}}
" neomake/neomake{{{
highlight! link NeomakeError ALEError
highlight! link NeomakeErrorSign RedSign
highlight! link NeomakeWarning ALEWarning
highlight! link NeomakeWarningSign YellowSign
highlight! link NeomakeInfo ALEInfo
highlight! link NeomakeInfoSign BlueSign
highlight! link NeomakeMessage Aqua
highlight! link NeomakeMessageSign AquaSign
highlight! link NeomakeVirtualtextError Grey
highlight! link NeomakeVirtualtextWarning Grey
highlight! link NeomakeVirtualtextInfo Grey
highlight! link NeomakeVirtualtextMessag Grey
" }}}
" vim-syntastic/syntastic{{{
highlight! link SyntasticError ALEError
highlight! link SyntasticWarning ALEWarning
highlight! link SyntasticErrorSign RedSign
highlight! link SyntasticWarningSign YellowSign
" }}}
" Yggdroot/LeaderF{{{
if !exists('g:Lf_StlColorscheme')
  let g:Lf_StlColorscheme = 'gruvbox_material'
endif
if !exists('g:Lf_PopupColorscheme')
  let g:Lf_PopupColorscheme = 'gruvbox_material'
endif
call s:HL('Lf_hl_match', s:palette.green, s:palette.none, 'bold')
call s:HL('Lf_hl_match0', s:palette.green, s:palette.none, 'bold')
call s:HL('Lf_hl_match1', s:palette.aqua, s:palette.none, 'bold')
call s:HL('Lf_hl_match2', s:palette.blue, s:palette.none, 'bold')
call s:HL('Lf_hl_match3', s:palette.purple, s:palette.none, 'bold')
call s:HL('Lf_hl_match4', s:palette.orange, s:palette.none, 'bold')
call s:HL('Lf_hl_matchRefine', s:palette.red, s:palette.none, 'bold')
highlight! link Lf_hl_cursorline Fg
highlight! link Lf_hl_selection DiffAdd
highlight! link Lf_hl_rgHighlight Visual
highlight! link Lf_hl_gtagsHighlight Visual
" }}}
" junegunn/fzf.vim{{{
let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Green'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Aqua'],
      \ 'info':    ['fg', 'Aqua'],
      \ 'prompt':  ['fg', 'Orange'],
      \ 'pointer': ['fg', 'Blue'],
      \ 'marker':  ['fg', 'Yellow'],
      \ 'spinner': ['fg', 'Yellow'],
      \ 'header':  ['fg', 'Grey']
      \ }
" }}}
" Shougo/denite.nvim{{{
call s:HL('deniteMatchedChar', s:palette.green, s:palette.none, 'bold')
call s:HL('deniteMatchedRange', s:palette.green, s:palette.none, 'bold,underline')
call s:HL('deniteInput', s:palette.green, s:palette.bg4, 'bold')
call s:HL('deniteStatusLineNumber', s:palette.purple, s:palette.bg4)
call s:HL('deniteStatusLinePath', s:palette.fg0, s:palette.bg4)
highlight! link deniteSelectedLin Green
" }}}
" kien/ctrlp.vim{{{
call s:HL('CtrlPMatch', s:palette.green, s:palette.none, 'bold')
call s:HL('CtrlPPrtBase', s:palette.bg4, s:palette.none)
call s:HL('CtrlPLinePre', s:palette.bg4, s:palette.none)
call s:HL('CtrlPMode1', s:palette.blue, s:palette.bg4, 'bold')
call s:HL('CtrlPMode2', s:palette.bg0, s:palette.blue, 'bold')
call s:HL('CtrlPStats', s:palette.bg_grey1, s:palette.bg4, 'bold')
highlight! link CtrlPNoEntries Red
highlight! link CtrlPPrtCursor Blue
" }}}
" majutsushi/tagbar{{{
highlight! link TagbarFoldIcon Green
highlight! link TagbarSignature Green
highlight! link TagbarKind Red
highlight! link TagbarScope Orange
highlight! link TagbarNestedKind Aqua
highlight! link TagbarVisibilityPrivate Red
highlight! link TagbarVisibilityPublic Blue
" }}}
" liuchengxu/vista.vim{{{
highlight! link VistaBracket Grey
highlight! link VistaChildrenNr Orange
highlight! link VistaScope Red
highlight! link VistaTag Green
highlight! link VistaPrefix Grey
highlight! link VistaColon Green
highlight! link VistaIcon Purple
highlight! link VistaLineNr Fg
" }}}
" airblade/vim-gitgutter{{{
highlight! link GitGutterAdd GreenSign
highlight! link GitGutterChange BlueSign
highlight! link GitGutterDelete RedSign
highlight! link GitGutterChangeDelete PurpleSign
" }}}
" mhinz/vim-signify{{{
highlight! link SignifySignAdd GreenSign
highlight! link SignifySignChange BlueSign
highlight! link SignifySignDelete RedSign
highlight! link SignifySignChangeDelete PurpleSign
" }}}
" scrooloose/nerdtree{{{
highlight! link NERDTreeDir Green
highlight! link NERDTreeDirSlash Aqua
highlight! link NERDTreeOpenable Orange
highlight! link NERDTreeClosable Orange
highlight! link NERDTreeFile Fg
highlight! link NERDTreeExecFile Yellow
highlight! link NERDTreeUp Grey
highlight! link NERDTreeCWD Aqua
highlight! link NERDTreeHelp LightGrey
highlight! link NERDTreeToggleOn Green
highlight! link NERDTreeToggleOff Red
highlight! link NERDTreeFlags Orange
highlight! link NERDTreeLinkFile Grey
highlight! link NERDTreeLinkTarget Green
" }}}
" justinmk/vim-dirvish{{{
highlight! link DirvishPathTail Aqua
highlight! link DirvishArg Yellow
" }}}
" vim.org/netrw {{{
" https://www.vim.org/scripts/script.php?script_id=1075
highlight! link netrwDir Green
highlight! link netrwClassify Green
highlight! link netrwLink Grey
highlight! link netrwSymLink Fg
highlight! link netrwExe Yellow
highlight! link netrwComment Grey
highlight! link netrwList Aqua
highlight! link netrwHelpCmd Blue
highlight! link netrwCmdSep Grey
highlight! link netrwVersion Orange
" }}}
" andymass/vim-matchup{{{
call s:HL('MatchParenCur', s:palette.none, s:palette.none, 'bold')
call s:HL('MatchWord', s:palette.none, s:palette.none, 'underline')
call s:HL('MatchWordCur', s:palette.none, s:palette.none, 'underline')
" }}}
" easymotion/vim-easymotion {{{
highlight! link EasyMotionTarget Search
highlight! link EasyMotionShade Comment
" }}}
" justinmk/vim-sneak {{{
highlight! link Sneak Cursor
highlight! link SneakLabel Cursor
highlight! link SneakScope DiffChange
" }}}
" terryma/vim-multiple-cursors{{{
highlight! link multiple_cursors_cursor Cursor
highlight! link multiple_cursors_visual Visual
" }}}
" mg979/vim-visual-multi{{{
let g:VM_Mono_hl = 'Cursor'
let g:VM_Extend_hl = 'Visual'
let g:VM_Cursor_hl = 'Cursor'
let g:VM_Insert_hl = 'Cursor'
" }}}
" dominikduda/vim_current_word{{{
highlight! link CurrentWord CocHighlightText
highlight! link CurrentWordTwins CocHighlightText
" }}}
" RRethy/vim-illuminate{{{
highlight! link illuminatedWord CocHighlightText
" }}}
" itchyny/vim-cursorword{{{
highlight! link CursorWord0 CocHighlightText
highlight! link CursorWord1 CocHighlightText
" }}}
" nathanaelkane/vim-indent-guides{{{
if get(g:, 'indent_guides_auto_colors', 1) == 0
  call s:HL('IndentGuidesOdd', s:palette.bg0, s:palette.bg2)
  call s:HL('IndentGuidesEven', s:palette.bg0, s:palette.bg3)
endif
" }}}
" luochen1990/rainbow{{{
if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs = [['blue', s:palette.blue[0]], ['magenta', s:palette.purple[0]],
        \ ['red', s:palette.red[0]], ['166', s:palette.orange[0]]]
endif

let g:rainbow_guifgs = [ s:palette.orange[0], s:palette.red[0], s:palette.purple[0], s:palette.blue[0] ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
  let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs
" }}}
" kshenoy/vim-signature {{{
highlight! link SignatureMarkText BlueSign
highlight! link SignatureMarkerText PurpleSign
" }}}
" mhinz/vim-startify{{{
highlight! link StartifyBracket Grey
highlight! link StartifyFile Fg
highlight! link StartifyNumber Red
highlight! link StartifyPath Green
highlight! link StartifySlash Aqua
highlight! link StartifySection Blue
highlight! link StartifyHeader Orange
highlight! link StartifySpecial Grey
highlight! link StartifyFooter Grey
" }}}
" ap/vim-buftabline{{{
highlight! link BufTabLineCurrent TabLineSel
highlight! link BufTabLineActive TabLine
highlight! link BufTabLineHidden TabLineFill
highlight! link BufTabLineFill TabLineFill
" }}}
" liuchengxu/vim-which-key{{{
highlight! link WhichKey Red
highlight! link WhichKeySeperator Green
highlight! link WhichKeyGroup Yellow
highlight! link WhichKeyDesc Blue
highlight! link WhichKeyFloating SignColumn
" }}}
" skywind3000/quickmenu.vim{{{
highlight! link QuickmenuOption Green
highlight! link QuickmenuNumber Red
highlight! link QuickmenuBracket Grey
highlight! link QuickmenuHelp Green
highlight! link QuickmenuSpecial Purple
highlight! link QuickmenuHeader Orange
" }}}
" mbbill/undotree{{{
call s:HL('UndotreeSavedBig', s:palette.purple, s:palette.none, 'bold')
highlight! link UndotreeNode Orange
highlight! link UndotreeNodeCurrent Red
highlight! link UndotreeSeq Green
highlight! link UndotreeNext Blue
highlight! link UndotreeTimeStamp Grey
highlight! link UndotreeHead Yellow
highlight! link UndotreeBranch Yellow
highlight! link UndotreeCurrent Aqua
highlight! link UndotreeSavedSmall Purple
" }}}
" unblevable/quick-scope {{{
call s:HL('QuickScopePrimary', s:palette.aqua, s:palette.none, 'underline')
call s:HL('QuickScopeSecondary', s:palette.blue, s:palette.none, 'underline')
" }}}
" }}}
" Terminal: {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  " Definition
  let s:terminal = {
        \ 'black':    s:palette.fg0,
        \ 'red':      s:palette.red,
        \ 'yellow':   s:palette.yellow,
        \ 'green':    s:palette.green,
        \ 'cyan':     s:palette.aqua,
        \ 'blue':     s:palette.blue,
        \ 'purple':   s:palette.purple,
        \ 'white':    s:palette.grey
        \ }
  " Implementation: {{{
  if !has('nvim')
    let g:terminal_ansi_colors = [s:terminal.black[0], s:terminal.red[0], s:terminal.green[0], s:terminal.yellow[0],
          \ s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0], s:terminal.black[0], s:terminal.red[0],
          \ s:terminal.green[0], s:terminal.yellow[0], s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0]]
  else
    let g:terminal_color_0 = s:terminal.black[0]
    let g:terminal_color_1 = s:terminal.red[0]
    let g:terminal_color_2 = s:terminal.green[0]
    let g:terminal_color_3 = s:terminal.yellow[0]
    let g:terminal_color_4 = s:terminal.blue[0]
    let g:terminal_color_5 = s:terminal.purple[0]
    let g:terminal_color_6 = s:terminal.cyan[0]
    let g:terminal_color_7 = s:terminal.white[0]
    let g:terminal_color_8 = s:terminal.black[0]
    let g:terminal_color_9 = s:terminal.red[0]
    let g:terminal_color_10 = s:terminal.green[0]
    let g:terminal_color_11 = s:terminal.yellow[0]
    let g:terminal_color_12 = s:terminal.blue[0]
    let g:terminal_color_13 = s:terminal.purple[0]
    let g:terminal_color_14 = s:terminal.cyan[0]
    let g:terminal_color_15 = s:terminal.white[0]
  endif
  " }}}
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
