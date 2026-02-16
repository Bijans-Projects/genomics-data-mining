# cbioportal.DiscreteCopyNumberAlterationsApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_discrete_copy_numbers_in_molecular_profile_using_post**](DiscreteCopyNumberAlterationsApi.md#fetch_discrete_copy_numbers_in_molecular_profile_using_post) | **POST** /api/molecular-profiles/{molecularProfileId}/discrete-copy-number/fetch | 
[**get_discrete_copy_numbers_in_molecular_profile_using_get**](DiscreteCopyNumberAlterationsApi.md#get_discrete_copy_numbers_in_molecular_profile_using_get) | **GET** /api/molecular-profiles/{molecularProfileId}/discrete-copy-number | 

# **fetch_discrete_copy_numbers_in_molecular_profile_using_post**
> list[DiscreteCopyNumberData] fetch_discrete_copy_numbers_in_molecular_profile_using_post(body, molecular_profile_id, discrete_copy_number_event_type=discrete_copy_number_event_type, projection=projection)



Fetch discrete copy number alterations in a molecular profile by sample ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.DiscreteCopyNumberAlterationsApi()
body = cbioportal.DiscreteCopyNumberFilter() # DiscreteCopyNumberFilter | 
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_gistic
discrete_copy_number_event_type = 'HOMDEL_AND_AMP' # str | Type of the copy number event (optional) (default to HOMDEL_AND_AMP)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_discrete_copy_numbers_in_molecular_profile_using_post(body, molecular_profile_id, discrete_copy_number_event_type=discrete_copy_number_event_type, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DiscreteCopyNumberAlterationsApi->fetch_discrete_copy_numbers_in_molecular_profile_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DiscreteCopyNumberFilter**](DiscreteCopyNumberFilter.md)|  | 
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_gistic | 
 **discrete_copy_number_event_type** | **str**| Type of the copy number event | [optional] [default to HOMDEL_AND_AMP]
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[DiscreteCopyNumberData]**](DiscreteCopyNumberData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_discrete_copy_numbers_in_molecular_profile_using_get**
> list[DiscreteCopyNumberData] get_discrete_copy_numbers_in_molecular_profile_using_get(molecular_profile_id, sample_list_id, discrete_copy_number_event_type=discrete_copy_number_event_type, projection=projection)



Get discrete copy number alterations in a molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.DiscreteCopyNumberAlterationsApi()
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_gistic
sample_list_id = 'sample_list_id_example' # str | Sample List ID e.g. acc_tcga_all
discrete_copy_number_event_type = 'HOMDEL_AND_AMP' # str | Type of the copy number event (optional) (default to HOMDEL_AND_AMP)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.get_discrete_copy_numbers_in_molecular_profile_using_get(molecular_profile_id, sample_list_id, discrete_copy_number_event_type=discrete_copy_number_event_type, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DiscreteCopyNumberAlterationsApi->get_discrete_copy_numbers_in_molecular_profile_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_gistic | 
 **sample_list_id** | **str**| Sample List ID e.g. acc_tcga_all | 
 **discrete_copy_number_event_type** | **str**| Type of the copy number event | [optional] [default to HOMDEL_AND_AMP]
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[DiscreteCopyNumberData]**](DiscreteCopyNumberData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

