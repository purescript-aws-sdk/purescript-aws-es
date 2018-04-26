## Module AWS.ES.Requests

#### `addTags`

``` purescript
addTags :: forall eff. Service -> AddTagsRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank"> Tagging Amazon Elasticsearch Service Domains for more information.</a></p>

#### `createElasticsearchDomain`

``` purescript
createElasticsearchDomain :: forall eff. Service -> CreateElasticsearchDomainRequest -> Aff (exception :: EXCEPTION | eff) CreateElasticsearchDomainResponse
```

<p>Creates a new Elasticsearch domain. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>

#### `deleteElasticsearchDomain`

``` purescript
deleteElasticsearchDomain :: forall eff. Service -> DeleteElasticsearchDomainRequest -> Aff (exception :: EXCEPTION | eff) DeleteElasticsearchDomainResponse
```

<p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>

#### `deleteElasticsearchServiceRole`

``` purescript
deleteElasticsearchServiceRole :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr" target="_blank">Deleting Elasticsearch Service Role</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i>.</p>

#### `describeElasticsearchDomain`

``` purescript
describeElasticsearchDomain :: forall eff. Service -> DescribeElasticsearchDomainRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticsearchDomainResponse
```

<p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>

#### `describeElasticsearchDomainConfig`

``` purescript
describeElasticsearchDomainConfig :: forall eff. Service -> DescribeElasticsearchDomainConfigRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticsearchDomainConfigResponse
```

<p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>

#### `describeElasticsearchDomains`

``` purescript
describeElasticsearchDomains :: forall eff. Service -> DescribeElasticsearchDomainsRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticsearchDomainsResponse
```

<p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>

#### `describeElasticsearchInstanceTypeLimits`

``` purescript
describeElasticsearchInstanceTypeLimits :: forall eff. Service -> DescribeElasticsearchInstanceTypeLimitsRequest -> Aff (exception :: EXCEPTION | eff) DescribeElasticsearchInstanceTypeLimitsResponse
```

<p> Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the <code> <a>DomainName</a> </code> to know what Limits are supported for modifying. </p>

#### `listDomainNames`

``` purescript
listDomainNames :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) ListDomainNamesResponse
```

<p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>

#### `listElasticsearchInstanceTypes`

``` purescript
listElasticsearchInstanceTypes :: forall eff. Service -> ListElasticsearchInstanceTypesRequest -> Aff (exception :: EXCEPTION | eff) ListElasticsearchInstanceTypesResponse
```

<p>List all Elasticsearch instance types that are supported for given ElasticsearchVersion</p>

#### `listElasticsearchVersions`

``` purescript
listElasticsearchVersions :: forall eff. Service -> ListElasticsearchVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListElasticsearchVersionsResponse
```

<p>List all supported Elasticsearch versions</p>

#### `listTags`

``` purescript
listTags :: forall eff. Service -> ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>Returns all tags for the given Elasticsearch domain.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. Service -> RemoveTagsRequest -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Removes the specified set of tags from the specified Elasticsearch domain.</p>

#### `updateElasticsearchDomainConfig`

``` purescript
updateElasticsearchDomainConfig :: forall eff. Service -> UpdateElasticsearchDomainConfigRequest -> Aff (exception :: EXCEPTION | eff) UpdateElasticsearchDomainConfigResponse
```

<p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>


