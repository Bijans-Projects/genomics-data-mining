# cbioportal.CancerTypesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_cancer_types_using_get**](CancerTypesApi.md#get_all_cancer_types_using_get) | **GET** /api/cancer-types | 
[**get_cancer_type_using_get**](CancerTypesApi.md#get_cancer_type_using_get) | **GET** /api/cancer-types/{cancerTypeId} | 

# **get_all_cancer_types_using_get**
> list[TypeOfCancer] get_all_cancer_types_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all cancer types

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.CancerTypesApi()
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_cancer_types_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CancerTypesApi->get_all_cancer_types_using_get: %s\n" % e)
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

[**list[TypeOfCancer]**](TypeOfCancer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cancer_type_using_get**
> str get_cancer_type_using_get(cancer_type_id)



Get a cancer type

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.CancerTypesApi()
cancer_type_id = 'cancer_type_id_example' # str | Cancer Type ID e.g. acc

try:
    api_response = api_instance.get_cancer_type_using_get(cancer_type_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CancerTypesApi->get_cancer_type_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancer_type_id** | **str**| Cancer Type ID e.g. acc | 

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

