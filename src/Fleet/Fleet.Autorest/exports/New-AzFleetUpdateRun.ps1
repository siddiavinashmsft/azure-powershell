
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a UpdateRun
.Description
Create a UpdateRun
.Example
New-AzFleetUpdateRun -FleetName testfleet01 -Name run1 -ResourceGroupName K8sFleet-Test -UpgradeType Full -UpgradeKubernetesVersion "1.26.1" -NodeImageSelectionType Latest

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IFleetIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IUpdateRun
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

FLEETINPUTOBJECT <IFleetIdentity>: Identity Parameter
  [FleetMemberName <String>]: The name of the Fleet member resource.
  [FleetName <String>]: The name of the Fleet resource.
  [Id <String>]: Resource identity path
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [SubscriptionId <String>]: The ID of the target subscription.
  [UpdateRunName <String>]: The name of the UpdateRun resource.
  [UpdateStrategyName <String>]: The name of the UpdateStrategy resource.

INPUTOBJECT <IFleetIdentity>: Identity Parameter
  [FleetMemberName <String>]: The name of the Fleet member resource.
  [FleetName <String>]: The name of the Fleet resource.
  [Id <String>]: Resource identity path
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [SubscriptionId <String>]: The ID of the target subscription.
  [UpdateRunName <String>]: The name of the UpdateRun resource.
  [UpdateStrategyName <String>]: The name of the UpdateStrategy resource.

STRATEGYSTAGE <IUpdateStage[]>: The list of stages that compose this update run. Min size: 1.
  Name <String>: The name of the stage. Must be unique within the UpdateRun.
  [AfterStageWaitInSecond <Int32?>]: The time in seconds to wait at the end of this stage before starting the next one. Defaults to 0 seconds if unspecified.
  [Group <List<IUpdateGroup>>]: Defines the groups to be executed in parallel in this stage. Duplicate groups are not allowed. Min size: 1.
    Name <String>: Name of the group.         It must match a group name of an existing fleet member. 
.Link
https://learn.microsoft.com/powershell/module/az.fleet/new-azfleetupdaterun
#>
function New-AzFleetUpdateRun {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IUpdateRun])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateViaJsonFilePath', Mandatory)]
    [Parameter(ParameterSetName='CreateViaJsonString', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Path')]
    [System.String]
    # The name of the Fleet resource.
    ${FleetName},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateViaJsonFilePath', Mandatory)]
    [Parameter(ParameterSetName='CreateViaJsonString', Mandatory)]
    [Alias('UpdateRunName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Path')]
    [System.String]
    # The name of the UpdateRun resource.
    ${Name},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateViaJsonFilePath', Mandatory)]
    [Parameter(ParameterSetName='CreateViaJsonString', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaJsonFilePath')]
    [Parameter(ParameterSetName='CreateViaJsonString')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IFleetIdentity]
    # Identity Parameter
    ${InputObject},

    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IFleetIdentity]
    # Identity Parameter
    ${FleetInputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Header')]
    [System.String]
    # The request should only proceed if an entity matches this string.
    ${IfMatch},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Header')]
    [System.String]
    # The request should only proceed if no entity matches this string.
    ${IfNoneMatch},

    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.PSArgumentCompleterAttribute("Full", "NodeImageOnly")]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [System.String]
    # The upgrade type.Full requires the KubernetesVersion property to be set.NodeImageOnly requires the KubernetesVersion property not to be set.
    ${UpgradeType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.PSArgumentCompleterAttribute("Latest", "Consistent")]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [System.String]
    # The node image upgrade type.
    ${NodeImageSelectionType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IUpdateStage[]]
    # The list of stages that compose this update run.
    # Min size: 1.
    ${StrategyStage},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [System.String]
    # The resource id of the FleetUpdateStrategy resource to reference.When creating a new run, there are three ways to define a strategy for the run:1.
    # Define a new strategy in place: Set the "strategy" field.2.
    # Use an existing strategy: Set the "updateStrategyId" field.
    # (since 2023-08-15-preview)3.
    # Use the default strategy to update all the members one by one: Leave both "updateStrategyId" and "strategy" unset.
    # (since 2023-08-15-preview)Setting both "updateStrategyId" and "strategy" is invalid.UpdateRuns created by "updateStrategyId" snapshot the referenced UpdateStrategy at the time of creation and store it in the "strategy" field.
    # Subsequent changes to the referenced FleetUpdateStrategy resource do not propagate.
    # UpdateRunStrategy changes can be made directly on the "strategy" field before launching the UpdateRun.
    ${UpdateStrategyId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityFleetExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [System.String]
    # The Kubernetes version to upgrade the member clusters to.
    ${UpgradeKubernetesVersion},

    [Parameter(ParameterSetName='CreateViaJsonFilePath', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [System.String]
    # Path of Json file supplied to the Create operation
    ${JsonFilePath},

    [Parameter(ParameterSetName='CreateViaJsonString', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Body')]
    [System.String]
    # Json string supplied to the Create operation
    ${JsonString},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.Fleet.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            CreateExpanded = 'Az.Fleet.private\New-AzFleetUpdateRun_CreateExpanded';
            CreateViaIdentityExpanded = 'Az.Fleet.private\New-AzFleetUpdateRun_CreateViaIdentityExpanded';
            CreateViaIdentityFleetExpanded = 'Az.Fleet.private\New-AzFleetUpdateRun_CreateViaIdentityFleetExpanded';
            CreateViaJsonFilePath = 'Az.Fleet.private\New-AzFleetUpdateRun_CreateViaJsonFilePath';
            CreateViaJsonString = 'Az.Fleet.private\New-AzFleetUpdateRun_CreateViaJsonString';
        }
        if (('CreateExpanded', 'CreateViaJsonFilePath', 'CreateViaJsonString') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId') ) {
            $testPlayback = $false
            $PSBoundParameters['HttpPipelinePrepend'] | Foreach-Object { $testPlayback = $testPlayback -or ('Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.PipelineMock' -eq $_.Target.GetType().FullName -and 'Playback' -eq $_.Target.Mode) }
            if ($testPlayback) {
                $PSBoundParameters['SubscriptionId'] = . (Join-Path $PSScriptRoot '..' 'utils' 'Get-SubscriptionIdTestSafe.ps1')
            } else {
                $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
            }
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        if ($null -ne $MyInvocation.MyCommand -and [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets -notcontains $MyInvocation.MyCommand.Name -and [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.MessageAttributeHelper]::ContainsPreviewAttribute($cmdInfo, $MyInvocation)){
            [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.MessageAttributeHelper]::ProcessPreviewMessageAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets.Enqueue($MyInvocation.MyCommand.Name)
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.Fleet.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
