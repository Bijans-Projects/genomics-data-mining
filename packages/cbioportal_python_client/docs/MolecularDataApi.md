# cbioportal.MolecularDataApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_all_molecular_data_in_molecular_profile_using_post**](MolecularDataApi.md#fetch_all_molecular_data_in_molecular_profile_using_post) | **POST** /api/molecular-profiles/{molecularProfileId}/molecular-data/fetch | 
[**fetch_molecular_data_in_multiple_molecular_profiles_using_post**](MolecularDataApi.md#fetch_molecular_data_in_multiple_molecular_profiles_using_post) | **POST** /api/molecular-data/fetch | 
[**get_all_molecular_data_in_molecular_profile_using_get**](MolecularDataApi.md#get_all_molecular_data_in_molecular_profile_using_get) | **GET** /api/molecular-profiles/{molecularProfileId}/molecular-data | 

# **fetch_all_molecular_data_in_molecular_profile_using_post**
> list[NumericGeneMolecularData] fetch_all_molecular_data_in_molecular_profile_using_post(body, molecular_profile_id, projection=projection)



Fetch molecular data in a molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularDataApi()
body = cbioportal.MolecularDataFilter() # MolecularDataFilter | 
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_rna_seq_v2_mrna
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_all_molecular_data_in_molecular_profile_using_post(body, molecular_profile_id, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularDataApi->fetch_all_molecular_data_in_molecular_profile_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MolecularDataFilter**](MolecularDataFilter.md)|  | 
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_rna_seq_v2_mrna | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[NumericGeneMolecularData]**](NumericGeneMolecularData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetch_molecular_data_in_multiple_molecular_profiles_using_post**
> list[NumericGeneMolecularData] fetch_molecular_data_in_multiple_molecular_profiles_using_post(body=body, projection=projection)



Fetch molecular data

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularDataApi()
body = cbioportal.MolecularDataMultipleStudyFilter() # MolecularDataMultipleStudyFilter |  (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_molecular_data_in_multiple_molecular_profiles_using_post(body=body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularDataApi->fetch_molecular_data_in_multiple_molecular_profiles_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MolecularDataMultipleStudyFilter**](MolecularDataMultipleStudyFilter.md)|  | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[NumericGeneMolecularData]**](NumericGeneMolecularData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_molecular_data_in_molecular_profile_using_get**
> list[NumericGeneMolecularData] get_all_molecular_data_in_molecular_profile_using_get(molecular_profile_id, sample_list_id, entrez_gene_id, projection=projection)



Get all molecular data in a molecular profile

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.MolecularDataApi()
molecular_profile_id = 'molecular_profile_id_example' # str | Molecular Profile ID e.g. acc_tcga_rna_seq_v2_mrna
sample_list_id = 'sample_list_id_example' # str | Sample List ID e.g. acc_tcga_all
entrez_gene_id = 56 # int | Entrez Gene ID e.g. 1
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.get_all_molecular_data_in_molecular_profile_using_get(molecular_profile_id, sample_list_id, entrez_gene_id, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MolecularDataApi->get_all_molecular_data_in_molecular_profile_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **molecular_profile_id** | **str**| Molecular Profile ID e.g. acc_tcga_rna_seq_v2_mrna | 
 **sample_list_id** | **str**| Sample List ID e.g. acc_tcga_all | 
 **entrez_gene_id** | **int**| Entrez Gene ID e.g. 1 | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[NumericGeneMolecularData]**](NumericGeneMolecularData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

