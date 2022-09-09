$data=Get-Content -Path primary.json | ConvertFrom-Json

$parameters = ""
if ($data.extras.mainFileLocation.value.Length -gt 0){$parameters = $parameters + " --template-file "+ $data.extras.mainFileLocation.value}
if ($data.extras.location.value.Length -gt 0){$parameters = $parameters + " --location " + $data.extras.location.value}
if ($data.extras.deploymentName.value.Length -gt 0){$parameters = $parameters + " --name " + $data.extras.deploymentName.value}

$parameters = $parameters + " --parameters primary.json"


$createPrimaryTiers = "az deployment sub create $parameters"
write-host $createPrimaryTiers

Invoke-Expression $createPrimaryTiers

az deployment sub show -n $data.extras.deploymentName.value --query properties.outputs > ../deploymentVariables.json

$theFiles = Get-ChildItem -Filter *workload*.json


Foreach ($item in $theFiles) 
{ 
	write-host $item.Name
	
	$templateFileWorkload = "../newWorkload/newWorkload.bicep"
	$tierParams = " --template-file $templateFileWorkload"
	
	$workloadData=Get-Content -Path $item.Name | ConvertFrom-Json
	
	
	if ($workloadData.extras.subscriptionID.value.Length -gt 0){$tierParams = $tierParams + " --subscription "+$workloadData.extras.subscriptionID.value}	
	if ($workloadData.parameters.location.value.Length -gt 0){$tierParams = $tierParams + " --location "+$workloadData.parameters.location.value}	
	if ($workloadData.parameters.workloadName.value.Length -gt 0){$tierParams = $tierParams + " --name "+$workloadData.parameters.workloadName.value}
	
	$tierParams = $tierParams + " --parameters " + $item.Name 
	
	$createSecondaryTier = "az deployment sub create $tierParams"
	write-host $createSecondaryTier

	Invoke-Expression $createSecondaryTier
	
}
  