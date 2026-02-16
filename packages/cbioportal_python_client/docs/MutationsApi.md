# cbioportal.MutationsApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_mutations_in_molecular_profile_using_post**](MutationsApi.md#fetch_mutations_in_molecular_profile_using_post) | **POST** /api/molecular-profiles/{molecularProfileId}/mutations/fetch | 
[**fetch_mutations_in_multiple_molecular_profiles_using_post**](MutationsApi.md#fetch_mutations_in_multiple_molecular_profiles_using_post) | **POST** /api/mutations/fetch | 
[**get_mutations_in_molecular_profile_by_sample_list_id_using_get**](MutationsApi.md#get_mutations_in_molecular_profile_by_sample_list_id_using_get) | **GET** /api/molecular-profiles/{molecularProfileId}/mutations | 

# **fetch_mutations_in_molecular_profile_using_post**
> list[Mutation] fetch_mutations_in_molecular_profile_using_post(body, molecular_profile_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Fetch mutations in a molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MutationsApi()
body = cbioportal.MutationFilter() # MutationFilter | 
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_mutations
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.fetch_mutations_in_molecular_profile_using_post(body, molecular_profile_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MutationsApi->fetch_mutations_in_molecular_profile_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MutationFilter**](MutationFilter.md)|  | 
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_mutations | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Mutation]**](Mutation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetch_mutations_in_multiple_molecular_profiles_using_post**
> list[Mutation] fetch_mutations_in_multiple_molecular_profiles_using_post(body=body, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Fetch mutations in multiple molecular profiles by sample IDs

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MutationsApi()
body = cbioportal.MutationMultipleStudyFilter() # MutationMultipleStudyFilter |  (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.fetch_mutations_in_multiple_molecular_profiles_using_post(body=body, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MutationsApi->fetch_mutations_in_multiple_molecular_profiles_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MutationMultipleStudyFilter**](MutationMultipleStudyFilter.md)|  | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Mutation]**](Mutation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_mutations_in_molecular_profile_by_sample_list_id_using_get**
> list[Mutation] get_mutations_in_molecular_profile_by_sample_list_id_using_get(molecular_profile_id, sample_list_id, entrez_gene_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get mutations in a molecular profile by Sample List ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MutationsApi()
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_mutations
sample_list_id = 'sample_list_id_example' # str | Sample List ID e.g. acc_tcga_all
entrez_gene_id = 56 # int | Entrez Gene ID
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_mutations_in_molecular_profile_by_sample_list_id_using_get(molecular_profile_id, sample_list_id, entrez_gene_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MutationsApi->get_mutations_in_molecular_profile_by_sample_list_id_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_mutations | 
 **sample_list_id** | **str**| Sample List ID e.g. acc_tcga_all | 
 **entrez_gene_id** | **int**| Entrez Gene ID | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Mutation]**](Mutation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

