B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=11
@EndOfDesignText@
'Code module
'Subs in this code module will be accessible from all modules.
Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Public Sub popupMenu2(iList As List) As String
	Dim im As InputMenu
	Dim oResult As Int
	If iList.IsInitialized = True Then
		oResult = im.Show(iList, "Please Select")
		If oResult = -3 Then
			Return ""
		Else
			Return iList.Get(oResult)
		End If
	Else
		Return ""
	End If
End Sub