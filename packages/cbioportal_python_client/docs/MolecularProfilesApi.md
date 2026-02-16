# cbioportal.MolecularProfilesApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_molecular_profiles_using_post**](MolecularProfilesApi.md#fetch_molecular_profiles_using_post) | **POST** /api/molecular-profiles/fetch | 
[**get_all_molecular_profiles_in_study_using_get**](MolecularProfilesApi.md#get_all_molecular_profiles_in_study_using_get) | **GET** /api/studies/{studyId}/molecular-profiles | 
[**get_all_molecular_profiles_using_get**](MolecularProfilesApi.md#get_all_molecular_profiles_using_get) | **GET** /api/molecular-profiles | 
[**get_molecular_profile_using_get**](MolecularProfilesApi.md#get_molecular_profile_using_get) | **GET** /api/molecular-profiles/{molecularProfileId} | 

# **fetch_molecular_profiles_using_post**
> list[MolecularProfile] fetch_molecular_profiles_using_post(body=body, projection=projection)



Fetch molecular profiles

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularProfilesApi()
body = cbioportal.MolecularProfileFilter() # MolecularProfileFilter |  (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_molecular_profiles_using_post(body=body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularProfilesApi->fetch_molecular_profiles_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MolecularProfileFilter**](MolecularProfileFilter.md)|  | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[MolecularProfile]**](MolecularProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_molecular_profiles_in_study_using_get**
> list[MolecularProfile] get_all_molecular_profiles_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all molecular profiles in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularProfilesApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_molecular_profiles_in_study_using_get(study_id, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularProfilesApi->get_all_molecular_profiles_in_study_using_get: %s\n" % e)
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

[**list[MolecularProfile]**](MolecularProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_molecular_profiles_using_get**
> list[MolecularProfile] get_all_molecular_profiles_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all molecular profiles

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularProfilesApi()
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_molecular_profiles_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularProfilesApi->get_all_molecular_profiles_using_get: %s\n" % e)
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

[**list[MolecularProfile]**](MolecularProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_molecular_profile_using_get**
> MolecularProfile get_molecular_profile_using_get(molecular_profile_id)



Get molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularProfilesApi()
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_mutations

try:
    api_response = api_instance.get_molecular_profile_using_get(molecular_profile_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularProfilesApi->get_molecular_profile_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_mutations | 

### Return type

[**MolecularProfile**](MolecularProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

