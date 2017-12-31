format PE CONSOLE
include 'win32a.inc'

SCREENSAVER = 0xF140
WM_SYSCOMMAND = 0x112

                invoke  SendMessage,[_broadcast],WM_SYSCOMMAND,SCREENSAVER
                invoke  ExitProcess

_broadcast      dd   0xFFFF

data import

library kernel32,'KERNEL32.DLL',\
         user32,'USER32.DLL'

import kernel32,\
        ExitProcess,'ExitProcess'

import user32,\
        SendMessage,'SendMessageA'
end data
