Dim spFile
Dim jFile
Dim f2j
Dim CurDir
Dim WsShell
'jFile="address_for_optimization.json"
jFile="address_for_optimization.json"
Set WsShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
CurDir = WsShell.CurrentDirectory
'jFile=CurDir&"/"&jFile
MsgBox(jFile)

If fso.FileExists(jFile) Then
	Set spFile = fso.OpenTextFile(jFile,1,True)
'	Do Until spFile.AtEndOfStream
'		strNextLine = spFile.ReadLine
'		MsgBox(strNextLine)
'	loop
	f2j = spFile.ReadAll()
	'MsgBox("1")
	Set wFile = fso.OpenTextFile("file2.txt",2,True)
	wFile.Write(f2j)
	wFile.Close()
	spFile.Close()
Else
	WScript.Echo "File " & fileName &" doesn't exists..."
	f2j = ""
	MsgBox("2")
End If

WScript.Echo f2j