function deleteStudents() {
    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Выберите хотя бы одного студента!")
        return;
    }
    // 1 2 5 7 - String
    var ids = ""
    for (var i = 0; i < checkedCheckboxs.length; i++) {
        ids = ids + checkedCheckboxs[i].value + " ";
    }
    document.getElementById("deleteHidden").value = ids;
    document.getElementById('deleteForm').submit();
}

function modifyStudents() {
    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Выберите студента!")
        return;
    }
    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одного студента!")
        return;
    }
    var id = checkedCheckboxs[0].value;
    document.getElementById("modifyHidden").value = id;
    document.getElementById('modifyForm').submit();
}

function progressStudents() {
    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Выберите студента!")
        return;
    }
    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одного студента!")
        return;
    }
    var id = checkedCheckboxs[0].value;
    document.getElementById("progressHidden").value = id;
    document.getElementById('progressForm').submit();
}

function deleteDisciplines() {
    var checkedCheckboxs = document.querySelectorAll('input[name=idDiscipline]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Выберите хотя бы одну дисциплину!")
        return;
    }
    // 1 2 5 7 - String
    var ids = ""
    for (var i = 0; i < checkedCheckboxs.length; i++) {
        ids = ids + checkedCheckboxs[i].value + " ";
    }
    document.getElementById("deleteHidden").value = ids;
    document.getElementById('deleteForm').submit();
}

function modifyDisciplines() {
    var checkedCheckboxs = document.querySelectorAll('input[name=idDiscipline]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Выберите дисциплину!")
        return;
    }
    if (checkedCheckboxs.length > 1) {
        alert("Выберите только одну дисциплину!")
        return;
    }
    var id = checkedCheckboxs[0].value;
    document.getElementById("modifyHidden").value = id;
    document.getElementById('modifyForm').submit();
}