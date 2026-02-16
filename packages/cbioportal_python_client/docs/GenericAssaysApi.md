# cbioportal.GenericAssaysApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_generic_assay_meta_using_post**](GenericAssaysApi.md#fetch_generic_assay_meta_using_post) | **POST** /api/generic_assay_meta/fetch | 
[**get_generic_assay_meta_ga_using_get**](GenericAssaysApi.md#get_generic_assay_meta_ga_using_get) | **GET** /api/generic-assay-meta/generic-assay/{genericAssayStableId} | 
[**get_generic_assay_meta_using_get**](GenericAssaysApi.md#get_generic_assay_meta_using_get) | **GET** /api/generic-assay-meta/{molecularProfileId} | 

# **fetch_generic_assay_meta_using_post**
> list[GenericAssayMeta] fetch_generic_assay_meta_using_post(body, projection=projection)



Fetch meta data for generic-assay by ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenericAssaysApi()
body = cbioportal.GenericAssayMetaFilter() # GenericAssayMetaFilter | 
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_generic_assay_meta_using_post(body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenericAssaysApi->fetch_generic_assay_meta_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenericAssayMetaFilter**](GenericAssayMetaFilter.md)|  | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenericAssayMeta]**](GenericAssayMeta.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_generic_assay_meta_ga_using_get**
> list[GenericAssayMeta] get_generic_assay_meta_ga_using_get(generic_assay_stable_id, projection=projection)



Fetch meta data for generic-assay by ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenericAssaysApi()
generic_assay_stable_id = 'generic_assay_stable_id_example' # str | Generic Assay stable ID
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.get_generic_assay_meta_ga_using_get(generic_assay_stable_id, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenericAssaysApi->get_generic_assay_meta_ga_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generic_assay_stable_id** | **str**| Generic Assay stable ID | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenericAssayMeta]**](GenericAssayMeta.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_generic_assay_meta_using_get**
> list[GenericAssayMeta] get_generic_assay_meta_using_get(molecular_profile_id, projection=projection)



Fetch meta data for generic-assay by ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenericAssaysApi()
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.get_generic_assay_meta_using_get(molecular_profile_id, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenericAssaysApi->get_generic_assay_meta_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **molecular_profile_id** | **str**| Molecular Profile ID | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenericAssayMeta]**](GenericAssayMeta.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

