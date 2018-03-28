## Module AWS.ES.Types

#### `options`

``` purescript
options :: Options
```

#### `ARN`

``` purescript
newtype ARN
  = ARN String
```

<p>The Amazon Resource Name (ARN) of the Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>

##### Instances
``` purescript
Newtype ARN _
Generic ARN _
Show ARN
Decode ARN
Encode ARN
```

#### `AccessPoliciesStatus`

``` purescript
newtype AccessPoliciesStatus
  = AccessPoliciesStatus { "Options" :: PolicyDocument, "Status" :: OptionStatus }
```

<p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>

##### Instances
``` purescript
Newtype AccessPoliciesStatus _
Generic AccessPoliciesStatus _
Show AccessPoliciesStatus
Decode AccessPoliciesStatus
Encode AccessPoliciesStatus
```

#### `newAccessPoliciesStatus`

``` purescript
newAccessPoliciesStatus :: PolicyDocument -> OptionStatus -> AccessPoliciesStatus
```

Constructs AccessPoliciesStatus from required parameters

#### `newAccessPoliciesStatus'`

``` purescript
newAccessPoliciesStatus' :: PolicyDocument -> OptionStatus -> ({ "Options" :: PolicyDocument, "Status" :: OptionStatus } -> { "Options" :: PolicyDocument, "Status" :: OptionStatus }) -> AccessPoliciesStatus
```

Constructs AccessPoliciesStatus's fields from required parameters

#### `AddTagsRequest`

``` purescript
newtype AddTagsRequest
  = AddTagsRequest { "ARN" :: ARN, "TagList" :: TagList }
```

<p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype AddTagsRequest _
Generic AddTagsRequest _
Show AddTagsRequest
Decode AddTagsRequest
Encode AddTagsRequest
```

#### `newAddTagsRequest`

``` purescript
newAddTagsRequest :: ARN -> TagList -> AddTagsRequest
```

Constructs AddTagsRequest from required parameters

#### `newAddTagsRequest'`

``` purescript
newAddTagsRequest' :: ARN -> TagList -> ({ "ARN" :: ARN, "TagList" :: TagList } -> { "ARN" :: ARN, "TagList" :: TagList }) -> AddTagsRequest
```

Constructs AddTagsRequest's fields from required parameters

#### `AdditionalLimit`

``` purescript
newtype AdditionalLimit
  = AdditionalLimit { "LimitName" :: NullOrUndefined (LimitName), "LimitValues" :: NullOrUndefined (LimitValueList) }
```

<p> List of limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>

##### Instances
``` purescript
Newtype AdditionalLimit _
Generic AdditionalLimit _
Show AdditionalLimit
Decode AdditionalLimit
Encode AdditionalLimit
```

#### `newAdditionalLimit`

``` purescript
newAdditionalLimit :: AdditionalLimit
```

Constructs AdditionalLimit from required parameters

#### `newAdditionalLimit'`

``` purescript
newAdditionalLimit' :: ({ "LimitName" :: NullOrUndefined (LimitName), "LimitValues" :: NullOrUndefined (LimitValueList) } -> { "LimitName" :: NullOrUndefined (LimitName), "LimitValues" :: NullOrUndefined (LimitValueList) }) -> AdditionalLimit
```

Constructs AdditionalLimit's fields from required parameters

#### `AdditionalLimitList`

``` purescript
newtype AdditionalLimitList
  = AdditionalLimitList (Array AdditionalLimit)
```

##### Instances
``` purescript
Newtype AdditionalLimitList _
Generic AdditionalLimitList _
Show AdditionalLimitList
Decode AdditionalLimitList
Encode AdditionalLimitList
```

#### `AdvancedOptions`

``` purescript
newtype AdvancedOptions
  = AdvancedOptions (StrMap String)
```

<p> Exposes select native Elasticsearch configuration values from <code>elasticsearch.yml</code>. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>

##### Instances
``` purescript
Newtype AdvancedOptions _
Generic AdvancedOptions _
Show AdvancedOptions
Decode AdvancedOptions
Encode AdvancedOptions
```

#### `AdvancedOptionsStatus`

``` purescript
newtype AdvancedOptionsStatus
  = AdvancedOptionsStatus { "Options" :: AdvancedOptions, "Status" :: OptionStatus }
```

<p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>

##### Instances
``` purescript
Newtype AdvancedOptionsStatus _
Generic AdvancedOptionsStatus _
Show AdvancedOptionsStatus
Decode AdvancedOptionsStatus
Encode AdvancedOptionsStatus
```

#### `newAdvancedOptionsStatus`

``` purescript
newAdvancedOptionsStatus :: AdvancedOptions -> OptionStatus -> AdvancedOptionsStatus
```

Constructs AdvancedOptionsStatus from required parameters

#### `newAdvancedOptionsStatus'`

``` purescript
newAdvancedOptionsStatus' :: AdvancedOptions -> OptionStatus -> ({ "Options" :: AdvancedOptions, "Status" :: OptionStatus } -> { "Options" :: AdvancedOptions, "Status" :: OptionStatus }) -> AdvancedOptionsStatus
```

Constructs AdvancedOptionsStatus's fields from required parameters

#### `BaseException`

``` purescript
newtype BaseException
  = BaseException { message :: NullOrUndefined (ErrorMessage) }
```

<p>An error occurred while processing the request.</p>

##### Instances
``` purescript
Newtype BaseException _
Generic BaseException _
Show BaseException
Decode BaseException
Encode BaseException
```

#### `newBaseException`

``` purescript
newBaseException :: BaseException
```

Constructs BaseException from required parameters

#### `newBaseException'`

``` purescript
newBaseException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> BaseException
```

Constructs BaseException's fields from required parameters

#### `CloudWatchLogsLogGroupArn`

``` purescript
newtype CloudWatchLogsLogGroupArn
  = CloudWatchLogsLogGroupArn String
```

<p>ARN of the Cloudwatch log group to which log needs to be published.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsLogGroupArn _
Generic CloudWatchLogsLogGroupArn _
Show CloudWatchLogsLogGroupArn
Decode CloudWatchLogsLogGroupArn
Encode CloudWatchLogsLogGroupArn
```

#### `CreateElasticsearchDomainRequest`

``` purescript
newtype CreateElasticsearchDomainRequest
  = CreateElasticsearchDomainRequest { "DomainName" :: DomainName, "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionString), "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfig), "EBSOptions" :: NullOrUndefined (EBSOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCOptions), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) }
```

##### Instances
``` purescript
Newtype CreateElasticsearchDomainRequest _
Generic CreateElasticsearchDomainRequest _
Show CreateElasticsearchDomainRequest
Decode CreateElasticsearchDomainRequest
Encode CreateElasticsearchDomainRequest
```

#### `newCreateElasticsearchDomainRequest`

``` purescript
newCreateElasticsearchDomainRequest :: DomainName -> CreateElasticsearchDomainRequest
```

Constructs CreateElasticsearchDomainRequest from required parameters

#### `newCreateElasticsearchDomainRequest'`

``` purescript
newCreateElasticsearchDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName, "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionString), "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfig), "EBSOptions" :: NullOrUndefined (EBSOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCOptions), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) } -> { "DomainName" :: DomainName, "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionString), "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfig), "EBSOptions" :: NullOrUndefined (EBSOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCOptions), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) }) -> CreateElasticsearchDomainRequest
```

Constructs CreateElasticsearchDomainRequest's fields from required parameters

#### `CreateElasticsearchDomainResponse`

``` purescript
newtype CreateElasticsearchDomainResponse
  = CreateElasticsearchDomainResponse { "DomainStatus" :: NullOrUndefined (ElasticsearchDomainStatus) }
```

<p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype CreateElasticsearchDomainResponse _
Generic CreateElasticsearchDomainResponse _
Show CreateElasticsearchDomainResponse
Decode CreateElasticsearchDomainResponse
Encode CreateElasticsearchDomainResponse
```

#### `newCreateElasticsearchDomainResponse`

``` purescript
newCreateElasticsearchDomainResponse :: CreateElasticsearchDomainResponse
```

Constructs CreateElasticsearchDomainResponse from required parameters

#### `newCreateElasticsearchDomainResponse'`

``` purescript
newCreateElasticsearchDomainResponse' :: ({ "DomainStatus" :: NullOrUndefined (ElasticsearchDomainStatus) } -> { "DomainStatus" :: NullOrUndefined (ElasticsearchDomainStatus) }) -> CreateElasticsearchDomainResponse
```

Constructs CreateElasticsearchDomainResponse's fields from required parameters

#### `DeleteElasticsearchDomainRequest`

``` purescript
newtype DeleteElasticsearchDomainRequest
  = DeleteElasticsearchDomainRequest { "DomainName" :: DomainName }
```

<p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>

##### Instances
``` purescript
Newtype DeleteElasticsearchDomainRequest _
Generic DeleteElasticsearchDomainRequest _
Show DeleteElasticsearchDomainRequest
Decode DeleteElasticsearchDomainRequest
Encode DeleteElasticsearchDomainRequest
```

#### `newDeleteElasticsearchDomainRequest`

``` purescript
newDeleteElasticsearchDomainRequest :: DomainName -> DeleteElasticsearchDomainRequest
```

Constructs DeleteElasticsearchDomainRequest from required parameters

#### `newDeleteElasticsearchDomainRequest'`

``` purescript
newDeleteElasticsearchDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DeleteElasticsearchDomainRequest
```

Constructs DeleteElasticsearchDomainRequest's fields from required parameters

#### `DeleteElasticsearchDomainResponse`

``` purescript
newtype DeleteElasticsearchDomainResponse
  = DeleteElasticsearchDomainResponse { "DomainStatus" :: NullOrUndefined (ElasticsearchDomainStatus) }
```

<p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>

##### Instances
``` purescript
Newtype DeleteElasticsearchDomainResponse _
Generic DeleteElasticsearchDomainResponse _
Show DeleteElasticsearchDomainResponse
Decode DeleteElasticsearchDomainResponse
Encode DeleteElasticsearchDomainResponse
```

#### `newDeleteElasticsearchDomainResponse`

``` purescript
newDeleteElasticsearchDomainResponse :: DeleteElasticsearchDomainResponse
```

Constructs DeleteElasticsearchDomainResponse from required parameters

#### `newDeleteElasticsearchDomainResponse'`

``` purescript
newDeleteElasticsearchDomainResponse' :: ({ "DomainStatus" :: NullOrUndefined (ElasticsearchDomainStatus) } -> { "DomainStatus" :: NullOrUndefined (ElasticsearchDomainStatus) }) -> DeleteElasticsearchDomainResponse
```

Constructs DeleteElasticsearchDomainResponse's fields from required parameters

#### `DescribeElasticsearchDomainConfigRequest`

``` purescript
newtype DescribeElasticsearchDomainConfigRequest
  = DescribeElasticsearchDomainConfigRequest { "DomainName" :: DomainName }
```

<p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>

##### Instances
``` purescript
Newtype DescribeElasticsearchDomainConfigRequest _
Generic DescribeElasticsearchDomainConfigRequest _
Show DescribeElasticsearchDomainConfigRequest
Decode DescribeElasticsearchDomainConfigRequest
Encode DescribeElasticsearchDomainConfigRequest
```

#### `newDescribeElasticsearchDomainConfigRequest`

``` purescript
newDescribeElasticsearchDomainConfigRequest :: DomainName -> DescribeElasticsearchDomainConfigRequest
```

Constructs DescribeElasticsearchDomainConfigRequest from required parameters

#### `newDescribeElasticsearchDomainConfigRequest'`

``` purescript
newDescribeElasticsearchDomainConfigRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeElasticsearchDomainConfigRequest
```

Constructs DescribeElasticsearchDomainConfigRequest's fields from required parameters

#### `DescribeElasticsearchDomainConfigResponse`

``` purescript
newtype DescribeElasticsearchDomainConfigResponse
  = DescribeElasticsearchDomainConfigResponse { "DomainConfig" :: ElasticsearchDomainConfig }
```

<p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>

##### Instances
``` purescript
Newtype DescribeElasticsearchDomainConfigResponse _
Generic DescribeElasticsearchDomainConfigResponse _
Show DescribeElasticsearchDomainConfigResponse
Decode DescribeElasticsearchDomainConfigResponse
Encode DescribeElasticsearchDomainConfigResponse
```

#### `newDescribeElasticsearchDomainConfigResponse`

``` purescript
newDescribeElasticsearchDomainConfigResponse :: ElasticsearchDomainConfig -> DescribeElasticsearchDomainConfigResponse
```

Constructs DescribeElasticsearchDomainConfigResponse from required parameters

#### `newDescribeElasticsearchDomainConfigResponse'`

``` purescript
newDescribeElasticsearchDomainConfigResponse' :: ElasticsearchDomainConfig -> ({ "DomainConfig" :: ElasticsearchDomainConfig } -> { "DomainConfig" :: ElasticsearchDomainConfig }) -> DescribeElasticsearchDomainConfigResponse
```

Constructs DescribeElasticsearchDomainConfigResponse's fields from required parameters

#### `DescribeElasticsearchDomainRequest`

``` purescript
newtype DescribeElasticsearchDomainRequest
  = DescribeElasticsearchDomainRequest { "DomainName" :: DomainName }
```

<p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>

##### Instances
``` purescript
Newtype DescribeElasticsearchDomainRequest _
Generic DescribeElasticsearchDomainRequest _
Show DescribeElasticsearchDomainRequest
Decode DescribeElasticsearchDomainRequest
Encode DescribeElasticsearchDomainRequest
```

#### `newDescribeElasticsearchDomainRequest`

``` purescript
newDescribeElasticsearchDomainRequest :: DomainName -> DescribeElasticsearchDomainRequest
```

Constructs DescribeElasticsearchDomainRequest from required parameters

#### `newDescribeElasticsearchDomainRequest'`

``` purescript
newDescribeElasticsearchDomainRequest' :: DomainName -> ({ "DomainName" :: DomainName } -> { "DomainName" :: DomainName }) -> DescribeElasticsearchDomainRequest
```

Constructs DescribeElasticsearchDomainRequest's fields from required parameters

#### `DescribeElasticsearchDomainResponse`

``` purescript
newtype DescribeElasticsearchDomainResponse
  = DescribeElasticsearchDomainResponse { "DomainStatus" :: ElasticsearchDomainStatus }
```

<p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>

##### Instances
``` purescript
Newtype DescribeElasticsearchDomainResponse _
Generic DescribeElasticsearchDomainResponse _
Show DescribeElasticsearchDomainResponse
Decode DescribeElasticsearchDomainResponse
Encode DescribeElasticsearchDomainResponse
```

#### `newDescribeElasticsearchDomainResponse`

``` purescript
newDescribeElasticsearchDomainResponse :: ElasticsearchDomainStatus -> DescribeElasticsearchDomainResponse
```

Constructs DescribeElasticsearchDomainResponse from required parameters

#### `newDescribeElasticsearchDomainResponse'`

``` purescript
newDescribeElasticsearchDomainResponse' :: ElasticsearchDomainStatus -> ({ "DomainStatus" :: ElasticsearchDomainStatus } -> { "DomainStatus" :: ElasticsearchDomainStatus }) -> DescribeElasticsearchDomainResponse
```

Constructs DescribeElasticsearchDomainResponse's fields from required parameters

#### `DescribeElasticsearchDomainsRequest`

``` purescript
newtype DescribeElasticsearchDomainsRequest
  = DescribeElasticsearchDomainsRequest { "DomainNames" :: DomainNameList }
```

<p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>

##### Instances
``` purescript
Newtype DescribeElasticsearchDomainsRequest _
Generic DescribeElasticsearchDomainsRequest _
Show DescribeElasticsearchDomainsRequest
Decode DescribeElasticsearchDomainsRequest
Encode DescribeElasticsearchDomainsRequest
```

#### `newDescribeElasticsearchDomainsRequest`

``` purescript
newDescribeElasticsearchDomainsRequest :: DomainNameList -> DescribeElasticsearchDomainsRequest
```

Constructs DescribeElasticsearchDomainsRequest from required parameters

#### `newDescribeElasticsearchDomainsRequest'`

``` purescript
newDescribeElasticsearchDomainsRequest' :: DomainNameList -> ({ "DomainNames" :: DomainNameList } -> { "DomainNames" :: DomainNameList }) -> DescribeElasticsearchDomainsRequest
```

Constructs DescribeElasticsearchDomainsRequest's fields from required parameters

#### `DescribeElasticsearchDomainsResponse`

``` purescript
newtype DescribeElasticsearchDomainsResponse
  = DescribeElasticsearchDomainsResponse { "DomainStatusList" :: ElasticsearchDomainStatusList }
```

<p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>

##### Instances
``` purescript
Newtype DescribeElasticsearchDomainsResponse _
Generic DescribeElasticsearchDomainsResponse _
Show DescribeElasticsearchDomainsResponse
Decode DescribeElasticsearchDomainsResponse
Encode DescribeElasticsearchDomainsResponse
```

#### `newDescribeElasticsearchDomainsResponse`

``` purescript
newDescribeElasticsearchDomainsResponse :: ElasticsearchDomainStatusList -> DescribeElasticsearchDomainsResponse
```

Constructs DescribeElasticsearchDomainsResponse from required parameters

#### `newDescribeElasticsearchDomainsResponse'`

``` purescript
newDescribeElasticsearchDomainsResponse' :: ElasticsearchDomainStatusList -> ({ "DomainStatusList" :: ElasticsearchDomainStatusList } -> { "DomainStatusList" :: ElasticsearchDomainStatusList }) -> DescribeElasticsearchDomainsResponse
```

Constructs DescribeElasticsearchDomainsResponse's fields from required parameters

#### `DescribeElasticsearchInstanceTypeLimitsRequest`

``` purescript
newtype DescribeElasticsearchInstanceTypeLimitsRequest
  = DescribeElasticsearchInstanceTypeLimitsRequest { "DomainName" :: NullOrUndefined (DomainName), "InstanceType" :: ESPartitionInstanceType, "ElasticsearchVersion" :: ElasticsearchVersionString }
```

<p> Container for the parameters to <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>

##### Instances
``` purescript
Newtype DescribeElasticsearchInstanceTypeLimitsRequest _
Generic DescribeElasticsearchInstanceTypeLimitsRequest _
Show DescribeElasticsearchInstanceTypeLimitsRequest
Decode DescribeElasticsearchInstanceTypeLimitsRequest
Encode DescribeElasticsearchInstanceTypeLimitsRequest
```

#### `newDescribeElasticsearchInstanceTypeLimitsRequest`

``` purescript
newDescribeElasticsearchInstanceTypeLimitsRequest :: ElasticsearchVersionString -> ESPartitionInstanceType -> DescribeElasticsearchInstanceTypeLimitsRequest
```

Constructs DescribeElasticsearchInstanceTypeLimitsRequest from required parameters

#### `newDescribeElasticsearchInstanceTypeLimitsRequest'`

``` purescript
newDescribeElasticsearchInstanceTypeLimitsRequest' :: ElasticsearchVersionString -> ESPartitionInstanceType -> ({ "DomainName" :: NullOrUndefined (DomainName), "InstanceType" :: ESPartitionInstanceType, "ElasticsearchVersion" :: ElasticsearchVersionString } -> { "DomainName" :: NullOrUndefined (DomainName), "InstanceType" :: ESPartitionInstanceType, "ElasticsearchVersion" :: ElasticsearchVersionString }) -> DescribeElasticsearchInstanceTypeLimitsRequest
```

Constructs DescribeElasticsearchInstanceTypeLimitsRequest's fields from required parameters

#### `DescribeElasticsearchInstanceTypeLimitsResponse`

``` purescript
newtype DescribeElasticsearchInstanceTypeLimitsResponse
  = DescribeElasticsearchInstanceTypeLimitsResponse { "LimitsByRole" :: NullOrUndefined (LimitsByRole) }
```

<p> Container for the parameters received from <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>

##### Instances
``` purescript
Newtype DescribeElasticsearchInstanceTypeLimitsResponse _
Generic DescribeElasticsearchInstanceTypeLimitsResponse _
Show DescribeElasticsearchInstanceTypeLimitsResponse
Decode DescribeElasticsearchInstanceTypeLimitsResponse
Encode DescribeElasticsearchInstanceTypeLimitsResponse
```

#### `newDescribeElasticsearchInstanceTypeLimitsResponse`

``` purescript
newDescribeElasticsearchInstanceTypeLimitsResponse :: DescribeElasticsearchInstanceTypeLimitsResponse
```

Constructs DescribeElasticsearchInstanceTypeLimitsResponse from required parameters

#### `newDescribeElasticsearchInstanceTypeLimitsResponse'`

``` purescript
newDescribeElasticsearchInstanceTypeLimitsResponse' :: ({ "LimitsByRole" :: NullOrUndefined (LimitsByRole) } -> { "LimitsByRole" :: NullOrUndefined (LimitsByRole) }) -> DescribeElasticsearchInstanceTypeLimitsResponse
```

Constructs DescribeElasticsearchInstanceTypeLimitsResponse's fields from required parameters

#### `DisabledOperationException`

``` purescript
newtype DisabledOperationException
  = DisabledOperationException NoArguments
```

<p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>

##### Instances
``` purescript
Newtype DisabledOperationException _
Generic DisabledOperationException _
Show DisabledOperationException
Decode DisabledOperationException
Encode DisabledOperationException
```

#### `DomainId`

``` purescript
newtype DomainId
  = DomainId String
```

<p>Unique identifier for an Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype DomainId _
Generic DomainId _
Show DomainId
Decode DomainId
Encode DomainId
```

#### `DomainInfo`

``` purescript
newtype DomainInfo
  = DomainInfo { "DomainName" :: NullOrUndefined (DomainName) }
```

##### Instances
``` purescript
Newtype DomainInfo _
Generic DomainInfo _
Show DomainInfo
Decode DomainInfo
Encode DomainInfo
```

#### `newDomainInfo`

``` purescript
newDomainInfo :: DomainInfo
```

Constructs DomainInfo from required parameters

#### `newDomainInfo'`

``` purescript
newDomainInfo' :: ({ "DomainName" :: NullOrUndefined (DomainName) } -> { "DomainName" :: NullOrUndefined (DomainName) }) -> DomainInfo
```

Constructs DomainInfo's fields from required parameters

#### `DomainInfoList`

``` purescript
newtype DomainInfoList
  = DomainInfoList (Array DomainInfo)
```

<p> Contains the list of Elasticsearch domain information.</p>

##### Instances
``` purescript
Newtype DomainInfoList _
Generic DomainInfoList _
Show DomainInfoList
Decode DomainInfoList
Encode DomainInfoList
```

#### `DomainName`

``` purescript
newtype DomainName
  = DomainName String
```

<p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>

##### Instances
``` purescript
Newtype DomainName _
Generic DomainName _
Show DomainName
Decode DomainName
Encode DomainName
```

#### `DomainNameList`

``` purescript
newtype DomainNameList
  = DomainNameList (Array DomainName)
```

<p>A list of Elasticsearch domain names.</p>

##### Instances
``` purescript
Newtype DomainNameList _
Generic DomainNameList _
Show DomainNameList
Decode DomainNameList
Encode DomainNameList
```

#### `EBSOptions`

``` purescript
newtype EBSOptions
  = EBSOptions { "EBSEnabled" :: NullOrUndefined (Boolean), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeSize" :: NullOrUndefined (IntegerClass), "Iops" :: NullOrUndefined (IntegerClass) }
```

<p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>

##### Instances
``` purescript
Newtype EBSOptions _
Generic EBSOptions _
Show EBSOptions
Decode EBSOptions
Encode EBSOptions
```

#### `newEBSOptions`

``` purescript
newEBSOptions :: EBSOptions
```

Constructs EBSOptions from required parameters

#### `newEBSOptions'`

``` purescript
newEBSOptions' :: ({ "EBSEnabled" :: NullOrUndefined (Boolean), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeSize" :: NullOrUndefined (IntegerClass), "Iops" :: NullOrUndefined (IntegerClass) } -> { "EBSEnabled" :: NullOrUndefined (Boolean), "VolumeType" :: NullOrUndefined (VolumeType), "VolumeSize" :: NullOrUndefined (IntegerClass), "Iops" :: NullOrUndefined (IntegerClass) }) -> EBSOptions
```

Constructs EBSOptions's fields from required parameters

#### `EBSOptionsStatus`

``` purescript
newtype EBSOptionsStatus
  = EBSOptionsStatus { "Options" :: EBSOptions, "Status" :: OptionStatus }
```

<p> Status of the EBS options for the specified Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype EBSOptionsStatus _
Generic EBSOptionsStatus _
Show EBSOptionsStatus
Decode EBSOptionsStatus
Encode EBSOptionsStatus
```

#### `newEBSOptionsStatus`

``` purescript
newEBSOptionsStatus :: EBSOptions -> OptionStatus -> EBSOptionsStatus
```

Constructs EBSOptionsStatus from required parameters

#### `newEBSOptionsStatus'`

``` purescript
newEBSOptionsStatus' :: EBSOptions -> OptionStatus -> ({ "Options" :: EBSOptions, "Status" :: OptionStatus } -> { "Options" :: EBSOptions, "Status" :: OptionStatus }) -> EBSOptionsStatus
```

Constructs EBSOptionsStatus's fields from required parameters

#### `ESPartitionInstanceType`

``` purescript
newtype ESPartitionInstanceType
  = ESPartitionInstanceType String
```

##### Instances
``` purescript
Newtype ESPartitionInstanceType _
Generic ESPartitionInstanceType _
Show ESPartitionInstanceType
Decode ESPartitionInstanceType
Encode ESPartitionInstanceType
```

#### `ElasticsearchClusterConfig`

``` purescript
newtype ElasticsearchClusterConfig
  = ElasticsearchClusterConfig { "InstanceType" :: NullOrUndefined (ESPartitionInstanceType), "InstanceCount" :: NullOrUndefined (IntegerClass), "DedicatedMasterEnabled" :: NullOrUndefined (Boolean), "ZoneAwarenessEnabled" :: NullOrUndefined (Boolean), "DedicatedMasterType" :: NullOrUndefined (ESPartitionInstanceType), "DedicatedMasterCount" :: NullOrUndefined (IntegerClass) }
```

<p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>

##### Instances
``` purescript
Newtype ElasticsearchClusterConfig _
Generic ElasticsearchClusterConfig _
Show ElasticsearchClusterConfig
Decode ElasticsearchClusterConfig
Encode ElasticsearchClusterConfig
```

#### `newElasticsearchClusterConfig`

``` purescript
newElasticsearchClusterConfig :: ElasticsearchClusterConfig
```

Constructs ElasticsearchClusterConfig from required parameters

#### `newElasticsearchClusterConfig'`

``` purescript
newElasticsearchClusterConfig' :: ({ "InstanceType" :: NullOrUndefined (ESPartitionInstanceType), "InstanceCount" :: NullOrUndefined (IntegerClass), "DedicatedMasterEnabled" :: NullOrUndefined (Boolean), "ZoneAwarenessEnabled" :: NullOrUndefined (Boolean), "DedicatedMasterType" :: NullOrUndefined (ESPartitionInstanceType), "DedicatedMasterCount" :: NullOrUndefined (IntegerClass) } -> { "InstanceType" :: NullOrUndefined (ESPartitionInstanceType), "InstanceCount" :: NullOrUndefined (IntegerClass), "DedicatedMasterEnabled" :: NullOrUndefined (Boolean), "ZoneAwarenessEnabled" :: NullOrUndefined (Boolean), "DedicatedMasterType" :: NullOrUndefined (ESPartitionInstanceType), "DedicatedMasterCount" :: NullOrUndefined (IntegerClass) }) -> ElasticsearchClusterConfig
```

Constructs ElasticsearchClusterConfig's fields from required parameters

#### `ElasticsearchClusterConfigStatus`

``` purescript
newtype ElasticsearchClusterConfigStatus
  = ElasticsearchClusterConfigStatus { "Options" :: ElasticsearchClusterConfig, "Status" :: OptionStatus }
```

<p> Specifies the configuration status for the specified Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype ElasticsearchClusterConfigStatus _
Generic ElasticsearchClusterConfigStatus _
Show ElasticsearchClusterConfigStatus
Decode ElasticsearchClusterConfigStatus
Encode ElasticsearchClusterConfigStatus
```

#### `newElasticsearchClusterConfigStatus`

``` purescript
newElasticsearchClusterConfigStatus :: ElasticsearchClusterConfig -> OptionStatus -> ElasticsearchClusterConfigStatus
```

Constructs ElasticsearchClusterConfigStatus from required parameters

#### `newElasticsearchClusterConfigStatus'`

``` purescript
newElasticsearchClusterConfigStatus' :: ElasticsearchClusterConfig -> OptionStatus -> ({ "Options" :: ElasticsearchClusterConfig, "Status" :: OptionStatus } -> { "Options" :: ElasticsearchClusterConfig, "Status" :: OptionStatus }) -> ElasticsearchClusterConfigStatus
```

Constructs ElasticsearchClusterConfigStatus's fields from required parameters

#### `ElasticsearchDomainConfig`

``` purescript
newtype ElasticsearchDomainConfig
  = ElasticsearchDomainConfig { "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionStatus), "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfigStatus), "EBSOptions" :: NullOrUndefined (EBSOptionsStatus), "AccessPolicies" :: NullOrUndefined (AccessPoliciesStatus), "SnapshotOptions" :: NullOrUndefined (SnapshotOptionsStatus), "VPCOptions" :: NullOrUndefined (VPCDerivedInfoStatus), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptionsStatus), "AdvancedOptions" :: NullOrUndefined (AdvancedOptionsStatus), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptionsStatus) }
```

<p>The configuration of an Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype ElasticsearchDomainConfig _
Generic ElasticsearchDomainConfig _
Show ElasticsearchDomainConfig
Decode ElasticsearchDomainConfig
Encode ElasticsearchDomainConfig
```

#### `newElasticsearchDomainConfig`

``` purescript
newElasticsearchDomainConfig :: ElasticsearchDomainConfig
```

Constructs ElasticsearchDomainConfig from required parameters

#### `newElasticsearchDomainConfig'`

``` purescript
newElasticsearchDomainConfig' :: ({ "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionStatus), "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfigStatus), "EBSOptions" :: NullOrUndefined (EBSOptionsStatus), "AccessPolicies" :: NullOrUndefined (AccessPoliciesStatus), "SnapshotOptions" :: NullOrUndefined (SnapshotOptionsStatus), "VPCOptions" :: NullOrUndefined (VPCDerivedInfoStatus), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptionsStatus), "AdvancedOptions" :: NullOrUndefined (AdvancedOptionsStatus), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptionsStatus) } -> { "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionStatus), "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfigStatus), "EBSOptions" :: NullOrUndefined (EBSOptionsStatus), "AccessPolicies" :: NullOrUndefined (AccessPoliciesStatus), "SnapshotOptions" :: NullOrUndefined (SnapshotOptionsStatus), "VPCOptions" :: NullOrUndefined (VPCDerivedInfoStatus), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptionsStatus), "AdvancedOptions" :: NullOrUndefined (AdvancedOptionsStatus), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptionsStatus) }) -> ElasticsearchDomainConfig
```

Constructs ElasticsearchDomainConfig's fields from required parameters

#### `ElasticsearchDomainStatus`

``` purescript
newtype ElasticsearchDomainStatus
  = ElasticsearchDomainStatus { "DomainId" :: DomainId, "DomainName" :: DomainName, "ARN" :: ARN, "Created" :: NullOrUndefined (Boolean), "Deleted" :: NullOrUndefined (Boolean), "Endpoint" :: NullOrUndefined (ServiceUrl), "Endpoints" :: NullOrUndefined (EndpointsMap), "Processing" :: NullOrUndefined (Boolean), "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionString), "ElasticsearchClusterConfig" :: ElasticsearchClusterConfig, "EBSOptions" :: NullOrUndefined (EBSOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCDerivedInfo), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) }
```

<p>The current status of an Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype ElasticsearchDomainStatus _
Generic ElasticsearchDomainStatus _
Show ElasticsearchDomainStatus
Decode ElasticsearchDomainStatus
Encode ElasticsearchDomainStatus
```

#### `newElasticsearchDomainStatus`

``` purescript
newElasticsearchDomainStatus :: ARN -> DomainId -> DomainName -> ElasticsearchClusterConfig -> ElasticsearchDomainStatus
```

Constructs ElasticsearchDomainStatus from required parameters

#### `newElasticsearchDomainStatus'`

``` purescript
newElasticsearchDomainStatus' :: ARN -> DomainId -> DomainName -> ElasticsearchClusterConfig -> ({ "DomainId" :: DomainId, "DomainName" :: DomainName, "ARN" :: ARN, "Created" :: NullOrUndefined (Boolean), "Deleted" :: NullOrUndefined (Boolean), "Endpoint" :: NullOrUndefined (ServiceUrl), "Endpoints" :: NullOrUndefined (EndpointsMap), "Processing" :: NullOrUndefined (Boolean), "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionString), "ElasticsearchClusterConfig" :: ElasticsearchClusterConfig, "EBSOptions" :: NullOrUndefined (EBSOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCDerivedInfo), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) } -> { "DomainId" :: DomainId, "DomainName" :: DomainName, "ARN" :: ARN, "Created" :: NullOrUndefined (Boolean), "Deleted" :: NullOrUndefined (Boolean), "Endpoint" :: NullOrUndefined (ServiceUrl), "Endpoints" :: NullOrUndefined (EndpointsMap), "Processing" :: NullOrUndefined (Boolean), "ElasticsearchVersion" :: NullOrUndefined (ElasticsearchVersionString), "ElasticsearchClusterConfig" :: ElasticsearchClusterConfig, "EBSOptions" :: NullOrUndefined (EBSOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCDerivedInfo), "EncryptionAtRestOptions" :: NullOrUndefined (EncryptionAtRestOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) }) -> ElasticsearchDomainStatus
```

Constructs ElasticsearchDomainStatus's fields from required parameters

#### `ElasticsearchDomainStatusList`

``` purescript
newtype ElasticsearchDomainStatusList
  = ElasticsearchDomainStatusList (Array ElasticsearchDomainStatus)
```

<p>A list that contains the status of each requested Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype ElasticsearchDomainStatusList _
Generic ElasticsearchDomainStatusList _
Show ElasticsearchDomainStatusList
Decode ElasticsearchDomainStatusList
Encode ElasticsearchDomainStatusList
```

#### `ElasticsearchInstanceTypeList`

``` purescript
newtype ElasticsearchInstanceTypeList
  = ElasticsearchInstanceTypeList (Array ESPartitionInstanceType)
```

<p> List of instance types supported by Amazon Elasticsearch service. </p>

##### Instances
``` purescript
Newtype ElasticsearchInstanceTypeList _
Generic ElasticsearchInstanceTypeList _
Show ElasticsearchInstanceTypeList
Decode ElasticsearchInstanceTypeList
Encode ElasticsearchInstanceTypeList
```

#### `ElasticsearchVersionList`

``` purescript
newtype ElasticsearchVersionList
  = ElasticsearchVersionList (Array ElasticsearchVersionString)
```

<p>List of supported elastic search versions. </p>

##### Instances
``` purescript
Newtype ElasticsearchVersionList _
Generic ElasticsearchVersionList _
Show ElasticsearchVersionList
Decode ElasticsearchVersionList
Encode ElasticsearchVersionList
```

#### `ElasticsearchVersionStatus`

``` purescript
newtype ElasticsearchVersionStatus
  = ElasticsearchVersionStatus { "Options" :: ElasticsearchVersionString, "Status" :: OptionStatus }
```

<p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype ElasticsearchVersionStatus _
Generic ElasticsearchVersionStatus _
Show ElasticsearchVersionStatus
Decode ElasticsearchVersionStatus
Encode ElasticsearchVersionStatus
```

#### `newElasticsearchVersionStatus`

``` purescript
newElasticsearchVersionStatus :: ElasticsearchVersionString -> OptionStatus -> ElasticsearchVersionStatus
```

Constructs ElasticsearchVersionStatus from required parameters

#### `newElasticsearchVersionStatus'`

``` purescript
newElasticsearchVersionStatus' :: ElasticsearchVersionString -> OptionStatus -> ({ "Options" :: ElasticsearchVersionString, "Status" :: OptionStatus } -> { "Options" :: ElasticsearchVersionString, "Status" :: OptionStatus }) -> ElasticsearchVersionStatus
```

Constructs ElasticsearchVersionStatus's fields from required parameters

#### `ElasticsearchVersionString`

``` purescript
newtype ElasticsearchVersionString
  = ElasticsearchVersionString String
```

##### Instances
``` purescript
Newtype ElasticsearchVersionString _
Generic ElasticsearchVersionString _
Show ElasticsearchVersionString
Decode ElasticsearchVersionString
Encode ElasticsearchVersionString
```

#### `EncryptionAtRestOptions`

``` purescript
newtype EncryptionAtRestOptions
  = EncryptionAtRestOptions { "Enabled" :: NullOrUndefined (Boolean), "KmsKeyId" :: NullOrUndefined (KmsKeyId) }
```

<p>Specifies the Encryption At Rest Options.</p>

##### Instances
``` purescript
Newtype EncryptionAtRestOptions _
Generic EncryptionAtRestOptions _
Show EncryptionAtRestOptions
Decode EncryptionAtRestOptions
Encode EncryptionAtRestOptions
```

#### `newEncryptionAtRestOptions`

``` purescript
newEncryptionAtRestOptions :: EncryptionAtRestOptions
```

Constructs EncryptionAtRestOptions from required parameters

#### `newEncryptionAtRestOptions'`

``` purescript
newEncryptionAtRestOptions' :: ({ "Enabled" :: NullOrUndefined (Boolean), "KmsKeyId" :: NullOrUndefined (KmsKeyId) } -> { "Enabled" :: NullOrUndefined (Boolean), "KmsKeyId" :: NullOrUndefined (KmsKeyId) }) -> EncryptionAtRestOptions
```

Constructs EncryptionAtRestOptions's fields from required parameters

#### `EncryptionAtRestOptionsStatus`

``` purescript
newtype EncryptionAtRestOptionsStatus
  = EncryptionAtRestOptionsStatus { "Options" :: EncryptionAtRestOptions, "Status" :: OptionStatus }
```

<p> Status of the Encryption At Rest options for the specified Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype EncryptionAtRestOptionsStatus _
Generic EncryptionAtRestOptionsStatus _
Show EncryptionAtRestOptionsStatus
Decode EncryptionAtRestOptionsStatus
Encode EncryptionAtRestOptionsStatus
```

#### `newEncryptionAtRestOptionsStatus`

``` purescript
newEncryptionAtRestOptionsStatus :: EncryptionAtRestOptions -> OptionStatus -> EncryptionAtRestOptionsStatus
```

Constructs EncryptionAtRestOptionsStatus from required parameters

#### `newEncryptionAtRestOptionsStatus'`

``` purescript
newEncryptionAtRestOptionsStatus' :: EncryptionAtRestOptions -> OptionStatus -> ({ "Options" :: EncryptionAtRestOptions, "Status" :: OptionStatus } -> { "Options" :: EncryptionAtRestOptions, "Status" :: OptionStatus }) -> EncryptionAtRestOptionsStatus
```

Constructs EncryptionAtRestOptionsStatus's fields from required parameters

#### `EndpointsMap`

``` purescript
newtype EndpointsMap
  = EndpointsMap (StrMap ServiceUrl)
```

##### Instances
``` purescript
Newtype EndpointsMap _
Generic EndpointsMap _
Show EndpointsMap
Decode EndpointsMap
Encode EndpointsMap
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `InstanceCountLimits`

``` purescript
newtype InstanceCountLimits
  = InstanceCountLimits { "MinimumInstanceCount" :: NullOrUndefined (MinimumInstanceCount), "MaximumInstanceCount" :: NullOrUndefined (MaximumInstanceCount) }
```

<p> InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for given InstanceType. </p>

##### Instances
``` purescript
Newtype InstanceCountLimits _
Generic InstanceCountLimits _
Show InstanceCountLimits
Decode InstanceCountLimits
Encode InstanceCountLimits
```

#### `newInstanceCountLimits`

``` purescript
newInstanceCountLimits :: InstanceCountLimits
```

Constructs InstanceCountLimits from required parameters

#### `newInstanceCountLimits'`

``` purescript
newInstanceCountLimits' :: ({ "MinimumInstanceCount" :: NullOrUndefined (MinimumInstanceCount), "MaximumInstanceCount" :: NullOrUndefined (MaximumInstanceCount) } -> { "MinimumInstanceCount" :: NullOrUndefined (MinimumInstanceCount), "MaximumInstanceCount" :: NullOrUndefined (MaximumInstanceCount) }) -> InstanceCountLimits
```

Constructs InstanceCountLimits's fields from required parameters

#### `InstanceLimits`

``` purescript
newtype InstanceLimits
  = InstanceLimits { "InstanceCountLimits" :: NullOrUndefined (InstanceCountLimits) }
```

<p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType. </p>

##### Instances
``` purescript
Newtype InstanceLimits _
Generic InstanceLimits _
Show InstanceLimits
Decode InstanceLimits
Encode InstanceLimits
```

#### `newInstanceLimits`

``` purescript
newInstanceLimits :: InstanceLimits
```

Constructs InstanceLimits from required parameters

#### `newInstanceLimits'`

``` purescript
newInstanceLimits' :: ({ "InstanceCountLimits" :: NullOrUndefined (InstanceCountLimits) } -> { "InstanceCountLimits" :: NullOrUndefined (InstanceCountLimits) }) -> InstanceLimits
```

Constructs InstanceLimits's fields from required parameters

#### `InstanceRole`

``` purescript
newtype InstanceRole
  = InstanceRole String
```

##### Instances
``` purescript
Newtype InstanceRole _
Generic InstanceRole _
Show InstanceRole
Decode InstanceRole
Encode InstanceRole
```

#### `IntegerClass`

``` purescript
newtype IntegerClass
  = IntegerClass Int
```

##### Instances
``` purescript
Newtype IntegerClass _
Generic IntegerClass _
Show IntegerClass
Decode IntegerClass
Encode IntegerClass
```

#### `InternalException`

``` purescript
newtype InternalException
  = InternalException NoArguments
```

<p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>

##### Instances
``` purescript
Newtype InternalException _
Generic InternalException _
Show InternalException
Decode InternalException
Encode InternalException
```

#### `InvalidTypeException`

``` purescript
newtype InvalidTypeException
  = InvalidTypeException NoArguments
```

<p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>

##### Instances
``` purescript
Newtype InvalidTypeException _
Generic InvalidTypeException _
Show InvalidTypeException
Decode InvalidTypeException
Encode InvalidTypeException
```

#### `KmsKeyId`

``` purescript
newtype KmsKeyId
  = KmsKeyId String
```

##### Instances
``` purescript
Newtype KmsKeyId _
Generic KmsKeyId _
Show KmsKeyId
Decode KmsKeyId
Encode KmsKeyId
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `LimitName`

``` purescript
newtype LimitName
  = LimitName String
```

##### Instances
``` purescript
Newtype LimitName _
Generic LimitName _
Show LimitName
Decode LimitName
Encode LimitName
```

#### `LimitValue`

``` purescript
newtype LimitValue
  = LimitValue String
```

##### Instances
``` purescript
Newtype LimitValue _
Generic LimitValue _
Show LimitValue
Decode LimitValue
Encode LimitValue
```

#### `LimitValueList`

``` purescript
newtype LimitValueList
  = LimitValueList (Array LimitValue)
```

##### Instances
``` purescript
Newtype LimitValueList _
Generic LimitValueList _
Show LimitValueList
Decode LimitValueList
Encode LimitValueList
```

#### `Limits`

``` purescript
newtype Limits
  = Limits { "StorageTypes" :: NullOrUndefined (StorageTypeList), "InstanceLimits" :: NullOrUndefined (InstanceLimits), "AdditionalLimits" :: NullOrUndefined (AdditionalLimitList) }
```

<p> Limits for given InstanceType and for each of it's role. <br/> Limits contains following <code> <a>StorageTypes,</a> </code> <code> <a>InstanceLimits</a> </code> and <code> <a>AdditionalLimits</a> </code> </p>

##### Instances
``` purescript
Newtype Limits _
Generic Limits _
Show Limits
Decode Limits
Encode Limits
```

#### `newLimits`

``` purescript
newLimits :: Limits
```

Constructs Limits from required parameters

#### `newLimits'`

``` purescript
newLimits' :: ({ "StorageTypes" :: NullOrUndefined (StorageTypeList), "InstanceLimits" :: NullOrUndefined (InstanceLimits), "AdditionalLimits" :: NullOrUndefined (AdditionalLimitList) } -> { "StorageTypes" :: NullOrUndefined (StorageTypeList), "InstanceLimits" :: NullOrUndefined (InstanceLimits), "AdditionalLimits" :: NullOrUndefined (AdditionalLimitList) }) -> Limits
```

Constructs Limits's fields from required parameters

#### `LimitsByRole`

``` purescript
newtype LimitsByRole
  = LimitsByRole (StrMap Limits)
```

<p> Map of Role of the Instance and Limits that are applicable. Role performed by given Instance in Elasticsearch can be one of the following: <ul> <li>Data: If the given InstanceType is used as Data node</li> <li>Master: If the given InstanceType is used as Master node</li> </ul> </p>

##### Instances
``` purescript
Newtype LimitsByRole _
Generic LimitsByRole _
Show LimitsByRole
Decode LimitsByRole
Encode LimitsByRole
```

#### `ListDomainNamesResponse`

``` purescript
newtype ListDomainNamesResponse
  = ListDomainNamesResponse { "DomainNames" :: NullOrUndefined (DomainInfoList) }
```

<p>The result of a <code>ListDomainNames</code> operation. Contains the names of all Elasticsearch domains owned by this account.</p>

##### Instances
``` purescript
Newtype ListDomainNamesResponse _
Generic ListDomainNamesResponse _
Show ListDomainNamesResponse
Decode ListDomainNamesResponse
Encode ListDomainNamesResponse
```

#### `newListDomainNamesResponse`

``` purescript
newListDomainNamesResponse :: ListDomainNamesResponse
```

Constructs ListDomainNamesResponse from required parameters

#### `newListDomainNamesResponse'`

``` purescript
newListDomainNamesResponse' :: ({ "DomainNames" :: NullOrUndefined (DomainInfoList) } -> { "DomainNames" :: NullOrUndefined (DomainInfoList) }) -> ListDomainNamesResponse
```

Constructs ListDomainNamesResponse's fields from required parameters

#### `ListElasticsearchInstanceTypesRequest`

``` purescript
newtype ListElasticsearchInstanceTypesRequest
  = ListElasticsearchInstanceTypesRequest { "ElasticsearchVersion" :: ElasticsearchVersionString, "DomainName" :: NullOrUndefined (DomainName), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

<p> Container for the parameters to the <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>

##### Instances
``` purescript
Newtype ListElasticsearchInstanceTypesRequest _
Generic ListElasticsearchInstanceTypesRequest _
Show ListElasticsearchInstanceTypesRequest
Decode ListElasticsearchInstanceTypesRequest
Encode ListElasticsearchInstanceTypesRequest
```

#### `newListElasticsearchInstanceTypesRequest`

``` purescript
newListElasticsearchInstanceTypesRequest :: ElasticsearchVersionString -> ListElasticsearchInstanceTypesRequest
```

Constructs ListElasticsearchInstanceTypesRequest from required parameters

#### `newListElasticsearchInstanceTypesRequest'`

``` purescript
newListElasticsearchInstanceTypesRequest' :: ElasticsearchVersionString -> ({ "ElasticsearchVersion" :: ElasticsearchVersionString, "DomainName" :: NullOrUndefined (DomainName), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "ElasticsearchVersion" :: ElasticsearchVersionString, "DomainName" :: NullOrUndefined (DomainName), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> ListElasticsearchInstanceTypesRequest
```

Constructs ListElasticsearchInstanceTypesRequest's fields from required parameters

#### `ListElasticsearchInstanceTypesResponse`

``` purescript
newtype ListElasticsearchInstanceTypesResponse
  = ListElasticsearchInstanceTypesResponse { "ElasticsearchInstanceTypes" :: NullOrUndefined (ElasticsearchInstanceTypeList), "NextToken" :: NullOrUndefined (NextToken) }
```

<p> Container for the parameters returned by <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>

##### Instances
``` purescript
Newtype ListElasticsearchInstanceTypesResponse _
Generic ListElasticsearchInstanceTypesResponse _
Show ListElasticsearchInstanceTypesResponse
Decode ListElasticsearchInstanceTypesResponse
Encode ListElasticsearchInstanceTypesResponse
```

#### `newListElasticsearchInstanceTypesResponse`

``` purescript
newListElasticsearchInstanceTypesResponse :: ListElasticsearchInstanceTypesResponse
```

Constructs ListElasticsearchInstanceTypesResponse from required parameters

#### `newListElasticsearchInstanceTypesResponse'`

``` purescript
newListElasticsearchInstanceTypesResponse' :: ({ "ElasticsearchInstanceTypes" :: NullOrUndefined (ElasticsearchInstanceTypeList), "NextToken" :: NullOrUndefined (NextToken) } -> { "ElasticsearchInstanceTypes" :: NullOrUndefined (ElasticsearchInstanceTypeList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListElasticsearchInstanceTypesResponse
```

Constructs ListElasticsearchInstanceTypesResponse's fields from required parameters

#### `ListElasticsearchVersionsRequest`

``` purescript
newtype ListElasticsearchVersionsRequest
  = ListElasticsearchVersionsRequest { "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

<p> Container for the parameters to the <code> <a>ListElasticsearchVersions</a> </code> operation. <p> Use <code> <a>MaxResults</a> </code> to control the maximum number of results to retrieve in a single call. </p> <p> Use <code> <a>NextToken</a> </code> in response to retrieve more results. If the received response does not contain a NextToken, then there are no more results to retrieve. </p> </p>

##### Instances
``` purescript
Newtype ListElasticsearchVersionsRequest _
Generic ListElasticsearchVersionsRequest _
Show ListElasticsearchVersionsRequest
Decode ListElasticsearchVersionsRequest
Encode ListElasticsearchVersionsRequest
```

#### `newListElasticsearchVersionsRequest`

``` purescript
newListElasticsearchVersionsRequest :: ListElasticsearchVersionsRequest
```

Constructs ListElasticsearchVersionsRequest from required parameters

#### `newListElasticsearchVersionsRequest'`

``` purescript
newListElasticsearchVersionsRequest' :: ({ "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> ListElasticsearchVersionsRequest
```

Constructs ListElasticsearchVersionsRequest's fields from required parameters

#### `ListElasticsearchVersionsResponse`

``` purescript
newtype ListElasticsearchVersionsResponse
  = ListElasticsearchVersionsResponse { "ElasticsearchVersions" :: NullOrUndefined (ElasticsearchVersionList), "NextToken" :: NullOrUndefined (NextToken) }
```

<p> Container for the parameters for response received from <code> <a>ListElasticsearchVersions</a> </code> operation. </p>

##### Instances
``` purescript
Newtype ListElasticsearchVersionsResponse _
Generic ListElasticsearchVersionsResponse _
Show ListElasticsearchVersionsResponse
Decode ListElasticsearchVersionsResponse
Encode ListElasticsearchVersionsResponse
```

#### `newListElasticsearchVersionsResponse`

``` purescript
newListElasticsearchVersionsResponse :: ListElasticsearchVersionsResponse
```

Constructs ListElasticsearchVersionsResponse from required parameters

#### `newListElasticsearchVersionsResponse'`

``` purescript
newListElasticsearchVersionsResponse' :: ({ "ElasticsearchVersions" :: NullOrUndefined (ElasticsearchVersionList), "NextToken" :: NullOrUndefined (NextToken) } -> { "ElasticsearchVersions" :: NullOrUndefined (ElasticsearchVersionList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListElasticsearchVersionsResponse
```

Constructs ListElasticsearchVersionsResponse's fields from required parameters

#### `ListTagsRequest`

``` purescript
newtype ListTagsRequest
  = ListTagsRequest { "ARN" :: ARN }
```

<p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>

##### Instances
``` purescript
Newtype ListTagsRequest _
Generic ListTagsRequest _
Show ListTagsRequest
Decode ListTagsRequest
Encode ListTagsRequest
```

#### `newListTagsRequest`

``` purescript
newListTagsRequest :: ARN -> ListTagsRequest
```

Constructs ListTagsRequest from required parameters

#### `newListTagsRequest'`

``` purescript
newListTagsRequest' :: ARN -> ({ "ARN" :: ARN } -> { "ARN" :: ARN }) -> ListTagsRequest
```

Constructs ListTagsRequest's fields from required parameters

#### `ListTagsResponse`

``` purescript
newtype ListTagsResponse
  = ListTagsResponse { "TagList" :: NullOrUndefined (TagList) }
```

<p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>

##### Instances
``` purescript
Newtype ListTagsResponse _
Generic ListTagsResponse _
Show ListTagsResponse
Decode ListTagsResponse
Encode ListTagsResponse
```

#### `newListTagsResponse`

``` purescript
newListTagsResponse :: ListTagsResponse
```

Constructs ListTagsResponse from required parameters

#### `newListTagsResponse'`

``` purescript
newListTagsResponse' :: ({ "TagList" :: NullOrUndefined (TagList) } -> { "TagList" :: NullOrUndefined (TagList) }) -> ListTagsResponse
```

Constructs ListTagsResponse's fields from required parameters

#### `LogPublishingOption`

``` purescript
newtype LogPublishingOption
  = LogPublishingOption { "CloudWatchLogsLogGroupArn" :: NullOrUndefined (CloudWatchLogsLogGroupArn), "Enabled" :: NullOrUndefined (Boolean) }
```

<p>Log Publishing option that is set for given domain. <br/>Attributes and their details: <ul> <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to which log needs to be published.</li> <li>Enabled: Whether the log publishing for given log type is enabled or not</li> </ul> </p>

##### Instances
``` purescript
Newtype LogPublishingOption _
Generic LogPublishingOption _
Show LogPublishingOption
Decode LogPublishingOption
Encode LogPublishingOption
```

#### `newLogPublishingOption`

``` purescript
newLogPublishingOption :: LogPublishingOption
```

Constructs LogPublishingOption from required parameters

#### `newLogPublishingOption'`

``` purescript
newLogPublishingOption' :: ({ "CloudWatchLogsLogGroupArn" :: NullOrUndefined (CloudWatchLogsLogGroupArn), "Enabled" :: NullOrUndefined (Boolean) } -> { "CloudWatchLogsLogGroupArn" :: NullOrUndefined (CloudWatchLogsLogGroupArn), "Enabled" :: NullOrUndefined (Boolean) }) -> LogPublishingOption
```

Constructs LogPublishingOption's fields from required parameters

#### `LogPublishingOptions`

``` purescript
newtype LogPublishingOptions
  = LogPublishingOptions (StrMap LogPublishingOption)
```

##### Instances
``` purescript
Newtype LogPublishingOptions _
Generic LogPublishingOptions _
Show LogPublishingOptions
Decode LogPublishingOptions
Encode LogPublishingOptions
```

#### `LogPublishingOptionsStatus`

``` purescript
newtype LogPublishingOptionsStatus
  = LogPublishingOptionsStatus { "Options" :: NullOrUndefined (LogPublishingOptions), "Status" :: NullOrUndefined (OptionStatus) }
```

<p>The configured log publishing options for the domain and their current status.</p>

##### Instances
``` purescript
Newtype LogPublishingOptionsStatus _
Generic LogPublishingOptionsStatus _
Show LogPublishingOptionsStatus
Decode LogPublishingOptionsStatus
Encode LogPublishingOptionsStatus
```

#### `newLogPublishingOptionsStatus`

``` purescript
newLogPublishingOptionsStatus :: LogPublishingOptionsStatus
```

Constructs LogPublishingOptionsStatus from required parameters

#### `newLogPublishingOptionsStatus'`

``` purescript
newLogPublishingOptionsStatus' :: ({ "Options" :: NullOrUndefined (LogPublishingOptions), "Status" :: NullOrUndefined (OptionStatus) } -> { "Options" :: NullOrUndefined (LogPublishingOptions), "Status" :: NullOrUndefined (OptionStatus) }) -> LogPublishingOptionsStatus
```

Constructs LogPublishingOptionsStatus's fields from required parameters

#### `LogType`

``` purescript
newtype LogType
  = LogType String
```

<p>Type of Log File, it can be one of the following: <ul> <li>INDEX_SLOW_LOGS: Index slow logs contains insert requests that took more time than configured index query log threshold to execute.</li> <li>SEARCH_SLOW_LOGS: Search slow logs contains search queries that took more time than configured search query log threshold to execute.</li> </ul> </p>

##### Instances
``` purescript
Newtype LogType _
Generic LogType _
Show LogType
Decode LogType
Encode LogType
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

<p> Set this value to limit the number of results returned. </p>

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MaximumInstanceCount`

``` purescript
newtype MaximumInstanceCount
  = MaximumInstanceCount Int
```

<p> Maximum number of Instances that can be instantiated for given InstanceType. </p>

##### Instances
``` purescript
Newtype MaximumInstanceCount _
Generic MaximumInstanceCount _
Show MaximumInstanceCount
Decode MaximumInstanceCount
Encode MaximumInstanceCount
```

#### `MinimumInstanceCount`

``` purescript
newtype MinimumInstanceCount
  = MinimumInstanceCount Int
```

<p> Minimum number of Instances that can be instantiated for given InstanceType. </p>

##### Instances
``` purescript
Newtype MinimumInstanceCount _
Generic MinimumInstanceCount _
Show MinimumInstanceCount
Decode MinimumInstanceCount
Encode MinimumInstanceCount
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

<p> Paginated APIs accepts NextToken input to returns next page results and provides a NextToken output in the response which can be used by the client to retrieve more results. </p>

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `OptionState`

``` purescript
newtype OptionState
  = OptionState String
```

<p>The state of a requested change. One of the following:</p> <ul> <li>Processing: The request change is still in-process.</li> <li>Active: The request change is processed and deployed to the Elasticsearch domain.</li> </ul>

##### Instances
``` purescript
Newtype OptionState _
Generic OptionState _
Show OptionState
Decode OptionState
Encode OptionState
```

#### `OptionStatus`

``` purescript
newtype OptionStatus
  = OptionStatus { "CreationDate" :: UpdateTimestamp, "UpdateDate" :: UpdateTimestamp, "UpdateVersion" :: NullOrUndefined (UIntValue), "State" :: OptionState, "PendingDeletion" :: NullOrUndefined (Boolean) }
```

<p>Provides the current status of the entity.</p>

##### Instances
``` purescript
Newtype OptionStatus _
Generic OptionStatus _
Show OptionStatus
Decode OptionStatus
Encode OptionStatus
```

#### `newOptionStatus`

``` purescript
newOptionStatus :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> OptionStatus
```

Constructs OptionStatus from required parameters

#### `newOptionStatus'`

``` purescript
newOptionStatus' :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> ({ "CreationDate" :: UpdateTimestamp, "UpdateDate" :: UpdateTimestamp, "UpdateVersion" :: NullOrUndefined (UIntValue), "State" :: OptionState, "PendingDeletion" :: NullOrUndefined (Boolean) } -> { "CreationDate" :: UpdateTimestamp, "UpdateDate" :: UpdateTimestamp, "UpdateVersion" :: NullOrUndefined (UIntValue), "State" :: OptionState, "PendingDeletion" :: NullOrUndefined (Boolean) }) -> OptionStatus
```

Constructs OptionStatus's fields from required parameters

#### `PolicyDocument`

``` purescript
newtype PolicyDocument
  = PolicyDocument String
```

<p>Access policy rules for an Elasticsearch domain service endpoints. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank">Configuring Access Policies</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>

##### Instances
``` purescript
Newtype PolicyDocument _
Generic PolicyDocument _
Show PolicyDocument
Decode PolicyDocument
Encode PolicyDocument
```

#### `RemoveTagsRequest`

``` purescript
newtype RemoveTagsRequest
  = RemoveTagsRequest { "ARN" :: ARN, "TagKeys" :: StringList }
```

<p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>

##### Instances
``` purescript
Newtype RemoveTagsRequest _
Generic RemoveTagsRequest _
Show RemoveTagsRequest
Decode RemoveTagsRequest
Encode RemoveTagsRequest
```

#### `newRemoveTagsRequest`

``` purescript
newRemoveTagsRequest :: ARN -> StringList -> RemoveTagsRequest
```

Constructs RemoveTagsRequest from required parameters

#### `newRemoveTagsRequest'`

``` purescript
newRemoveTagsRequest' :: ARN -> StringList -> ({ "ARN" :: ARN, "TagKeys" :: StringList } -> { "ARN" :: ARN, "TagKeys" :: StringList }) -> RemoveTagsRequest
```

Constructs RemoveTagsRequest's fields from required parameters

#### `ResourceAlreadyExistsException`

``` purescript
newtype ResourceAlreadyExistsException
  = ResourceAlreadyExistsException NoArguments
```

<p>An exception for creating a resource that already exists. Gives http status code of 400.</p>

##### Instances
``` purescript
Newtype ResourceAlreadyExistsException _
Generic ResourceAlreadyExistsException _
Show ResourceAlreadyExistsException
Decode ResourceAlreadyExistsException
Encode ResourceAlreadyExistsException
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException NoArguments
```

<p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `ServiceUrl`

``` purescript
newtype ServiceUrl
  = ServiceUrl String
```

<p>The endpoint to which service requests are submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code>.</p>

##### Instances
``` purescript
Newtype ServiceUrl _
Generic ServiceUrl _
Show ServiceUrl
Decode ServiceUrl
Encode ServiceUrl
```

#### `SnapshotOptions`

``` purescript
newtype SnapshotOptions
  = SnapshotOptions { "AutomatedSnapshotStartHour" :: NullOrUndefined (IntegerClass) }
```

<p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>

##### Instances
``` purescript
Newtype SnapshotOptions _
Generic SnapshotOptions _
Show SnapshotOptions
Decode SnapshotOptions
Encode SnapshotOptions
```

#### `newSnapshotOptions`

``` purescript
newSnapshotOptions :: SnapshotOptions
```

Constructs SnapshotOptions from required parameters

#### `newSnapshotOptions'`

``` purescript
newSnapshotOptions' :: ({ "AutomatedSnapshotStartHour" :: NullOrUndefined (IntegerClass) } -> { "AutomatedSnapshotStartHour" :: NullOrUndefined (IntegerClass) }) -> SnapshotOptions
```

Constructs SnapshotOptions's fields from required parameters

#### `SnapshotOptionsStatus`

``` purescript
newtype SnapshotOptionsStatus
  = SnapshotOptionsStatus { "Options" :: SnapshotOptions, "Status" :: OptionStatus }
```

<p>Status of a daily automated snapshot.</p>

##### Instances
``` purescript
Newtype SnapshotOptionsStatus _
Generic SnapshotOptionsStatus _
Show SnapshotOptionsStatus
Decode SnapshotOptionsStatus
Encode SnapshotOptionsStatus
```

#### `newSnapshotOptionsStatus`

``` purescript
newSnapshotOptionsStatus :: SnapshotOptions -> OptionStatus -> SnapshotOptionsStatus
```

Constructs SnapshotOptionsStatus from required parameters

#### `newSnapshotOptionsStatus'`

``` purescript
newSnapshotOptionsStatus' :: SnapshotOptions -> OptionStatus -> ({ "Options" :: SnapshotOptions, "Status" :: OptionStatus } -> { "Options" :: SnapshotOptions, "Status" :: OptionStatus }) -> SnapshotOptionsStatus
```

Constructs SnapshotOptionsStatus's fields from required parameters

#### `StorageSubTypeName`

``` purescript
newtype StorageSubTypeName
  = StorageSubTypeName String
```

<p> SubType of the given storage type. List of available sub-storage options: For "instance" storageType we wont have any storageSubType, in case of "ebs" storageType we will have following valid storageSubTypes <ol> <li>standard</li> <li>gp2</li> <li>io1</li> </ol> Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options. </p>

##### Instances
``` purescript
Newtype StorageSubTypeName _
Generic StorageSubTypeName _
Show StorageSubTypeName
Decode StorageSubTypeName
Encode StorageSubTypeName
```

#### `StorageType`

``` purescript
newtype StorageType
  = StorageType { "StorageTypeName" :: NullOrUndefined (StorageTypeName), "StorageSubTypeName" :: NullOrUndefined (StorageSubTypeName), "StorageTypeLimits" :: NullOrUndefined (StorageTypeLimitList) }
```

<p>StorageTypes represents the list of storage related types and their attributes that are available for given InstanceType. </p>

##### Instances
``` purescript
Newtype StorageType _
Generic StorageType _
Show StorageType
Decode StorageType
Encode StorageType
```

#### `newStorageType`

``` purescript
newStorageType :: StorageType
```

Constructs StorageType from required parameters

#### `newStorageType'`

``` purescript
newStorageType' :: ({ "StorageTypeName" :: NullOrUndefined (StorageTypeName), "StorageSubTypeName" :: NullOrUndefined (StorageSubTypeName), "StorageTypeLimits" :: NullOrUndefined (StorageTypeLimitList) } -> { "StorageTypeName" :: NullOrUndefined (StorageTypeName), "StorageSubTypeName" :: NullOrUndefined (StorageSubTypeName), "StorageTypeLimits" :: NullOrUndefined (StorageTypeLimitList) }) -> StorageType
```

Constructs StorageType's fields from required parameters

#### `StorageTypeLimit`

``` purescript
newtype StorageTypeLimit
  = StorageTypeLimit { "LimitName" :: NullOrUndefined (LimitName), "LimitValues" :: NullOrUndefined (LimitValueList) }
```

<p>Limits that are applicable for given storage type. </p>

##### Instances
``` purescript
Newtype StorageTypeLimit _
Generic StorageTypeLimit _
Show StorageTypeLimit
Decode StorageTypeLimit
Encode StorageTypeLimit
```

#### `newStorageTypeLimit`

``` purescript
newStorageTypeLimit :: StorageTypeLimit
```

Constructs StorageTypeLimit from required parameters

#### `newStorageTypeLimit'`

``` purescript
newStorageTypeLimit' :: ({ "LimitName" :: NullOrUndefined (LimitName), "LimitValues" :: NullOrUndefined (LimitValueList) } -> { "LimitName" :: NullOrUndefined (LimitName), "LimitValues" :: NullOrUndefined (LimitValueList) }) -> StorageTypeLimit
```

Constructs StorageTypeLimit's fields from required parameters

#### `StorageTypeLimitList`

``` purescript
newtype StorageTypeLimitList
  = StorageTypeLimitList (Array StorageTypeLimit)
```

##### Instances
``` purescript
Newtype StorageTypeLimitList _
Generic StorageTypeLimitList _
Show StorageTypeLimitList
Decode StorageTypeLimitList
Encode StorageTypeLimitList
```

#### `StorageTypeList`

``` purescript
newtype StorageTypeList
  = StorageTypeList (Array StorageType)
```

##### Instances
``` purescript
Newtype StorageTypeList _
Generic StorageTypeList _
Show StorageTypeList
Decode StorageTypeList
Encode StorageTypeList
```

#### `StorageTypeName`

``` purescript
newtype StorageTypeName
  = StorageTypeName String
```

<p> Type of the storage. List of available storage options: <ol> <li>instance</li> Inbuilt storage available for the given Instance <li>ebs</li> Elastic block storage that would be attached to the given Instance </ol> </p>

##### Instances
``` purescript
Newtype StorageTypeName _
Generic StorageTypeName _
Show StorageTypeName
Decode StorageTypeName
Encode StorageTypeName
```

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: TagKey, "Value" :: TagValue }
```

<p>Specifies a key value pair for a resource tag.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> TagValue -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> TagValue -> ({ "Key" :: TagKey, "Value" :: TagValue } -> { "Key" :: TagKey, "Value" :: TagValue }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

<p>A string of length from 1 to 128 characters that specifies the key for a Tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

<p>A list of <code>Tag</code> </p>

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

<p>A string of length from 0 to 256 characters that specifies the value for a Tag. Tag values can be null and do not have to be unique in a tag set.</p>

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `UIntValue`

``` purescript
newtype UIntValue
  = UIntValue Int
```

##### Instances
``` purescript
Newtype UIntValue _
Generic UIntValue _
Show UIntValue
Decode UIntValue
Encode UIntValue
```

#### `UpdateElasticsearchDomainConfigRequest`

``` purescript
newtype UpdateElasticsearchDomainConfigRequest
  = UpdateElasticsearchDomainConfigRequest { "DomainName" :: DomainName, "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfig), "EBSOptions" :: NullOrUndefined (EBSOptions), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) }
```

<p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>

##### Instances
``` purescript
Newtype UpdateElasticsearchDomainConfigRequest _
Generic UpdateElasticsearchDomainConfigRequest _
Show UpdateElasticsearchDomainConfigRequest
Decode UpdateElasticsearchDomainConfigRequest
Encode UpdateElasticsearchDomainConfigRequest
```

#### `newUpdateElasticsearchDomainConfigRequest`

``` purescript
newUpdateElasticsearchDomainConfigRequest :: DomainName -> UpdateElasticsearchDomainConfigRequest
```

Constructs UpdateElasticsearchDomainConfigRequest from required parameters

#### `newUpdateElasticsearchDomainConfigRequest'`

``` purescript
newUpdateElasticsearchDomainConfigRequest' :: DomainName -> ({ "DomainName" :: DomainName, "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfig), "EBSOptions" :: NullOrUndefined (EBSOptions), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) } -> { "DomainName" :: DomainName, "ElasticsearchClusterConfig" :: NullOrUndefined (ElasticsearchClusterConfig), "EBSOptions" :: NullOrUndefined (EBSOptions), "SnapshotOptions" :: NullOrUndefined (SnapshotOptions), "VPCOptions" :: NullOrUndefined (VPCOptions), "AdvancedOptions" :: NullOrUndefined (AdvancedOptions), "AccessPolicies" :: NullOrUndefined (PolicyDocument), "LogPublishingOptions" :: NullOrUndefined (LogPublishingOptions) }) -> UpdateElasticsearchDomainConfigRequest
```

Constructs UpdateElasticsearchDomainConfigRequest's fields from required parameters

#### `UpdateElasticsearchDomainConfigResponse`

``` purescript
newtype UpdateElasticsearchDomainConfigResponse
  = UpdateElasticsearchDomainConfigResponse { "DomainConfig" :: ElasticsearchDomainConfig }
```

<p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>

##### Instances
``` purescript
Newtype UpdateElasticsearchDomainConfigResponse _
Generic UpdateElasticsearchDomainConfigResponse _
Show UpdateElasticsearchDomainConfigResponse
Decode UpdateElasticsearchDomainConfigResponse
Encode UpdateElasticsearchDomainConfigResponse
```

#### `newUpdateElasticsearchDomainConfigResponse`

``` purescript
newUpdateElasticsearchDomainConfigResponse :: ElasticsearchDomainConfig -> UpdateElasticsearchDomainConfigResponse
```

Constructs UpdateElasticsearchDomainConfigResponse from required parameters

#### `newUpdateElasticsearchDomainConfigResponse'`

``` purescript
newUpdateElasticsearchDomainConfigResponse' :: ElasticsearchDomainConfig -> ({ "DomainConfig" :: ElasticsearchDomainConfig } -> { "DomainConfig" :: ElasticsearchDomainConfig }) -> UpdateElasticsearchDomainConfigResponse
```

Constructs UpdateElasticsearchDomainConfigResponse's fields from required parameters

#### `UpdateTimestamp`

``` purescript
newtype UpdateTimestamp
  = UpdateTimestamp Timestamp
```

##### Instances
``` purescript
Newtype UpdateTimestamp _
Generic UpdateTimestamp _
Show UpdateTimestamp
Decode UpdateTimestamp
Encode UpdateTimestamp
```

#### `VPCDerivedInfo`

``` purescript
newtype VPCDerivedInfo
  = VPCDerivedInfo { "VPCId" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (StringList), "AvailabilityZones" :: NullOrUndefined (StringList), "SecurityGroupIds" :: NullOrUndefined (StringList) }
```

<p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>

##### Instances
``` purescript
Newtype VPCDerivedInfo _
Generic VPCDerivedInfo _
Show VPCDerivedInfo
Decode VPCDerivedInfo
Encode VPCDerivedInfo
```

#### `newVPCDerivedInfo`

``` purescript
newVPCDerivedInfo :: VPCDerivedInfo
```

Constructs VPCDerivedInfo from required parameters

#### `newVPCDerivedInfo'`

``` purescript
newVPCDerivedInfo' :: ({ "VPCId" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (StringList), "AvailabilityZones" :: NullOrUndefined (StringList), "SecurityGroupIds" :: NullOrUndefined (StringList) } -> { "VPCId" :: NullOrUndefined (String), "SubnetIds" :: NullOrUndefined (StringList), "AvailabilityZones" :: NullOrUndefined (StringList), "SecurityGroupIds" :: NullOrUndefined (StringList) }) -> VPCDerivedInfo
```

Constructs VPCDerivedInfo's fields from required parameters

#### `VPCDerivedInfoStatus`

``` purescript
newtype VPCDerivedInfoStatus
  = VPCDerivedInfoStatus { "Options" :: VPCDerivedInfo, "Status" :: OptionStatus }
```

<p> Status of the VPC options for the specified Elasticsearch domain.</p>

##### Instances
``` purescript
Newtype VPCDerivedInfoStatus _
Generic VPCDerivedInfoStatus _
Show VPCDerivedInfoStatus
Decode VPCDerivedInfoStatus
Encode VPCDerivedInfoStatus
```

#### `newVPCDerivedInfoStatus`

``` purescript
newVPCDerivedInfoStatus :: VPCDerivedInfo -> OptionStatus -> VPCDerivedInfoStatus
```

Constructs VPCDerivedInfoStatus from required parameters

#### `newVPCDerivedInfoStatus'`

``` purescript
newVPCDerivedInfoStatus' :: VPCDerivedInfo -> OptionStatus -> ({ "Options" :: VPCDerivedInfo, "Status" :: OptionStatus } -> { "Options" :: VPCDerivedInfo, "Status" :: OptionStatus }) -> VPCDerivedInfoStatus
```

Constructs VPCDerivedInfoStatus's fields from required parameters

#### `VPCOptions`

``` purescript
newtype VPCOptions
  = VPCOptions { "SubnetIds" :: NullOrUndefined (StringList), "SecurityGroupIds" :: NullOrUndefined (StringList) }
```

<p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>

##### Instances
``` purescript
Newtype VPCOptions _
Generic VPCOptions _
Show VPCOptions
Decode VPCOptions
Encode VPCOptions
```

#### `newVPCOptions`

``` purescript
newVPCOptions :: VPCOptions
```

Constructs VPCOptions from required parameters

#### `newVPCOptions'`

``` purescript
newVPCOptions' :: ({ "SubnetIds" :: NullOrUndefined (StringList), "SecurityGroupIds" :: NullOrUndefined (StringList) } -> { "SubnetIds" :: NullOrUndefined (StringList), "SecurityGroupIds" :: NullOrUndefined (StringList) }) -> VPCOptions
```

Constructs VPCOptions's fields from required parameters

#### `ValidationException`

``` purescript
newtype ValidationException
  = ValidationException NoArguments
```

<p>An exception for missing / invalid input fields. Gives http status code of 400.</p>

##### Instances
``` purescript
Newtype ValidationException _
Generic ValidationException _
Show ValidationException
Decode ValidationException
Encode ValidationException
```

#### `VolumeType`

``` purescript
newtype VolumeType
  = VolumeType String
```

<p> The type of EBS volume, standard, gp2, or io1. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a>for more information.</p>

##### Instances
``` purescript
Newtype VolumeType _
Generic VolumeType _
Show VolumeType
Decode VolumeType
Encode VolumeType
```


