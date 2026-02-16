# cbioportal.PatientsApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_patients_using_post**](PatientsApi.md#fetch_patients_using_post) | **POST** /api/patients/fetch | 
[**get_all_patients_in_study_using_get**](PatientsApi.md#get_all_patients_in_study_using_get) | **GET** /api/studies/{studyId}/patients | 
[**get_all_patients_using_get**](PatientsApi.md#get_all_patients_using_get) | **GET** /api/patients | 
[**get_patient_in_study_using_get**](PatientsApi.md#get_patient_in_study_using_get) | **GET** /api/studies/{studyId}/patients/{patientId} | 

# **fetch_patients_using_post**
> list[Patient] fetch_patients_using_post(body=body, projection=projection)



### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.PatientsApi()
body = cbioportal.PatientFilter() # PatientFilter |  (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_patients_using_post(body=body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PatientsApi->fetch_patients_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PatientFilter**](PatientFilter.md)|  | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[Patient]**](Patient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_patients_in_study_using_get**
> list[Patient] get_all_patients_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all patients in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.PatientsApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_patients_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PatientsApi->get_all_patients_in_study_using_get: %s\n" % e)
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

[**list[Patient]**](Patient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_patients_using_get**
> list[Patient] get_all_patients_using_get(keyword=keyword, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all patients

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.PatientsApi()
keyword = 'keyword_example' # str | Search keyword that applies to ID of the patients (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_patients_using_get(keyword=keyword, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PatientsApi->get_all_patients_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **str**| Search keyword that applies to ID of the patients | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 10000000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[Patient]**](Patient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_patient_in_study_using_get**
> Patient get_patient_in_study_using_get(study_id, patient_id)



Get a patient in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.PatientsApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
patient_id = 'patient_id_example' # str | Patient ID e.g. TCGA-OR-A5J2

try:
    api_response = api_instance.get_patient_in_study_using_get(study_id, patient_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PatientsApi->get_patient_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **patient_id** | **str**| Patient ID e.g. TCGA-OR-A5J2 | 

### Return type

[**Patient**](Patient.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

