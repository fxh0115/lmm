/**
 * Created by ttc on 17-12-28.
 */

function city(obj) {
    var city = obj.innerHTML;

    //��ѯ��Ӧ���еķ羰������ʾ��li��
    //дһ��ajax��ѯ
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/JDTypeServlet", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send("city_name=" + city);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var list = JSON.parse(data);
                var html = "";

                for (var i = 0; i < list.length; i++) {
                    html += '<li class="subject_js" onclick="jdtype(this)">' + list[i].jt_name + '<i class="ticket_icon"></i></li>';
                }

                document.getElementById("jd_type").innerHTML = html;
            }
        }
    }
}

function jdtype(obj) {
    var type = obj.innerHTML;
    type = type.substring(0, type.indexOf("<"));
    alert(type);
}


