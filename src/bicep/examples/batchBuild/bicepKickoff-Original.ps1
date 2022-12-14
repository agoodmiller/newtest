$data=Get-Content -Path parameters.json | ConvertFrom-Json

$parameters = ""
if ($data.mainFileLocation.Length -gt 0){$parameters = $parameters + " --template-file "+ $data.mainFileLocation}
if ($data.location.Length -gt 0){$parameters = $parameters + " --location " + $data.location}
if ($data.deploymentName.Length -gt 0){$parameters = $parameters + " --name " + $data.deploymentName}

$parameters = $parameters + " --parameters"

if ($data.resourcePrefix.Length -gt 0){$parameters = $parameters + " resourcePrefix="+$data.resourcePrefix}
if ($data.resourceSuffix.Length -gt 0) {$parameters = $parameters + " resourceSuffix="+$data.resourceSuffix}
if ($data.deploymentNameSuffix.Length -gt 0) {$parameters = $parameters + " deploymentNameSuffix="+$data.deploymentNameSuffix}
if ($data.deployPolicy.Length -gt 0) {$parameters = $parameters + " deployPolicy="+$data.deployPolicy}
if ($data.tags.Length -gt 0) {$parameters = $parameters + " tags="+$data.tags}
if ($data.policy.Length -gt 0) {$parameters = $parameters + " policy="+$data.policy}
if ($data.deployASC.Length -gt 0) {$parameters = $parameters + " deployASC="+$data.deployASC}
if ($data.emailSecurityContact.Length -gt 0) {$parameters = $parameters + " emailSecurityContact="+$data.emailSecurityContact}
if ($data.hubVirtualNetworkAddressPrefix.Length -gt 0) {$parameters = $parameters + " hubVirtualNetworkAddressPrefix="+$data.hubVirtualNetworkAddressPrefix}
if ($data.hubSubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " hubSubnetAddressPrefix="+$data.hubSubnetAddressPrefix}
if ($data.firewallClientSubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " firewallClientSubnetAddressPrefix="+$data.firewallClientSubnetAddressPrefix}
if ($data.firewallManagementSubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " firewallManagementSubnetAddressPrefix="+$data.firewallManagementSubnetAddressPrefix}
if ($data.identityVirtualNetworkAddressPrefix.Length -gt 0) {$parameters = $parameters + " identityVirtualNetworkAddressPrefix="+$data.identityVirtualNetworkAddressPrefix}
if ($data.identitySubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " identitySubnetAddressPrefix="+$data.identitySubnetAddressPrefix}
if ($data.operationsVirtualNetworkAddressPrefix.Length -gt 0) {$parameters = $parameters + " operationsVirtualNetworkAddressPrefix="+$data.operationsVirtualNetworkAddressPrefix}
if ($data.operationsSubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " operationsSubnetAddressPrefix="+$data.operationsSubnetAddressPrefix}
if ($data.sharedServicesVirtualNetworkAddressPrefix.Length -gt 0) {$parameters = $parameters + " sharedServicesVirtualNetworkAddressPrefix="+$data.sharedServicesVirtualNetworkAddressPrefix}
if ($data.sharedServicesSubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " sharedServicesSubnetAddressPrefix="+$data.sharedServicesSubnetAddressPrefix}
if ($data.firewallThreatIntelMode.Length -gt 0) {$parameters = $parameters + " firewallThreatIntelMode="+$data.firewallThreatIntelMode}
if ($data.firewallIntrusionDetectionMode.Length -gt 0) {$parameters = $parameters + " firewallIntrusionDetectionMode="+$data.firewallIntrusionDetectionMode}
if ($data.firewallDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " firewallDiagnosticsLogs="+$data.firewallDiagnosticsLogs}
if ($data.firewallDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " firewallDiagnosticsMetrics="+$data.firewallDiagnosticsMetrics}
if ($data.firewallClientSubnetServiceEndpoints.Length -gt 0) {$parameters = $parameters + " firewallClientSubnetServiceEndpoints="+$data.firewallClientSubnetServiceEndpoints}
if ($data.firewallClientPublicIPAddressAvailabilityZones.Length -gt 0) {$parameters = $parameters + " firewallClientPublicIPAddressAvailabilityZones="+$data.firewallClientPublicIPAddressAvailabilityZones}
if ($data.firewallManagementSubnetServiceEndpoints.Length -gt 0) {$parameters = $parameters + " firewallManagementSubnetServiceEndpoints="+$data.firewallManagementSubnetServiceEndpoints}
if ($data.firewallManagementPublicIPAddressAvailabilityZones.Length -gt 0) {$parameters = $parameters + " firewallManagementPublicIPAddressAvailabilityZones="+$data.firewallManagementPublicIPAddressAvailabilityZones}
if ($data.publicIPAddressDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " publicIPAddressDiagnosticsLogs="+$data.publicIPAddressDiagnosticsLogs}
if ($data.publicIPAddressDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " publicIPAddressDiagnosticsMetrics="+$data.publicIPAddressDiagnosticsMetrics}
if ($data.hubVirtualNetworkDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " hubVirtualNetworkDiagnosticsLogs="+$data.hubVirtualNetworkDiagnosticsLogs}
if ($data.hubVirtualNetworkDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " hubVirtualNetworkDiagnosticsMetrics="+$data.hubVirtualNetworkDiagnosticsMetrics}
if ($data.hubNetworkSecurityGroupRules.Length -gt 0) {$parameters = $parameters + " hubNetworkSecurityGroupRules="+$data.hubNetworkSecurityGroupRules}
if ($data.hubNetworkSecurityGroupDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " hubNetworkSecurityGroupDiagnosticsLogs="+$data.hubNetworkSecurityGroupDiagnosticsLogs}
if ($data.hubNetworkSecurityGroupDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " hubNetworkSecurityGroupDiagnosticsMetrics="+$data.hubNetworkSecurityGroupDiagnosticsMetrics}
if ($data.hubSubnetServiceEndpoints.Length -gt 0) {$parameters = $parameters + " hubSubnetServiceEndpoints="+$data.hubSubnetServiceEndpoints}
if ($data.identityVirtualNetworkDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " identityVirtualNetworkDiagnosticsLogs="+$data.identityVirtualNetworkDiagnosticsLogs}
if ($data.identityVirtualNetworkDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " identityVirtualNetworkDiagnosticsMetrics="+$data.identityVirtualNetworkDiagnosticsMetrics}
if ($data.identityNetworkSecurityGroupRules.Length -gt 0) {$parameters = $parameters + " identityNetworkSecurityGroupRules="+$data.identityNetworkSecurityGroupRules}
if ($data.identityNetworkSecurityGroupDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " identityNetworkSecurityGroupDiagnosticsLogs="+$data.identityNetworkSecurityGroupDiagnosticsLogs}
if ($data.identityNetworkSecurityGroupDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " identityNetworkSecurityGroupDiagnosticsMetrics="+$data.identityNetworkSecurityGroupDiagnosticsMetrics}
if ($data.identitySubnetServiceEndpoints.Length -gt 0) {$parameters = $parameters + " identitySubnetServiceEndpoints="+$data.identitySubnetServiceEndpoints}
if ($data.operationsVirtualNetworkDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " operationsVirtualNetworkDiagnosticsLogs="+$data.operationsVirtualNetworkDiagnosticsLogs}
if ($data.operationsVirtualNetworkDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " operationsVirtualNetworkDiagnosticsMetrics="+$data.operationsVirtualNetworkDiagnosticsMetrics}
if ($data.operationsNetworkSecurityGroupRules.Length -gt 0) {$parameters = $parameters + " operationsNetworkSecurityGroupRules="+$data.operationsNetworkSecurityGroupRules}
if ($data.operationsNetworkSecurityGroupDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " operationsNetworkSecurityGroupDiagnosticsLogs="+$data.operationsNetworkSecurityGroupDiagnosticsLogs}
if ($data.operationsNetworkSecurityGroupDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " operationsNetworkSecurityGroupDiagnosticsMetrics="+$data.operationsNetworkSecurityGroupDiagnosticsMetrics}
if ($data.operationsSubnetServiceEndpoints.Length -gt 0) {$parameters = $parameters + " operationsSubnetServiceEndpoints="+$data.operationsSubnetServiceEndpoints}
if ($data.sharedServicesVirtualNetworkDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " sharedServicesVirtualNetworkDiagnosticsLogs="+$data.sharedServicesVirtualNetworkDiagnosticsLogs}
if ($data.sharedServicesVirtualNetworkDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " sharedServicesVirtualNetworkDiagnosticsMetrics="+$data.sharedServicesVirtualNetworkDiagnosticsMetrics}
if ($data.sharedServicesNetworkSecurityGroupRules.Length -gt 0) {$parameters = $parameters + " sharedServicesNetworkSecurityGroupRules="+$data.sharedServicesNetworkSecurityGroupRules}
if ($data.sharedServicesNetworkSecurityGroupDiagnosticsLogs.Length -gt 0) {$parameters = $parameters + " sharedServicesNetworkSecurityGroupDiagnosticsLogs="+$data.sharedServicesNetworkSecurityGroupDiagnosticsLogs}
if ($data.sharedServicesNetworkSecurityGroupDiagnosticsMetrics.Length -gt 0) {$parameters = $parameters + " sharedServicesNetworkSecurityGroupDiagnosticsMetrics="+$data.sharedServicesNetworkSecurityGroupDiagnosticsMetrics}
if ($data.sharedServicesSubnetServiceEndpoints.Length -gt 0) {$parameters = $parameters + " sharedServicesSubnetServiceEndpoints="+$data.sharedServicesSubnetServiceEndpoints}
if ($data.deploySentinel.Length -gt 0) {$parameters = $parameters + " deploySentinel="+$data.deploySentinel}
if ($data.logAnalyticsWorkspaceCappingDailyQuotaGb.Length -gt 0) {$parameters = $parameters + " logAnalyticsWorkspaceCappingDailyQuotaGb="+$data.logAnalyticsWorkspaceCappingDailyQuotaGb}
if ($data.logAnalyticsWorkspaceRetentionInDays.Length -gt 0) {$parameters = $parameters + " logAnalyticsWorkspaceRetentionInDays="+$data.logAnalyticsWorkspaceRetentionInDays}
if ($data.logAnalyticsWorkspaceSkuName.Length -gt 0) {$parameters = $parameters + " logAnalyticsWorkspaceSkuName="+$data.logAnalyticsWorkspaceSkuName}
if ($data.logStorageSkuName.Length -gt 0) {$parameters = $parameters + " logStorageSkuName="+$data.logStorageSkuName}
if ($data.deployRemoteAccess.Length -gt 0) {$parameters = $parameters + " deployRemoteAccess="+$data.deployRemoteAccess}
if ($data.bastionHostSubnetAddressPrefix.Length -gt 0) {$parameters = $parameters + " bastionHostSubnetAddressPrefix="+$data.bastionHostSubnetAddressPrefix}
if ($data.bastionHostPublicIPAddressAvailabilityZones.Length -gt 0) {$parameters = $parameters + " bastionHostPublicIPAddressAvailabilityZones="+$data.bastionHostPublicIPAddressAvailabilityZones}
if ($data.linuxVmAuthenticationType.Length -gt 0) {$parameters = $parameters + " linuxVmAuthenticationType="+$data.linuxVmAuthenticationType}
if ($data.linuxVmAdminPasswordOrKey.Length -gt 0) {$parameters = $parameters + " linuxVmAdminPasswordOrKey="+$data.linuxVmAdminPasswordOrKey}
if ($data.linuxVmAdminUsername.Length -gt 0) {$parameters = $parameters + " linuxVmAdminUsername="+$data.linuxVmAdminUsername}
if ($data.linuxVmSize.Length -gt 0) {$parameters = $parameters + " linuxVmSize="+$data.linuxVmSize}
if ($data.linuxVmOsDiskCreateOption.Length -gt 0) {$parameters = $parameters + " linuxVmOsDiskCreateOption="+$data.linuxVmOsDiskCreateOption}
if ($data.linuxVmOsDiskType.Length -gt 0) {$parameters = $parameters + " linuxVmOsDiskType="+$data.linuxVmOsDiskType}
if ($data.linuxVmImagePublisher.Length -gt 0) {$parameters = $parameters + " linuxVmImagePublisher="+$data.linuxVmImagePublisher}
if ($data.linuxVmImageOffer.Length -gt 0) {$parameters = $parameters + " linuxVmImageOffer="+$data.linuxVmImageOffer}
if ($data.linuxVmImageSku.Length -gt 0) {$parameters = $parameters + " linuxVmImageSku="+$data.linuxVmImageSku}
if ($data.linuxVmImageVersion.Length -gt 0) {$parameters = $parameters + " linuxVmImageVersion="+$data.linuxVmImageVersion}
if ($data.linuxNetworkInterfacePrivateIPAddressAllocationMethod.Length -gt 0) {$parameters = $parameters + " linuxNetworkInterfacePrivateIPAddressAllocationMethod="+$data.linuxNetworkInterfacePrivateIPAddressAllocationMethod}
if ($data.windowsVmAdminPassword.Length -gt 0) {$parameters = $parameters + " windowsVmAdminPassword="+$data.windowsVmAdminPassword}
if ($data.windowsVmAdminUsername.Length -gt 0) {$parameters = $parameters + " windowsVmAdminUsername="+$data.windowsVmAdminUsername}
if ($data.windowsVmSize.Length -gt 0) {$parameters = $parameters + " windowsVmSize="+$data.windowsVmSize}
if ($data.windowsVmPublisher.Length -gt 0) {$parameters = $parameters + " windowsVmPublisher="+$data.windowsVmPublisher}
if ($data.windowsVmOffer.Length -gt 0) {$parameters = $parameters + " windowsVmOffer="+$data.windowsVmOffer}
if ($data.windowsVmSku.Length -gt 0) {$parameters = $parameters + " windowsVmSku="+$data.windowsVmSku}
if ($data.windowsVmVersion.Length -gt 0) {$parameters = $parameters + " windowsVmVersion="+$data.windowsVmVersion}
if ($data.windowsVmCreateOption.Length -gt 0) {$parameters = $parameters + " windowsVmCreateOption="+$data.windowsVmCreateOption}
if ($data.windowsVmStorageAccountType.Length -gt 0) {$parameters = $parameters + " windowsVmStorageAccountType="+$data.windowsVmStorageAccountType}
if ($data.windowsNetworkInterfacePrivateIPAddressAllocationMethod.Length -gt 0) {$parameters = $parameters + " windowsNetworkInterfacePrivateIPAddressAllocationMethod="+$data.windowsNetworkInterfacePrivateIPAddressAllocationMethod}
if ($data.firewallSkuTier.Length -gt 0) {$parameters = $parameters + " firewallSkuTier="+$data.firewallSkuTier}
if ($data.hubSubscriptionId.Length -gt 0) {$parameters = $parameters + " hubSubscriptionId="+$data.hubSubscriptionId}
if ($data.identitySubscriptionId.Length -gt 0) {$parameters = $parameters + " identitySubscriptionId="+$data.identitySubscriptionId}
if ($data.operationsSubscriptionId.Length -gt 0) {$parameters = $parameters + " operationsSubscriptionId="+$data.operationsSubscriptionId}
if ($data.sharedServicesSubscriptionId.Length -gt 0) {$parameters = $parameters + " sharedServicesSubscriptionId="+$data.sharedServicesSubscriptionId}

$createPrimaryTiers = "az deployment sub create $parameters"
write-host $createPrimaryTiers


Invoke-Expression $createPrimaryTiers

$output=az deployment sub show `
  --name $data.deploymentName `
  --query "properties.outputs"| ConvertFrom-Json 

$hubSubscriptionId = $output.hub.value.subscriptionId
$hubResourceGroupName = $output.hub.value.resourceGroupName
$hubVirtualNetworkName = $output.hub.value.virtualNetworkName
$hubVirtualNetworkResourceId = $output.hub.value.virtualNetworkResourceId
$logAnalyticsWorkspaceResourceId = $output.logAnalyticsWorkspaceResourceId.value
$firewallPrivateIPAddress = $output.firewallPrivateIPAddress.value


Foreach ($item in $data.tiers.Value) 
{ 
	write-host $item.workloadName
	
	$templateFileWorkload = "./examples/newWorkload/newWorkload.bicep"
	$tierParams = " --template-file $templateFileWorkload"
	
	if ($item.subscriptionID.Length -gt 0){$tierParams = $tierParams + " --subscription "+$item.subscriptionID}	
	if ($item.location.Length -gt 0){$tierParams = $tierParams + " --location "+$item.location}	
	if ($item.workloadName.Length -gt 0){$tierParams = $tierParams + " --name "+$item.workloadName}
	
	$tierParams = $tierParams + " --parameters"
	$outputfile = '{"hubSubscriptionId": "'+$hubSubscriptionId+'","hubResourceGroupName":"'+$hubResourceGroupName+'","hubVirtualNetworkName":"'+$hubVirtualNetworkName+'", "hubVirtualNetworkResourceId":"'+$hubVirtualNetworkResourceId+'","logAnalyticsWorkspaceResourceId":"'+$logAnalyticsWorkspaceResourceId+'","firewallPrivateIPAddress":"'+$firewallPrivateIPAddress+'"}'
	$outputfile	| Out-File -FilePath .\examples\deploymentVariables.json 
	write-host $outputfile 

	if ($item.workloadName.Length -gt 0){$tierParams = $tierParams + " workloadName="+$item.workloadName}
	if ($hubSubscriptionId.Length -gt 0){$tierParams = $tierParams + " hubSubscriptionId="+$hubSubscriptionId}
	if ($hubResourceGroupName.Length -gt 0){$tierParams = $tierParams + " hubResourceGroupName="+$hubResourceGroupName}
	if ($hubVirtualNetworkName.Length -gt 0){$tierParams = $tierParams + " hubVirtualNetworkName="+$hubVirtualNetworkName}
	if ($hubVirtualNetworkResourceId.Length -gt 0){$tierParams = $tierParams + " hubVirtualNetworkResourceId="+$hubVirtualNetworkResourceId}
	if ($logAnalyticsWorkspaceResourceId.Length -gt 0){$tierParams = $tierParams + " logAnalyticsWorkspaceResourceId="+$logAnalyticsWorkspaceResourceId}
	if ($firewallPrivateIPAddress.Length -gt 0){$tierParams = $tierParams + " firewallPrivateIPAddress="+$firewallPrivateIPAddress}
	
	if ($item.resourceGroupName.Length -gt 0) {$tierParams = $tierParams + " resourceGroupName="+$item.resourceGroupName}
	if ($item.tags.Length -gt 0) {$tierParams = $tierParams + " tags="+$item.tags}
	if ($item.virtualNetworkName.Length -gt 0) {$tierParams = $tierParams + " virtualNetworkName="+$item.virtualNetworkName}
	if ($item.virtualNetworkAddressPrefix.Length -gt 0) {$tierParams = $tierParams + " virtualNetworkAddressPrefix="+$item.virtualNetworkAddressPrefix}
	if ($item.virtualNetworkDiagnosticsLogs.Length -gt 0) {$tierParams = $tierParams + " virtualNetworkDiagnosticsLogs="+$item.virtualNetworkDiagnosticsLogs}
	if ($item.virtualNetworkDiagnosticsMetrics.Length -gt 0) {$tierParams = $tierParams + " virtualNetworkDiagnosticsMetrics="+$item.virtualNetworkDiagnosticsMetrics}
	if ($item.networkSecurityGroupName.Length -gt 0) {$tierParams = $tierParams + " networkSecurityGroupName="+$item.networkSecurityGroupName}
	if ($item.networkSecurityGroupRules.Length -gt 0) {$tierParams = $tierParams + " networkSecurityGroupRules="+$item.networkSecurityGroupRules}
	if ($item.networkSecurityGroupDiagnosticsLogs.Length -gt 0) {$tierParams = $tierParams + " networkSecurityGroupDiagnosticsLogs="+$item.networkSecurityGroupDiagnosticsLogs}
	if ($item.networkSecurityGroupDiagnosticsMetrics.Length -gt 0) {$tierParams = $tierParams + " networkSecurityGroupDiagnosticsMetrics="+$item.networkSecurityGroupDiagnosticsMetrics}
	if ($item.subnetName.Length -gt 0) {$tierParams = $tierParams + " subnetName="+$item.subnetName}
	if ($item.subnetAddressPrefix.Length -gt 0) {$tierParams = $tierParams + " subnetAddressPrefix="+$item.subnetAddressPrefix}
	if ($item.subnetServiceEndpoints.Length -gt 0) {$tierParams = $tierParams + " subnetServiceEndpoints="+$item.subnetServiceEndpoints}
	if ($item.logStorageAccountName.Length -gt 0) {$tierParams = $tierParams + " logStorageAccountName="+$item.logStorageAccountName}
	if ($item.logStorageSkuName.Length -gt 0) {$tierParams = $tierParams + " logStorageSkuName="+$item.logStorageSkuName}
	if ($item.resourceIdentifier.Length -gt 0) {$tierParams = $tierParams + " resourceIdentifier="+$item.resourceIdentifier}

	
	
	$createSecondaryTier = "az deployment sub create $tierParams"
	write-host $createSecondaryTier

	Invoke-Expression $createSecondaryTier
	
}
  