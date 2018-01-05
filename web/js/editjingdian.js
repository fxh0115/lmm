window.onload = function () {
    var xhr = new XMLHttpRequest();
    xhr.open("post", "/selectJingDianInfoServlet");
    xhr.send();

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) {
            if (xhr.status == 200 || xhr.status == 302) {
                var data = xhr.responseText;
                var menpiao_jingdienList = JSON.parse(data);
                var html = "";

                /*for (var i = 0; i < menpiao_jingdienList.length; i++) {
                    html += '<tr >';
                    html += '	<td width="400">' + menpiao_jingdienList[i].jd_name + '</td>';
                    html += '	<td width="80">' + menpiao_jingdienList[i].mp_count + '</td>';
                    html += '	<td width="72">' + menpiao_jingdienList[i].mp_date + '</td>';
                    html += '	<td width="70">' + menpiao_jingdienList[i].mp_status + '</td>';
                    html += '	<td width="110">ÍËÆ±</td>';
                    html += '	<td width="110">²é¿´¾°µã</td>';
                    html += '</tr>';
                }*/

                //document.getElementById("t_body").innerHTML = html;
            }
        }
    }
}
