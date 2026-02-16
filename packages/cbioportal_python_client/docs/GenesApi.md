# cbioportal.GenesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_genes_using_post**](GenesApi.md#fetch_genes_using_post) | **POST** /api/genes/fetch | 
[**get_aliases_of_gene_using_get**](GenesApi.md#get_aliases_of_gene_using_get) | **GET** /api/genes/{geneId}/aliases | 
[**get_all_genes_using_get**](GenesApi.md#get_all_genes_using_get) | **GET** /api/genes | 
[**get_gene_using_get**](GenesApi.md#get_gene_using_get) | **GET** /api/genes/{geneId} | 

# **fetch_genes_using_post**
> list[Gene] fetch_genes_using_post(body, gene_id_type=gene_id_type, projection=projection)



Fetch genes by ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenesApi()
body = ['body_example'] # list[str] | 
gene_id_type = 'ENTREZ_GENE_ID' # str |  (optional) (default to ENTREZ_GENE_ID)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_genes_using_post(body, gene_id_type=gene_id_type, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenesApi->fetch_genes_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 
 **gene_id_type** | **str**|  | [optional] [default to ENTREZ_GENE_ID]
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[Gene]**](Gene.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_aliases_of_gene_using_get**
> list[str] get_aliases_of_gene_using_get(gene_id)



Get aliases of a gene

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenesApi()
gene_id = 'gene_id_example' # str | Entrez Gene ID or Hugo Gene Symbol e.g. 1 or A1BG

try:
    api_response = api_instance.get_aliases_of_gene_using_get(gene_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenesApi->get_aliases_of_gene_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **str**| Entrez Gene ID or Hugo Gene Symbol e.g. 1 or A1BG | 

### Return type

**list[str]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_genes_using_get**
> list[Gene] get_all_genes_using_get(keyword=keyword, alias=alias, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all genes

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenesApi()
keyword = 'keyword_example' # str | Search keyword that applies to hugo gene symbol of the genes (optional)
alias = 'alias_example' # str | Alias of the gene (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_genes_using_get(keyword=keyword, alias=alias, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenesApi->get_all_genes_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **str**| Search keyword that applies to hugo gene symbol of the genes | [optional] 
 **alias** | **str**| Alias of the gene | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Gene]**](Gene.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_gene_using_get**
> Gene get_gene_using_get(gene_id)



Get a gene

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenesApi()
gene_id = 'gene_id_example' # str | Entrez Gene ID or Hugo Gene Symbol e.g. 1 or A1BG

try:
    api_response = api_instance.get_gene_using_get(gene_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenesApi->get_gene_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_id** | **str**| Entrez Gene ID or Hugo Gene Symbol e.g. 1 or A1BG | 

### Return type

[**Gene**](Gene.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

