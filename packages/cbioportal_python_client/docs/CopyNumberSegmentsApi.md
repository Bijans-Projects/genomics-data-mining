# cbioportal.CopyNumberSegmentsApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_copy_number_segments_using_post**](CopyNumberSegmentsApi.md#fetch_copy_number_segments_using_post) | **POST** /api/copy-number-segments/fetch | 
[**get_copy_number_segments_in_sample_in_study_using_get**](CopyNumberSegmentsApi.md#get_copy_number_segments_in_sample_in_study_using_get) | **GET** /api/studies/{studyId}/samples/{sampleId}/copy-number-segments | 

# **fetch_copy_number_segments_using_post**
> list[CopyNumberSeg] fetch_copy_number_segments_using_post(body=body, chromosome=chromosome, projection=projection)



Fetch copy number segments by sample ID

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.CopyNumberSegmentsApi()
body = [cbioportal.SampleIdentifier()] # list[SampleIdentifier] |  (optional)
chromosome = 'chromosome_example' # str | Chromosome (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_copy_number_segments_using_post(body=body, chromosome=chromosome, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CopyNumberSegmentsApi->fetch_copy_number_segments_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[SampleIdentifier]**](SampleIdentifier.md)|  | [optional] 
 **chromosome** | **str**| Chromosome | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[CopyNumberSeg]**](CopyNumberSeg.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_copy_number_segments_in_sample_in_study_using_get**
> list[CopyNumberSeg] get_copy_number_segments_in_sample_in_study_using_get(study_id, sample_id, chromosome=chromosome, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get copy number segments in a sample in a study

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.CopyNumberSegmentsApi()
study_id = 'study_id_example' # str | Study ID e.g. acc_tcga
sample_id = 'sample_id_example' # str | Sample ID e.g. TCGA-OR-A5J2-01
chromosome = 'chromosome_example' # str | Chromosome (optional)
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 20000 # int | Page size of the result list (optional) (default to 20000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_copy_number_segments_in_sample_in_study_using_get(study_id, sample_id, chromosome=chromosome, projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CopyNumberSegmentsApi->get_copy_number_segments_in_sample_in_study_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **study_id** | **str**| Study ID e.g. acc_tcga | 
 **sample_id** | **str**| Sample ID e.g. TCGA-OR-A5J2-01 | 
 **chromosome** | **str**| Chromosome | [optional] 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]
 **page_size** | **int**| Page size of the result list | [optional] [default to 20000]
 **page_number** | **int**| Page number of the result list | [optional] [default to 0]
 **sort_by** | **str**| Name of the property that the result list is sorted by | [optional] 
 **direction** | **str**| Direction of the sort | [optional] [default to ASC]

### Return type

[**list[CopyNumberSeg]**](CopyNumberSeg.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

