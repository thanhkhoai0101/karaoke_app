# openapi.api.KhchHngApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.98:2002*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrUpdate**](KhchHngApi.md#createorupdate) | **POST** /customers | 
[**getCustomerById**](KhchHngApi.md#getcustomerbyid) | **GET** /customers/{id} | 
[**list1**](KhchHngApi.md#list1) | **GET** /customers | 


# **createOrUpdate**
> CustomerResponse createOrUpdate(customerRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = KhchHngApi();
final customerRequest = CustomerRequest(); // CustomerRequest | 

try {
    final result = api_instance.createOrUpdate(customerRequest);
    print(result);
} catch (e) {
    print('Exception when calling KhchHngApi->createOrUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerRequest** | [**CustomerRequest**](CustomerRequest.md)|  | 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerById**
> CustomerResponse getCustomerById(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = KhchHngApi();
final id = 789; // int | 

try {
    final result = api_instance.getCustomerById(id);
    print(result);
} catch (e) {
    print('Exception when calling KhchHngApi->getCustomerById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**CustomerResponse**](CustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list1**
> PageCustomerResponse list1()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = KhchHngApi();

try {
    final result = api_instance.list1();
    print(result);
} catch (e) {
    print('Exception when calling KhchHngApi->list1: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageCustomerResponse**](PageCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

