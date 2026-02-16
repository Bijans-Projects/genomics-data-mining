# cbioportal.NamespaceAttributesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_namespace_using_post**](NamespaceAttributesApi.md#fetch_namespace_using_post) | **POST** /api/namespace-attributes/fetch | 

# **fetch_namespace_using_post**
> list[NamespaceAttribute] fetch_namespace_using_post(body)



Fetch namespace attributes

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.NamespaceAttributesApi()
body = ['body_example'] # list[str] | 

try:
    api_response = api_instance.fetch_namespace_using_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling NamespaceAttributesApi->fetch_namespace_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 

### Return type

[**list[NamespaceAttribute]**](NamespaceAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

