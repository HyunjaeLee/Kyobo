tell application "Safari"

make new document
set URL of document 0 to "http://www.kyobobook.co.kr/login/login.laf?retURL=http%3A//www.kyobobook.co.kr/prom/2015/book/151116_dailyCheck.jsp%3ForderClick%3Dc1j"


repeat until (do JavaScript "document.loginForm.innerHTML" in document 0) is not missing value
delay 0.1
end repeat

do JavaScript "document.loginForm.memid.value = 'guswoqkrtk'" in document 0
do JavaScript "document.loginForm.pw.value = '4c8cc5f13f'" in document 0
do JavaScript "document.loginForm.submit()" in document 0

repeat until (do JavaScript "document.eventForm.innerHTML" in document 0) is not missing value
delay 0.1
end repeat

do JavaScript "goSubmit('001');" in document 0

delay 1

close document 0

end tell
