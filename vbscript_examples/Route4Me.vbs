Const SXH_SERVER_CERT_IGNORE_ALL_SERVER_ERRORS = 13056
CONST WHR_EnableRedirects = 6

Class Route4Me

	Public Sub Write2File(result)
		Dim fileName
		Dim spFile
		fileName="file1.txt"

		Set fso = CreateObject("Scripting.FileSystemObject")
		If fso.FileExists(fileName) Then
			Set spFile = fso.OpenTextFile(fileName,2,True)
		Else
			Set spFile= fso.CreateTextFile(fileName,True)
		End If

		spFile.WriteLine(result)
		spFile.Close
		Set fso = nothing
	End Sub
	
	Public Function File2Json(jFile)
		Dim spFile
		Set fso = CreateObject("Scripting.FileSystemObject")
		If fso.FileExists(jFile) Then
			Set spFile = fso.OpenTextFile(jFile,1,True)
			File2Json = spFile.ReadAll()
			File2Json=Trim(File2Json)
		Else
			WScript.Echo "File " & fileName &" doesn't exists..."
			File2Json = ""
		End If
	End Function
	
	Public Sub HttpGetRequest(url)
		Set WshShell = WScript.CreateObject("WScript.Shell")
		'Set http = CreateObject("Microsoft.XmlHttp")
		Set http = CreateObject("MSXML2.ServerXMLHTTP")
		
		On Error Resume Next

		http.open "GET",url,False
		http.setOption 2, SXH_SERVER_CERT_IGNORE_ALL_SERVER_ERRORS
		http.send ""
		
		If Err.Number = 0 Then
			Write2File(http.responseText)
		Else
			WScript.Echo "error " & Err.Number& ":" & Err.Description
		End If
		
		Set WshShell = Nothing
		Set http = Nothing
	End Sub
	
	Public Sub HttpPostRequest(url,jFile)
		Dim jText
		Set WshShell = WScript.CreateObject("WScript.Shell")
		'Set http = CreateObject("Microsoft.XmlHttp")
		Set http = CreateObject("MSXML2.ServerXMLHTTP")
		http.open "POST", url, False
		http.setOption 2, SXH_SERVER_CERT_IGNORE_ALL_SERVER_ERRORS
		http.setRequestHeader "Content-Type", "application/json"
		
		On Error Resume Next
		
		jText = File2Json(jFile)
		http.setRequestHeader "Content-Length", Len(jText)
		http.send jText

		'http.waitForResponse(20)
		If http.Status >= 400 And http.Status <= 599 Then
        	WScript.Echo "Error Occurred : " & http.status & " - " & http.statusText
        End If
		
		If Err.Number = 0 Then
			Write2File(http.responseText)
		Else
			WScript.Echo "error " & Err.Number& ":" & Err.Description
		End If
		
		Set WshShell = Nothing
		Set http = Nothing
	End Sub
	
	Public Sub HttpPostRequest2(url,jFile)
		Dim jText
		Set WshShell = WScript.CreateObject("WScript.Shell")
		'Set http = CreateObject("MSXML2.ServerXMLHTTP")
		Set http = CreateObject("WinHttp.WinHttpRequest.5.1")
		http.open "POST", url, False
		http.Option(2) = SXH_SERVER_CERT_IGNORE_ALL_SERVER_ERRORS
		http.Option(WHR_EnableRedirects) = False
		
		http.setRequestHeader "Content-Type", "application/json"
		
		On Error Resume Next
		
		jText = File2Json(jFile)
		http.setRequestHeader "Content-Length", Len(jText)

		http.send jText

		If http.Status >= 400 And http.Status <= 599 Then
        	WScript.Echo "Error Occurred : " & http.status & " - " & http.statusText
        End If
		
		If Err.Number = 0 Then
			Write2File(http.responseText)
		Else
			WScript.Echo "error " & Err.Number& ":" & Err.Description
		End If
		
		Set WshShell = Nothing
		Set http = Nothing
	End Sub
	
	Public Sub HttpPutRequest(url,jFile)
		Dim jText
		Set WshShell = WScript.CreateObject("WScript.Shell")
		'Set http = CreateObject("Microsoft.XmlHttp")
		Set http = CreateObject("MSXML2.ServerXMLHTTP")
		http.open "PUT", url, False
		http.setOption 2, SXH_SERVER_CERT_IGNORE_ALL_SERVER_ERRORS
		http.setRequestHeader "Content-Type", "application/json"
		
		On Error Resume Next
		
		jText = File2Json(jFile)
		http.setRequestHeader "Content-Length", Len(jText)
		http.send jText

		If Err.Number = 0 Then
			Write2File(http.responseText)
		Else
			WScript.Echo "error " & Err.Number& ":" & Err.Description
		End If
		
		Set WshShell = Nothing
		Set http = Nothing
	End Sub
	
	Public Sub HttpDeleteRequest(url,jFile)
		Dim jText
		Set WshShell = WScript.CreateObject("WScript.Shell")
		'Set http = CreateObject("Microsoft.XmlHttp")
		Set http = CreateObject("MSXML2.ServerXMLHTTP")
		http.open "DELETE", url, False
		http.setOption 2, SXH_SERVER_CERT_IGNORE_ALL_SERVER_ERRORS
		http.setRequestHeader "Content-Type", "application/json"
		
		On Error Resume Next
		If jFile="" Then
			http.send ""
		Else
			jText = File2Json(jFile)
			http.setRequestHeader "Content-Length", Len(jText)
			http.send jText
		End If
		
		If Err.Number = 0 Then
			Write2File(http.responseText)
		Else
			WScript.Echo "error " & Err.Number& ":" & Err.Description
		End If
		
		Set WshShell = Nothing
		Set http = Nothing
	End Sub
End Class