
module AWS.ES.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ES as ES
import AWS.ES.Types as ESTypes


-- | <p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank"> Tagging Amazon Elasticsearch Service Domains for more information.</a></p>
addTags :: forall eff. ES.Service -> ESTypes.AddTagsRequest -> Aff (exception :: EXCEPTION | eff) Unit
addTags (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addTags"


-- | <p>Creates a new Elasticsearch domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
createElasticsearchDomain :: forall eff. ES.Service -> ESTypes.CreateElasticsearchDomainRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.CreateElasticsearchDomainResponse
createElasticsearchDomain (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createElasticsearchDomain"


-- | <p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>
deleteElasticsearchDomain :: forall eff. ES.Service -> ESTypes.DeleteElasticsearchDomainRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.DeleteElasticsearchDomainResponse
deleteElasticsearchDomain (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteElasticsearchDomain"


-- | <p>Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr" target="_blank">Deleting Elasticsearch Service Role</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i>.</p>
deleteElasticsearchServiceRole :: forall eff. ES.Service ->  Aff (exception :: EXCEPTION | eff) Unit
deleteElasticsearchServiceRole (ES.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "deleteElasticsearchServiceRole"


-- | <p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>
describeElasticsearchDomain :: forall eff. ES.Service -> ESTypes.DescribeElasticsearchDomainRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.DescribeElasticsearchDomainResponse
describeElasticsearchDomain (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticsearchDomain"


-- | <p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>
describeElasticsearchDomainConfig :: forall eff. ES.Service -> ESTypes.DescribeElasticsearchDomainConfigRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.DescribeElasticsearchDomainConfigResponse
describeElasticsearchDomainConfig (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticsearchDomainConfig"


-- | <p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>
describeElasticsearchDomains :: forall eff. ES.Service -> ESTypes.DescribeElasticsearchDomainsRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.DescribeElasticsearchDomainsResponse
describeElasticsearchDomains (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticsearchDomains"


-- | <p> Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the <code> <a>DomainName</a> </code> to know what Limits are supported for modifying. </p>
describeElasticsearchInstanceTypeLimits :: forall eff. ES.Service -> ESTypes.DescribeElasticsearchInstanceTypeLimitsRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.DescribeElasticsearchInstanceTypeLimitsResponse
describeElasticsearchInstanceTypeLimits (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeElasticsearchInstanceTypeLimits"


-- | <p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>
listDomainNames :: forall eff. ES.Service ->  Aff (exception :: EXCEPTION | eff) ESTypes.ListDomainNamesResponse
listDomainNames (ES.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "listDomainNames"


-- | <p>List all Elasticsearch instance types that are supported for given ElasticsearchVersion</p>
listElasticsearchInstanceTypes :: forall eff. ES.Service -> ESTypes.ListElasticsearchInstanceTypesRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.ListElasticsearchInstanceTypesResponse
listElasticsearchInstanceTypes (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listElasticsearchInstanceTypes"


-- | <p>List all supported Elasticsearch versions</p>
listElasticsearchVersions :: forall eff. ES.Service -> ESTypes.ListElasticsearchVersionsRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.ListElasticsearchVersionsResponse
listElasticsearchVersions (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listElasticsearchVersions"


-- | <p>Returns all tags for the given Elasticsearch domain.</p>
listTags :: forall eff. ES.Service -> ESTypes.ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.ListTagsResponse
listTags (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTags"


-- | <p>Removes the specified set of tags from the specified Elasticsearch domain.</p>
removeTags :: forall eff. ES.Service -> ESTypes.RemoveTagsRequest -> Aff (exception :: EXCEPTION | eff) Unit
removeTags (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeTags"


-- | <p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>
updateElasticsearchDomainConfig :: forall eff. ES.Service -> ESTypes.UpdateElasticsearchDomainConfigRequest -> Aff (exception :: EXCEPTION | eff) ESTypes.UpdateElasticsearchDomainConfigResponse
updateElasticsearchDomainConfig (ES.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateElasticsearchDomainConfig"
