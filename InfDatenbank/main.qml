import QtQuick
import QtQuick.LocalStorage
import QtQuick.Layouts
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Main Window")

    Item{

        id: createDB

        function create(){
            console.log("Create Funktion was called")
            let db=LocalStorage.openDatabaseSync("FirstTest","1.1","MyDatabase",10000)

            db.transaction(
                function(tx){
                    console.log("Create Transaction beginn...")
                    tx.executeSql('CREATE TABLE IF NOT EXISTS Greetings(salutation TEXT, salutee TEXT)')

                }

            )

        }

        function getDBHandle(){

            let db=LocalStorage.openDatabaseSync("FirstTest","1.1","MyDatabase",10000)
            return db


        }


    }

    RowLayout {

        Label {
            text: "Aufgabe"
        }

        TextEdit {
            id: aufgabenNummer
            width: 100
        }


        Button {
            text: "ShowData"

            onClicked: {

                console.log("show DB Data: " + aufgabenNummer.text)

                my_Model.clear()

                for ( let i = 0; i < 50; i++){
                    my_Model.append(
                        {one: "" , two: "", three: ""}
                    )

                }


                my_Model.clear()

                if (aufgabenNummer.text === "a" || aufgabenNummer.text === "A" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select rufname, familienname from schuelerin, klasse where schuelerin.klasse_id = klasse.id and klasse.name = '5b' ")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).rufname, two: result.rows.item(i).familienname}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "b" || aufgabenNummer.text === "B" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select Cast(count(*) as text) as count from schuelerin, klasse where schuelerin.klasse_id = klasse.id and klasse.name = '7a'")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).count}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "c" || aufgabenNummer.text === "C" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select klasse.name from schuelerin, klasse where schuelerin.klasse_id = klasse.id and schuelerin.rufname = 'Kimberly' and schuelerin.familienname = 'Russell' ")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).name}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "d" || aufgabenNummer.text === "D" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select rufname, familienname from schuelerin, klasse where schuelerin.klasse_id = klasse.id and klasse.name = '9b' and schuelerin.ist_klassensprecher = 1")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).rufname, two: result.rows.item(i).familienname}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "e" || aufgabenNummer.text === "E" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select rufname, familienname from lehrkraft, lehrbefaehigung, fach where lehrbefaehigung.lehrkraft_id = lehrkraft.id and lehrbefaehigung.fach_id = fach.id and fach.name = 'Mathematik' ")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).rufname, two: result.rows.item(i).familienname}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "f" || aufgabenNummer.text === "F" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select distinct rufname, familienname from lehrkraft, unterrichtet, klasse where unterrichtet.lehrkraft_id = lehrkraft.id and unterrichtet.klasse_id = klasse.id and klasse.name = '6a'")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).rufname, two: result.rows.item(i).familienname}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "g" || aufgabenNummer.text === "G" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select rufname, familienname, fach.name from lehrkraft, unterrichtet, klasse, fach where unterrichtet.lehrkraft_id = lehrkraft.id and unterrichtet.klasse_id = klasse.id and unterrichtet.fach_id = fach.id and klasse.name = '6a'")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).rufname, two: result.rows.item(i).familienname, three: result.rows.item(i).name}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "h" || aufgabenNummer.text === "H" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select cast(wert AS text) as wert from schuelerin, note, fach where note.schueler_id = schuelerin.id and note.fach_id = fach.id and fach.name = 'Englisch' and schuelerin.rufname = 'Jason' and schuelerin.familienname = 'Carpenter'")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).wert}
                                )

                            }
                        }
                    )
                }

                if (aufgabenNummer.text === "i" || aufgabenNummer.text === "I" )
                {
                    createDB.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql("select rufname, familienname, wert from schuelerin, pruefung, note, klasse, fach where pruefung.klasse = klasse.id and pruefung.fach_id = fach.id and note.pruefung_id = pruefung.id and note.schueler_id = schuelerin.id and fach.name = 'Biologie' and klasse.name = '8b' and pruefung.laufende_nr = 2 ")
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model.append(
                                    {one: result.rows.item(i).rufname, two: result.rows.item(i).familienname, three: result.rows.item(i).wert}
                                )

                            }
                        }
                    )
                }

            }

        }

        Button {
            text: "AdvanceSettings"

            onClicked: {
                secondWindow.visible = true
            }

        }

    }

    Label {
        y: 100
        text:
"a) Gesucht ist eine Namensliste (Rufname und Familiennamen) aller Schüler/innen in der Klasse 5b.
b) Wie viele Schüler/innen besuchen die Klasse 7a?
c) In welche Klasse geht die Schülerin Kimberly Russell?
d) Welche Schülerin/welcher Schüler ist Klassensprecher/in in der Klasse 9b?
e) Welche Lehrkräfte haben Lehrbefähigung für das Fach Mathematik?
f) Welche Lehrkräfte (Rufname, Familienname) unterrichten die Klasse 6a?
g) Ergänze die Liste aus f) um das jeweils unterrichtete Fach.
h) Welche Noten hat der Schüler Jason Carpenter im Fach Englisch erzielt?
i) Erstelle eine Notenliste (Rufname, Familienname, Note) für die 2. Ex im Fach Biologie in der Klasse 8b.
k) Bestimme den Notendurchschnitt der unter
i) genannten Ex."
    }




    ListView {
        width: 300
        height: 100
        x:0
        y:350


        model: ListModel{
            id: my_Model
        }

        delegate: Rectangle {
            width: 400
            height: 20

            color: {
                if(index%2==0){
                        "grey"
                }
                else {
                    "darkgrey"
                }
            }

            Text {
                width:  parent.width/3
                text: one
            }

            Text {
                width:  parent.width/3
                x: parent.width/3

                text: two
            }

            Text {
                width:  parent.width/2
                x: 2 * parent.width/3

                text: three
            }
        }
    }




    Component.onCompleted:{

        createDB.create()
    }

    //  --------------------------------
    //  --------------------------------


    Window{
        id: secondWindow
        visible: false
        width: 400
        height: 300
        title: qsTr("Second Window")

        Item{

            id: createDB2

            function create(){
                console.log("Create Funktion was called")
                let db=LocalStorage.openDatabaseSync("FirstTest 2","1.1","MyDatabase",10000)

                db.transaction(
                    function(tx){
                        console.log("Create Transaction beginn...")
                        tx.executeSql('CREATE TABLE IF NOT EXISTS Greetings(salutation TEXT, salutee TEXT)')

                    }

                )

            }

            function getDBHandle(){

                let db=LocalStorage.openDatabaseSync("FirstTest 2","1.1","MyDatabase",10000)
                return db


            }

        }

        Component.onCompleted:{

            createDB2.create()
        }

        RowLayout {

            Button {
                text: "ShowData"

                onClicked: {

                    console.log("show DB Data: " + aufgabenNummer.text)

                    my_Model2.clear()

                    var test1 = "";
                    var test2 = "";
                    var test3 = "";


                    for ( let i = 0; i < 50; i++){
                        my_Model2.append(
                            {one1: test1 , two2: test2, three3: test3}
                        )
                    }

                    my_Model2.clear()

                    createDB2.getDBHandle().transaction(
                        function(tx){
                            console.log("Getting Data ...")
                            let result=tx.executeSql(combinedLabel.text)
                            for ( let i = 0; i < result.rows.length; i++){
                                my_Model2.append(
                                    {one1: (result.rows.item(i).id).toString(), two2: (result.rows.item(i).name).toString() , three3: (result.rows.item(i)).toString()}
                                )

                            }
                        }
                    )

                }

            }

            Label {
                id: combinedLabel
                text: ""

                function updateText() {
                    if(fach1.checked || klasse1.checked || lehrbefaehigung1.checked || lehrkraft1.checked || note1.checked || pruefung1.checked || schuelerin1.checked || unterrichtet1.checked)
                    {
                        var texts = [];
                        if (fach1.checked) texts.push(fach1.text);
                        if (klasse1.checked) texts.push(klasse1.text);
                        if (lehrbefaehigung1.checked) texts.push(lehrbefaehigung1.text);
                        if (lehrkraft1.checked) texts.push(lehrkraft1.text);
                        if (note1.checked) texts.push(note1.text);
                        if (pruefung1.checked) texts.push(pruefung1.text);
                        if (schuelerin1.checked) texts.push(schuelerin1.text);
                        if (unterrichtet1.checked) texts.push(unterrichtet1.text);
                        texts.join(", ");

                        combinedLabel.text = "Select * from " + texts
                    }
                    else
                    {
                        var texts1 = [];
                        if (fach1.checked) texts1.push(fach1.text);
                        if (klasse1.checked) texts1.push(klasse1.text);
                        if (lehrbefaehigung1.checked) texts1.push(lehrbefaehigung1.text);
                        if (lehrkraft1.checked) texts1.push(lehrkraft1.text);
                        if (note1.checked) texts1.push(note1.text);
                        if (pruefung1.checked) texts1.push(pruefung1.text);
                        if (schuelerin1.checked) texts1.push(schuelerin1.text);
                        if (unterrichtet1.checked) texts1.push(unterrichtet1.text);
                        texts1.join(", ");

                        var texts2 = [];
                        if (fach2.checked) texts2.push(fach1.text);
                        if (klasse2.checked) texts2.push(klasse1.text);
                        if (lehrbefaehigung2.checked) texts2.push(lehrbefaehigung1.text);
                        if (lehrkraft2.checked) texts2.push(lehrkraft1.text);
                        if (note2.checked) texts2.push(note1.text);
                        if (pruefung2.checked) texts2.push(pruefung1.text);
                        if (schuelerin2.checked) texts2.push(schuelerin1.text);
                        if (unterrichtet2.checked) texts2.push(unterrichtet1.text);
                        texts2.join(" , ");

                        combinedLabel.text = "Select" + texts1 + " from " +texts2
                    }
                }
            }
        }

        RowLayout {

            x: 0
            y: 50

            Label{
                text: "select * from"
            }

            CheckBox {
                id: fach1
                text: " fach"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: klasse1
                text: " klasse"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: lehrbefaehigung1
                text: " lehrbefaehigung"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: lehrkraft1
                text: " lehrkraft"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: note1
                text: " note"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: pruefung1
                text: " pruefung"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: schuelerin1
                text: " schuelerin"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: unterrichtet1
                text: " unterrichtet"
                onCheckedChanged: combinedLabel.updateText()
            }
        }

        RowLayout {

            x: 0
            y: 100

            Label{
                text: "from"
            }

            CheckBox {
                id: fach2
                text: "fach"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: klasse2
                text: "klasse"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: lehrbefaehigung2
                text: "lehrbefaehigung"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: lehrkraft2
                text: "lehrkraft"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: note2
                text: "note"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: pruefung2
                text: "pruefung"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: schuelerin2
                text: "schuelerin"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: unterrichtet2
                text: "unterrichtet"
                onCheckedChanged: combinedLabel.updateText()
            }
        }
        RowLayout {

            x: 0
            y: 150

            Label{
                text: "where"
            }

            CheckBox {
                id: fach3
                text: "fach"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: klasse3
                text: "klasse"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: lehrbefaehigung3
                text: "lehrbefaehigung"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: lehrkraft3
                text: "lehrkraft"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: note3
                text: "note"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: pruefung3
                text: "pruefung"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: schuelerin3
                text: "schuelerin"
                onCheckedChanged: combinedLabel.updateText()
            }
            CheckBox {
                id: unterrichtet3
                text: "unterrichtet"
                onCheckedChanged: combinedLabel.updateText()
            }
        }
        ListView {
            width: 300
            height: 100
            x:0
            y:200


            model: ListModel{
                id: my_Model2
            }

            delegate: Rectangle {
                width: 400
                height: 20

                color: {
                    if(index%2==0){
                            "grey"
                    }
                    else {
                        "darkgrey"
                    }
                }

                Text {
                    width:  parent.width/3
                    text: one1
                }

                Text {
                    width:  parent.width/3
                    x: parent.width/3

                    text: two2
                }

                Text {
                    width:  parent.width/2
                    x: 2 * parent.width/3

                    text: three3
                }
            }
        }
    }
}


