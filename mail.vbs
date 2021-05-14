Public strAlertTitle 
strAlertTitle = InputBox("Please input the Alert Title")
Public strAlertText
strAlertText = InputBox("Please input alert text")
Set objOutlook = CreateObject("Outlook.Application")
   Set objMail = objOutlook.CreateItem(0)
  'objMail.Display
   objMail.Recipients.Add ("@MAIL")
   objMail.Subject =  strAlertTitle 
   objMail.HTMLbody = "<font face=" & Chr(34) & "arial" & Chr(34) & ">" & "שלום רב," & "<br><br>" & "התקבלה התראה על:" & "<br>" & strAlertTitle & "<br><br>" & "התראה:" & "<br>" & strAlertText & "<br><br>" & "נא לבדיקתכם" & "</font>"
   objMail.Send
   Set objMail = Nothing
   Set objOutlook = Nothing
