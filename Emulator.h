#ifndef EMULATOR_H
#define EMULATOR_H

#include <QObject>
#include <QProcess>
#include <iostream>
#include <stdlib.h>

#define WINDOWS
//#define UBUNTU

class Emulator : public QObject
{
    Q_OBJECT

public:
    Emulator(){}
    Q_INVOKABLE void playGame(int game){
#  ifdef WINDOWS
        QProcess proc;
        switch(game)
        {
            case 0:
                proc.startDetached("\"C:\\Program Files (x86)\\Jnes\\Jnes.exe\" \"C:\\Users\\Nyrol\\Downloads\\Mega Man.zip\"");
                break;
            case 1:
                proc.startDetached("\"C:\\Program Files (x86)\\Jnes\\Jnes.exe\" \"C:\\Users\\Nyrol\\Downloads\\Mega Man 2.zip\"");
                break;
            case 2:
                proc.startDetached("\"C:\\Program Files (x86)\\Jnes\\Jnes.exe\" \"C:\\Users\\Nyrol\\Downloads\\Mega Man 3.zip\"");
                break;
            case 3:
                proc.startDetached("\"C:\\Program Files (x86)\\Jnes\\Jnes.exe\" \"C:\\Users\\Nyrol\\Downloads\\Mega Man 4.zip\"");
                break;
            case 4:
                proc.startDetached("\"C:\\Program Files (x86)\\Jnes\\Jnes.exe\" \"C:\\Users\\Nyrol\\Downloads\\Mega Man 5.zip\"");
                break;
            case 5:
                proc.startDetached("\"C:\\Program Files (x86)\\Jnes\\Jnes.exe\" \"C:\\Users\\Nyrol\\Downloads\\Mega Man 6.zip\"");
                break;
        }
#  else
#    ifdef UBUNTU
        QProcess proc;
        switch(game)
        {
            case 0:
                proc.startDetached("mednafen -fs 1 \"/home/nyrol/Roms/Mega Man.nes\"");
                break;
            case 1:
                proc.startDetached("mednafen -fs 1 \"/home/nyrol/Roms/Mega Man 2.nes\"");
                break;
            case 2:
                proc.startDetached("mednafen -fs 1 \"/home/nyrol/Roms/Mega Man 3.nes\"");
                break;
            case 3:
                proc.startDetached("mednafen -fs 1 \"/home/nyrol/Roms/Mega Man 4.nes\"");
                break;
            case 4:
                proc.startDetached("mednafen -fs 1 \"/home/nyrol/Roms/Mega Man 5.nes\"");
                break;
            case 5:
                proc.startDetached("mednafen -fs 1 \"/home/nyrol/Roms/Mega Man 6.nes\"");
                break;
        }
#    endif
#  endif
    }
};

#endif // EMULATOR_H

