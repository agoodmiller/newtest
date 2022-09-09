
$theFiles = Get-ChildItem -Filter extraWorkload*.json


Foreach ($item in $theFiles) 
{ 
	write-host $item.Name
	
	$templateFileWorkload = "../newWorkload/newWorkload.bicep"
	$tierParams = " --template-file $templateFileWorkload"
	
	$workloadData=Get-Content -Path $item.Name | ConvertFrom-Json
	
	az deployment sub show -n $workloadData.extras.deploymentName.value --query properties.outputs > ../deploymentVariables.json
	
	if ($workloadData.extras.subscriptionID.value.Length -gt 0){$tierParams = $tierParams + " --subscription "+$workloadData.extras.subscriptionID.value}	
	if ($workloadData.parameters.location.value.Length -gt 0){$tierParams = $tierParams + " --location "+$workloadData.parameters.location.value}	
	if ($workloadData.parameters.workloadName.value.Length -gt 0){$tierParams = $tierParams + " --name "+$workloadData.parameters.workloadName.value}
	
	$tierParams = $tierParams + " --parameters " + $item.Name 
	
	$createSecondaryTier = "az deployment sub create $tierParams"
	write-host $createSecondaryTier

	#Invoke-Expression $createSecondaryTier
	
}
  