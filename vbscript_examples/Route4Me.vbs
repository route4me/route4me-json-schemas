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
		Else
			WScript.Echo "File " & fileName &" doesn't exists..."
			File2Json = ""
		End If
	End Function
	
	Public Sub HttpGetRequest(url)
		Set WshShell = WScript.CreateObject("WScript.Shell")
		Set http = CreateObject("Microsoft.XmlHttp")
		
		On Error Resume Next

		http.open "GET",url,False
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
		Set http = CreateObject("Microsoft.XmlHttp")
		http.open "POST", url, False
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
	
	Public Sub HttpPutRequest(url,jFile)
		Dim jText
		Set WshShell = WScript.CreateObject("WScript.Shell")
		Set http = CreateObject("Microsoft.XmlHttp")
		http.open "PUT", url, False
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
		Set http = CreateObject("Microsoft.XmlHttp")
		http.open "DELETE", url, False
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
End Class