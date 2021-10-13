Import-Module MicrosoftTeams
$userCredential = Get-Credential
Connect-MicrosoftTeams -Credential $userCredential

New-CsApplicationAccessPolicy -Identity Meeting-policy-dev -AppIds "21cd7072-a82f-486f-ab4d-7f27c1a242e0" -Description "Bot Policy"
Grant-CsApplicationAccessPolicy -PolicyName Meeting-policy-dev -Identity "fb79e6fe-fe3e-4e42-be55-0886a9ad6078"
