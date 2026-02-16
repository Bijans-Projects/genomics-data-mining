# cbioportal.StudiesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_studies_using_post**](StudiesApi.md#fetch_studies_using_post) | **POST** /api/studies/fetch | 
[**get_all_studies_using_get**](StudiesApi.md#get_all_studies_using_get) | **GET** /api/studies | 
[**get_study_using_get**](StudiesApi.md#get_study_using_get) | **GET** /api/studies/{studyId} | 
[**get_tags_for_multiple_studies_using_post**](StudiesApi.md#get_tags_for_multiple_studies_using_post) | **POST** /api/studies/tags/fetch | 
[**get_tags_using_get**](StudiesApi.md#get_tags_using_get) | **GET** /api/studies/{studyId}/tags | 

# **fetch_studies_using_post**
> list[CancerStudy] fetch_studies_using_post(body, projection=projection)



Fetch studies by IDs

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.StudiesApi()
body = ['body_example'] # list[str] | 
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_studies_using_post(body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->fetch_studies_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[CancerStudy]**](CancerStudy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_studies_using_get**
> list[CancerStudy] get_all_studies_using_get(keyword=keyword, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all studies

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.StudiesApi()
keyword = 'keyword_example' # str | Search keyword that applies to name and cancer type of the studies (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_studies_using_get(keyword=keyword, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_all_studies_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **str**| Search keyword that applies to name and cancer type of the studies | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[CancerStudy]**](CancerStudy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_study_using_get**
> CancerStudy get_study_using_get(study_id)



Get a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.StudiesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga

try:
    api_response = api_instance.get_study_using_get(study_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 

### Return type

[**CancerStudy**](CancerStudy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_for_multiple_studies_using_post**
> list[CancerStudyTags] get_tags_for_multiple_studies_using_post(body)



Get the study tags by IDs

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.StudiesApi()
body = ['body_example'] # list[str] | 

try:
    api_response = api_instance.get_tags_for_multiple_studies_using_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_tags_for_multiple_studies_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 

### Return type

[**list[CancerStudyTags]**](CancerStudyTags.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_using_get**
> object get_tags_using_get(study_id)



Get the tags of a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.StudiesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga

try:
    api_response = api_instance.get_tags_using_get(study_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StudiesApi->get_tags_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

