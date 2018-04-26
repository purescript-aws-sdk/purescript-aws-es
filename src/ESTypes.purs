
module AWS.ES.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The Amazon Resource Name (ARN) of the Elasticsearch domain. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html" target="_blank">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>
newtype ARN = ARN String
derive instance newtypeARN :: Newtype ARN _
derive instance repGenericARN :: Generic ARN _
instance showARN :: Show ARN where show = genericShow
instance decodeARN :: Decode ARN where decode = genericDecode options
instance encodeARN :: Encode ARN where encode = genericEncode options



-- | <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
newtype AccessPoliciesStatus = AccessPoliciesStatus 
  { "Options" :: (PolicyDocument)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeAccessPoliciesStatus :: Newtype AccessPoliciesStatus _
derive instance repGenericAccessPoliciesStatus :: Generic AccessPoliciesStatus _
instance showAccessPoliciesStatus :: Show AccessPoliciesStatus where show = genericShow
instance decodeAccessPoliciesStatus :: Decode AccessPoliciesStatus where decode = genericDecode options
instance encodeAccessPoliciesStatus :: Encode AccessPoliciesStatus where encode = genericEncode options

-- | Constructs AccessPoliciesStatus from required parameters
newAccessPoliciesStatus :: PolicyDocument -> OptionStatus -> AccessPoliciesStatus
newAccessPoliciesStatus _Options _Status = AccessPoliciesStatus { "Options": _Options, "Status": _Status }

-- | Constructs AccessPoliciesStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessPoliciesStatus' :: PolicyDocument -> OptionStatus -> ( { "Options" :: (PolicyDocument) , "Status" :: (OptionStatus) } -> {"Options" :: (PolicyDocument) , "Status" :: (OptionStatus) } ) -> AccessPoliciesStatus
newAccessPoliciesStatus' _Options _Status customize = (AccessPoliciesStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>
newtype AddTagsRequest = AddTagsRequest 
  { "ARN" :: (ARN)
  , "TagList" :: (TagList)
  }
derive instance newtypeAddTagsRequest :: Newtype AddTagsRequest _
derive instance repGenericAddTagsRequest :: Generic AddTagsRequest _
instance showAddTagsRequest :: Show AddTagsRequest where show = genericShow
instance decodeAddTagsRequest :: Decode AddTagsRequest where decode = genericDecode options
instance encodeAddTagsRequest :: Encode AddTagsRequest where encode = genericEncode options

-- | Constructs AddTagsRequest from required parameters
newAddTagsRequest :: ARN -> TagList -> AddTagsRequest
newAddTagsRequest _ARN _TagList = AddTagsRequest { "ARN": _ARN, "TagList": _TagList }

-- | Constructs AddTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsRequest' :: ARN -> TagList -> ( { "ARN" :: (ARN) , "TagList" :: (TagList) } -> {"ARN" :: (ARN) , "TagList" :: (TagList) } ) -> AddTagsRequest
newAddTagsRequest' _ARN _TagList customize = (AddTagsRequest <<< customize) { "ARN": _ARN, "TagList": _TagList }



-- | <p> List of limits that are specific to a given InstanceType and for each of it's <code> <a>InstanceRole</a> </code> . </p>
newtype AdditionalLimit = AdditionalLimit 
  { "LimitName" :: Maybe (LimitName)
  , "LimitValues" :: Maybe (LimitValueList)
  }
derive instance newtypeAdditionalLimit :: Newtype AdditionalLimit _
derive instance repGenericAdditionalLimit :: Generic AdditionalLimit _
instance showAdditionalLimit :: Show AdditionalLimit where show = genericShow
instance decodeAdditionalLimit :: Decode AdditionalLimit where decode = genericDecode options
instance encodeAdditionalLimit :: Encode AdditionalLimit where encode = genericEncode options

-- | Constructs AdditionalLimit from required parameters
newAdditionalLimit :: AdditionalLimit
newAdditionalLimit  = AdditionalLimit { "LimitName": Nothing, "LimitValues": Nothing }

-- | Constructs AdditionalLimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdditionalLimit' :: ( { "LimitName" :: Maybe (LimitName) , "LimitValues" :: Maybe (LimitValueList) } -> {"LimitName" :: Maybe (LimitName) , "LimitValues" :: Maybe (LimitValueList) } ) -> AdditionalLimit
newAdditionalLimit'  customize = (AdditionalLimit <<< customize) { "LimitName": Nothing, "LimitValues": Nothing }



newtype AdditionalLimitList = AdditionalLimitList (Array AdditionalLimit)
derive instance newtypeAdditionalLimitList :: Newtype AdditionalLimitList _
derive instance repGenericAdditionalLimitList :: Generic AdditionalLimitList _
instance showAdditionalLimitList :: Show AdditionalLimitList where show = genericShow
instance decodeAdditionalLimitList :: Decode AdditionalLimitList where decode = genericDecode options
instance encodeAdditionalLimitList :: Encode AdditionalLimitList where encode = genericEncode options



-- | <p> Exposes select native Elasticsearch configuration values from <code>elasticsearch.yml</code>. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
newtype AdvancedOptions = AdvancedOptions (StrMap.StrMap String)
derive instance newtypeAdvancedOptions :: Newtype AdvancedOptions _
derive instance repGenericAdvancedOptions :: Generic AdvancedOptions _
instance showAdvancedOptions :: Show AdvancedOptions where show = genericShow
instance decodeAdvancedOptions :: Decode AdvancedOptions where decode = genericDecode options
instance encodeAdvancedOptions :: Encode AdvancedOptions where encode = genericEncode options



-- | <p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p> <ul> <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access to individual sub-resources. By default, the value is <code>true</code>. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</li> <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options">Configuring Advanced Options</a>.</p>
newtype AdvancedOptionsStatus = AdvancedOptionsStatus 
  { "Options" :: (AdvancedOptions)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeAdvancedOptionsStatus :: Newtype AdvancedOptionsStatus _
derive instance repGenericAdvancedOptionsStatus :: Generic AdvancedOptionsStatus _
instance showAdvancedOptionsStatus :: Show AdvancedOptionsStatus where show = genericShow
instance decodeAdvancedOptionsStatus :: Decode AdvancedOptionsStatus where decode = genericDecode options
instance encodeAdvancedOptionsStatus :: Encode AdvancedOptionsStatus where encode = genericEncode options

-- | Constructs AdvancedOptionsStatus from required parameters
newAdvancedOptionsStatus :: AdvancedOptions -> OptionStatus -> AdvancedOptionsStatus
newAdvancedOptionsStatus _Options _Status = AdvancedOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs AdvancedOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAdvancedOptionsStatus' :: AdvancedOptions -> OptionStatus -> ( { "Options" :: (AdvancedOptions) , "Status" :: (OptionStatus) } -> {"Options" :: (AdvancedOptions) , "Status" :: (OptionStatus) } ) -> AdvancedOptionsStatus
newAdvancedOptionsStatus' _Options _Status customize = (AdvancedOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>An error occurred while processing the request.</p>
newtype BaseException = BaseException 
  { "message" :: Maybe (ErrorMessage)
  }
derive instance newtypeBaseException :: Newtype BaseException _
derive instance repGenericBaseException :: Generic BaseException _
instance showBaseException :: Show BaseException where show = genericShow
instance decodeBaseException :: Decode BaseException where decode = genericDecode options
instance encodeBaseException :: Encode BaseException where encode = genericEncode options

-- | Constructs BaseException from required parameters
newBaseException :: BaseException
newBaseException  = BaseException { "message": Nothing }

-- | Constructs BaseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBaseException' :: ( { "message" :: Maybe (ErrorMessage) } -> {"message" :: Maybe (ErrorMessage) } ) -> BaseException
newBaseException'  customize = (BaseException <<< customize) { "message": Nothing }



-- | <p>ARN of the Cloudwatch log group to which log needs to be published.</p>
newtype CloudWatchLogsLogGroupArn = CloudWatchLogsLogGroupArn String
derive instance newtypeCloudWatchLogsLogGroupArn :: Newtype CloudWatchLogsLogGroupArn _
derive instance repGenericCloudWatchLogsLogGroupArn :: Generic CloudWatchLogsLogGroupArn _
instance showCloudWatchLogsLogGroupArn :: Show CloudWatchLogsLogGroupArn where show = genericShow
instance decodeCloudWatchLogsLogGroupArn :: Decode CloudWatchLogsLogGroupArn where decode = genericDecode options
instance encodeCloudWatchLogsLogGroupArn :: Encode CloudWatchLogsLogGroupArn where encode = genericEncode options



newtype CreateElasticsearchDomainRequest = CreateElasticsearchDomainRequest 
  { "DomainName" :: (DomainName)
  , "ElasticsearchVersion" :: Maybe (ElasticsearchVersionString)
  , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfig)
  , "EBSOptions" :: Maybe (EBSOptions)
  , "AccessPolicies" :: Maybe (PolicyDocument)
  , "SnapshotOptions" :: Maybe (SnapshotOptions)
  , "VPCOptions" :: Maybe (VPCOptions)
  , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptions)
  , "AdvancedOptions" :: Maybe (AdvancedOptions)
  , "LogPublishingOptions" :: Maybe (LogPublishingOptions)
  }
derive instance newtypeCreateElasticsearchDomainRequest :: Newtype CreateElasticsearchDomainRequest _
derive instance repGenericCreateElasticsearchDomainRequest :: Generic CreateElasticsearchDomainRequest _
instance showCreateElasticsearchDomainRequest :: Show CreateElasticsearchDomainRequest where show = genericShow
instance decodeCreateElasticsearchDomainRequest :: Decode CreateElasticsearchDomainRequest where decode = genericDecode options
instance encodeCreateElasticsearchDomainRequest :: Encode CreateElasticsearchDomainRequest where encode = genericEncode options

-- | Constructs CreateElasticsearchDomainRequest from required parameters
newCreateElasticsearchDomainRequest :: DomainName -> CreateElasticsearchDomainRequest
newCreateElasticsearchDomainRequest _DomainName = CreateElasticsearchDomainRequest { "DomainName": _DomainName, "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "EBSOptions": Nothing, "ElasticsearchClusterConfig": Nothing, "ElasticsearchVersion": Nothing, "EncryptionAtRestOptions": Nothing, "LogPublishingOptions": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }

-- | Constructs CreateElasticsearchDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateElasticsearchDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "ElasticsearchVersion" :: Maybe (ElasticsearchVersionString) , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfig) , "EBSOptions" :: Maybe (EBSOptions) , "AccessPolicies" :: Maybe (PolicyDocument) , "SnapshotOptions" :: Maybe (SnapshotOptions) , "VPCOptions" :: Maybe (VPCOptions) , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptions) , "AdvancedOptions" :: Maybe (AdvancedOptions) , "LogPublishingOptions" :: Maybe (LogPublishingOptions) } -> {"DomainName" :: (DomainName) , "ElasticsearchVersion" :: Maybe (ElasticsearchVersionString) , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfig) , "EBSOptions" :: Maybe (EBSOptions) , "AccessPolicies" :: Maybe (PolicyDocument) , "SnapshotOptions" :: Maybe (SnapshotOptions) , "VPCOptions" :: Maybe (VPCOptions) , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptions) , "AdvancedOptions" :: Maybe (AdvancedOptions) , "LogPublishingOptions" :: Maybe (LogPublishingOptions) } ) -> CreateElasticsearchDomainRequest
newCreateElasticsearchDomainRequest' _DomainName customize = (CreateElasticsearchDomainRequest <<< customize) { "DomainName": _DomainName, "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "EBSOptions": Nothing, "ElasticsearchClusterConfig": Nothing, "ElasticsearchVersion": Nothing, "EncryptionAtRestOptions": Nothing, "LogPublishingOptions": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }



-- | <p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>
newtype CreateElasticsearchDomainResponse = CreateElasticsearchDomainResponse 
  { "DomainStatus" :: Maybe (ElasticsearchDomainStatus)
  }
derive instance newtypeCreateElasticsearchDomainResponse :: Newtype CreateElasticsearchDomainResponse _
derive instance repGenericCreateElasticsearchDomainResponse :: Generic CreateElasticsearchDomainResponse _
instance showCreateElasticsearchDomainResponse :: Show CreateElasticsearchDomainResponse where show = genericShow
instance decodeCreateElasticsearchDomainResponse :: Decode CreateElasticsearchDomainResponse where decode = genericDecode options
instance encodeCreateElasticsearchDomainResponse :: Encode CreateElasticsearchDomainResponse where encode = genericEncode options

-- | Constructs CreateElasticsearchDomainResponse from required parameters
newCreateElasticsearchDomainResponse :: CreateElasticsearchDomainResponse
newCreateElasticsearchDomainResponse  = CreateElasticsearchDomainResponse { "DomainStatus": Nothing }

-- | Constructs CreateElasticsearchDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateElasticsearchDomainResponse' :: ( { "DomainStatus" :: Maybe (ElasticsearchDomainStatus) } -> {"DomainStatus" :: Maybe (ElasticsearchDomainStatus) } ) -> CreateElasticsearchDomainResponse
newCreateElasticsearchDomainResponse'  customize = (CreateElasticsearchDomainResponse <<< customize) { "DomainStatus": Nothing }



-- | <p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>
newtype DeleteElasticsearchDomainRequest = DeleteElasticsearchDomainRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDeleteElasticsearchDomainRequest :: Newtype DeleteElasticsearchDomainRequest _
derive instance repGenericDeleteElasticsearchDomainRequest :: Generic DeleteElasticsearchDomainRequest _
instance showDeleteElasticsearchDomainRequest :: Show DeleteElasticsearchDomainRequest where show = genericShow
instance decodeDeleteElasticsearchDomainRequest :: Decode DeleteElasticsearchDomainRequest where decode = genericDecode options
instance encodeDeleteElasticsearchDomainRequest :: Encode DeleteElasticsearchDomainRequest where encode = genericEncode options

-- | Constructs DeleteElasticsearchDomainRequest from required parameters
newDeleteElasticsearchDomainRequest :: DomainName -> DeleteElasticsearchDomainRequest
newDeleteElasticsearchDomainRequest _DomainName = DeleteElasticsearchDomainRequest { "DomainName": _DomainName }

-- | Constructs DeleteElasticsearchDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteElasticsearchDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DeleteElasticsearchDomainRequest
newDeleteElasticsearchDomainRequest' _DomainName customize = (DeleteElasticsearchDomainRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>
newtype DeleteElasticsearchDomainResponse = DeleteElasticsearchDomainResponse 
  { "DomainStatus" :: Maybe (ElasticsearchDomainStatus)
  }
derive instance newtypeDeleteElasticsearchDomainResponse :: Newtype DeleteElasticsearchDomainResponse _
derive instance repGenericDeleteElasticsearchDomainResponse :: Generic DeleteElasticsearchDomainResponse _
instance showDeleteElasticsearchDomainResponse :: Show DeleteElasticsearchDomainResponse where show = genericShow
instance decodeDeleteElasticsearchDomainResponse :: Decode DeleteElasticsearchDomainResponse where decode = genericDecode options
instance encodeDeleteElasticsearchDomainResponse :: Encode DeleteElasticsearchDomainResponse where encode = genericEncode options

-- | Constructs DeleteElasticsearchDomainResponse from required parameters
newDeleteElasticsearchDomainResponse :: DeleteElasticsearchDomainResponse
newDeleteElasticsearchDomainResponse  = DeleteElasticsearchDomainResponse { "DomainStatus": Nothing }

-- | Constructs DeleteElasticsearchDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteElasticsearchDomainResponse' :: ( { "DomainStatus" :: Maybe (ElasticsearchDomainStatus) } -> {"DomainStatus" :: Maybe (ElasticsearchDomainStatus) } ) -> DeleteElasticsearchDomainResponse
newDeleteElasticsearchDomainResponse'  customize = (DeleteElasticsearchDomainResponse <<< customize) { "DomainStatus": Nothing }



-- | <p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>
newtype DescribeElasticsearchDomainConfigRequest = DescribeElasticsearchDomainConfigRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeElasticsearchDomainConfigRequest :: Newtype DescribeElasticsearchDomainConfigRequest _
derive instance repGenericDescribeElasticsearchDomainConfigRequest :: Generic DescribeElasticsearchDomainConfigRequest _
instance showDescribeElasticsearchDomainConfigRequest :: Show DescribeElasticsearchDomainConfigRequest where show = genericShow
instance decodeDescribeElasticsearchDomainConfigRequest :: Decode DescribeElasticsearchDomainConfigRequest where decode = genericDecode options
instance encodeDescribeElasticsearchDomainConfigRequest :: Encode DescribeElasticsearchDomainConfigRequest where encode = genericEncode options

-- | Constructs DescribeElasticsearchDomainConfigRequest from required parameters
newDescribeElasticsearchDomainConfigRequest :: DomainName -> DescribeElasticsearchDomainConfigRequest
newDescribeElasticsearchDomainConfigRequest _DomainName = DescribeElasticsearchDomainConfigRequest { "DomainName": _DomainName }

-- | Constructs DescribeElasticsearchDomainConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchDomainConfigRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeElasticsearchDomainConfigRequest
newDescribeElasticsearchDomainConfigRequest' _DomainName customize = (DescribeElasticsearchDomainConfigRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>
newtype DescribeElasticsearchDomainConfigResponse = DescribeElasticsearchDomainConfigResponse 
  { "DomainConfig" :: (ElasticsearchDomainConfig)
  }
derive instance newtypeDescribeElasticsearchDomainConfigResponse :: Newtype DescribeElasticsearchDomainConfigResponse _
derive instance repGenericDescribeElasticsearchDomainConfigResponse :: Generic DescribeElasticsearchDomainConfigResponse _
instance showDescribeElasticsearchDomainConfigResponse :: Show DescribeElasticsearchDomainConfigResponse where show = genericShow
instance decodeDescribeElasticsearchDomainConfigResponse :: Decode DescribeElasticsearchDomainConfigResponse where decode = genericDecode options
instance encodeDescribeElasticsearchDomainConfigResponse :: Encode DescribeElasticsearchDomainConfigResponse where encode = genericEncode options

-- | Constructs DescribeElasticsearchDomainConfigResponse from required parameters
newDescribeElasticsearchDomainConfigResponse :: ElasticsearchDomainConfig -> DescribeElasticsearchDomainConfigResponse
newDescribeElasticsearchDomainConfigResponse _DomainConfig = DescribeElasticsearchDomainConfigResponse { "DomainConfig": _DomainConfig }

-- | Constructs DescribeElasticsearchDomainConfigResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchDomainConfigResponse' :: ElasticsearchDomainConfig -> ( { "DomainConfig" :: (ElasticsearchDomainConfig) } -> {"DomainConfig" :: (ElasticsearchDomainConfig) } ) -> DescribeElasticsearchDomainConfigResponse
newDescribeElasticsearchDomainConfigResponse' _DomainConfig customize = (DescribeElasticsearchDomainConfigResponse <<< customize) { "DomainConfig": _DomainConfig }



-- | <p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>
newtype DescribeElasticsearchDomainRequest = DescribeElasticsearchDomainRequest 
  { "DomainName" :: (DomainName)
  }
derive instance newtypeDescribeElasticsearchDomainRequest :: Newtype DescribeElasticsearchDomainRequest _
derive instance repGenericDescribeElasticsearchDomainRequest :: Generic DescribeElasticsearchDomainRequest _
instance showDescribeElasticsearchDomainRequest :: Show DescribeElasticsearchDomainRequest where show = genericShow
instance decodeDescribeElasticsearchDomainRequest :: Decode DescribeElasticsearchDomainRequest where decode = genericDecode options
instance encodeDescribeElasticsearchDomainRequest :: Encode DescribeElasticsearchDomainRequest where encode = genericEncode options

-- | Constructs DescribeElasticsearchDomainRequest from required parameters
newDescribeElasticsearchDomainRequest :: DomainName -> DescribeElasticsearchDomainRequest
newDescribeElasticsearchDomainRequest _DomainName = DescribeElasticsearchDomainRequest { "DomainName": _DomainName }

-- | Constructs DescribeElasticsearchDomainRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchDomainRequest' :: DomainName -> ( { "DomainName" :: (DomainName) } -> {"DomainName" :: (DomainName) } ) -> DescribeElasticsearchDomainRequest
newDescribeElasticsearchDomainRequest' _DomainName customize = (DescribeElasticsearchDomainRequest <<< customize) { "DomainName": _DomainName }



-- | <p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>
newtype DescribeElasticsearchDomainResponse = DescribeElasticsearchDomainResponse 
  { "DomainStatus" :: (ElasticsearchDomainStatus)
  }
derive instance newtypeDescribeElasticsearchDomainResponse :: Newtype DescribeElasticsearchDomainResponse _
derive instance repGenericDescribeElasticsearchDomainResponse :: Generic DescribeElasticsearchDomainResponse _
instance showDescribeElasticsearchDomainResponse :: Show DescribeElasticsearchDomainResponse where show = genericShow
instance decodeDescribeElasticsearchDomainResponse :: Decode DescribeElasticsearchDomainResponse where decode = genericDecode options
instance encodeDescribeElasticsearchDomainResponse :: Encode DescribeElasticsearchDomainResponse where encode = genericEncode options

-- | Constructs DescribeElasticsearchDomainResponse from required parameters
newDescribeElasticsearchDomainResponse :: ElasticsearchDomainStatus -> DescribeElasticsearchDomainResponse
newDescribeElasticsearchDomainResponse _DomainStatus = DescribeElasticsearchDomainResponse { "DomainStatus": _DomainStatus }

-- | Constructs DescribeElasticsearchDomainResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchDomainResponse' :: ElasticsearchDomainStatus -> ( { "DomainStatus" :: (ElasticsearchDomainStatus) } -> {"DomainStatus" :: (ElasticsearchDomainStatus) } ) -> DescribeElasticsearchDomainResponse
newDescribeElasticsearchDomainResponse' _DomainStatus customize = (DescribeElasticsearchDomainResponse <<< customize) { "DomainStatus": _DomainStatus }



-- | <p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>
newtype DescribeElasticsearchDomainsRequest = DescribeElasticsearchDomainsRequest 
  { "DomainNames" :: (DomainNameList)
  }
derive instance newtypeDescribeElasticsearchDomainsRequest :: Newtype DescribeElasticsearchDomainsRequest _
derive instance repGenericDescribeElasticsearchDomainsRequest :: Generic DescribeElasticsearchDomainsRequest _
instance showDescribeElasticsearchDomainsRequest :: Show DescribeElasticsearchDomainsRequest where show = genericShow
instance decodeDescribeElasticsearchDomainsRequest :: Decode DescribeElasticsearchDomainsRequest where decode = genericDecode options
instance encodeDescribeElasticsearchDomainsRequest :: Encode DescribeElasticsearchDomainsRequest where encode = genericEncode options

-- | Constructs DescribeElasticsearchDomainsRequest from required parameters
newDescribeElasticsearchDomainsRequest :: DomainNameList -> DescribeElasticsearchDomainsRequest
newDescribeElasticsearchDomainsRequest _DomainNames = DescribeElasticsearchDomainsRequest { "DomainNames": _DomainNames }

-- | Constructs DescribeElasticsearchDomainsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchDomainsRequest' :: DomainNameList -> ( { "DomainNames" :: (DomainNameList) } -> {"DomainNames" :: (DomainNameList) } ) -> DescribeElasticsearchDomainsRequest
newDescribeElasticsearchDomainsRequest' _DomainNames customize = (DescribeElasticsearchDomainsRequest <<< customize) { "DomainNames": _DomainNames }



-- | <p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>
newtype DescribeElasticsearchDomainsResponse = DescribeElasticsearchDomainsResponse 
  { "DomainStatusList" :: (ElasticsearchDomainStatusList)
  }
derive instance newtypeDescribeElasticsearchDomainsResponse :: Newtype DescribeElasticsearchDomainsResponse _
derive instance repGenericDescribeElasticsearchDomainsResponse :: Generic DescribeElasticsearchDomainsResponse _
instance showDescribeElasticsearchDomainsResponse :: Show DescribeElasticsearchDomainsResponse where show = genericShow
instance decodeDescribeElasticsearchDomainsResponse :: Decode DescribeElasticsearchDomainsResponse where decode = genericDecode options
instance encodeDescribeElasticsearchDomainsResponse :: Encode DescribeElasticsearchDomainsResponse where encode = genericEncode options

-- | Constructs DescribeElasticsearchDomainsResponse from required parameters
newDescribeElasticsearchDomainsResponse :: ElasticsearchDomainStatusList -> DescribeElasticsearchDomainsResponse
newDescribeElasticsearchDomainsResponse _DomainStatusList = DescribeElasticsearchDomainsResponse { "DomainStatusList": _DomainStatusList }

-- | Constructs DescribeElasticsearchDomainsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchDomainsResponse' :: ElasticsearchDomainStatusList -> ( { "DomainStatusList" :: (ElasticsearchDomainStatusList) } -> {"DomainStatusList" :: (ElasticsearchDomainStatusList) } ) -> DescribeElasticsearchDomainsResponse
newDescribeElasticsearchDomainsResponse' _DomainStatusList customize = (DescribeElasticsearchDomainsResponse <<< customize) { "DomainStatusList": _DomainStatusList }



-- | <p> Container for the parameters to <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
newtype DescribeElasticsearchInstanceTypeLimitsRequest = DescribeElasticsearchInstanceTypeLimitsRequest 
  { "DomainName" :: Maybe (DomainName)
  , "InstanceType" :: (ESPartitionInstanceType)
  , "ElasticsearchVersion" :: (ElasticsearchVersionString)
  }
derive instance newtypeDescribeElasticsearchInstanceTypeLimitsRequest :: Newtype DescribeElasticsearchInstanceTypeLimitsRequest _
derive instance repGenericDescribeElasticsearchInstanceTypeLimitsRequest :: Generic DescribeElasticsearchInstanceTypeLimitsRequest _
instance showDescribeElasticsearchInstanceTypeLimitsRequest :: Show DescribeElasticsearchInstanceTypeLimitsRequest where show = genericShow
instance decodeDescribeElasticsearchInstanceTypeLimitsRequest :: Decode DescribeElasticsearchInstanceTypeLimitsRequest where decode = genericDecode options
instance encodeDescribeElasticsearchInstanceTypeLimitsRequest :: Encode DescribeElasticsearchInstanceTypeLimitsRequest where encode = genericEncode options

-- | Constructs DescribeElasticsearchInstanceTypeLimitsRequest from required parameters
newDescribeElasticsearchInstanceTypeLimitsRequest :: ElasticsearchVersionString -> ESPartitionInstanceType -> DescribeElasticsearchInstanceTypeLimitsRequest
newDescribeElasticsearchInstanceTypeLimitsRequest _ElasticsearchVersion _InstanceType = DescribeElasticsearchInstanceTypeLimitsRequest { "ElasticsearchVersion": _ElasticsearchVersion, "InstanceType": _InstanceType, "DomainName": Nothing }

-- | Constructs DescribeElasticsearchInstanceTypeLimitsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchInstanceTypeLimitsRequest' :: ElasticsearchVersionString -> ESPartitionInstanceType -> ( { "DomainName" :: Maybe (DomainName) , "InstanceType" :: (ESPartitionInstanceType) , "ElasticsearchVersion" :: (ElasticsearchVersionString) } -> {"DomainName" :: Maybe (DomainName) , "InstanceType" :: (ESPartitionInstanceType) , "ElasticsearchVersion" :: (ElasticsearchVersionString) } ) -> DescribeElasticsearchInstanceTypeLimitsRequest
newDescribeElasticsearchInstanceTypeLimitsRequest' _ElasticsearchVersion _InstanceType customize = (DescribeElasticsearchInstanceTypeLimitsRequest <<< customize) { "ElasticsearchVersion": _ElasticsearchVersion, "InstanceType": _InstanceType, "DomainName": Nothing }



-- | <p> Container for the parameters received from <code> <a>DescribeElasticsearchInstanceTypeLimits</a> </code> operation. </p>
newtype DescribeElasticsearchInstanceTypeLimitsResponse = DescribeElasticsearchInstanceTypeLimitsResponse 
  { "LimitsByRole" :: Maybe (LimitsByRole)
  }
derive instance newtypeDescribeElasticsearchInstanceTypeLimitsResponse :: Newtype DescribeElasticsearchInstanceTypeLimitsResponse _
derive instance repGenericDescribeElasticsearchInstanceTypeLimitsResponse :: Generic DescribeElasticsearchInstanceTypeLimitsResponse _
instance showDescribeElasticsearchInstanceTypeLimitsResponse :: Show DescribeElasticsearchInstanceTypeLimitsResponse where show = genericShow
instance decodeDescribeElasticsearchInstanceTypeLimitsResponse :: Decode DescribeElasticsearchInstanceTypeLimitsResponse where decode = genericDecode options
instance encodeDescribeElasticsearchInstanceTypeLimitsResponse :: Encode DescribeElasticsearchInstanceTypeLimitsResponse where encode = genericEncode options

-- | Constructs DescribeElasticsearchInstanceTypeLimitsResponse from required parameters
newDescribeElasticsearchInstanceTypeLimitsResponse :: DescribeElasticsearchInstanceTypeLimitsResponse
newDescribeElasticsearchInstanceTypeLimitsResponse  = DescribeElasticsearchInstanceTypeLimitsResponse { "LimitsByRole": Nothing }

-- | Constructs DescribeElasticsearchInstanceTypeLimitsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeElasticsearchInstanceTypeLimitsResponse' :: ( { "LimitsByRole" :: Maybe (LimitsByRole) } -> {"LimitsByRole" :: Maybe (LimitsByRole) } ) -> DescribeElasticsearchInstanceTypeLimitsResponse
newDescribeElasticsearchInstanceTypeLimitsResponse'  customize = (DescribeElasticsearchInstanceTypeLimitsResponse <<< customize) { "LimitsByRole": Nothing }



-- | <p>An error occured because the client wanted to access a not supported operation. Gives http status code of 409.</p>
newtype DisabledOperationException = DisabledOperationException Types.NoArguments
derive instance newtypeDisabledOperationException :: Newtype DisabledOperationException _
derive instance repGenericDisabledOperationException :: Generic DisabledOperationException _
instance showDisabledOperationException :: Show DisabledOperationException where show = genericShow
instance decodeDisabledOperationException :: Decode DisabledOperationException where decode = genericDecode options
instance encodeDisabledOperationException :: Encode DisabledOperationException where encode = genericEncode options



-- | <p>Unique identifier for an Elasticsearch domain.</p>
newtype DomainId = DomainId String
derive instance newtypeDomainId :: Newtype DomainId _
derive instance repGenericDomainId :: Generic DomainId _
instance showDomainId :: Show DomainId where show = genericShow
instance decodeDomainId :: Decode DomainId where decode = genericDecode options
instance encodeDomainId :: Encode DomainId where encode = genericEncode options



newtype DomainInfo = DomainInfo 
  { "DomainName" :: Maybe (DomainName)
  }
derive instance newtypeDomainInfo :: Newtype DomainInfo _
derive instance repGenericDomainInfo :: Generic DomainInfo _
instance showDomainInfo :: Show DomainInfo where show = genericShow
instance decodeDomainInfo :: Decode DomainInfo where decode = genericDecode options
instance encodeDomainInfo :: Encode DomainInfo where encode = genericEncode options

-- | Constructs DomainInfo from required parameters
newDomainInfo :: DomainInfo
newDomainInfo  = DomainInfo { "DomainName": Nothing }

-- | Constructs DomainInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDomainInfo' :: ( { "DomainName" :: Maybe (DomainName) } -> {"DomainName" :: Maybe (DomainName) } ) -> DomainInfo
newDomainInfo'  customize = (DomainInfo <<< customize) { "DomainName": Nothing }



-- | <p> Contains the list of Elasticsearch domain information.</p>
newtype DomainInfoList = DomainInfoList (Array DomainInfo)
derive instance newtypeDomainInfoList :: Newtype DomainInfoList _
derive instance repGenericDomainInfoList :: Generic DomainInfoList _
instance showDomainInfoList :: Show DomainInfoList where show = genericShow
instance decodeDomainInfoList :: Decode DomainInfoList where decode = genericDecode options
instance encodeDomainInfoList :: Encode DomainInfoList where encode = genericEncode options



-- | <p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
newtype DomainName = DomainName String
derive instance newtypeDomainName :: Newtype DomainName _
derive instance repGenericDomainName :: Generic DomainName _
instance showDomainName :: Show DomainName where show = genericShow
instance decodeDomainName :: Decode DomainName where decode = genericDecode options
instance encodeDomainName :: Encode DomainName where encode = genericEncode options



-- | <p>A list of Elasticsearch domain names.</p>
newtype DomainNameList = DomainNameList (Array DomainName)
derive instance newtypeDomainNameList :: Newtype DomainNameList _
derive instance repGenericDomainNameList :: Generic DomainNameList _
instance showDomainNameList :: Show DomainNameList where show = genericShow
instance decodeDomainNameList :: Decode DomainNameList where decode = genericDecode options
instance encodeDomainNameList :: Encode DomainNameList where encode = genericEncode options



-- | <p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank"> Configuring EBS-based Storage</a>.</p>
newtype EBSOptions = EBSOptions 
  { "EBSEnabled" :: Maybe (Boolean)
  , "VolumeType" :: Maybe (VolumeType)
  , "VolumeSize" :: Maybe (IntegerClass)
  , "Iops" :: Maybe (IntegerClass)
  }
derive instance newtypeEBSOptions :: Newtype EBSOptions _
derive instance repGenericEBSOptions :: Generic EBSOptions _
instance showEBSOptions :: Show EBSOptions where show = genericShow
instance decodeEBSOptions :: Decode EBSOptions where decode = genericDecode options
instance encodeEBSOptions :: Encode EBSOptions where encode = genericEncode options

-- | Constructs EBSOptions from required parameters
newEBSOptions :: EBSOptions
newEBSOptions  = EBSOptions { "EBSEnabled": Nothing, "Iops": Nothing, "VolumeSize": Nothing, "VolumeType": Nothing }

-- | Constructs EBSOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEBSOptions' :: ( { "EBSEnabled" :: Maybe (Boolean) , "VolumeType" :: Maybe (VolumeType) , "VolumeSize" :: Maybe (IntegerClass) , "Iops" :: Maybe (IntegerClass) } -> {"EBSEnabled" :: Maybe (Boolean) , "VolumeType" :: Maybe (VolumeType) , "VolumeSize" :: Maybe (IntegerClass) , "Iops" :: Maybe (IntegerClass) } ) -> EBSOptions
newEBSOptions'  customize = (EBSOptions <<< customize) { "EBSEnabled": Nothing, "Iops": Nothing, "VolumeSize": Nothing, "VolumeType": Nothing }



-- | <p> Status of the EBS options for the specified Elasticsearch domain.</p>
newtype EBSOptionsStatus = EBSOptionsStatus 
  { "Options" :: (EBSOptions)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeEBSOptionsStatus :: Newtype EBSOptionsStatus _
derive instance repGenericEBSOptionsStatus :: Generic EBSOptionsStatus _
instance showEBSOptionsStatus :: Show EBSOptionsStatus where show = genericShow
instance decodeEBSOptionsStatus :: Decode EBSOptionsStatus where decode = genericDecode options
instance encodeEBSOptionsStatus :: Encode EBSOptionsStatus where encode = genericEncode options

-- | Constructs EBSOptionsStatus from required parameters
newEBSOptionsStatus :: EBSOptions -> OptionStatus -> EBSOptionsStatus
newEBSOptionsStatus _Options _Status = EBSOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs EBSOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEBSOptionsStatus' :: EBSOptions -> OptionStatus -> ( { "Options" :: (EBSOptions) , "Status" :: (OptionStatus) } -> {"Options" :: (EBSOptions) , "Status" :: (OptionStatus) } ) -> EBSOptionsStatus
newEBSOptionsStatus' _Options _Status customize = (EBSOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



newtype ESPartitionInstanceType = ESPartitionInstanceType String
derive instance newtypeESPartitionInstanceType :: Newtype ESPartitionInstanceType _
derive instance repGenericESPartitionInstanceType :: Generic ESPartitionInstanceType _
instance showESPartitionInstanceType :: Show ESPartitionInstanceType where show = genericShow
instance decodeESPartitionInstanceType :: Decode ESPartitionInstanceType where decode = genericDecode options
instance encodeESPartitionInstanceType :: Encode ESPartitionInstanceType where encode = genericEncode options



-- | <p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>
newtype ElasticsearchClusterConfig = ElasticsearchClusterConfig 
  { "InstanceType" :: Maybe (ESPartitionInstanceType)
  , "InstanceCount" :: Maybe (IntegerClass)
  , "DedicatedMasterEnabled" :: Maybe (Boolean)
  , "ZoneAwarenessEnabled" :: Maybe (Boolean)
  , "DedicatedMasterType" :: Maybe (ESPartitionInstanceType)
  , "DedicatedMasterCount" :: Maybe (IntegerClass)
  }
derive instance newtypeElasticsearchClusterConfig :: Newtype ElasticsearchClusterConfig _
derive instance repGenericElasticsearchClusterConfig :: Generic ElasticsearchClusterConfig _
instance showElasticsearchClusterConfig :: Show ElasticsearchClusterConfig where show = genericShow
instance decodeElasticsearchClusterConfig :: Decode ElasticsearchClusterConfig where decode = genericDecode options
instance encodeElasticsearchClusterConfig :: Encode ElasticsearchClusterConfig where encode = genericEncode options

-- | Constructs ElasticsearchClusterConfig from required parameters
newElasticsearchClusterConfig :: ElasticsearchClusterConfig
newElasticsearchClusterConfig  = ElasticsearchClusterConfig { "DedicatedMasterCount": Nothing, "DedicatedMasterEnabled": Nothing, "DedicatedMasterType": Nothing, "InstanceCount": Nothing, "InstanceType": Nothing, "ZoneAwarenessEnabled": Nothing }

-- | Constructs ElasticsearchClusterConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticsearchClusterConfig' :: ( { "InstanceType" :: Maybe (ESPartitionInstanceType) , "InstanceCount" :: Maybe (IntegerClass) , "DedicatedMasterEnabled" :: Maybe (Boolean) , "ZoneAwarenessEnabled" :: Maybe (Boolean) , "DedicatedMasterType" :: Maybe (ESPartitionInstanceType) , "DedicatedMasterCount" :: Maybe (IntegerClass) } -> {"InstanceType" :: Maybe (ESPartitionInstanceType) , "InstanceCount" :: Maybe (IntegerClass) , "DedicatedMasterEnabled" :: Maybe (Boolean) , "ZoneAwarenessEnabled" :: Maybe (Boolean) , "DedicatedMasterType" :: Maybe (ESPartitionInstanceType) , "DedicatedMasterCount" :: Maybe (IntegerClass) } ) -> ElasticsearchClusterConfig
newElasticsearchClusterConfig'  customize = (ElasticsearchClusterConfig <<< customize) { "DedicatedMasterCount": Nothing, "DedicatedMasterEnabled": Nothing, "DedicatedMasterType": Nothing, "InstanceCount": Nothing, "InstanceType": Nothing, "ZoneAwarenessEnabled": Nothing }



-- | <p> Specifies the configuration status for the specified Elasticsearch domain.</p>
newtype ElasticsearchClusterConfigStatus = ElasticsearchClusterConfigStatus 
  { "Options" :: (ElasticsearchClusterConfig)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeElasticsearchClusterConfigStatus :: Newtype ElasticsearchClusterConfigStatus _
derive instance repGenericElasticsearchClusterConfigStatus :: Generic ElasticsearchClusterConfigStatus _
instance showElasticsearchClusterConfigStatus :: Show ElasticsearchClusterConfigStatus where show = genericShow
instance decodeElasticsearchClusterConfigStatus :: Decode ElasticsearchClusterConfigStatus where decode = genericDecode options
instance encodeElasticsearchClusterConfigStatus :: Encode ElasticsearchClusterConfigStatus where encode = genericEncode options

-- | Constructs ElasticsearchClusterConfigStatus from required parameters
newElasticsearchClusterConfigStatus :: ElasticsearchClusterConfig -> OptionStatus -> ElasticsearchClusterConfigStatus
newElasticsearchClusterConfigStatus _Options _Status = ElasticsearchClusterConfigStatus { "Options": _Options, "Status": _Status }

-- | Constructs ElasticsearchClusterConfigStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticsearchClusterConfigStatus' :: ElasticsearchClusterConfig -> OptionStatus -> ( { "Options" :: (ElasticsearchClusterConfig) , "Status" :: (OptionStatus) } -> {"Options" :: (ElasticsearchClusterConfig) , "Status" :: (OptionStatus) } ) -> ElasticsearchClusterConfigStatus
newElasticsearchClusterConfigStatus' _Options _Status customize = (ElasticsearchClusterConfigStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>The configuration of an Elasticsearch domain.</p>
newtype ElasticsearchDomainConfig = ElasticsearchDomainConfig 
  { "ElasticsearchVersion" :: Maybe (ElasticsearchVersionStatus)
  , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfigStatus)
  , "EBSOptions" :: Maybe (EBSOptionsStatus)
  , "AccessPolicies" :: Maybe (AccessPoliciesStatus)
  , "SnapshotOptions" :: Maybe (SnapshotOptionsStatus)
  , "VPCOptions" :: Maybe (VPCDerivedInfoStatus)
  , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptionsStatus)
  , "AdvancedOptions" :: Maybe (AdvancedOptionsStatus)
  , "LogPublishingOptions" :: Maybe (LogPublishingOptionsStatus)
  }
derive instance newtypeElasticsearchDomainConfig :: Newtype ElasticsearchDomainConfig _
derive instance repGenericElasticsearchDomainConfig :: Generic ElasticsearchDomainConfig _
instance showElasticsearchDomainConfig :: Show ElasticsearchDomainConfig where show = genericShow
instance decodeElasticsearchDomainConfig :: Decode ElasticsearchDomainConfig where decode = genericDecode options
instance encodeElasticsearchDomainConfig :: Encode ElasticsearchDomainConfig where encode = genericEncode options

-- | Constructs ElasticsearchDomainConfig from required parameters
newElasticsearchDomainConfig :: ElasticsearchDomainConfig
newElasticsearchDomainConfig  = ElasticsearchDomainConfig { "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "EBSOptions": Nothing, "ElasticsearchClusterConfig": Nothing, "ElasticsearchVersion": Nothing, "EncryptionAtRestOptions": Nothing, "LogPublishingOptions": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }

-- | Constructs ElasticsearchDomainConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticsearchDomainConfig' :: ( { "ElasticsearchVersion" :: Maybe (ElasticsearchVersionStatus) , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfigStatus) , "EBSOptions" :: Maybe (EBSOptionsStatus) , "AccessPolicies" :: Maybe (AccessPoliciesStatus) , "SnapshotOptions" :: Maybe (SnapshotOptionsStatus) , "VPCOptions" :: Maybe (VPCDerivedInfoStatus) , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptionsStatus) , "AdvancedOptions" :: Maybe (AdvancedOptionsStatus) , "LogPublishingOptions" :: Maybe (LogPublishingOptionsStatus) } -> {"ElasticsearchVersion" :: Maybe (ElasticsearchVersionStatus) , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfigStatus) , "EBSOptions" :: Maybe (EBSOptionsStatus) , "AccessPolicies" :: Maybe (AccessPoliciesStatus) , "SnapshotOptions" :: Maybe (SnapshotOptionsStatus) , "VPCOptions" :: Maybe (VPCDerivedInfoStatus) , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptionsStatus) , "AdvancedOptions" :: Maybe (AdvancedOptionsStatus) , "LogPublishingOptions" :: Maybe (LogPublishingOptionsStatus) } ) -> ElasticsearchDomainConfig
newElasticsearchDomainConfig'  customize = (ElasticsearchDomainConfig <<< customize) { "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "EBSOptions": Nothing, "ElasticsearchClusterConfig": Nothing, "ElasticsearchVersion": Nothing, "EncryptionAtRestOptions": Nothing, "LogPublishingOptions": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }



-- | <p>The current status of an Elasticsearch domain.</p>
newtype ElasticsearchDomainStatus = ElasticsearchDomainStatus 
  { "DomainId" :: (DomainId)
  , "DomainName" :: (DomainName)
  , "ARN" :: (ARN)
  , "Created" :: Maybe (Boolean)
  , "Deleted" :: Maybe (Boolean)
  , "Endpoint" :: Maybe (ServiceUrl)
  , "Endpoints" :: Maybe (EndpointsMap)
  , "Processing" :: Maybe (Boolean)
  , "ElasticsearchVersion" :: Maybe (ElasticsearchVersionString)
  , "ElasticsearchClusterConfig" :: (ElasticsearchClusterConfig)
  , "EBSOptions" :: Maybe (EBSOptions)
  , "AccessPolicies" :: Maybe (PolicyDocument)
  , "SnapshotOptions" :: Maybe (SnapshotOptions)
  , "VPCOptions" :: Maybe (VPCDerivedInfo)
  , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptions)
  , "AdvancedOptions" :: Maybe (AdvancedOptions)
  , "LogPublishingOptions" :: Maybe (LogPublishingOptions)
  }
derive instance newtypeElasticsearchDomainStatus :: Newtype ElasticsearchDomainStatus _
derive instance repGenericElasticsearchDomainStatus :: Generic ElasticsearchDomainStatus _
instance showElasticsearchDomainStatus :: Show ElasticsearchDomainStatus where show = genericShow
instance decodeElasticsearchDomainStatus :: Decode ElasticsearchDomainStatus where decode = genericDecode options
instance encodeElasticsearchDomainStatus :: Encode ElasticsearchDomainStatus where encode = genericEncode options

-- | Constructs ElasticsearchDomainStatus from required parameters
newElasticsearchDomainStatus :: ARN -> DomainId -> DomainName -> ElasticsearchClusterConfig -> ElasticsearchDomainStatus
newElasticsearchDomainStatus _ARN _DomainId _DomainName _ElasticsearchClusterConfig = ElasticsearchDomainStatus { "ARN": _ARN, "DomainId": _DomainId, "DomainName": _DomainName, "ElasticsearchClusterConfig": _ElasticsearchClusterConfig, "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "Created": Nothing, "Deleted": Nothing, "EBSOptions": Nothing, "ElasticsearchVersion": Nothing, "EncryptionAtRestOptions": Nothing, "Endpoint": Nothing, "Endpoints": Nothing, "LogPublishingOptions": Nothing, "Processing": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }

-- | Constructs ElasticsearchDomainStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticsearchDomainStatus' :: ARN -> DomainId -> DomainName -> ElasticsearchClusterConfig -> ( { "DomainId" :: (DomainId) , "DomainName" :: (DomainName) , "ARN" :: (ARN) , "Created" :: Maybe (Boolean) , "Deleted" :: Maybe (Boolean) , "Endpoint" :: Maybe (ServiceUrl) , "Endpoints" :: Maybe (EndpointsMap) , "Processing" :: Maybe (Boolean) , "ElasticsearchVersion" :: Maybe (ElasticsearchVersionString) , "ElasticsearchClusterConfig" :: (ElasticsearchClusterConfig) , "EBSOptions" :: Maybe (EBSOptions) , "AccessPolicies" :: Maybe (PolicyDocument) , "SnapshotOptions" :: Maybe (SnapshotOptions) , "VPCOptions" :: Maybe (VPCDerivedInfo) , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptions) , "AdvancedOptions" :: Maybe (AdvancedOptions) , "LogPublishingOptions" :: Maybe (LogPublishingOptions) } -> {"DomainId" :: (DomainId) , "DomainName" :: (DomainName) , "ARN" :: (ARN) , "Created" :: Maybe (Boolean) , "Deleted" :: Maybe (Boolean) , "Endpoint" :: Maybe (ServiceUrl) , "Endpoints" :: Maybe (EndpointsMap) , "Processing" :: Maybe (Boolean) , "ElasticsearchVersion" :: Maybe (ElasticsearchVersionString) , "ElasticsearchClusterConfig" :: (ElasticsearchClusterConfig) , "EBSOptions" :: Maybe (EBSOptions) , "AccessPolicies" :: Maybe (PolicyDocument) , "SnapshotOptions" :: Maybe (SnapshotOptions) , "VPCOptions" :: Maybe (VPCDerivedInfo) , "EncryptionAtRestOptions" :: Maybe (EncryptionAtRestOptions) , "AdvancedOptions" :: Maybe (AdvancedOptions) , "LogPublishingOptions" :: Maybe (LogPublishingOptions) } ) -> ElasticsearchDomainStatus
newElasticsearchDomainStatus' _ARN _DomainId _DomainName _ElasticsearchClusterConfig customize = (ElasticsearchDomainStatus <<< customize) { "ARN": _ARN, "DomainId": _DomainId, "DomainName": _DomainName, "ElasticsearchClusterConfig": _ElasticsearchClusterConfig, "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "Created": Nothing, "Deleted": Nothing, "EBSOptions": Nothing, "ElasticsearchVersion": Nothing, "EncryptionAtRestOptions": Nothing, "Endpoint": Nothing, "Endpoints": Nothing, "LogPublishingOptions": Nothing, "Processing": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }



-- | <p>A list that contains the status of each requested Elasticsearch domain.</p>
newtype ElasticsearchDomainStatusList = ElasticsearchDomainStatusList (Array ElasticsearchDomainStatus)
derive instance newtypeElasticsearchDomainStatusList :: Newtype ElasticsearchDomainStatusList _
derive instance repGenericElasticsearchDomainStatusList :: Generic ElasticsearchDomainStatusList _
instance showElasticsearchDomainStatusList :: Show ElasticsearchDomainStatusList where show = genericShow
instance decodeElasticsearchDomainStatusList :: Decode ElasticsearchDomainStatusList where decode = genericDecode options
instance encodeElasticsearchDomainStatusList :: Encode ElasticsearchDomainStatusList where encode = genericEncode options



-- | <p> List of instance types supported by Amazon Elasticsearch service. </p>
newtype ElasticsearchInstanceTypeList = ElasticsearchInstanceTypeList (Array ESPartitionInstanceType)
derive instance newtypeElasticsearchInstanceTypeList :: Newtype ElasticsearchInstanceTypeList _
derive instance repGenericElasticsearchInstanceTypeList :: Generic ElasticsearchInstanceTypeList _
instance showElasticsearchInstanceTypeList :: Show ElasticsearchInstanceTypeList where show = genericShow
instance decodeElasticsearchInstanceTypeList :: Decode ElasticsearchInstanceTypeList where decode = genericDecode options
instance encodeElasticsearchInstanceTypeList :: Encode ElasticsearchInstanceTypeList where encode = genericEncode options



-- | <p>List of supported elastic search versions. </p>
newtype ElasticsearchVersionList = ElasticsearchVersionList (Array ElasticsearchVersionString)
derive instance newtypeElasticsearchVersionList :: Newtype ElasticsearchVersionList _
derive instance repGenericElasticsearchVersionList :: Generic ElasticsearchVersionList _
instance showElasticsearchVersionList :: Show ElasticsearchVersionList where show = genericShow
instance decodeElasticsearchVersionList :: Decode ElasticsearchVersionList where decode = genericDecode options
instance encodeElasticsearchVersionList :: Encode ElasticsearchVersionList where encode = genericEncode options



-- | <p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>
newtype ElasticsearchVersionStatus = ElasticsearchVersionStatus 
  { "Options" :: (ElasticsearchVersionString)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeElasticsearchVersionStatus :: Newtype ElasticsearchVersionStatus _
derive instance repGenericElasticsearchVersionStatus :: Generic ElasticsearchVersionStatus _
instance showElasticsearchVersionStatus :: Show ElasticsearchVersionStatus where show = genericShow
instance decodeElasticsearchVersionStatus :: Decode ElasticsearchVersionStatus where decode = genericDecode options
instance encodeElasticsearchVersionStatus :: Encode ElasticsearchVersionStatus where encode = genericEncode options

-- | Constructs ElasticsearchVersionStatus from required parameters
newElasticsearchVersionStatus :: ElasticsearchVersionString -> OptionStatus -> ElasticsearchVersionStatus
newElasticsearchVersionStatus _Options _Status = ElasticsearchVersionStatus { "Options": _Options, "Status": _Status }

-- | Constructs ElasticsearchVersionStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newElasticsearchVersionStatus' :: ElasticsearchVersionString -> OptionStatus -> ( { "Options" :: (ElasticsearchVersionString) , "Status" :: (OptionStatus) } -> {"Options" :: (ElasticsearchVersionString) , "Status" :: (OptionStatus) } ) -> ElasticsearchVersionStatus
newElasticsearchVersionStatus' _Options _Status customize = (ElasticsearchVersionStatus <<< customize) { "Options": _Options, "Status": _Status }



newtype ElasticsearchVersionString = ElasticsearchVersionString String
derive instance newtypeElasticsearchVersionString :: Newtype ElasticsearchVersionString _
derive instance repGenericElasticsearchVersionString :: Generic ElasticsearchVersionString _
instance showElasticsearchVersionString :: Show ElasticsearchVersionString where show = genericShow
instance decodeElasticsearchVersionString :: Decode ElasticsearchVersionString where decode = genericDecode options
instance encodeElasticsearchVersionString :: Encode ElasticsearchVersionString where encode = genericEncode options



-- | <p>Specifies the Encryption At Rest Options.</p>
newtype EncryptionAtRestOptions = EncryptionAtRestOptions 
  { "Enabled" :: Maybe (Boolean)
  , "KmsKeyId" :: Maybe (KmsKeyId)
  }
derive instance newtypeEncryptionAtRestOptions :: Newtype EncryptionAtRestOptions _
derive instance repGenericEncryptionAtRestOptions :: Generic EncryptionAtRestOptions _
instance showEncryptionAtRestOptions :: Show EncryptionAtRestOptions where show = genericShow
instance decodeEncryptionAtRestOptions :: Decode EncryptionAtRestOptions where decode = genericDecode options
instance encodeEncryptionAtRestOptions :: Encode EncryptionAtRestOptions where encode = genericEncode options

-- | Constructs EncryptionAtRestOptions from required parameters
newEncryptionAtRestOptions :: EncryptionAtRestOptions
newEncryptionAtRestOptions  = EncryptionAtRestOptions { "Enabled": Nothing, "KmsKeyId": Nothing }

-- | Constructs EncryptionAtRestOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptionAtRestOptions' :: ( { "Enabled" :: Maybe (Boolean) , "KmsKeyId" :: Maybe (KmsKeyId) } -> {"Enabled" :: Maybe (Boolean) , "KmsKeyId" :: Maybe (KmsKeyId) } ) -> EncryptionAtRestOptions
newEncryptionAtRestOptions'  customize = (EncryptionAtRestOptions <<< customize) { "Enabled": Nothing, "KmsKeyId": Nothing }



-- | <p> Status of the Encryption At Rest options for the specified Elasticsearch domain.</p>
newtype EncryptionAtRestOptionsStatus = EncryptionAtRestOptionsStatus 
  { "Options" :: (EncryptionAtRestOptions)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeEncryptionAtRestOptionsStatus :: Newtype EncryptionAtRestOptionsStatus _
derive instance repGenericEncryptionAtRestOptionsStatus :: Generic EncryptionAtRestOptionsStatus _
instance showEncryptionAtRestOptionsStatus :: Show EncryptionAtRestOptionsStatus where show = genericShow
instance decodeEncryptionAtRestOptionsStatus :: Decode EncryptionAtRestOptionsStatus where decode = genericDecode options
instance encodeEncryptionAtRestOptionsStatus :: Encode EncryptionAtRestOptionsStatus where encode = genericEncode options

-- | Constructs EncryptionAtRestOptionsStatus from required parameters
newEncryptionAtRestOptionsStatus :: EncryptionAtRestOptions -> OptionStatus -> EncryptionAtRestOptionsStatus
newEncryptionAtRestOptionsStatus _Options _Status = EncryptionAtRestOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs EncryptionAtRestOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryptionAtRestOptionsStatus' :: EncryptionAtRestOptions -> OptionStatus -> ( { "Options" :: (EncryptionAtRestOptions) , "Status" :: (OptionStatus) } -> {"Options" :: (EncryptionAtRestOptions) , "Status" :: (OptionStatus) } ) -> EncryptionAtRestOptionsStatus
newEncryptionAtRestOptionsStatus' _Options _Status customize = (EncryptionAtRestOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



newtype EndpointsMap = EndpointsMap (StrMap.StrMap ServiceUrl)
derive instance newtypeEndpointsMap :: Newtype EndpointsMap _
derive instance repGenericEndpointsMap :: Generic EndpointsMap _
instance showEndpointsMap :: Show EndpointsMap where show = genericShow
instance decodeEndpointsMap :: Decode EndpointsMap where decode = genericDecode options
instance encodeEndpointsMap :: Encode EndpointsMap where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p> InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for given InstanceType. </p>
newtype InstanceCountLimits = InstanceCountLimits 
  { "MinimumInstanceCount" :: Maybe (MinimumInstanceCount)
  , "MaximumInstanceCount" :: Maybe (MaximumInstanceCount)
  }
derive instance newtypeInstanceCountLimits :: Newtype InstanceCountLimits _
derive instance repGenericInstanceCountLimits :: Generic InstanceCountLimits _
instance showInstanceCountLimits :: Show InstanceCountLimits where show = genericShow
instance decodeInstanceCountLimits :: Decode InstanceCountLimits where decode = genericDecode options
instance encodeInstanceCountLimits :: Encode InstanceCountLimits where encode = genericEncode options

-- | Constructs InstanceCountLimits from required parameters
newInstanceCountLimits :: InstanceCountLimits
newInstanceCountLimits  = InstanceCountLimits { "MaximumInstanceCount": Nothing, "MinimumInstanceCount": Nothing }

-- | Constructs InstanceCountLimits's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceCountLimits' :: ( { "MinimumInstanceCount" :: Maybe (MinimumInstanceCount) , "MaximumInstanceCount" :: Maybe (MaximumInstanceCount) } -> {"MinimumInstanceCount" :: Maybe (MinimumInstanceCount) , "MaximumInstanceCount" :: Maybe (MaximumInstanceCount) } ) -> InstanceCountLimits
newInstanceCountLimits'  customize = (InstanceCountLimits <<< customize) { "MaximumInstanceCount": Nothing, "MinimumInstanceCount": Nothing }



-- | <p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType. </p>
newtype InstanceLimits = InstanceLimits 
  { "InstanceCountLimits" :: Maybe (InstanceCountLimits)
  }
derive instance newtypeInstanceLimits :: Newtype InstanceLimits _
derive instance repGenericInstanceLimits :: Generic InstanceLimits _
instance showInstanceLimits :: Show InstanceLimits where show = genericShow
instance decodeInstanceLimits :: Decode InstanceLimits where decode = genericDecode options
instance encodeInstanceLimits :: Encode InstanceLimits where encode = genericEncode options

-- | Constructs InstanceLimits from required parameters
newInstanceLimits :: InstanceLimits
newInstanceLimits  = InstanceLimits { "InstanceCountLimits": Nothing }

-- | Constructs InstanceLimits's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceLimits' :: ( { "InstanceCountLimits" :: Maybe (InstanceCountLimits) } -> {"InstanceCountLimits" :: Maybe (InstanceCountLimits) } ) -> InstanceLimits
newInstanceLimits'  customize = (InstanceLimits <<< customize) { "InstanceCountLimits": Nothing }



newtype InstanceRole = InstanceRole String
derive instance newtypeInstanceRole :: Newtype InstanceRole _
derive instance repGenericInstanceRole :: Generic InstanceRole _
instance showInstanceRole :: Show InstanceRole where show = genericShow
instance decodeInstanceRole :: Decode InstanceRole where decode = genericDecode options
instance encodeInstanceRole :: Encode InstanceRole where encode = genericEncode options



newtype IntegerClass = IntegerClass Int
derive instance newtypeIntegerClass :: Newtype IntegerClass _
derive instance repGenericIntegerClass :: Generic IntegerClass _
instance showIntegerClass :: Show IntegerClass where show = genericShow
instance decodeIntegerClass :: Decode IntegerClass where decode = genericDecode options
instance encodeIntegerClass :: Encode IntegerClass where encode = genericEncode options



-- | <p>The request processing has failed because of an unknown error, exception or failure (the failure is internal to the service) . Gives http status code of 500.</p>
newtype InternalException = InternalException Types.NoArguments
derive instance newtypeInternalException :: Newtype InternalException _
derive instance repGenericInternalException :: Generic InternalException _
instance showInternalException :: Show InternalException where show = genericShow
instance decodeInternalException :: Decode InternalException where decode = genericDecode options
instance encodeInternalException :: Encode InternalException where encode = genericEncode options



-- | <p>An exception for trying to create or access sub-resource that is either invalid or not supported. Gives http status code of 409.</p>
newtype InvalidTypeException = InvalidTypeException Types.NoArguments
derive instance newtypeInvalidTypeException :: Newtype InvalidTypeException _
derive instance repGenericInvalidTypeException :: Generic InvalidTypeException _
instance showInvalidTypeException :: Show InvalidTypeException where show = genericShow
instance decodeInvalidTypeException :: Decode InvalidTypeException where decode = genericDecode options
instance encodeInvalidTypeException :: Encode InvalidTypeException where encode = genericEncode options



newtype KmsKeyId = KmsKeyId String
derive instance newtypeKmsKeyId :: Newtype KmsKeyId _
derive instance repGenericKmsKeyId :: Generic KmsKeyId _
instance showKmsKeyId :: Show KmsKeyId where show = genericShow
instance decodeKmsKeyId :: Decode KmsKeyId where decode = genericDecode options
instance encodeKmsKeyId :: Encode KmsKeyId where encode = genericEncode options



-- | <p>An exception for trying to create more than allowed resources or sub-resources. Gives http status code of 409.</p>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



newtype LimitName = LimitName String
derive instance newtypeLimitName :: Newtype LimitName _
derive instance repGenericLimitName :: Generic LimitName _
instance showLimitName :: Show LimitName where show = genericShow
instance decodeLimitName :: Decode LimitName where decode = genericDecode options
instance encodeLimitName :: Encode LimitName where encode = genericEncode options



newtype LimitValue = LimitValue String
derive instance newtypeLimitValue :: Newtype LimitValue _
derive instance repGenericLimitValue :: Generic LimitValue _
instance showLimitValue :: Show LimitValue where show = genericShow
instance decodeLimitValue :: Decode LimitValue where decode = genericDecode options
instance encodeLimitValue :: Encode LimitValue where encode = genericEncode options



newtype LimitValueList = LimitValueList (Array LimitValue)
derive instance newtypeLimitValueList :: Newtype LimitValueList _
derive instance repGenericLimitValueList :: Generic LimitValueList _
instance showLimitValueList :: Show LimitValueList where show = genericShow
instance decodeLimitValueList :: Decode LimitValueList where decode = genericDecode options
instance encodeLimitValueList :: Encode LimitValueList where encode = genericEncode options



-- | <p> Limits for given InstanceType and for each of it's role. <br/> Limits contains following <code> <a>StorageTypes,</a> </code> <code> <a>InstanceLimits</a> </code> and <code> <a>AdditionalLimits</a> </code> </p>
newtype Limits = Limits 
  { "StorageTypes" :: Maybe (StorageTypeList)
  , "InstanceLimits" :: Maybe (InstanceLimits)
  , "AdditionalLimits" :: Maybe (AdditionalLimitList)
  }
derive instance newtypeLimits :: Newtype Limits _
derive instance repGenericLimits :: Generic Limits _
instance showLimits :: Show Limits where show = genericShow
instance decodeLimits :: Decode Limits where decode = genericDecode options
instance encodeLimits :: Encode Limits where encode = genericEncode options

-- | Constructs Limits from required parameters
newLimits :: Limits
newLimits  = Limits { "AdditionalLimits": Nothing, "InstanceLimits": Nothing, "StorageTypes": Nothing }

-- | Constructs Limits's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimits' :: ( { "StorageTypes" :: Maybe (StorageTypeList) , "InstanceLimits" :: Maybe (InstanceLimits) , "AdditionalLimits" :: Maybe (AdditionalLimitList) } -> {"StorageTypes" :: Maybe (StorageTypeList) , "InstanceLimits" :: Maybe (InstanceLimits) , "AdditionalLimits" :: Maybe (AdditionalLimitList) } ) -> Limits
newLimits'  customize = (Limits <<< customize) { "AdditionalLimits": Nothing, "InstanceLimits": Nothing, "StorageTypes": Nothing }



-- | <p> Map of Role of the Instance and Limits that are applicable. Role performed by given Instance in Elasticsearch can be one of the following: <ul> <li>Data: If the given InstanceType is used as Data node</li> <li>Master: If the given InstanceType is used as Master node</li> </ul> </p>
newtype LimitsByRole = LimitsByRole (StrMap.StrMap Limits)
derive instance newtypeLimitsByRole :: Newtype LimitsByRole _
derive instance repGenericLimitsByRole :: Generic LimitsByRole _
instance showLimitsByRole :: Show LimitsByRole where show = genericShow
instance decodeLimitsByRole :: Decode LimitsByRole where decode = genericDecode options
instance encodeLimitsByRole :: Encode LimitsByRole where encode = genericEncode options



-- | <p>The result of a <code>ListDomainNames</code> operation. Contains the names of all Elasticsearch domains owned by this account.</p>
newtype ListDomainNamesResponse = ListDomainNamesResponse 
  { "DomainNames" :: Maybe (DomainInfoList)
  }
derive instance newtypeListDomainNamesResponse :: Newtype ListDomainNamesResponse _
derive instance repGenericListDomainNamesResponse :: Generic ListDomainNamesResponse _
instance showListDomainNamesResponse :: Show ListDomainNamesResponse where show = genericShow
instance decodeListDomainNamesResponse :: Decode ListDomainNamesResponse where decode = genericDecode options
instance encodeListDomainNamesResponse :: Encode ListDomainNamesResponse where encode = genericEncode options

-- | Constructs ListDomainNamesResponse from required parameters
newListDomainNamesResponse :: ListDomainNamesResponse
newListDomainNamesResponse  = ListDomainNamesResponse { "DomainNames": Nothing }

-- | Constructs ListDomainNamesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDomainNamesResponse' :: ( { "DomainNames" :: Maybe (DomainInfoList) } -> {"DomainNames" :: Maybe (DomainInfoList) } ) -> ListDomainNamesResponse
newListDomainNamesResponse'  customize = (ListDomainNamesResponse <<< customize) { "DomainNames": Nothing }



-- | <p> Container for the parameters to the <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>
newtype ListElasticsearchInstanceTypesRequest = ListElasticsearchInstanceTypesRequest 
  { "ElasticsearchVersion" :: (ElasticsearchVersionString)
  , "DomainName" :: Maybe (DomainName)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListElasticsearchInstanceTypesRequest :: Newtype ListElasticsearchInstanceTypesRequest _
derive instance repGenericListElasticsearchInstanceTypesRequest :: Generic ListElasticsearchInstanceTypesRequest _
instance showListElasticsearchInstanceTypesRequest :: Show ListElasticsearchInstanceTypesRequest where show = genericShow
instance decodeListElasticsearchInstanceTypesRequest :: Decode ListElasticsearchInstanceTypesRequest where decode = genericDecode options
instance encodeListElasticsearchInstanceTypesRequest :: Encode ListElasticsearchInstanceTypesRequest where encode = genericEncode options

-- | Constructs ListElasticsearchInstanceTypesRequest from required parameters
newListElasticsearchInstanceTypesRequest :: ElasticsearchVersionString -> ListElasticsearchInstanceTypesRequest
newListElasticsearchInstanceTypesRequest _ElasticsearchVersion = ListElasticsearchInstanceTypesRequest { "ElasticsearchVersion": _ElasticsearchVersion, "DomainName": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListElasticsearchInstanceTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListElasticsearchInstanceTypesRequest' :: ElasticsearchVersionString -> ( { "ElasticsearchVersion" :: (ElasticsearchVersionString) , "DomainName" :: Maybe (DomainName) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"ElasticsearchVersion" :: (ElasticsearchVersionString) , "DomainName" :: Maybe (DomainName) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> ListElasticsearchInstanceTypesRequest
newListElasticsearchInstanceTypesRequest' _ElasticsearchVersion customize = (ListElasticsearchInstanceTypesRequest <<< customize) { "ElasticsearchVersion": _ElasticsearchVersion, "DomainName": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



-- | <p> Container for the parameters returned by <code> <a>ListElasticsearchInstanceTypes</a> </code> operation. </p>
newtype ListElasticsearchInstanceTypesResponse = ListElasticsearchInstanceTypesResponse 
  { "ElasticsearchInstanceTypes" :: Maybe (ElasticsearchInstanceTypeList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListElasticsearchInstanceTypesResponse :: Newtype ListElasticsearchInstanceTypesResponse _
derive instance repGenericListElasticsearchInstanceTypesResponse :: Generic ListElasticsearchInstanceTypesResponse _
instance showListElasticsearchInstanceTypesResponse :: Show ListElasticsearchInstanceTypesResponse where show = genericShow
instance decodeListElasticsearchInstanceTypesResponse :: Decode ListElasticsearchInstanceTypesResponse where decode = genericDecode options
instance encodeListElasticsearchInstanceTypesResponse :: Encode ListElasticsearchInstanceTypesResponse where encode = genericEncode options

-- | Constructs ListElasticsearchInstanceTypesResponse from required parameters
newListElasticsearchInstanceTypesResponse :: ListElasticsearchInstanceTypesResponse
newListElasticsearchInstanceTypesResponse  = ListElasticsearchInstanceTypesResponse { "ElasticsearchInstanceTypes": Nothing, "NextToken": Nothing }

-- | Constructs ListElasticsearchInstanceTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListElasticsearchInstanceTypesResponse' :: ( { "ElasticsearchInstanceTypes" :: Maybe (ElasticsearchInstanceTypeList) , "NextToken" :: Maybe (NextToken) } -> {"ElasticsearchInstanceTypes" :: Maybe (ElasticsearchInstanceTypeList) , "NextToken" :: Maybe (NextToken) } ) -> ListElasticsearchInstanceTypesResponse
newListElasticsearchInstanceTypesResponse'  customize = (ListElasticsearchInstanceTypesResponse <<< customize) { "ElasticsearchInstanceTypes": Nothing, "NextToken": Nothing }



-- | <p> Container for the parameters to the <code> <a>ListElasticsearchVersions</a> </code> operation. <p> Use <code> <a>MaxResults</a> </code> to control the maximum number of results to retrieve in a single call. </p> <p> Use <code> <a>NextToken</a> </code> in response to retrieve more results. If the received response does not contain a NextToken, then there are no more results to retrieve. </p> </p>
newtype ListElasticsearchVersionsRequest = ListElasticsearchVersionsRequest 
  { "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListElasticsearchVersionsRequest :: Newtype ListElasticsearchVersionsRequest _
derive instance repGenericListElasticsearchVersionsRequest :: Generic ListElasticsearchVersionsRequest _
instance showListElasticsearchVersionsRequest :: Show ListElasticsearchVersionsRequest where show = genericShow
instance decodeListElasticsearchVersionsRequest :: Decode ListElasticsearchVersionsRequest where decode = genericDecode options
instance encodeListElasticsearchVersionsRequest :: Encode ListElasticsearchVersionsRequest where encode = genericEncode options

-- | Constructs ListElasticsearchVersionsRequest from required parameters
newListElasticsearchVersionsRequest :: ListElasticsearchVersionsRequest
newListElasticsearchVersionsRequest  = ListElasticsearchVersionsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListElasticsearchVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListElasticsearchVersionsRequest' :: ( { "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> ListElasticsearchVersionsRequest
newListElasticsearchVersionsRequest'  customize = (ListElasticsearchVersionsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



-- | <p> Container for the parameters for response received from <code> <a>ListElasticsearchVersions</a> </code> operation. </p>
newtype ListElasticsearchVersionsResponse = ListElasticsearchVersionsResponse 
  { "ElasticsearchVersions" :: Maybe (ElasticsearchVersionList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListElasticsearchVersionsResponse :: Newtype ListElasticsearchVersionsResponse _
derive instance repGenericListElasticsearchVersionsResponse :: Generic ListElasticsearchVersionsResponse _
instance showListElasticsearchVersionsResponse :: Show ListElasticsearchVersionsResponse where show = genericShow
instance decodeListElasticsearchVersionsResponse :: Decode ListElasticsearchVersionsResponse where decode = genericDecode options
instance encodeListElasticsearchVersionsResponse :: Encode ListElasticsearchVersionsResponse where encode = genericEncode options

-- | Constructs ListElasticsearchVersionsResponse from required parameters
newListElasticsearchVersionsResponse :: ListElasticsearchVersionsResponse
newListElasticsearchVersionsResponse  = ListElasticsearchVersionsResponse { "ElasticsearchVersions": Nothing, "NextToken": Nothing }

-- | Constructs ListElasticsearchVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListElasticsearchVersionsResponse' :: ( { "ElasticsearchVersions" :: Maybe (ElasticsearchVersionList) , "NextToken" :: Maybe (NextToken) } -> {"ElasticsearchVersions" :: Maybe (ElasticsearchVersionList) , "NextToken" :: Maybe (NextToken) } ) -> ListElasticsearchVersionsResponse
newListElasticsearchVersionsResponse'  customize = (ListElasticsearchVersionsResponse <<< customize) { "ElasticsearchVersions": Nothing, "NextToken": Nothing }



-- | <p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>
newtype ListTagsRequest = ListTagsRequest 
  { "ARN" :: (ARN)
  }
derive instance newtypeListTagsRequest :: Newtype ListTagsRequest _
derive instance repGenericListTagsRequest :: Generic ListTagsRequest _
instance showListTagsRequest :: Show ListTagsRequest where show = genericShow
instance decodeListTagsRequest :: Decode ListTagsRequest where decode = genericDecode options
instance encodeListTagsRequest :: Encode ListTagsRequest where encode = genericEncode options

-- | Constructs ListTagsRequest from required parameters
newListTagsRequest :: ARN -> ListTagsRequest
newListTagsRequest _ARN = ListTagsRequest { "ARN": _ARN }

-- | Constructs ListTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsRequest' :: ARN -> ( { "ARN" :: (ARN) } -> {"ARN" :: (ARN) } ) -> ListTagsRequest
newListTagsRequest' _ARN customize = (ListTagsRequest <<< customize) { "ARN": _ARN }



-- | <p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>
newtype ListTagsResponse = ListTagsResponse 
  { "TagList" :: Maybe (TagList)
  }
derive instance newtypeListTagsResponse :: Newtype ListTagsResponse _
derive instance repGenericListTagsResponse :: Generic ListTagsResponse _
instance showListTagsResponse :: Show ListTagsResponse where show = genericShow
instance decodeListTagsResponse :: Decode ListTagsResponse where decode = genericDecode options
instance encodeListTagsResponse :: Encode ListTagsResponse where encode = genericEncode options

-- | Constructs ListTagsResponse from required parameters
newListTagsResponse :: ListTagsResponse
newListTagsResponse  = ListTagsResponse { "TagList": Nothing }

-- | Constructs ListTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsResponse' :: ( { "TagList" :: Maybe (TagList) } -> {"TagList" :: Maybe (TagList) } ) -> ListTagsResponse
newListTagsResponse'  customize = (ListTagsResponse <<< customize) { "TagList": Nothing }



-- | <p>Log Publishing option that is set for given domain. <br/>Attributes and their details: <ul> <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to which log needs to be published.</li> <li>Enabled: Whether the log publishing for given log type is enabled or not</li> </ul> </p>
newtype LogPublishingOption = LogPublishingOption 
  { "CloudWatchLogsLogGroupArn" :: Maybe (CloudWatchLogsLogGroupArn)
  , "Enabled" :: Maybe (Boolean)
  }
derive instance newtypeLogPublishingOption :: Newtype LogPublishingOption _
derive instance repGenericLogPublishingOption :: Generic LogPublishingOption _
instance showLogPublishingOption :: Show LogPublishingOption where show = genericShow
instance decodeLogPublishingOption :: Decode LogPublishingOption where decode = genericDecode options
instance encodeLogPublishingOption :: Encode LogPublishingOption where encode = genericEncode options

-- | Constructs LogPublishingOption from required parameters
newLogPublishingOption :: LogPublishingOption
newLogPublishingOption  = LogPublishingOption { "CloudWatchLogsLogGroupArn": Nothing, "Enabled": Nothing }

-- | Constructs LogPublishingOption's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogPublishingOption' :: ( { "CloudWatchLogsLogGroupArn" :: Maybe (CloudWatchLogsLogGroupArn) , "Enabled" :: Maybe (Boolean) } -> {"CloudWatchLogsLogGroupArn" :: Maybe (CloudWatchLogsLogGroupArn) , "Enabled" :: Maybe (Boolean) } ) -> LogPublishingOption
newLogPublishingOption'  customize = (LogPublishingOption <<< customize) { "CloudWatchLogsLogGroupArn": Nothing, "Enabled": Nothing }



newtype LogPublishingOptions = LogPublishingOptions (StrMap.StrMap LogPublishingOption)
derive instance newtypeLogPublishingOptions :: Newtype LogPublishingOptions _
derive instance repGenericLogPublishingOptions :: Generic LogPublishingOptions _
instance showLogPublishingOptions :: Show LogPublishingOptions where show = genericShow
instance decodeLogPublishingOptions :: Decode LogPublishingOptions where decode = genericDecode options
instance encodeLogPublishingOptions :: Encode LogPublishingOptions where encode = genericEncode options



-- | <p>The configured log publishing options for the domain and their current status.</p>
newtype LogPublishingOptionsStatus = LogPublishingOptionsStatus 
  { "Options" :: Maybe (LogPublishingOptions)
  , "Status" :: Maybe (OptionStatus)
  }
derive instance newtypeLogPublishingOptionsStatus :: Newtype LogPublishingOptionsStatus _
derive instance repGenericLogPublishingOptionsStatus :: Generic LogPublishingOptionsStatus _
instance showLogPublishingOptionsStatus :: Show LogPublishingOptionsStatus where show = genericShow
instance decodeLogPublishingOptionsStatus :: Decode LogPublishingOptionsStatus where decode = genericDecode options
instance encodeLogPublishingOptionsStatus :: Encode LogPublishingOptionsStatus where encode = genericEncode options

-- | Constructs LogPublishingOptionsStatus from required parameters
newLogPublishingOptionsStatus :: LogPublishingOptionsStatus
newLogPublishingOptionsStatus  = LogPublishingOptionsStatus { "Options": Nothing, "Status": Nothing }

-- | Constructs LogPublishingOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLogPublishingOptionsStatus' :: ( { "Options" :: Maybe (LogPublishingOptions) , "Status" :: Maybe (OptionStatus) } -> {"Options" :: Maybe (LogPublishingOptions) , "Status" :: Maybe (OptionStatus) } ) -> LogPublishingOptionsStatus
newLogPublishingOptionsStatus'  customize = (LogPublishingOptionsStatus <<< customize) { "Options": Nothing, "Status": Nothing }



-- | <p>Type of Log File, it can be one of the following: <ul> <li>INDEX_SLOW_LOGS: Index slow logs contains insert requests that took more time than configured index query log threshold to execute.</li> <li>SEARCH_SLOW_LOGS: Search slow logs contains search queries that took more time than configured search query log threshold to execute.</li> </ul> </p>
newtype LogType = LogType String
derive instance newtypeLogType :: Newtype LogType _
derive instance repGenericLogType :: Generic LogType _
instance showLogType :: Show LogType where show = genericShow
instance decodeLogType :: Decode LogType where decode = genericDecode options
instance encodeLogType :: Encode LogType where encode = genericEncode options



-- | <p> Set this value to limit the number of results returned. </p>
newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p> Maximum number of Instances that can be instantiated for given InstanceType. </p>
newtype MaximumInstanceCount = MaximumInstanceCount Int
derive instance newtypeMaximumInstanceCount :: Newtype MaximumInstanceCount _
derive instance repGenericMaximumInstanceCount :: Generic MaximumInstanceCount _
instance showMaximumInstanceCount :: Show MaximumInstanceCount where show = genericShow
instance decodeMaximumInstanceCount :: Decode MaximumInstanceCount where decode = genericDecode options
instance encodeMaximumInstanceCount :: Encode MaximumInstanceCount where encode = genericEncode options



-- | <p> Minimum number of Instances that can be instantiated for given InstanceType. </p>
newtype MinimumInstanceCount = MinimumInstanceCount Int
derive instance newtypeMinimumInstanceCount :: Newtype MinimumInstanceCount _
derive instance repGenericMinimumInstanceCount :: Generic MinimumInstanceCount _
instance showMinimumInstanceCount :: Show MinimumInstanceCount where show = genericShow
instance decodeMinimumInstanceCount :: Decode MinimumInstanceCount where decode = genericDecode options
instance encodeMinimumInstanceCount :: Encode MinimumInstanceCount where encode = genericEncode options



-- | <p> Paginated APIs accepts NextToken input to returns next page results and provides a NextToken output in the response which can be used by the client to retrieve more results. </p>
newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>The state of a requested change. One of the following:</p> <ul> <li>Processing: The request change is still in-process.</li> <li>Active: The request change is processed and deployed to the Elasticsearch domain.</li> </ul>
newtype OptionState = OptionState String
derive instance newtypeOptionState :: Newtype OptionState _
derive instance repGenericOptionState :: Generic OptionState _
instance showOptionState :: Show OptionState where show = genericShow
instance decodeOptionState :: Decode OptionState where decode = genericDecode options
instance encodeOptionState :: Encode OptionState where encode = genericEncode options



-- | <p>Provides the current status of the entity.</p>
newtype OptionStatus = OptionStatus 
  { "CreationDate" :: (UpdateTimestamp)
  , "UpdateDate" :: (UpdateTimestamp)
  , "UpdateVersion" :: Maybe (UIntValue)
  , "State" :: (OptionState)
  , "PendingDeletion" :: Maybe (Boolean)
  }
derive instance newtypeOptionStatus :: Newtype OptionStatus _
derive instance repGenericOptionStatus :: Generic OptionStatus _
instance showOptionStatus :: Show OptionStatus where show = genericShow
instance decodeOptionStatus :: Decode OptionStatus where decode = genericDecode options
instance encodeOptionStatus :: Encode OptionStatus where encode = genericEncode options

-- | Constructs OptionStatus from required parameters
newOptionStatus :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> OptionStatus
newOptionStatus _CreationDate _State _UpdateDate = OptionStatus { "CreationDate": _CreationDate, "State": _State, "UpdateDate": _UpdateDate, "PendingDeletion": Nothing, "UpdateVersion": Nothing }

-- | Constructs OptionStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOptionStatus' :: UpdateTimestamp -> OptionState -> UpdateTimestamp -> ( { "CreationDate" :: (UpdateTimestamp) , "UpdateDate" :: (UpdateTimestamp) , "UpdateVersion" :: Maybe (UIntValue) , "State" :: (OptionState) , "PendingDeletion" :: Maybe (Boolean) } -> {"CreationDate" :: (UpdateTimestamp) , "UpdateDate" :: (UpdateTimestamp) , "UpdateVersion" :: Maybe (UIntValue) , "State" :: (OptionState) , "PendingDeletion" :: Maybe (Boolean) } ) -> OptionStatus
newOptionStatus' _CreationDate _State _UpdateDate customize = (OptionStatus <<< customize) { "CreationDate": _CreationDate, "State": _State, "UpdateDate": _UpdateDate, "PendingDeletion": Nothing, "UpdateVersion": Nothing }



-- | <p>Access policy rules for an Elasticsearch domain service endpoints. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies" target="_blank">Configuring Access Policies</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>
newtype PolicyDocument = PolicyDocument String
derive instance newtypePolicyDocument :: Newtype PolicyDocument _
derive instance repGenericPolicyDocument :: Generic PolicyDocument _
instance showPolicyDocument :: Show PolicyDocument where show = genericShow
instance decodePolicyDocument :: Decode PolicyDocument where decode = genericDecode options
instance encodePolicyDocument :: Encode PolicyDocument where encode = genericEncode options



-- | <p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>
newtype RemoveTagsRequest = RemoveTagsRequest 
  { "ARN" :: (ARN)
  , "TagKeys" :: (StringList)
  }
derive instance newtypeRemoveTagsRequest :: Newtype RemoveTagsRequest _
derive instance repGenericRemoveTagsRequest :: Generic RemoveTagsRequest _
instance showRemoveTagsRequest :: Show RemoveTagsRequest where show = genericShow
instance decodeRemoveTagsRequest :: Decode RemoveTagsRequest where decode = genericDecode options
instance encodeRemoveTagsRequest :: Encode RemoveTagsRequest where encode = genericEncode options

-- | Constructs RemoveTagsRequest from required parameters
newRemoveTagsRequest :: ARN -> StringList -> RemoveTagsRequest
newRemoveTagsRequest _ARN _TagKeys = RemoveTagsRequest { "ARN": _ARN, "TagKeys": _TagKeys }

-- | Constructs RemoveTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsRequest' :: ARN -> StringList -> ( { "ARN" :: (ARN) , "TagKeys" :: (StringList) } -> {"ARN" :: (ARN) , "TagKeys" :: (StringList) } ) -> RemoveTagsRequest
newRemoveTagsRequest' _ARN _TagKeys customize = (RemoveTagsRequest <<< customize) { "ARN": _ARN, "TagKeys": _TagKeys }



-- | <p>An exception for creating a resource that already exists. Gives http status code of 400.</p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException Types.NoArguments
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options



-- | <p>An exception for accessing or deleting a resource that does not exist. Gives http status code of 400.</p>
newtype ResourceNotFoundException = ResourceNotFoundException Types.NoArguments
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options



-- | <p>The endpoint to which service requests are submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code>.</p>
newtype ServiceUrl = ServiceUrl String
derive instance newtypeServiceUrl :: Newtype ServiceUrl _
derive instance repGenericServiceUrl :: Generic ServiceUrl _
instance showServiceUrl :: Show ServiceUrl where show = genericShow
instance decodeServiceUrl :: Decode ServiceUrl where decode = genericDecode options
instance encodeServiceUrl :: Encode ServiceUrl where encode = genericEncode options



-- | <p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>
newtype SnapshotOptions = SnapshotOptions 
  { "AutomatedSnapshotStartHour" :: Maybe (IntegerClass)
  }
derive instance newtypeSnapshotOptions :: Newtype SnapshotOptions _
derive instance repGenericSnapshotOptions :: Generic SnapshotOptions _
instance showSnapshotOptions :: Show SnapshotOptions where show = genericShow
instance decodeSnapshotOptions :: Decode SnapshotOptions where decode = genericDecode options
instance encodeSnapshotOptions :: Encode SnapshotOptions where encode = genericEncode options

-- | Constructs SnapshotOptions from required parameters
newSnapshotOptions :: SnapshotOptions
newSnapshotOptions  = SnapshotOptions { "AutomatedSnapshotStartHour": Nothing }

-- | Constructs SnapshotOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSnapshotOptions' :: ( { "AutomatedSnapshotStartHour" :: Maybe (IntegerClass) } -> {"AutomatedSnapshotStartHour" :: Maybe (IntegerClass) } ) -> SnapshotOptions
newSnapshotOptions'  customize = (SnapshotOptions <<< customize) { "AutomatedSnapshotStartHour": Nothing }



-- | <p>Status of a daily automated snapshot.</p>
newtype SnapshotOptionsStatus = SnapshotOptionsStatus 
  { "Options" :: (SnapshotOptions)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeSnapshotOptionsStatus :: Newtype SnapshotOptionsStatus _
derive instance repGenericSnapshotOptionsStatus :: Generic SnapshotOptionsStatus _
instance showSnapshotOptionsStatus :: Show SnapshotOptionsStatus where show = genericShow
instance decodeSnapshotOptionsStatus :: Decode SnapshotOptionsStatus where decode = genericDecode options
instance encodeSnapshotOptionsStatus :: Encode SnapshotOptionsStatus where encode = genericEncode options

-- | Constructs SnapshotOptionsStatus from required parameters
newSnapshotOptionsStatus :: SnapshotOptions -> OptionStatus -> SnapshotOptionsStatus
newSnapshotOptionsStatus _Options _Status = SnapshotOptionsStatus { "Options": _Options, "Status": _Status }

-- | Constructs SnapshotOptionsStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSnapshotOptionsStatus' :: SnapshotOptions -> OptionStatus -> ( { "Options" :: (SnapshotOptions) , "Status" :: (OptionStatus) } -> {"Options" :: (SnapshotOptions) , "Status" :: (OptionStatus) } ) -> SnapshotOptionsStatus
newSnapshotOptionsStatus' _Options _Status customize = (SnapshotOptionsStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p> SubType of the given storage type. List of available sub-storage options: For "instance" storageType we wont have any storageSubType, in case of "ebs" storageType we will have following valid storageSubTypes <ol> <li>standard</li> <li>gp2</li> <li>io1</li> </ol> Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options. </p>
newtype StorageSubTypeName = StorageSubTypeName String
derive instance newtypeStorageSubTypeName :: Newtype StorageSubTypeName _
derive instance repGenericStorageSubTypeName :: Generic StorageSubTypeName _
instance showStorageSubTypeName :: Show StorageSubTypeName where show = genericShow
instance decodeStorageSubTypeName :: Decode StorageSubTypeName where decode = genericDecode options
instance encodeStorageSubTypeName :: Encode StorageSubTypeName where encode = genericEncode options



-- | <p>StorageTypes represents the list of storage related types and their attributes that are available for given InstanceType. </p>
newtype StorageType = StorageType 
  { "StorageTypeName" :: Maybe (StorageTypeName)
  , "StorageSubTypeName" :: Maybe (StorageSubTypeName)
  , "StorageTypeLimits" :: Maybe (StorageTypeLimitList)
  }
derive instance newtypeStorageType :: Newtype StorageType _
derive instance repGenericStorageType :: Generic StorageType _
instance showStorageType :: Show StorageType where show = genericShow
instance decodeStorageType :: Decode StorageType where decode = genericDecode options
instance encodeStorageType :: Encode StorageType where encode = genericEncode options

-- | Constructs StorageType from required parameters
newStorageType :: StorageType
newStorageType  = StorageType { "StorageSubTypeName": Nothing, "StorageTypeLimits": Nothing, "StorageTypeName": Nothing }

-- | Constructs StorageType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStorageType' :: ( { "StorageTypeName" :: Maybe (StorageTypeName) , "StorageSubTypeName" :: Maybe (StorageSubTypeName) , "StorageTypeLimits" :: Maybe (StorageTypeLimitList) } -> {"StorageTypeName" :: Maybe (StorageTypeName) , "StorageSubTypeName" :: Maybe (StorageSubTypeName) , "StorageTypeLimits" :: Maybe (StorageTypeLimitList) } ) -> StorageType
newStorageType'  customize = (StorageType <<< customize) { "StorageSubTypeName": Nothing, "StorageTypeLimits": Nothing, "StorageTypeName": Nothing }



-- | <p>Limits that are applicable for given storage type. </p>
newtype StorageTypeLimit = StorageTypeLimit 
  { "LimitName" :: Maybe (LimitName)
  , "LimitValues" :: Maybe (LimitValueList)
  }
derive instance newtypeStorageTypeLimit :: Newtype StorageTypeLimit _
derive instance repGenericStorageTypeLimit :: Generic StorageTypeLimit _
instance showStorageTypeLimit :: Show StorageTypeLimit where show = genericShow
instance decodeStorageTypeLimit :: Decode StorageTypeLimit where decode = genericDecode options
instance encodeStorageTypeLimit :: Encode StorageTypeLimit where encode = genericEncode options

-- | Constructs StorageTypeLimit from required parameters
newStorageTypeLimit :: StorageTypeLimit
newStorageTypeLimit  = StorageTypeLimit { "LimitName": Nothing, "LimitValues": Nothing }

-- | Constructs StorageTypeLimit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStorageTypeLimit' :: ( { "LimitName" :: Maybe (LimitName) , "LimitValues" :: Maybe (LimitValueList) } -> {"LimitName" :: Maybe (LimitName) , "LimitValues" :: Maybe (LimitValueList) } ) -> StorageTypeLimit
newStorageTypeLimit'  customize = (StorageTypeLimit <<< customize) { "LimitName": Nothing, "LimitValues": Nothing }



newtype StorageTypeLimitList = StorageTypeLimitList (Array StorageTypeLimit)
derive instance newtypeStorageTypeLimitList :: Newtype StorageTypeLimitList _
derive instance repGenericStorageTypeLimitList :: Generic StorageTypeLimitList _
instance showStorageTypeLimitList :: Show StorageTypeLimitList where show = genericShow
instance decodeStorageTypeLimitList :: Decode StorageTypeLimitList where decode = genericDecode options
instance encodeStorageTypeLimitList :: Encode StorageTypeLimitList where encode = genericEncode options



newtype StorageTypeList = StorageTypeList (Array StorageType)
derive instance newtypeStorageTypeList :: Newtype StorageTypeList _
derive instance repGenericStorageTypeList :: Generic StorageTypeList _
instance showStorageTypeList :: Show StorageTypeList where show = genericShow
instance decodeStorageTypeList :: Decode StorageTypeList where decode = genericDecode options
instance encodeStorageTypeList :: Encode StorageTypeList where encode = genericEncode options



-- | <p> Type of the storage. List of available storage options: <ol> <li>instance</li> Inbuilt storage available for the given Instance <li>ebs</li> Elastic block storage that would be attached to the given Instance </ol> </p>
newtype StorageTypeName = StorageTypeName String
derive instance newtypeStorageTypeName :: Newtype StorageTypeName _
derive instance repGenericStorageTypeName :: Generic StorageTypeName _
instance showStorageTypeName :: Show StorageTypeName where show = genericShow
instance decodeStorageTypeName :: Decode StorageTypeName where decode = genericDecode options
instance encodeStorageTypeName :: Encode StorageTypeName where encode = genericEncode options



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



-- | <p>Specifies a key value pair for a resource tag.</p>
newtype Tag = Tag 
  { "Key" :: (TagKey)
  , "Value" :: (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> TagValue -> Tag
newTag _Key _Value = Tag { "Key": _Key, "Value": _Value }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> TagValue -> ( { "Key" :: (TagKey) , "Value" :: (TagValue) } -> {"Key" :: (TagKey) , "Value" :: (TagValue) } ) -> Tag
newTag' _Key _Value customize = (Tag <<< customize) { "Key": _Key, "Value": _Value }



-- | <p>A string of length from 1 to 128 characters that specifies the key for a Tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>
newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



-- | <p>A list of <code>Tag</code> </p>
newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



-- | <p>A string of length from 0 to 256 characters that specifies the value for a Tag. Tag values can be null and do not have to be unique in a tag set.</p>
newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype UIntValue = UIntValue Int
derive instance newtypeUIntValue :: Newtype UIntValue _
derive instance repGenericUIntValue :: Generic UIntValue _
instance showUIntValue :: Show UIntValue where show = genericShow
instance decodeUIntValue :: Decode UIntValue where decode = genericDecode options
instance encodeUIntValue :: Encode UIntValue where encode = genericEncode options



-- | <p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>
newtype UpdateElasticsearchDomainConfigRequest = UpdateElasticsearchDomainConfigRequest 
  { "DomainName" :: (DomainName)
  , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfig)
  , "EBSOptions" :: Maybe (EBSOptions)
  , "SnapshotOptions" :: Maybe (SnapshotOptions)
  , "VPCOptions" :: Maybe (VPCOptions)
  , "AdvancedOptions" :: Maybe (AdvancedOptions)
  , "AccessPolicies" :: Maybe (PolicyDocument)
  , "LogPublishingOptions" :: Maybe (LogPublishingOptions)
  }
derive instance newtypeUpdateElasticsearchDomainConfigRequest :: Newtype UpdateElasticsearchDomainConfigRequest _
derive instance repGenericUpdateElasticsearchDomainConfigRequest :: Generic UpdateElasticsearchDomainConfigRequest _
instance showUpdateElasticsearchDomainConfigRequest :: Show UpdateElasticsearchDomainConfigRequest where show = genericShow
instance decodeUpdateElasticsearchDomainConfigRequest :: Decode UpdateElasticsearchDomainConfigRequest where decode = genericDecode options
instance encodeUpdateElasticsearchDomainConfigRequest :: Encode UpdateElasticsearchDomainConfigRequest where encode = genericEncode options

-- | Constructs UpdateElasticsearchDomainConfigRequest from required parameters
newUpdateElasticsearchDomainConfigRequest :: DomainName -> UpdateElasticsearchDomainConfigRequest
newUpdateElasticsearchDomainConfigRequest _DomainName = UpdateElasticsearchDomainConfigRequest { "DomainName": _DomainName, "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "EBSOptions": Nothing, "ElasticsearchClusterConfig": Nothing, "LogPublishingOptions": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }

-- | Constructs UpdateElasticsearchDomainConfigRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateElasticsearchDomainConfigRequest' :: DomainName -> ( { "DomainName" :: (DomainName) , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfig) , "EBSOptions" :: Maybe (EBSOptions) , "SnapshotOptions" :: Maybe (SnapshotOptions) , "VPCOptions" :: Maybe (VPCOptions) , "AdvancedOptions" :: Maybe (AdvancedOptions) , "AccessPolicies" :: Maybe (PolicyDocument) , "LogPublishingOptions" :: Maybe (LogPublishingOptions) } -> {"DomainName" :: (DomainName) , "ElasticsearchClusterConfig" :: Maybe (ElasticsearchClusterConfig) , "EBSOptions" :: Maybe (EBSOptions) , "SnapshotOptions" :: Maybe (SnapshotOptions) , "VPCOptions" :: Maybe (VPCOptions) , "AdvancedOptions" :: Maybe (AdvancedOptions) , "AccessPolicies" :: Maybe (PolicyDocument) , "LogPublishingOptions" :: Maybe (LogPublishingOptions) } ) -> UpdateElasticsearchDomainConfigRequest
newUpdateElasticsearchDomainConfigRequest' _DomainName customize = (UpdateElasticsearchDomainConfigRequest <<< customize) { "DomainName": _DomainName, "AccessPolicies": Nothing, "AdvancedOptions": Nothing, "EBSOptions": Nothing, "ElasticsearchClusterConfig": Nothing, "LogPublishingOptions": Nothing, "SnapshotOptions": Nothing, "VPCOptions": Nothing }



-- | <p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>
newtype UpdateElasticsearchDomainConfigResponse = UpdateElasticsearchDomainConfigResponse 
  { "DomainConfig" :: (ElasticsearchDomainConfig)
  }
derive instance newtypeUpdateElasticsearchDomainConfigResponse :: Newtype UpdateElasticsearchDomainConfigResponse _
derive instance repGenericUpdateElasticsearchDomainConfigResponse :: Generic UpdateElasticsearchDomainConfigResponse _
instance showUpdateElasticsearchDomainConfigResponse :: Show UpdateElasticsearchDomainConfigResponse where show = genericShow
instance decodeUpdateElasticsearchDomainConfigResponse :: Decode UpdateElasticsearchDomainConfigResponse where decode = genericDecode options
instance encodeUpdateElasticsearchDomainConfigResponse :: Encode UpdateElasticsearchDomainConfigResponse where encode = genericEncode options

-- | Constructs UpdateElasticsearchDomainConfigResponse from required parameters
newUpdateElasticsearchDomainConfigResponse :: ElasticsearchDomainConfig -> UpdateElasticsearchDomainConfigResponse
newUpdateElasticsearchDomainConfigResponse _DomainConfig = UpdateElasticsearchDomainConfigResponse { "DomainConfig": _DomainConfig }

-- | Constructs UpdateElasticsearchDomainConfigResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateElasticsearchDomainConfigResponse' :: ElasticsearchDomainConfig -> ( { "DomainConfig" :: (ElasticsearchDomainConfig) } -> {"DomainConfig" :: (ElasticsearchDomainConfig) } ) -> UpdateElasticsearchDomainConfigResponse
newUpdateElasticsearchDomainConfigResponse' _DomainConfig customize = (UpdateElasticsearchDomainConfigResponse <<< customize) { "DomainConfig": _DomainConfig }



newtype UpdateTimestamp = UpdateTimestamp Types.Timestamp
derive instance newtypeUpdateTimestamp :: Newtype UpdateTimestamp _
derive instance repGenericUpdateTimestamp :: Generic UpdateTimestamp _
instance showUpdateTimestamp :: Show UpdateTimestamp where show = genericShow
instance decodeUpdateTimestamp :: Decode UpdateTimestamp where decode = genericDecode options
instance encodeUpdateTimestamp :: Encode UpdateTimestamp where encode = genericEncode options



-- | <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
newtype VPCDerivedInfo = VPCDerivedInfo 
  { "VPCId" :: Maybe (String)
  , "SubnetIds" :: Maybe (StringList)
  , "AvailabilityZones" :: Maybe (StringList)
  , "SecurityGroupIds" :: Maybe (StringList)
  }
derive instance newtypeVPCDerivedInfo :: Newtype VPCDerivedInfo _
derive instance repGenericVPCDerivedInfo :: Generic VPCDerivedInfo _
instance showVPCDerivedInfo :: Show VPCDerivedInfo where show = genericShow
instance decodeVPCDerivedInfo :: Decode VPCDerivedInfo where decode = genericDecode options
instance encodeVPCDerivedInfo :: Encode VPCDerivedInfo where encode = genericEncode options

-- | Constructs VPCDerivedInfo from required parameters
newVPCDerivedInfo :: VPCDerivedInfo
newVPCDerivedInfo  = VPCDerivedInfo { "AvailabilityZones": Nothing, "SecurityGroupIds": Nothing, "SubnetIds": Nothing, "VPCId": Nothing }

-- | Constructs VPCDerivedInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVPCDerivedInfo' :: ( { "VPCId" :: Maybe (String) , "SubnetIds" :: Maybe (StringList) , "AvailabilityZones" :: Maybe (StringList) , "SecurityGroupIds" :: Maybe (StringList) } -> {"VPCId" :: Maybe (String) , "SubnetIds" :: Maybe (StringList) , "AvailabilityZones" :: Maybe (StringList) , "SecurityGroupIds" :: Maybe (StringList) } ) -> VPCDerivedInfo
newVPCDerivedInfo'  customize = (VPCDerivedInfo <<< customize) { "AvailabilityZones": Nothing, "SecurityGroupIds": Nothing, "SubnetIds": Nothing, "VPCId": Nothing }



-- | <p> Status of the VPC options for the specified Elasticsearch domain.</p>
newtype VPCDerivedInfoStatus = VPCDerivedInfoStatus 
  { "Options" :: (VPCDerivedInfo)
  , "Status" :: (OptionStatus)
  }
derive instance newtypeVPCDerivedInfoStatus :: Newtype VPCDerivedInfoStatus _
derive instance repGenericVPCDerivedInfoStatus :: Generic VPCDerivedInfoStatus _
instance showVPCDerivedInfoStatus :: Show VPCDerivedInfoStatus where show = genericShow
instance decodeVPCDerivedInfoStatus :: Decode VPCDerivedInfoStatus where decode = genericDecode options
instance encodeVPCDerivedInfoStatus :: Encode VPCDerivedInfoStatus where encode = genericEncode options

-- | Constructs VPCDerivedInfoStatus from required parameters
newVPCDerivedInfoStatus :: VPCDerivedInfo -> OptionStatus -> VPCDerivedInfoStatus
newVPCDerivedInfoStatus _Options _Status = VPCDerivedInfoStatus { "Options": _Options, "Status": _Status }

-- | Constructs VPCDerivedInfoStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVPCDerivedInfoStatus' :: VPCDerivedInfo -> OptionStatus -> ( { "Options" :: (VPCDerivedInfo) , "Status" :: (OptionStatus) } -> {"Options" :: (VPCDerivedInfo) , "Status" :: (OptionStatus) } ) -> VPCDerivedInfoStatus
newVPCDerivedInfoStatus' _Options _Status customize = (VPCDerivedInfoStatus <<< customize) { "Options": _Options, "Status": _Status }



-- | <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html" target="_blank"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>
newtype VPCOptions = VPCOptions 
  { "SubnetIds" :: Maybe (StringList)
  , "SecurityGroupIds" :: Maybe (StringList)
  }
derive instance newtypeVPCOptions :: Newtype VPCOptions _
derive instance repGenericVPCOptions :: Generic VPCOptions _
instance showVPCOptions :: Show VPCOptions where show = genericShow
instance decodeVPCOptions :: Decode VPCOptions where decode = genericDecode options
instance encodeVPCOptions :: Encode VPCOptions where encode = genericEncode options

-- | Constructs VPCOptions from required parameters
newVPCOptions :: VPCOptions
newVPCOptions  = VPCOptions { "SecurityGroupIds": Nothing, "SubnetIds": Nothing }

-- | Constructs VPCOptions's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVPCOptions' :: ( { "SubnetIds" :: Maybe (StringList) , "SecurityGroupIds" :: Maybe (StringList) } -> {"SubnetIds" :: Maybe (StringList) , "SecurityGroupIds" :: Maybe (StringList) } ) -> VPCOptions
newVPCOptions'  customize = (VPCOptions <<< customize) { "SecurityGroupIds": Nothing, "SubnetIds": Nothing }



-- | <p>An exception for missing / invalid input fields. Gives http status code of 400.</p>
newtype ValidationException = ValidationException Types.NoArguments
derive instance newtypeValidationException :: Newtype ValidationException _
derive instance repGenericValidationException :: Generic ValidationException _
instance showValidationException :: Show ValidationException where show = genericShow
instance decodeValidationException :: Decode ValidationException where decode = genericDecode options
instance encodeValidationException :: Encode ValidationException where encode = genericEncode options



-- | <p> The type of EBS volume, standard, gp2, or io1. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs" target="_blank">Configuring EBS-based Storage</a>for more information.</p>
newtype VolumeType = VolumeType String
derive instance newtypeVolumeType :: Newtype VolumeType _
derive instance repGenericVolumeType :: Generic VolumeType _
instance showVolumeType :: Show VolumeType where show = genericShow
instance decodeVolumeType :: Decode VolumeType where decode = genericDecode options
instance encodeVolumeType :: Encode VolumeType where encode = genericEncode options

