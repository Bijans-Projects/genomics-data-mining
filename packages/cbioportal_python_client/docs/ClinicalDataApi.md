# cbioportal.ClinicalDataApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_all_clinical_data_in_study_using_post**](ClinicalDataApi.md#fetch_all_clinical_data_in_study_using_post) | **POST** /api/studies/{studyId}/clinical-data/fetch | 
[**fetch_clinical_data_using_post**](ClinicalDataApi.md#fetch_clinical_data_using_post) | **POST** /api/clinical-data/fetch | 
[**get_all_clinical_data_in_study_using_get**](ClinicalDataApi.md#get_all_clinical_data_in_study_using_get) | **GET** /api/studies/{studyId}/clinical-data | 
[**get_all_clinical_data_of_patient_in_study_using_get**](ClinicalDataApi.md#get_all_clinical_data_of_patient_in_study_using_get) | **GET** /api/studies/{studyId}/patients/{patientId}/clinical-data | 
[**get_all_clinical_data_of_sample_in_study_using_get**](ClinicalDataApi.md#get_all_clinical_data_of_sample_in_study_using_get) | **GET** /api/studies/{studyId}/samples/{sampleId}/clinical-data | 

# **fetch_all_clinical_data_in_study_using_post**
> list[ClinicalData] fetch_all_clinical_data_in_study_using_post(body, study_id, clinical_data_type=clinical_data_type, projection=projection)



Fetch clinical data by patient IDs or sample IDs (specific study)

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalDataApi()
body = cbioportal.ClinicalDataSingleStudyFilter() # ClinicalDataSingleStudyFilter | 
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
clinical_data_type = 'SAMPLE' # str | Type of the clinical data (optional) (default to SAMPLE)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_all_clinical_data_in_study_using_post(body, study_id, clinical_data_type=clinical_data_type, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalDataApi->fetch_all_clinical_data_in_study_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ClinicalDataSingleStudyFilter**](ClinicalDataSingleStudyFilter.md)|  | 
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **clinical_data_type** | **str**| Type of the clinical data | [optional] [default to SAMPLE]
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[ClinicalData]**](ClinicalData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetch_clinical_data_using_post**
> list[ClinicalData] fetch_clinical_data_using_post(body=body, clinical_data_type=clinical_data_type, projection=projection)



Fetch clinical data by patient IDs or sample IDs (all studies)

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalDataApi()
body = cbioportal.ClinicalDataMultiStudyFilter() # ClinicalDataMultiStudyFilter |  (optional)
clinical_data_type = 'SAMPLE' # str | Type of the clinical data (optional) (default to SAMPLE)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_clinical_data_using_post(body=body, clinical_data_type=clinical_data_type, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalDataApi->fetch_clinical_data_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ClinicalDataMultiStudyFilter**](ClinicalDataMultiStudyFilter.md)|  | [optional] 
 **clinical_data_type** | **str**| Type of the clinical data | [optional] [default to SAMPLE]
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[ClinicalData]**](ClinicalData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_clinical_data_in_study_using_get**
> list[ClinicalData] get_all_clinical_data_in_study_using_get(study_id, attribute_id=attribute_id, clinical_data_type=clinical_data_type, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all clinical data in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalDataApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
attribute_id = 'attribute_id_example' # str | Attribute ID e.g. CANCER_TYPE (optional)
clinical_data_type = 'SAMPLE' # str | Type of the clinical data (optional) (default to SAMPLE)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_clinical_data_in_study_using_get(study_id, attribute_id=attribute_id, clinical_data_type=clinical_data_type, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalDataApi->get_all_clinical_data_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **attribute_id** | **str**| Attribute ID e.g. CANCER_TYPE | [optional] 
 **clinical_data_type** | **str**| Type of the clinical data | [optional] [default to SAMPLE]
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[ClinicalData]**](ClinicalData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_clinical_data_of_patient_in_study_using_get**
> list[ClinicalData] get_all_clinical_data_of_patient_in_study_using_get(study_id, patient_id, attribute_id=attribute_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all clinical data of a patient in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalDataApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
patient_id = 'patient_id_example' # str | Patient ID e.g. TCGA-OR-A5J2
attribute_id = 'attribute_id_example' # str | Attribute ID e.g. AGE (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_clinical_data_of_patient_in_study_using_get(study_id, patient_id, attribute_id=attribute_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalDataApi->get_all_clinical_data_of_patient_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **patient_id** | **str**| Patient ID e.g. TCGA-OR-A5J2 | 
 **attribute_id** | **str**| Attribute ID e.g. AGE | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[ClinicalData]**](ClinicalData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_clinical_data_of_sample_in_study_using_get**
> list[ClinicalData] get_all_clinical_data_of_sample_in_study_using_get(study_id, sample_id, attribute_id=attribute_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all clinical data of a sample in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.ClinicalDataApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
sample_id = 'sample_id_example' # str | Sample ID e.g. TCGA-OR-A5J2-01
attribute_id = 'attribute_id_example' # str | Attribute ID e.g. CANCER_TYPE (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_clinical_data_of_sample_in_study_using_get(study_id, sample_id, attribute_id=attribute_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClinicalDataApi->get_all_clinical_data_of_sample_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **sample_id** | **str**| Sample ID e.g. TCGA-OR-A5J2-01 | 
 **attribute_id** | **str**| Attribute ID e.g. CANCER_TYPE | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[ClinicalData]**](ClinicalData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

