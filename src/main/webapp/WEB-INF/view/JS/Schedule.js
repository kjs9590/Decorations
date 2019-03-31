  function oneThema() {

document.getElementById('scheduleContent').style.backgroundImage = "url('images/hero2.jpg')"
}

function twoThema() {

document.getElementById('scheduleContent').style.backgroundImage = "url('images/create.png')"
}

function threeThema() {

document.getElementById('scheduleContent').style.backgroundImage = "url('images/sky.jpg')"
}

function fourThema() {

document.getElementById('scheduleContent').style.backgroundImage = "url('images/cookies_dolly.jpg')"
}


    function insRow(i) {

      var chile = i.children[0]

      if (chile.innerHTML == "클릭시 일정생성") {
        alert("일정 한개가 추가되었습니다.")


        //삽입될 Form Tag
        var frmTag = "<textarea name='content' cols='50' rows='2.1'> ";
        chile.innerHTML = frmTag;
        chile.addEventListener('click', function (evt) {
          event.stopPropagation();
        }, true);

      } else {
        alert("일정 한개가 삭제 되었습니다.")
        var chile = i.children[0]
        chile.innerHTML = "클릭시 일정생성";

      }

    }
    //Row 삭제
    function removeRow() {
      alert("d")

    }
