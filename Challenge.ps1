 Param(
   [Parameter(Mandatory=$true)]
   [string]$foo
)

#Returns the first recurring character
function FirstRecurringChar($InputString){

#convert string to character array
$arrayOfChars = $InputString.ToCharArray()

#initialize hash table
$hashRepeat = @{}

#loop through all characters in the array
foreach($char in $arrayOfChars){
    #Check if character exists in hash table, if it does then
    #that means this is the second occurence of the character
    if($hashRepeat.Contains($char)){
        return $char
    }
    #Add character to hash table if character doesn't already exist.
    $hashRepeat += @{$char = 1}
}
}


$FRC = FirstRecurringChar($foo)
Write-Host $FRC