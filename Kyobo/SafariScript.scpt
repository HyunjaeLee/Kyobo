tell application "Safari"

    open location "http://www.kyobobook.co.kr/login/login.laf?retURL=http%3A//www.kyobobook.co.kr/prom/2015/book/151116_dailyCheck.jsp%3ForderClick%3Dc1j"
    delay 3
    do JavaScript "document.getElementById('memid').value = 'guswoqkrtk';" in document 1
    do JavaScript "document.getElementById('pw').value = '4c8cc5f13f';" in document 1
    do JavaScript "document.getElementsByClassName('btn_submit')[0].click();" in document 1
    delay 3
    do JavaScript "goSubmit('001');" in document 1

end tell
