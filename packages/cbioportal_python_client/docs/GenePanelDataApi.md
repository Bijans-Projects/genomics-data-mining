# cbioportal.GenePanelDataApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_gene_panel_data_in_multiple_molecular_profiles_using_post**](GenePanelDataApi.md#fetch_gene_panel_data_in_multiple_molecular_profiles_using_post) | **POST** /api/gene-panel-data/fetch | 
[**get_gene_panel_data_using_post**](GenePanelDataApi.md#get_gene_panel_data_using_post) | **POST** /api/molecular-profiles/{molecularProfileId}/gene-panel-data/fetch | 

# **fetch_gene_panel_data_in_multiple_molecular_profiles_using_post**
> list[GenePanelData] fetch_gene_panel_data_in_multiple_molecular_profiles_using_post(body=body)



Fetch gene panel data

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenePanelDataApi()
body = cbioportal.GenePanelDataMultipleStudyFilter() # GenePanelDataMultipleStudyFilter |  (optional)

try:
    api_response = api_instance.fetch_gene_panel_data_in_multiple_molecular_profiles_using_post(body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenePanelDataApi->fetch_gene_panel_data_in_multiple_molecular_profiles_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenePanelDataMultipleStudyFilter**](GenePanelDataMultipleStudyFilter.md)|  | [optional] 

### Return type

[**list[GenePanelData]**](GenePanelData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_gene_panel_data_using_post**
> list[GenePanelData] get_gene_panel_data_using_post(body, molecular_profile_id)



Get gene panel data

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenePanelDataApi()
body = cbioportal.GenePanelDataFilter() # GenePanelDataFilter | 
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. nsclc_unito_2016_mutations

try:
    api_response = api_instance.get_gene_panel_data_using_post(body, molecular_profile_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenePanelDataApi->get_gene_panel_data_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GenePanelDataFilter**](GenePanelDataFilter.md)|  | 
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. nsclc_unito_2016_mutations | 

### Return type

[**list[GenePanelData]**](GenePanelData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

