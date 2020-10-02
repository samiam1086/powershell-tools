function BruteForce-String(){

    [cmdletbinding()]
    param(
    [Parameter(Mandatory = $true, HelpMessage = "Enter your string to bruteforce guess the encryption the string must be in quotation marks")] [string]$inputString
    )

    Write-Host("")
    Write-Host("*For a rail-fence cipher decryptor try https://www.dcode.fr/rail-fence-cipher or 
 https://crypto.interactive-maths.com/rail-fence-cipher.html")

    Write-Host("")
    Write-Host("Input: " + $inputString)
    Write-Host("")
    Write-Host("Algorithm:       Output")
    Write-Host("")
    Write-Host("ROT25:           " + (ROT25 $inputString))
    Write-Host("ROT24:           " + (ROT24 $inputString))
    Write-Host("ROT23:           " + (ROT23 $inputString))
    Write-Host("ROT22:           " + (ROT22 $inputString))
    Write-Host("ROT21:           " + (ROT21 $inputString))
    Write-Host("ROT20:           " + (ROT20 $inputString))
    Write-Host("ROT19:           " + (ROT19 $inputString))
    Write-Host("ROT18:           " + (ROT18 $inputString))
    Write-Host("ROT17:           " + (ROT17 $inputString))
    Write-Host("ROT16:           " + (ROT16 $inputString))
    Write-Host("ROT15:           " + (ROT15 $inputString))
    Write-Host("ROT14:           " + (ROT14 $inputString))
    Write-Host("ROT13:           " + (ROT13 $inputString))
    Write-Host("ROT12:           " + (ROT12 $inputString))
    Write-Host("ROT11:           " + (ROT11 $inputString))
    Write-Host("ROT10:           " + (ROT10 $inputString))
    Write-Host("ROT9:            " + (ROT9 $inputString))
    Write-Host("ROT8:            " + (ROT8 $inputString))
    Write-Host("ROT7:            " + (ROT7 $inputString))
    Write-Host("ROT6:            " + (ROT6 $inputString))
    Write-Host("ROT5:            " + (ROT5 $inputString))
    Write-Host("ROT4:            " + (ROT4 $inputString))
    Write-Host("ROT3:            " + (ROT3 $inputString))
    Write-Host("ROT2:            " + (ROT2 $inputString))
    Write-Host("ROT1:            " + (ROT1 $inputString))
    Write-Host("Base64-UTF8:     " + (base64-UTF8 $inputString))
    Write-Host("Base64-UTF7:     " + (base64-UTF7 $inputString))
    Write-Host("Base64-Unicode:  " + (base64-Unicode $inputString))
    Write-Host("Char Reversed:   " + (Alphabet-Reversed $inputString))
}


function ROT25 ($rot25string) {
$rot25string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 121)) -or (([int] $_ -ge 65) -and ([int] $_ -le 89)))
    {
        $string += [char] ([int] $_ + 1);
    }
    elseif((([int] $_ -ge 122) -and ([int] $_ -le 122)) -or (([int] $_ -ge 90) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 25);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT24 ($rot24string) {
$rot24string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 120)) -or (([int] $_ -ge 65) -and ([int] $_ -le 88)))
    {
        $string += [char] ([int] $_ + 2);
    }
    elseif((([int] $_ -ge 121) -and ([int] $_ -le 122)) -or (([int] $_ -ge 89) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 24);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT23 ($rot23string) {
$rot23string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 119)) -or (([int] $_ -ge 65) -and ([int] $_ -le 87)))
    {
        $string += [char] ([int] $_ + 3);
    }
    elseif((([int] $_ -ge 120) -and ([int] $_ -le 122)) -or (([int] $_ -ge 88) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 23);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT22 ($rot22string) {
$rot22string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 118)) -or (([int] $_ -ge 65) -and ([int] $_ -le 86)))
    {
        $string += [char] ([int] $_ + 4);
    }
    elseif((([int] $_ -ge 119) -and ([int] $_ -le 122)) -or (([int] $_ -ge 87) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 22);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT21 ($rot21string) {
$rot21string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 117)) -or (([int] $_ -ge 65) -and ([int] $_ -le 85)))
    {
        $string += [char] ([int] $_ + 5);
    }
    elseif((([int] $_ -ge 118) -and ([int] $_ -le 122)) -or (([int] $_ -ge 86) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 21);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT20 ($rot20string) {
$rot20string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 116)) -or (([int] $_ -ge 65) -and ([int] $_ -le 84)))
    {
        $string += [char] ([int] $_ + 6);
    }
    elseif((([int] $_ -ge 117) -and ([int] $_ -le 122)) -or (([int] $_ -ge 85) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 20);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT19 ($rot19string) {
$rot19string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 115)) -or (([int] $_ -ge 65) -and ([int] $_ -le 83)))
    {
        $string += [char] ([int] $_ + 7);
    }
    elseif((([int] $_ -ge 116) -and ([int] $_ -le 122)) -or (([int] $_ -ge 84) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 19);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT18 ($rot18string) {
$rot18string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 114)) -or (([int] $_ -ge 65) -and ([int] $_ -le 82)))
    {
        $string += [char] ([int] $_ + 8);
    }
    elseif((([int] $_ -ge 115) -and ([int] $_ -le 122)) -or (([int] $_ -ge 83) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 18);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT17 ($rot17string) {
$rot17string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 113)) -or (([int] $_ -ge 65) -and ([int] $_ -le 81)))
    {
        $string += [char] ([int] $_ + 9);
    }
    elseif((([int] $_ -ge 114) -and ([int] $_ -le 122)) -or (([int] $_ -ge 82) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 17);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT16 ($rot16string) {
$rot16string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 112)) -or (([int] $_ -ge 65) -and ([int] $_ -le 80)))
    {
        $string += [char] ([int] $_ + 10);
    }
    elseif((([int] $_ -ge 113) -and ([int] $_ -le 122)) -or (([int] $_ -ge 81) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 16);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT15 ($rot15string) {
$rot15string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 111)) -or (([int] $_ -ge 65) -and ([int] $_ -le 79)))
    {
        $string += [char] ([int] $_ + 11);
    }
    elseif((([int] $_ -ge 112) -and ([int] $_ -le 122)) -or (([int] $_ -ge 80) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 15);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT14 ($rot14string) {
$rot14string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 110)) -or (([int] $_ -ge 65) -and ([int] $_ -le 78)))
    {
        $string += [char] ([int] $_ + 12);
    }
    elseif((([int] $_ -ge 111) -and ([int] $_ -le 122)) -or (([int] $_ -ge 79) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 14);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT13 ($rot13string) {
$rot13string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 109)) -or (([int] $_ -ge 65) -and ([int] $_ -le 77)))
    {
        $string += [char] ([int] $_ + 13);
    }
    elseif((([int] $_ -ge 110) -and ([int] $_ -le 122)) -or (([int] $_ -ge 78) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 13);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT12 ($rot12string) {
$rot12string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 108)) -or (([int] $_ -ge 65) -and ([int] $_ -le 76)))
    {
        $string += [char] ([int] $_ + 14);
    }
    elseif((([int] $_ -ge 109) -and ([int] $_ -le 122)) -or (([int] $_ -ge 77) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 12);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT11 ($rot11string) {
$rot11string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 107)) -or (([int] $_ -ge 65) -and ([int] $_ -le 75)))
    {
        $string += [char] ([int] $_ + 15);
    }
    elseif((([int] $_ -ge 108) -and ([int] $_ -le 122)) -or (([int] $_ -ge 76) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 11);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT10 ($rot10string) {
$rot10string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 106)) -or (([int] $_ -ge 65) -and ([int] $_ -le 74)))
    {
        $string += [char] ([int] $_ + 16);
    }
    elseif((([int] $_ -ge 107) -and ([int] $_ -le 122)) -or (([int] $_ -ge 75) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 10);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT9 ($rot9string) {
$rot9string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 105)) -or (([int] $_ -ge 65) -and ([int] $_ -le 73)))
    {
        $string += [char] ([int] $_ + 17);
    }
    elseif((([int] $_ -ge 106) -and ([int] $_ -le 122)) -or (([int] $_ -ge 74) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 9);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT8 ($rot8string) {
$rot8string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 104)) -or (([int] $_ -ge 65) -and ([int] $_ -le 72)))
    {
        $string += [char] ([int] $_ + 18);
    }
    elseif((([int] $_ -ge 105) -and ([int] $_ -le 122)) -or (([int] $_ -ge 73) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 8);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT7 ($rot7string) {
$rot7string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 103)) -or (([int] $_ -ge 65) -and ([int] $_ -le 71)))
    {
        $string += [char] ([int] $_ + 19);
    }
    elseif((([int] $_ -ge 104) -and ([int] $_ -le 122)) -or (([int] $_ -ge 72) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 7);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT6 ($rot6string) {
$rot6string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 102)) -or (([int] $_ -ge 65) -and ([int] $_ -le 70)))
    {
        $string += [char] ([int] $_ + 20);
    }
    elseif((([int] $_ -ge 103) -and ([int] $_ -le 122)) -or (([int] $_ -ge 71) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 6);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT5 ($rot5string) {
$rot5string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 101)) -or (([int] $_ -ge 65) -and ([int] $_ -le 69)))
    {
        $string += [char] ([int] $_ + 21);
    }
    elseif((([int] $_ -ge 102) -and ([int] $_ -le 122)) -or (([int] $_ -ge 70) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 5);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT4 ($rot4string) {
$rot4string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 100)) -or (([int] $_ -ge 65) -and ([int] $_ -le 68)))
    {
        $string += [char] ([int] $_ + 22);
    }
    elseif((([int] $_ -ge 101) -and ([int] $_ -le 122)) -or (([int] $_ -ge 69) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 4);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT3 ($rot3string) {
$rot3string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 99)) -or (([int] $_ -ge 65) -and ([int] $_ -le 67)))
    {
        $string += [char] ([int] $_ + 23);
    }
    elseif((([int] $_ -ge 100) -and ([int] $_ -le 122)) -or (([int] $_ -ge 68) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 3);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT2 ($rot2string) {
$rot2string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 98)) -or (([int] $_ -ge 65) -and ([int] $_ -le 66)))
    {
        $string += [char] ([int] $_ + 24);
    }
    elseif((([int] $_ -ge 99) -and ([int] $_ -le 122)) -or (([int] $_ -ge 67) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 2);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function ROT1 ($rot1string) {
$rot1string.ToCharArray() | ForEach-Object {
    if((([int] $_ -ge 97) -and ([int] $_ -le 97)) -or (([int] $_ -ge 65) -and ([int] $_ -le 65)))
    {
        $string += [char] ([int] $_ + 25);
    }
    elseif((([int] $_ -ge 98) -and ([int] $_ -le 122)) -or (([int] $_ -ge 66) -and ([int] $_ -le 90)))
    {
        $string += [char] ([int] $_ - 1);
    }
    else
    {
        $string += $_
    }        
}
return $string
}


function base64-UTF8 ($base64String){
    try{
        $x = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($base64String))
        return $x
    }
    catch{
        return "Not Base64-UTF8"
    }
}


function base64-UTF7 ($base64String){
    try{
        $x = [System.Text.Encoding]::UTF7.GetString([System.Convert]::FromBase64String($base64String))
        return $x
    }
    catch{
        return "Not Base64-UTF7"
    }
}


function base64-Unicode ($base64String){
    try{
        $x = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($base64String))
        return $x
    }
    catch{
        return "Not Base64-Unicode"
    }
}


function Alphabet-Reversed ($inp){

    $charlistUpper = @("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
    $charlistUpperReverse = @('Z', "Y", "X", "W", "V", "U", "T", "S", "R", "Q", "P", "O", "N", "M", "L", "K", "J", "I", "H", "G", "F", "E", "D", "C", "B", "A")
    $charlistLower = @("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z")
    $charlistLowerReverse = @('z', "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a")
    
    $output = ""

    $inp.ToCharArray() | ForEach-Object{
        # check if it is upper case 
        if(([int]$_ -ge 65) -and ([int]$_ -le 90)){
            $pos = $charlistUpper.IndexOf($_.ToString())
            $output += $charlistUpperReverse.GetValue($pos)
        }elseif([int]$_ -ge 97 -and [int]$_ -le 122){ #check if lowercase
            $pos = $charlistLower.IndexOf($_.ToString())
            $output += $charlistLowerReverse.GetValue($pos)

        }else{
            $output += $_

        }
    
    }
    return $output

}


BruteForce-String
Read-Host -Prompt "Press Enter To Continue"