Set shell = CreateObject("WScript.Shell")
Set fs = CreateObject("Scripting.FileSystemObject")
root = fs.GetParentFolderName(WScript.ScriptFullName)
shell.Run """" & root & "\build\DSHWhale-Vibe.exe" & """ --open", 0, False
