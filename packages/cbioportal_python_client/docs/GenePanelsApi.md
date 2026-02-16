# cbioportal.GenePanelsApi

All URIs are relative to *https://www.cbioportal.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_gene_panels_using_post**](GenePanelsApi.md#fetch_gene_panels_using_post) | **POST** /api/gene-panels/fetch | 
[**get_all_gene_panels_using_get**](GenePanelsApi.md#get_all_gene_panels_using_get) | **GET** /api/gene-panels | 
[**get_gene_panel_using_get**](GenePanelsApi.md#get_gene_panel_using_get) | **GET** /api/gene-panels/{genePanelId} | 

# **fetch_gene_panels_using_post**
> list[GenePanel] fetch_gene_panels_using_post(body, projection=projection)



Get gene panel

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenePanelsApi()
body = ['body_example'] # list[str] | 
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)

try:
    api_response = api_instance.fetch_gene_panels_using_post(body, projection=projection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenePanelsApi->fetch_gene_panels_using_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**list[str]**](str.md)|  | 
 **projection** | **str**| Level of detail of the response | [optional] [default to SUMMARY]

### Return type

[**list[GenePanel]**](GenePanel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_gene_panels_using_get**
> list[GenePanel] get_all_gene_panels_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)



Get all gene panels

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenePanelsApi()
projection = 'SUMMARY' # str | Level of detail of the response (optional) (default to SUMMARY)
page_size = 10000000 # int | Page size of the result list (optional) (default to 10000000)
page_number = 0 # int | Page number of the result list (optional) (default to 0)
sort_by = 'sort_by_example' # str | Name of the property that the result list is sorted by (optional)
direction = 'ASC' # str | Direction of the sort (optional) (default to ASC)

try:
    api_response = api_instance.get_all_gene_panels_using_get(projection=projection, page_size=page_size, page_number=page_number, sort_by=sort_by, direction=direction)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenePanelsApi->get_all_gene_panels_using_get: %s\n" % e)
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

[**list[GenePanel]**](GenePanel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_gene_panel_using_get**
> GenePanel get_gene_panel_using_get(gene_panel_id)



Get gene panel

### Example
```python
from __future__ import print_function
import time
import cbioportal
from cbioportal.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = cbioportal.GenePanelsApi()
gene_panel_id = 'gene_panel_id_example' # str | Gene Panel ID e.g. NSCLC_UNITO_2016_PANEL

try:
    api_response = api_instance.get_gene_panel_using_get(gene_panel_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GenePanelsApi->get_gene_panel_using_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene_panel_id** | **str**| Gene Panel ID e.g. NSCLC_UNITO_2016_PANEL | 

### Return type

[**GenePanel**](GenePanel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

