cls

function DictionaryAttack($password, $dictionary)
{
    Write-Host "Attack Started"
    foreach ($item in $dictionary)
    {
        if ($item -eq $password)
        {
            Write-Host $item " correct" -ForegroundColor Green
            Write-Host "Password found" -ForegroundColor Green
            Break;
        }
        else
        {
            Write-Host $item " incorrect" -ForegroundColor Red
        }
    }
    Write-Host "Attack Ended"
    Write-Host ""
    Write-Host ""
}

#Define dictionary list
[array]$dictionary = "dog","cat","mouse","fish"



$password ="mouse"
Write-Host "Dictionary Attack #1"
Write-Host "using a dictionary length of" $dictionary.Count "passwords"
Write-Host "and using known password of " 
Write-Host $password -ForegroundColor Yellow -BackgroundColor black
Write-Host ""
DictionaryAttack -password $password -dictionary $dictionary



$password ="otter"
Write-Host "Dictionary Attack #2"
Write-Host "using a dictionary length of" $dictionary.Count "passwords"
Write-Host "and using known password of " 
Write-Host $password -ForegroundColor Yellow -BackgroundColor black
Write-Host ""


DictionaryAttack -password $password -dictionary $dictionary
