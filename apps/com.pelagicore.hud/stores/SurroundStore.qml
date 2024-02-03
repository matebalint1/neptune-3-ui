/****************************************************************************
**
** Copyright (C) 2019 Luxoft Sweden AB
** Copyright (C) 2018 Pelagicore AG
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Neptune 3 UI.
**
** $QT_BEGIN_LICENSE:GPL-QTAS$
** Commercial License Usage
** Licensees holding valid commercial Qt Automotive Suite licenses may use
** this file in accordance with the commercial license agreement provided
** with the Software or, alternatively, in accordance with the terms
** contained in a written agreement between you and The Qt Company.  For
** licensing terms and conditions see https://www.qt.io/terms-conditions.
** For further information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
** SPDX-License-Identifier: GPL-3.0
**
****************************************************************************/

import QtQuick 2.8
import shared.com.pelagicore.remotesettings 1.0
import shared.com.pelagicore.drivedata 1.0


QtObject {
    id: root

    property bool surroundView: false

    property UISettings uiSettings: UISettings {
        onSurroundViewChanged: {
            root.surroundView = uiSettings.surroundView
            console.log("root.surroundView: " + root.surroundView)
            console.log("uiSettings.surroundView: " + uiSettings.surroundView)
        }
    }

    // onSurroundViewChanged: {
    //     uiSettings.surroundView = root.surroundView
    //     console.log(root.surroundView)
    //     console.log(uiSetting.surroundView)
    // }

    function setSurroundView(newValue) {
        root.surroundView = newValue
        uiSettings.surroundView = root.surroundView;
        // console.log("setSurroundView root.surroundView: " + root.surroundView);
        // takes more time to update remote value??
        // console.log("setSurroundView uiSettings.surroundView: " + uiSettings.surroundView);
    }


    // Component.onCompleted: {
    //     console.log(`surroundView: ` + surroundView)
    //     surroundView = false
    // }

    // property bool leftDoorOpened: false
    // property bool rightDoorOpened: false
    // property bool trunkOpened: false
    // property real roofOpenProgress: 0.0
    // property real speed: clusterSettings.speed

    // readonly property UISettings uiSettings: UISettings {
    //     onDoor1OpenChanged: {
    //         root.leftDoorOpened = uiSettings.door1Open
    //     }
    //     onDoor2OpenChanged: {
    //         root.rightDoorOpened = uiSettings.door2Open
    //     }
    //     onTrunkOpenChanged: {
    //         root.trunkOpened = uiSettings.trunkOpen
    //     }
    //     onRoofOpenProgressChanged: {
    //         root.roofOpenProgress = uiSettings.roofOpenProgress
    //     }
    // }

    // readonly property InstrumentCluster clusterSettings: InstrumentCluster {}
}
