/**
 * Created by ttc on 18-1-5.
 */
window.onload = function () {
   func();
}
function func() {
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/SelectMenPiao_JingDian");
    xhr.send();

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var menpiao_jingdienList = JSON.parse(data);
                var html = "";

                for (var i = 0; i < menpiao_jingdienList.length; i++) {
                    html += '<tr >';
                    html += '	<td width="400">' + menpiao_jingdienList[i].jd_name + '</td>';
                    html += '	<td width="80">' + menpiao_jingdienList[i].mp_count + '</td>';
                    html += '	<td width="100">' + menpiao_jingdienList[i].mp_date + '</td>';
                    html += '	<td width="70">' + menpiao_jingdienList[i].mp_status + '</td>';
                    html += '	<td width="110">退票</td>';
                    html += '	<td width="110">查看景点</td>';
                    html += '</tr>';
                }

                document.getElementById("t_body").innerHTML = html;
            }
        }
    }
}