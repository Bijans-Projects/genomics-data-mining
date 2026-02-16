# cbioportal.InfoApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_info_using_get**](InfoApi.md#get_info_using_get) | **GET** /api/info | 

# **get_info_using_get**
> Info get_info_using_get()



Get information about the running instance

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.InfoApi()

try:
    api_response = api_instance.get_info_using_get()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling InfoApi->get_info_using_get: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Info**](Info.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

