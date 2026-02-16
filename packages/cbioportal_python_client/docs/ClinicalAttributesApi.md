# cbioportal.ClinicalAttributesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_clinical_attributes_using_post**](ClinicalAttributesApi.md#fetch_clinical_attributes_using_post) | **POST** /api/clinical-attributes/fetch | 
[**get_all_clinical_attributes_in_study_using_get**](ClinicalAttributesApi.md#get_all_clinical_attributes_in_study_using_get) | **GET** /api/studies/{studyId}/clinical-attributes | 
[**get_all_clinical_attributes_using_get**](ClinicalAttributesApi.md#get_all_clinical_attributes_using_get) | **GET** /api/clinical-attributes | 
[**get_clinical_attribute_in_study_using_get**](ClinicalAttributesApi.md#get_clinical_attribute_in_study_using_get) | **GET** /api/studies/{studyId}/clinical-attributes/{clinicalAttributeId} | 

# **fetch_clinical_attributes_using_post**
> list[ClinicalAttribute] fetch_clinical_attributes_using_post(body, projection=projection)



Fetch clinical attributes

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalAttributesApi()
body = ['body_example'] # list[str] | 
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_clinical_attributes_using_post(body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalAttributesApi->fetch_clinical_attributes_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[ClinicalAttribute]**](ClinicalAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_clinical_attributes_in_study_using_get**
> list[ClinicalAttribute] get_all_clinical_attributes_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all clinical attributes in the specified study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalAttributesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_clinical_attributes_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalAttributesApi->get_all_clinical_attributes_in_study_using_get: %s\n" % e)
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

[**list[ClinicalAttribute]**](ClinicalAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_clinical_attributes_using_get**
> list[ClinicalAttribute] get_all_clinical_attributes_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all clinical attributes

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalAttributesApi()
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_clinical_attributes_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalAttributesApi->get_all_clinical_attributes_using_get: %s\n" % e)
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

[**list[ClinicalAttribute]**](ClinicalAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_clinical_attribute_in_study_using_get**
> ClinicalAttribute get_clinical_attribute_in_study_using_get(study_id, clinical_attribute_id)



Get specified clinical attribute

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalAttributesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
clinical_attribute_id = 'clinical_attribute_id_example' # str | Clinical Attribute ID e.g. CANCER_TYPE

try:
    api_response = api_instance.get_clinical_attribute_in_study_using_get(study_id, clinical_attribute_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalAttributesApi->get_clinical_attribute_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **clinical_attribute_id** | **str**| Clinical Attribute ID e.g. CANCER_TYPE | 

### Return type

[**ClinicalAttribute**](ClinicalAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

