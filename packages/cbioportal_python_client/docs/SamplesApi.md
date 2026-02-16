# cbioportal.SamplesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_samples_using_post**](SamplesApi.md#fetch_samples_using_post) | **POST** /api/samples/fetch | 
[**get_all_samples_in_study_using_get**](SamplesApi.md#get_all_samples_in_study_using_get) | **GET** /api/studies/{studyId}/samples | 
[**get_all_samples_of_patient_in_study_using_get**](SamplesApi.md#get_all_samples_of_patient_in_study_using_get) | **GET** /api/studies/{studyId}/patients/{patientId}/samples | 
[**get_sample_in_study_using_get**](SamplesApi.md#get_sample_in_study_using_get) | **GET** /api/studies/{studyId}/samples/{sampleId} | 
[**get_samples_by_keyword_using_get**](SamplesApi.md#get_samples_by_keyword_using_get) | **GET** /api/samples | 

# **fetch_samples_using_post**
> list[Sample] fetch_samples_using_post(body=body, projection=projection)



Fetch samples by ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SamplesApi()
body = cbioportal.SampleFilter() # SampleFilter |  (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_samples_using_post(body=body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SamplesApi->fetch_samples_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SampleFilter**](SampleFilter.md)|  | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[Sample]**](Sample.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_samples_in_study_using_get**
> list[Sample] get_all_samples_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all samples in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SamplesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_samples_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SamplesApi->get_all_samples_in_study_using_get: %s\n" % e)
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

[**list[Sample]**](Sample.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_samples_of_patient_in_study_using_get**
> list[Sample] get_all_samples_of_patient_in_study_using_get(study_id, patient_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all samples of a patient in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SamplesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
patient_id = 'patient_id_example' # str | Patient ID e.g. TCGA-OR-A5J2
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_samples_of_patient_in_study_using_get(study_id, patient_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SamplesApi->get_all_samples_of_patient_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **patient_id** | **str**| Patient ID e.g. TCGA-OR-A5J2 | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Sample]**](Sample.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_sample_in_study_using_get**
> Sample get_sample_in_study_using_get(study_id, sample_id)



Get a sample in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SamplesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
sample_id = 'sample_id_example' # str | Sample ID e.g. TCGA-OR-A5J2-01

try:
    api_response = api_instance.get_sample_in_study_using_get(study_id, sample_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SamplesApi->get_sample_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **sample_id** | **str**| Sample ID e.g. TCGA-OR-A5J2-01 | 

### Return type

[**Sample**](Sample.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_samples_by_keyword_using_get**
> list[Sample] get_samples_by_keyword_using_get(keyword=keyword, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all samples matching keyword

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.SamplesApi()
keyword = 'keyword_example' # str | Search keyword that applies to the study ID (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_samples_by_keyword_using_get(keyword=keyword, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SamplesApi->get_samples_by_keyword_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **str**| Search keyword that applies to the study ID | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Sample]**](Sample.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

