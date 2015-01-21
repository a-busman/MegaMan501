// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 2.0

import QtMultimedia 5.0
import QtGraphicalEffects 1.0


Rectangle {
    id: main
    width: 1920
    height: 1080
    color: "black"
    property int current:0
    property int games:7
    state: "Megaman 1"

    Image {
        id: bgl
        height: parent.height
        source: "bgl.jpg"
    }
    Image {
        id: bgr
        anchors.left: bgl.right
        height: parent.height
        source: "bgr.jpg"
    }

    onStateChanged: {
        if (state == "Megaman 1" && !music.PlayingState)
        {
            music.play();
        }
    }
    Audio{
        id: music
        source: "music.wav"

        onStopped: {

            play()
        }
    }
    SoundEffect{
        id: soundEffect
        source: "select.wav"
        loops: 1
    }


    Grid{
        property variant stateNames:["Megaman 1", "Megaman 2", "Megaman 3", "Megaman 4", "Megaman 5", "Megaman 6", "Megaman 7"]
        id: boxArt
        y: 100
        height: parent.height - 200
        width: 117120
        columns: 7

        Info {
            id: megaman1
            controllerSource: "NES_controller.png"
            pressASource: "PressA.jpg"
            titleSource: "Megaman1title.jpg"
            boxSource: "Megaman1.jpg"
            cartSource: "mm1cart.png"
            consoleSource: "NES.png"
            ss1: "snap0001.bmp"
            ss2: "snap0002.bmp"
            ss3: "snap0004.bmp"
            logoSource: "NES logo.png"
            boxText: "It's MEGA MAN verses the powerful leaders and fighting forces of Monsteropolis - that strange multi-layered land of robot-like Humanoids created by the wrongly-performed experiments with human beings by Dr. Wily.

MEGA MAN - the chosen defender of the human race. for he dares to single-handedly penetrate Monsteropolis' seven separate societies to stop the rapid expansion of strange misrepresentations of humans.

MEGA MAN's goal is monumental. He must infiltrate seven separate heavily-guarded empires. By himself, he must break-down and destroy the followers of empire leaders: Cutman, Gutsman, Iceman, Bombman, Fireman, Elecman and Dr. Wily.

The action involves MEGA MAN, armed only with laser beam weapons, encountering strangely-configured Humanoids. They're atop, in and out of fortified prison-like structures strengthened with thick walls. Below icefields. Hidden amid gun turrets imbedded in concrete uprights, even in subterranean passages under icefields. WOW!

Will you and Mega Man penetrate the seven separate societies of Dr. Wily and preserve the human race? You're in control!"
        }
        Info {
            id: megaman2
            controllerSource: "NES_controller.png"
            pressASource: "PressA.jpg"
            titleSource: "Megaman2title.jpg"
            boxSource: "Megaman2.jpg"
            cartSource: "mm2cart.png"
            consoleSource: "NES.png"
            ss1: "snap0008.bmp"
            ss2: "snap0010.bmp"
            ss3: "snap0026.bmp"
            logoSource: "NES logo.png"
            boxText: "He's Back! And this time the evil Dr. Wily (once the supreme power in the universe) has created even more sinister robots to mount his attack. But as MegaMan, you've also grown in power and ability. Can you save mankind from the evil desires of Dr. Wily?

Each of the eight empires is ruled by a different super-robot. You must defeat each enemy on his own turf, building up weapons as you go. Only after all are destroyed will you go head-on with the mastermind himself, the evil Dr. Wily. But be alert, MegaMan, Dr. Wily has powers his creations did not!

Civilization relies on your skill and courage - confident that you, MegaMan, will stand tall in the end!"
        }
        Info {
            id: megaman3
            controllerSource: "NES_controller.png"
            pressASource: "PressA.jpg"
            titleSource: "Megaman3title.jpg"
            boxSource: "Megaman3.jpg"
            cartSource: "mm3cart.png"
            consoleSource: "NES.png"
            ss1: "snap0032.bmp"
            ss2: "snap0054.bmp"
            ss3: "snap0062.bmp"
            logoSource: "NES logo.png"
            boxText: "Mega Man 3 Explodes in Back-to-Back Robot Battle!

It's robot rebellion, and nobody's safe! Least of all Mega Man. This time the superpowerful cyborg takes on a horde of metal maniacs who've had it with being obedient! And they use every android-annihilator ever invented to make you believe it!

Mega Man goes berserk, blasting through a galaxy of mining stations in search of energy crystals. But it takes more than guts to battle the phenomenal robot-masters who control these worlds. It's a wrenching job, the worst -- and the best -- that Mega Man's faced so far!"
        }
        Info {
            id: megaman4
            controllerSource: "NES_controller.png"
            pressASource: "PressA.jpg"
            titleSource: "Megaman4title.jpg"
            boxSource: "Megaman4.jpg"
            cartSource: "mm4cart.png"
            consoleSource: "NES.png"
            ss1: "snap0066.bmp"
            ss2: "snap0068.bmp"
            ss3: "snap0071.bmp"
            logoSource: "NES logo.png"
            boxText: "Russian Robots on the Rampage!

For a year the city has been quiet, but a new robotic terror has gripped the city! That scheming scientist, Dr. Cossack has arrived in town with eight new metal maniacs who are bigger and badder than anything Dr. Wily ever dreamed of. It's going to be a cybernetic showdown as the streets of the city erupt with the sizzling sounds of molten metal!

Armed with the new Mega Buster, Mega Man runs, jumps and dodges his way through mazes of metallic munchkins on his way to the siberian citadel of Dr. Crossack for the final cataclysmic clash!"
        }
        Info {
            id: megaman5
            controllerSource: "NES_controller.png"
            pressASource: "PressA.jpg"
            titleSource: "Megaman5title.jpg"
            boxSource: "Megaman5.jpg"
            cartSource: "mm5cart.png"
            consoleSource: "NES.png"
            ss1: "snap0079.bmp"
            ss2: "snap0085.bmp"
            ss3: "snap0089.bmp"
            logoSource: "NES logo.png"
            boxText: "The Vengeance of Protoman!

Protoman has gone berserk! Destroying half the city was not enough. Now, he has snatched Dr. Light and is holding him and the entire city hostage. Speeding to the rescue is Mega Man and his modified Mega Buster, but eight of Protoman's cybernetic soldiers plan to send Mega Man to the scrap heap for good!

Feel the weight of the world on your shoulders as you battle Gravity Man! Chip away at the rock-like defenses of Stone Man and bring him crumbling down! Hit the surf and sail up against the tidal power of Wave Man! Help Mega Man defeat all eight of Protoman's robots and then get ready for the fight that pits brother against brother in the battle of the century!"
        }
        Info {
            id: megaman6
            controllerSource: "NES_controller.png"
            pressASource: "PressA.jpg"
            titleSource: "Megaman6title.jpg"
            boxSource: "Megaman6.jpg"
            cartSource: "mm6cart.png"
            consoleSource: "NES.png"
            ss1: "snap0090.bmp"
            ss2: "snap0097.bmp"
            ss3: "snap0131.bmp"
            logoSource: "NES logo.png"
            boxText: "Let the games begin!

From the United States, Canada and Japan they came. The world's premier designers and their finest robotic warriors traveled to do battle in the First Annual Robot Tournament. But what began as a game suddenly took a terrifying twist! On the eve of the Grand Championship, the sponsor of the event announced that the entire tournament was just an elaborate scheme to get his hands on the world's most powerful robots! Now faced with an army of metallic mercenaries, Mega Man must fight a ferocious new foe -- The Mysterious Mr. X!"
        }
        Info {
            id: megaman7
            controllerSource: "SNES_controller.png"
            pressASource: "SNESPressA.png"
            titleSource: "Megaman7title.png"
            boxSource: "Megaman6.jpg"
            cartSource: "mm7cart.png"
            consoleSource: "SNES.png"
            ss1: "Mega Man 7001.png"
            ss2: "Mega Man 7002.png"
            ss3: "Mega Man 7014.png"
            logoSource: "SNES logo.png"
            boxText: "Let the games begin!

From the United States, Canada and Japan they came. The world's premier designers and their finest robotic warriors traveled to do battle in the First Annual Robot Tournament. But what began as a game suddenly took a terrifying twist! On the eve of the Grand Championship, the sponsor of the event announced that the entire tournament was just an elaborate scheme to get his hands on the world's most powerful robots! Now faced with an army of metallic mercenaries, Mega Man must fight a ferocious new foe -- The Mysterious Mr. X!"
        }

        states:[
            State{
                name:"Megaman 1"
                PropertyChanges {
                    target: boxArt
                    x: 0
                }
                PropertyChanges{
                    target: bgl
                    x: 0
                }
            },
            State{
                name:"Megaman 2"
                PropertyChanges {
                    target: boxArt
                    x: -1*main.width
                }
                PropertyChanges{
                    target: bgl
                    x: -0.166*main.width
                }
            },
            State{
                name:"Megaman 3"
                PropertyChanges {
                    target: boxArt
                    x: -2*main.width
                }
                PropertyChanges{
                    target: bgl
                    x: -0.333*main.width
                }
            },
            State{
                name:"Megaman 4"
                PropertyChanges {
                    target: boxArt
                    x: -3*main.width
                }
                PropertyChanges{
                    target: bgl
                    x: -0.5*main.width
                }
            },
            State{
                name:"Megaman 5"
                PropertyChanges {
                    target: boxArt
                    x: -4*main.width
                }
                PropertyChanges{
                    target: bgl
                    x: -0.666*main.width
                }
            },
            State{
                name:"Megaman 6"
                PropertyChanges {
                    target: boxArt
                    x: -5*main.width
                }
                PropertyChanges{
                    target: bgl
                    x: -0.833*main.width
                }
            },
            State{
                name:"Megaman 7"
                PropertyChanges {
                    target: boxArt
                    x: -6*main.width
                }
                PropertyChanges{
                    target: bgl
                    x: -1*main.width
                }
            }
        ]
        transitions: [
            Transition {
                from: "*"; to: "*"
                NumberAnimation {
                    properties: "x"
                    duration: 500
                    easing.type: Easing.OutQuint
                }
            }
        ]
    }
    Rectangle {
        id: fader
        anchors.fill: parent
        color: "black"
        opacity: 0
        onOpacityChanged: {

            if (opacity == 1)
            {
                Emu.playGame(current);
                Qt.quit();
            }
        }
        states: [

            State {
                name: "inactive"
                PropertyChanges {
                    target: fader
                    opacity: 1
                }
                PropertyChanges {
                    target: megaman1
                    pressARunning: false
                }
                PropertyChanges {
                    target: megaman2
                    pressARunning: false
                }
                PropertyChanges {
                    target: megaman3
                    pressARunning: false
                }
                PropertyChanges {
                    target: megaman4
                    pressARunning: false
                }
                PropertyChanges {
                    target: megaman5
                    pressARunning: false
                }
                PropertyChanges {
                    target: megaman6
                    pressARunning: false
                }
                PropertyChanges {
                    target: megaman7
                    pressARunning: false
                }
            }
        ]
        transitions: [
            Transition {
                from: "*"; to: "inactive"
                NumberAnimation {
                    properties: "opacity"
                    duration: 2000
                }
            }
        ]
    }


    focus: true
    Keys.onRightPressed: {

        if (current < games - 1)
        {
            ++current;
            boxArt.state=boxArt.stateNames[current];
        }
    }
    Keys.onLeftPressed: {
        if (current > 0)
        {
            --current;
            boxArt.state=boxArt.stateNames[current];
        }
    }

    Keys.onPressed: {

        if (event.key === Qt.Key_X)
        {
            music.pause();
            soundEffect.play();
            fader.state = "inactive";
        }

    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}
