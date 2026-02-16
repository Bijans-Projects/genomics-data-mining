# cbioportal.GenericAssayDataApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_generic_assay_data_in_molecular_profile_using_post**](GenericAssayDataApi.md#fetch_generic_assay_data_in_molecular_profile_using_post) | **POST** /api/generic_assay_data/{molecularProfileId}/fetch | 
[**fetch_generic_assay_data_in_multiple_molecular_profiles_using_post**](GenericAssayDataApi.md#fetch_generic_assay_data_in_multiple_molecular_profiles_using_post) | **POST** /api/generic_assay_data/fetch | 
[**get_generic_assay_data_in_molecular_profile_using_get**](GenericAssayDataApi.md#get_generic_assay_data_in_molecular_profile_using_get) | **GET** /api/generic-assay-data/{molecularProfileId}/generic-assay/{genericAssayStableId} | 

# **fetch_generic_assay_data_in_molecular_profile_using_post**
> list[GenericAssayData] fetch_generic_assay_data_in_molecular_profile_using_post(body, molecular_profile_id, projection=projection)



fetch generic_assay_data in a molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenericAssayDataApi()
body = cbioportal.GenericAssayFilter() # GenericAssayFilter | 
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_generic_assay_data_in_molecular_profile_using_post(body, molecular_profile_id, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenericAssayDataApi->fetch_generic_assay_data_in_molecular_profile_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenericAssayFilter**](GenericAssayFilter.md)|  | 
 **molecular_profile_id** | **str**| Molecular Profile ID | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenericAssayData]**](GenericAssayData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetch_generic_assay_data_in_multiple_molecular_profiles_using_post**
> list[GenericAssayData] fetch_generic_assay_data_in_multiple_molecular_profiles_using_post(body=body, projection=projection)



Fetch generic_assay_data

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenericAssayDataApi()
body = cbioportal.GenericAssayDataMultipleStudyFilter() # GenericAssayDataMultipleStudyFilter |  (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_generic_assay_data_in_multiple_molecular_profiles_using_post(body=body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenericAssayDataApi->fetch_generic_assay_data_in_multiple_molecular_profiles_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenericAssayDataMultipleStudyFilter**](GenericAssayDataMultipleStudyFilter.md)|  | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenericAssayData]**](GenericAssayData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_generic_assay_data_in_molecular_profile_using_get**
> list[GenericAssayData] get_generic_assay_data_in_molecular_profile_using_get(molecular_profile_id, generic_assay_stable_id, projection=projection)



Get generic_assay_data in a molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenericAssayDataApi()
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID
generic_assay_stable_id = 'generic_assay_stable_id_example' # str | Generic Assay stable ID
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.get_generic_assay_data_in_molecular_profile_using_get(molecular_profile_id, generic_assay_stable_id, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenericAssayDataApi->get_generic_assay_data_in_molecular_profile_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **molecular_profile_id** | **str**| Molecular Profile ID | 
 **generic_assay_stable_id** | **str**| Generic Assay stable ID | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenericAssayData]**](GenericAssayData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

