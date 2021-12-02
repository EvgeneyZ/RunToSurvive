function Macros() {
#macro SCALE_ZERO 1
#macro SCALE_ONE 1.2
#macro SCALE_TWO 1.4
#macro CAMERA_BOUNDS 200
#macro CAMERA_OFFSET 1000
#macro BLOCKSIZE 35
#macro INACTIVE_ALPHA 0.3

	//Items
#macro DRILL_INUMBER           0
#macro STDGUN_INUMBER          DRILL_INUMBER + 1
#macro SHOTGUN_INUMBER         STDGUN_INUMBER + 1
#macro POWERGUN_INUMBER        SHOTGUN_INUMBER + 1
#macro ROCKET_LAUNCHER_INUMBER         POWERGUN_INUMBER + 1
#macro ROCKETBOOTS_INUMBER    ROCKET_LAUNCHER_INUMBER + 1
#macro FORCEFIELD_INUMBER      ROCKETBOOTS_INUMBER + 1
#macro ENERGYFIST_INUMBER      FORCEFIELD_INUMBER + 1
#macro BATTERY_INUMBER         ENERGYFIST_INUMBER + 1
#macro HEARTH_INUMBER          BATTERY_INUMBER + 1
#macro ESSENCE_INUMBER         HEARTH_INUMBER + 1

	//Screen
#macro HIGH_DEFINITION_WIDTH   1920
#macro HIGH_DEFINITION_HEIGHT   1080
#macro STANDART_DEFINITION_WIDTH 1280
#macro STANDART_DEFINITION_HEIGHT 720
#macro LOW_DEFINITION_WIDTH 1200
#macro LOW_DEFINITION_HEIGHT 675

	//Custom Fonts
#macro CF_UPPERCASE "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#macro CF_LOWERCASE "abcdefghijklmnopqrstuvwxyz"
#macro CF_LETTERS CF_UPPERCASE+CF_LOWERCASE
#macro CF_DIGITS "0123456789"

#macro CF_ICONS_XBOX_X "Ӿ"
#macro CF_ICONS_XBOX_Y "Ɣ"
#macro CF_ICONS_XBOX_A "Ǟ"
#macro CF_ICONS_XBOX_B "ß"

#macro CF_ICONS_XBOX CF_ICONS_XBOX_X+CF_ICONS_XBOX_B+CF_ICONS_XBOX_A+CF_ICONS_XBOX_Y

#macro CF_ICONS_PS_SQ "ם"
#macro CF_ICONS_PS_SR "ʘ"
#macro CF_ICONS_PS_CR "×"
#macro CF_ICONS_PS_TR "🞁"

#macro CF_ICONS_PS CF_ICONS_PS_SQ+CF_ICONS_PS_SR+CF_ICONS_PS_CR+CF_ICONS_PS_TR

#macro CF_ICONS_LS "Ɩ"
#macro CF_ICONS_RS "Ʀ"

#macro CF_ICONS_STICKS CF_ICONS_LS+CF_ICONS_RS

#macro CF_ICONS_DPAD_H "Ɔ"
#macro CF_ICONS_DPAD_V "Ƞ"

#macro CF_ICONS_DPAD CF_ICONS_DPAD_H+CF_ICONS_DPAD_V

#macro CF_ICONS_START "Ƨ"
#macro CF_ICONS_SELECT "ƨ"

#macro CF_ICONS_CONTROLLER CF_ICONS_XBOX+CF_ICONS_PS+CF_ICONS_STICKS+CF_ICONS_DPAD+CF_ICONS_START+CF_ICONS_SELECT

#macro CF_ICONS_CHAR1 "Ǚ"
#macro CF_ICONS_CHAR2 "Ʃ"
#macro CF_ICONS_CHAR3 "Ʒ"
#macro CF_ICONS_CHAR4 "Ɯ"

#macro CF_ICONS_CHARS CF_ICONS_CHAR1+CF_ICONS_CHAR2+CF_ICONS_CHAR3+CF_ICONS_CHAR4


}