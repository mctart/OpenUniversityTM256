cls
$password ="mouse"
[array]$dictionary = "dog","cat","mouse","fish"

Write-Host "Dictionary attack of" $dictionary.Count "passwords"

foreach ($item in $dictionary)
{
    if ($item -eq $password)
    {
        Write-Host $item " correct" -ForegroundColor Green
        Write-Host "Password found.  Exiting program"
        Break;
    }
    else
    {
        Write-Host $item " incorrect" -ForegroundColor Red
    }

}
