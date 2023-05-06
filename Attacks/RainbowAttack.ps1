cls
#converted to B64 due to powershell decoding the text text for me (thanks!!!....)


function RainbowAttack($hash, $hashlist)
{
    Write-Host "Attack Started"
    foreach ($item in $hashlist.GetEnumerator())
    {
        if ($item.value -eq $hash)
        {
            Write-Host "Hash value: " $item.value " matched" -ForegroundColor Green
            Write-Host "Password is: " $item.key -ForegroundColor Green
            Break;
        }
        else
        {
            Write-Host "Hash value: " $item.value " not matched" -ForegroundColor Red
        }
    }
    Write-Host "Attack Ended"
    Write-Host ""
    Write-Host ""
}


$hashtable = @{
    dog   = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("JDJ5JDEwJGVtSGhrSlFOdHRkcnNYbFlsZHZiV2U4TnhUOVBxT0dES2x4OFN5N0lMWkJBMkNmRFBDMms2"))
    cat   = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("JDJ5JDEwJFZYMllYUndEbTV4ZGxkOEptdi9NL3VMSWJPQWJCd0dSbEFjQmUuZ09OVTZFQWowbU8zVUtx"))
    mouse = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("JDJ5JDEwJElFTlU3S1ozREJKSkkyV21sNVRtbGVkRE9wTlRhTC51ZWRia3AxbU5tNUpKM1hKTy5XTmRt"))
    fish  = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("JDJ5JDEwJEt1NnlOTnVUZ0YzV2xKQjMzRUR4OXV4ck85cUMubHRKdGd1RHJUbWpaOTh0QlpUZGNkY3Fh"))
}

#$hashtable = @{
#    dog   = "$2y$10$emHhkJQNttdrsXlYldvbWe8NxT9PqOGDKlx8Sy7ILZBA2CfDPC2k6"
#    cat   = "$2y$10$VX2YXRwDm5xdld8Jmv/M/uLIbOAbBwGRlAcBe.gONU6EAj0mO3UKq"
#    mouse = "$2y$10$IENU7KZ3DBJJI2Wml5TmledDOpNTaL.uedbkp1mNm5JJ3XJO.WNdm" 
#    fish  = "$2y$10$Ku6yNNuTgF3WlJB33EDx9uxrO9qC.ltJtguDrTmjZ98tBZTdcdcqa"
#}

$hash = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("JDJ5JDEwJFZYMllYUndEbTV4ZGxkOEptdi9NL3VMSWJPQWJCd0dSbEFjQmUuZ09OVTZFQWowbU8zVUtx"))
#$hash = "$2y$10$VX2YXRwDm5xdld8Jmv/M/uLIbOAbBwGRlAcBe.gONU6EAj0mO3UKq"
Write-Host "Rainbow Attack #1"
Write-Host "using a hashtable length of" $hashtable.Count "hashes"
Write-Host "and using hash of the password " 
Write-Host "cat" -ForegroundColor Yellow -BackgroundColor black
Write-Host ""
RainbowAttack -hash $hash -hashlist $hashtable


$hash = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("JDJ5JDEwJE1HT2IwaVJ4d1hVSXJIUFhnazV6SC5OcjdiM2wwdG1lMGNjNzFGa0ppdGZrV0ZXR0xZL0NL"))
$hash = "$2y$10$MGOb0iRxwXUIrHPXgk5zH.Nr7b3l0tme0cc71FkJitfkWFWGLY/CK"
Write-Host "Rainbow Attack #2"
Write-Host "using a hashtable length of" $hashtable.Count "hashes"
Write-Host "and using hash of the password " 
Write-Host "otter" -ForegroundColor Yellow -BackgroundColor black
Write-Host ""
RainbowAttack -hash $hash -hashlist $hashtable