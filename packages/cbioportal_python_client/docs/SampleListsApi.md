# cbioportal.SampleListsApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_sample_lists_using_post**](SampleListsApi.md#fetch_sample_lists_using_post) | **POST** /api/sample-lists/fetch | 
[**get_all_sample_ids_in_sample_list_using_get**](SampleListsApi.md#get_all_sample_ids_in_sample_list_using_get) | **GET** /api/sample-lists/{sampleListId}/sample-ids | 
[**get_all_sample_lists_in_study_using_get**](SampleListsApi.md#get_all_sample_lists_in_study_using_get) | **GET** /api/studies/{studyId}/sample-lists | 
[**get_all_sample_lists_using_get**](SampleListsApi.md#get_all_sample_lists_using_get) | **GET** /api/sample-lists | 
[**get_sample_list_using_get**](SampleListsApi.md#get_sample_list_using_get) | **GET** /api/sample-lists/{sampleListId} | 

# **fetch_sample_lists_using_post**
> list[SampleList] fetch_sample_lists_using_post(body, projection=projection)



Fetch sample lists by ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SampleListsApi()
body = ['body_example'] # list[str] | 
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_sample_lists_using_post(body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SampleListsApi->fetch_sample_lists_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[SampleList]**](SampleList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_sample_ids_in_sample_list_using_get**
> list[str] get_all_sample_ids_in_sample_list_using_get(sample_list_id)



Get all sample IDs in a sample list

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SampleListsApi()
sample_list_id = 'sample_list_id_example' # str | Sample List ID e.g. acc_tcga_all

try:
    api_response = api_instance.get_all_sample_ids_in_sample_list_using_get(sample_list_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SampleListsApi->get_all_sample_ids_in_sample_list_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sample_list_id** | **str**| Sample List ID e.g. acc_tcga_all | 

### Return type

**list[str]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_sample_lists_in_study_using_get**
> list[SampleList] get_all_sample_lists_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all sample lists in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SampleListsApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_sample_lists_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SampleListsApi->get_all_sample_lists_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[SampleList]**](SampleList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_sample_lists_using_get**
> list[SampleList] get_all_sample_lists_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all sample lists

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SampleListsApi()
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_sample_lists_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SampleListsApi->get_all_sample_lists_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[SampleList]**](SampleList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sample_list_using_get**
> SampleList get_sample_list_using_get(sample_list_id)



Get sample list

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SampleListsApi()
sample_list_id = 'sample_list_id_example' # str | Sample List ID e.g. acc_tcga_all

try:
    api_response = api_instance.get_sample_list_using_get(sample_list_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SampleListsApi->get_sample_list_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sample_list_id** | **str**| Sample List ID e.g. acc_tcga_all | 

### Return type

[**SampleList**](SampleList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

