import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Util.SpawnOnce
import XMonad.Util.EZConfig
import XMonad.Util.Dmenu
import XMonad.Layout.BinarySpacePartition
emacs = "emacsclient -c -t"
myModKey = mod4Mask
myBorderWidth = 2
-- Customize keybindings
myKeys = [
  ((myModKey, xK_Return), spawn "xfce4-terminal"),
  ((myModKey .|. shiftMask, xK_Return), spawn "emacs"),
  ((myModKey, xK_w), kill),
  ((myModKey, xK_s), spawn "dmenu_run"),
  ((myModKey .|. shiftMask, xK_Print), spawn "sleep 0.2 && scrot ~/Pictures/%Y-%m-%d-%T-screenshot.png -s -e 'xclip -selection clipboard -target image/png -i $f'"),
  ((myModKey, xK_Print), spawn "scrot ~/Pictures/%Y-%m-%d-%T-screenshot.png -e 'xclip -selection clipboard -target image/png -i $f'")
         ]
--myStartScript = do
--  spawn "$HOME/.xmonad/polybar.sh"
main = do
  xmonad $ docks $ ewmh def
   {
--    startupHook     = myStartScript,
    terminal        = emacs,
    modMask         = myModKey,
    borderWidth     = myBorderWidth,
    -- make space for bars/docks
    layoutHook      = avoidStruts $ layoutHook def,
    manageHook      = manageHook def <+> manageDocks,
    -- EWMH
    handleEventHook = handleEventHook def <+> fullscreenEventHook,
    -- colors
    normalBorderColor = color1,
    focusedBorderColor = color2
    }
    `additionalKeys` myKeys
-- colors etc
wallpaper="/home/nyoelle/Downloads/wallpaper-1.jpg"

-- Special
background="#0d0c12"
foreground="#b9b9b6"
cursor="#b9b9b6"

-- Colors
color0="#0d0c12"
color1="#32555F"
color2="#315562"
color3="#4B4D56"
color4="#566065"
color5="#6E7070"
color6="#8D7168"
color7="#b9b9b6"
color8="#81817f"
color9="#32555F"
color10="#315562"
color11="#4B4D56"
color12="#566065"
color13="#6E7070"
color14="#8D7168"
color15="#b9b9b6"
