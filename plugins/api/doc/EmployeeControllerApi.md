# openapi.api.EmployeeControllerApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://192.168.1.98:2002*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](EmployeeControllerApi.md#callget) | **GET** /employee/{username} | 
[**list**](EmployeeControllerApi.md#list) | **GET** /employee | 
[**register**](EmployeeControllerApi.md#register) | **POST** /employee/register | 
[**update**](EmployeeControllerApi.md#update) | **PUT** /employee/{id} | 


# **callGet**
> EmployeeResponse callGet(username)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EmployeeControllerApi();
final username = username_example; // String | 

try {
    final result = api_instance.callGet(username);
    print(result);
} catch (e) {
    print('Exception when calling EmployeeControllerApi->callGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**EmployeeResponse**](EmployeeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> PageEmployeeResponse list()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EmployeeControllerApi();

try {
    final result = api_instance.list();
    print(result);
} catch (e) {
    print('Exception when calling EmployeeControllerApi->list: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageEmployeeResponse**](PageEmployeeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register**
> EmployeeResponse register(employeeRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EmployeeControllerApi();
final employeeRequest = EmployeeRequest(); // EmployeeRequest | 

try {
    final result = api_instance.register(employeeRequest);
    print(result);
} catch (e) {
    print('Exception when calling EmployeeControllerApi->register: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employeeRequest** | [**EmployeeRequest**](EmployeeRequest.md)|  | 

### Return type

[**EmployeeResponse**](EmployeeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> EmployeeResponse update(id, employeeRequest)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EmployeeControllerApi();
final id = 789; // int | 
final employeeRequest = EmployeeRequest(); // EmployeeRequest | 

try {
    final result = api_instance.update(id, employeeRequest);
    print(result);
} catch (e) {
    print('Exception when calling EmployeeControllerApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **employeeRequest** | [**EmployeeRequest**](EmployeeRequest.md)|  | 

### Return type

[**EmployeeResponse**](EmployeeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

