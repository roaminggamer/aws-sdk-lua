--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT (iot-2015-05-28)

local M = {}

M.metadata = {
	api_version = "2015-05-28",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "iot",
	service_abbreviation = "",
	service_full_name = "AWS IoT",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "iot-2015-05-28",
}

local keys = {}
local asserts = {}

keys.SalesforceAction = { ["url"] = true, ["token"] = true, nil }

function asserts.AssertSalesforceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SalesforceAction to be of type 'table'")
	assert(struct["token"], "Expected key token to exist in table")
	assert(struct["url"], "Expected key url to exist in table")
	if struct["url"] then asserts.AssertSalesforceEndpoint(struct["url"]) end
	if struct["token"] then asserts.AssertSalesforceToken(struct["token"]) end
	for k,_ in pairs(struct) do
		assert(keys.SalesforceAction[k], "SalesforceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SalesforceAction
-- <p>Describes an action to write a message to a Salesforce IoT Cloud Input Stream.</p>
-- @param _url [SalesforceEndpoint] <p>The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is available from the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
-- @param _token [SalesforceToken] <p>The token used to authenticate access to the Salesforce IoT Cloud Input Stream. The token is available from the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
-- Required parameter: token
-- Required parameter: url
function M.SalesforceAction(_url, _token, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SalesforceAction")
	local t = { 
		["url"] = _url,
		["token"] = _token,
	}
	asserts.AssertSalesforceAction(t)
	return t
end

keys.VersionsLimitExceededException = { ["message"] = true, nil }

function asserts.AssertVersionsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionsLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionsLimitExceededException[k], "VersionsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionsLimitExceededException
-- <p>The number of policy versions exceeds the limit.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.VersionsLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionsLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertVersionsLimitExceededException(t)
	return t
end

keys.DetachThingPrincipalResponse = { nil }

function asserts.AssertDetachThingPrincipalResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachThingPrincipalResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DetachThingPrincipalResponse[k], "DetachThingPrincipalResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachThingPrincipalResponse
-- <p>The output from the DetachThingPrincipal operation.</p>
function M.DetachThingPrincipalResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachThingPrincipalResponse")
	local t = { 
	}
	asserts.AssertDetachThingPrincipalResponse(t)
	return t
end

keys.ServiceUnavailableException = { ["message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service is temporarily unavailable.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.ServiceUnavailableException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServiceUnavailableException(t)
	return t
end

keys.UnauthorizedException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p>You are not authorized to perform this operation.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.UnauthorizedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnauthorizedException(t)
	return t
end

keys.ListThingTypesResponse = { ["nextToken"] = true, ["thingTypes"] = true, nil }

function asserts.AssertListThingTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingTypesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["thingTypes"] then asserts.AssertThingTypeList(struct["thingTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingTypesResponse[k], "ListThingTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingTypesResponse
-- <p>The output for the ListThingTypes operation.</p>
-- @param _nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param _thingTypes [ThingTypeList] <p>The thing types.</p>
function M.ListThingTypesResponse(_nextToken, _thingTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingTypesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["thingTypes"] = _thingTypes,
	}
	asserts.AssertListThingTypesResponse(t)
	return t
end

keys.SnsAction = { ["targetArn"] = true, ["roleArn"] = true, ["messageFormat"] = true, nil }

function asserts.AssertSnsAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnsAction to be of type 'table'")
	assert(struct["targetArn"], "Expected key targetArn to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["targetArn"] then asserts.AssertAwsArn(struct["targetArn"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["messageFormat"] then asserts.AssertMessageFormat(struct["messageFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.SnsAction[k], "SnsAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnsAction
-- <p>Describes an action to publish to an Amazon SNS topic.</p>
-- @param _targetArn [AwsArn] <p>The ARN of the SNS topic.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @param _messageFormat [MessageFormat] <p>The message format of the message to publish. Optional. Accepted values are "JSON" and "RAW". The default value of the attribute is "RAW". SNS uses this setting to determine if the payload should be parsed and relevant platform-specific bits of the payload should be extracted. To read more about SNS message formats, see <a href="http://docs.aws.amazon.com/sns/latest/dg/json-formats.html">http://docs.aws.amazon.com/sns/latest/dg/json-formats.html</a> refer to their official documentation.</p>
-- Required parameter: targetArn
-- Required parameter: roleArn
function M.SnsAction(_targetArn, _roleArn, _messageFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnsAction")
	local t = { 
		["targetArn"] = _targetArn,
		["roleArn"] = _roleArn,
		["messageFormat"] = _messageFormat,
	}
	asserts.AssertSnsAction(t)
	return t
end

keys.ThingTypeMetadata = { ["deprecated"] = true, ["creationDate"] = true, ["deprecationDate"] = true, nil }

function asserts.AssertThingTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeMetadata to be of type 'table'")
	if struct["deprecated"] then asserts.AssertBoolean(struct["deprecated"]) end
	if struct["creationDate"] then asserts.AssertCreationDate(struct["creationDate"]) end
	if struct["deprecationDate"] then asserts.AssertDeprecationDate(struct["deprecationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingTypeMetadata[k], "ThingTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeMetadata
-- <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when time was deprecated.</p>
-- @param _deprecated [Boolean] <p>Whether the thing type is deprecated. If <b>true</b>, no new things could be associated with this type.</p>
-- @param _creationDate [CreationDate] <p>The date and time when the thing type was created.</p>
-- @param _deprecationDate [DeprecationDate] <p>The date and time when the thing type was deprecated.</p>
function M.ThingTypeMetadata(_deprecated, _creationDate, _deprecationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingTypeMetadata")
	local t = { 
		["deprecated"] = _deprecated,
		["creationDate"] = _creationDate,
		["deprecationDate"] = _deprecationDate,
	}
	asserts.AssertThingTypeMetadata(t)
	return t
end

keys.TransferCertificateResponse = { ["transferredCertificateArn"] = true, nil }

function asserts.AssertTransferCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferCertificateResponse to be of type 'table'")
	if struct["transferredCertificateArn"] then asserts.AssertCertificateArn(struct["transferredCertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferCertificateResponse[k], "TransferCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferCertificateResponse
-- <p>The output from the TransferCertificate operation.</p>
-- @param _transferredCertificateArn [CertificateArn] <p>The ARN of the certificate.</p>
function M.TransferCertificateResponse(_transferredCertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferCertificateResponse")
	local t = { 
		["transferredCertificateArn"] = _transferredCertificateArn,
	}
	asserts.AssertTransferCertificateResponse(t)
	return t
end

keys.ListPrincipalThingsResponse = { ["things"] = true, ["nextToken"] = true, nil }

function asserts.AssertListPrincipalThingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalThingsResponse to be of type 'table'")
	if struct["things"] then asserts.AssertThingNameList(struct["things"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalThingsResponse[k], "ListPrincipalThingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalThingsResponse
-- <p>The output from the ListPrincipalThings operation.</p>
-- @param _things [ThingNameList] <p>The things.</p>
-- @param _nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
function M.ListPrincipalThingsResponse(_things, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalThingsResponse")
	local t = { 
		["things"] = _things,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListPrincipalThingsResponse(t)
	return t
end

keys.ListPolicyPrincipalsResponse = { ["nextMarker"] = true, ["principals"] = true, nil }

function asserts.AssertListPolicyPrincipalsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyPrincipalsResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["principals"] then asserts.AssertPrincipals(struct["principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyPrincipalsResponse[k], "ListPolicyPrincipalsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyPrincipalsResponse
-- <p>The output from the ListPolicyPrincipals operation.</p>
-- @param _nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @param _principals [Principals] <p>The descriptions of the principals.</p>
function M.ListPolicyPrincipalsResponse(_nextMarker, _principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyPrincipalsResponse")
	local t = { 
		["nextMarker"] = _nextMarker,
		["principals"] = _principals,
	}
	asserts.AssertListPolicyPrincipalsResponse(t)
	return t
end

keys.DynamoDBAction = { ["rangeKeyType"] = true, ["payloadField"] = true, ["hashKeyType"] = true, ["hashKeyField"] = true, ["roleArn"] = true, ["tableName"] = true, ["hashKeyValue"] = true, ["rangeKeyValue"] = true, ["operation"] = true, ["rangeKeyField"] = true, nil }

function asserts.AssertDynamoDBAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBAction to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["hashKeyField"], "Expected key hashKeyField to exist in table")
	assert(struct["hashKeyValue"], "Expected key hashKeyValue to exist in table")
	if struct["rangeKeyType"] then asserts.AssertDynamoKeyType(struct["rangeKeyType"]) end
	if struct["payloadField"] then asserts.AssertPayloadField(struct["payloadField"]) end
	if struct["hashKeyType"] then asserts.AssertDynamoKeyType(struct["hashKeyType"]) end
	if struct["hashKeyField"] then asserts.AssertHashKeyField(struct["hashKeyField"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["tableName"] then asserts.AssertTableName(struct["tableName"]) end
	if struct["hashKeyValue"] then asserts.AssertHashKeyValue(struct["hashKeyValue"]) end
	if struct["rangeKeyValue"] then asserts.AssertRangeKeyValue(struct["rangeKeyValue"]) end
	if struct["operation"] then asserts.AssertDynamoOperation(struct["operation"]) end
	if struct["rangeKeyField"] then asserts.AssertRangeKeyField(struct["rangeKeyField"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamoDBAction[k], "DynamoDBAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBAction
-- <p>Describes an action to write to a DynamoDB table.</p> <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code> values must match the values used when you created the table.</p> <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a substitution template syntax. These templates provide data at runtime. The syntax is as follows: ${<i>sql-expression</i>}.</p> <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON properties, comparisons, calculations, and functions. For example, the following field uses the third level of the topic:</p> <p> <code>"hashKeyValue": "${topic(3)}"</code> </p> <p>The following field uses the timestamp:</p> <p> <code>"rangeKeyValue": "${timestamp()}"</code> </p>
-- @param _rangeKeyType [DynamoKeyType] <p>The range key type. Valid values are "STRING" or "NUMBER"</p>
-- @param _payloadField [PayloadField] <p>The action payload. This name can be customized.</p>
-- @param _hashKeyType [DynamoKeyType] <p>The hash key type. Valid values are "STRING" or "NUMBER"</p>
-- @param _hashKeyField [HashKeyField] <p>The hash key name.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
-- @param _tableName [TableName] <p>The name of the DynamoDB table.</p>
-- @param _hashKeyValue [HashKeyValue] <p>The hash key value.</p>
-- @param _rangeKeyValue [RangeKeyValue] <p>The range key value.</p>
-- @param _operation [DynamoOperation] <p>The type of operation to be performed. This follows the substitution template, so it can be <code>${operation}</code>, but the substitution must result in one of the following: <code>INSERT</code>, <code>UPDATE</code>, or <code>DELETE</code>.</p>
-- @param _rangeKeyField [RangeKeyField] <p>The range key name.</p>
-- Required parameter: tableName
-- Required parameter: roleArn
-- Required parameter: hashKeyField
-- Required parameter: hashKeyValue
function M.DynamoDBAction(_rangeKeyType, _payloadField, _hashKeyType, _hashKeyField, _roleArn, _tableName, _hashKeyValue, _rangeKeyValue, _operation, _rangeKeyField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DynamoDBAction")
	local t = { 
		["rangeKeyType"] = _rangeKeyType,
		["payloadField"] = _payloadField,
		["hashKeyType"] = _hashKeyType,
		["hashKeyField"] = _hashKeyField,
		["roleArn"] = _roleArn,
		["tableName"] = _tableName,
		["hashKeyValue"] = _hashKeyValue,
		["rangeKeyValue"] = _rangeKeyValue,
		["operation"] = _operation,
		["rangeKeyField"] = _rangeKeyField,
	}
	asserts.AssertDynamoDBAction(t)
	return t
end

keys.DeleteCACertificateResponse = { nil }

function asserts.AssertDeleteCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCACertificateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteCACertificateResponse[k], "DeleteCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCACertificateResponse
-- <p>The output for the DeleteCACertificate operation.</p>
function M.DeleteCACertificateResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCACertificateResponse")
	local t = { 
	}
	asserts.AssertDeleteCACertificateResponse(t)
	return t
end

keys.DescribeEndpointResponse = { ["endpointAddress"] = true, nil }

function asserts.AssertDescribeEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointResponse to be of type 'table'")
	if struct["endpointAddress"] then asserts.AssertEndpointAddress(struct["endpointAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointResponse[k], "DescribeEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointResponse
-- <p>The output from the DescribeEndpoint operation.</p>
-- @param _endpointAddress [EndpointAddress] <p>The endpoint. The format of the endpoint is as follows: <i>identifier</i>.iot.<i>region</i>.amazonaws.com.</p>
function M.DescribeEndpointResponse(_endpointAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointResponse")
	local t = { 
		["endpointAddress"] = _endpointAddress,
	}
	asserts.AssertDescribeEndpointResponse(t)
	return t
end

keys.RegisterCACertificateRequest = { ["caCertificate"] = true, ["verificationCertificate"] = true, ["allowAutoRegistration"] = true, ["setAsActive"] = true, nil }

function asserts.AssertRegisterCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCACertificateRequest to be of type 'table'")
	assert(struct["caCertificate"], "Expected key caCertificate to exist in table")
	assert(struct["verificationCertificate"], "Expected key verificationCertificate to exist in table")
	if struct["caCertificate"] then asserts.AssertCertificatePem(struct["caCertificate"]) end
	if struct["verificationCertificate"] then asserts.AssertCertificatePem(struct["verificationCertificate"]) end
	if struct["allowAutoRegistration"] then asserts.AssertAllowAutoRegistration(struct["allowAutoRegistration"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCACertificateRequest[k], "RegisterCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCACertificateRequest
-- <p>The input to the RegisterCACertificate operation.</p>
-- @param _caCertificate [CertificatePem] <p>The CA certificate.</p>
-- @param _verificationCertificate [CertificatePem] <p>The private key verification certificate.</p>
-- @param _allowAutoRegistration [AllowAutoRegistration] <p>Allows this CA certificate to be used for auto registration of device certificates.</p>
-- @param _setAsActive [SetAsActive] <p>A boolean value that specifies if the CA certificate is set to active.</p>
-- Required parameter: caCertificate
-- Required parameter: verificationCertificate
function M.RegisterCACertificateRequest(_caCertificate, _verificationCertificate, _allowAutoRegistration, _setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCACertificateRequest")
	local t = { 
		["caCertificate"] = _caCertificate,
		["verificationCertificate"] = _verificationCertificate,
		["allowAutoRegistration"] = _allowAutoRegistration,
		["setAsActive"] = _setAsActive,
	}
	asserts.AssertRegisterCACertificateRequest(t)
	return t
end

keys.DeleteRegistrationCodeRequest = { nil }

function asserts.AssertDeleteRegistrationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegistrationCodeRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegistrationCodeRequest[k], "DeleteRegistrationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegistrationCodeRequest
-- <p>The input for the DeleteRegistrationCode operation.</p>
function M.DeleteRegistrationCodeRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRegistrationCodeRequest")
	local t = { 
	}
	asserts.AssertDeleteRegistrationCodeRequest(t)
	return t
end

keys.GetRegistrationCodeResponse = { ["registrationCode"] = true, nil }

function asserts.AssertGetRegistrationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegistrationCodeResponse to be of type 'table'")
	if struct["registrationCode"] then asserts.AssertRegistrationCode(struct["registrationCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRegistrationCodeResponse[k], "GetRegistrationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegistrationCodeResponse
-- <p>The output from the GetRegistrationCode operation.</p>
-- @param _registrationCode [RegistrationCode] <p>The CA certificate registration code.</p>
function M.GetRegistrationCodeResponse(_registrationCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegistrationCodeResponse")
	local t = { 
		["registrationCode"] = _registrationCode,
	}
	asserts.AssertGetRegistrationCodeResponse(t)
	return t
end

keys.ListPolicyVersionsRequest = { ["policyName"] = true, nil }

function asserts.AssertListPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyVersionsRequest[k], "ListPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsRequest
-- <p>The input for the ListPolicyVersions operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- Required parameter: policyName
function M.ListPolicyVersionsRequest(_policyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsRequest")
	local t = { 
		["policyName"] = _policyName,
	}
	asserts.AssertListPolicyVersionsRequest(t)
	return t
end

keys.ListCertificatesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesRequest[k], "ListCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesRequest
-- <p>The input for the ListCertificates operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
function M.ListCertificatesRequest(_marker, _ascendingOrder, _pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesRequest")
	local t = { 
		["marker"] = _marker,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
	}
	asserts.AssertListCertificatesRequest(t)
	return t
end

keys.ThingAttribute = { ["thingTypeName"] = true, ["attributes"] = true, ["version"] = true, ["thingName"] = true, nil }

function asserts.AssertThingAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingAttribute to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingAttribute[k], "ThingAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingAttribute
-- <p>The properties of the thing, including thing name, thing type name, and a list of thing attributes.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type, if the thing has been associated with a type.</p>
-- @param _attributes [Attributes] <p>A list of thing attributes which are name-value pairs.</p>
-- @param _version [Version] <p>The version of the thing record in the registry.</p>
-- @param _thingName [ThingName] <p>The name of the thing.</p>
function M.ThingAttribute(_thingTypeName, _attributes, _version, _thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingAttribute")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["attributes"] = _attributes,
		["version"] = _version,
		["thingName"] = _thingName,
	}
	asserts.AssertThingAttribute(t)
	return t
end

keys.DescribeThingRequest = { ["thingName"] = true, nil }

function asserts.AssertDescribeThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingRequest[k], "DescribeThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingRequest
-- <p>The input for the DescribeThing operation.</p>
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- Required parameter: thingName
function M.DescribeThingRequest(_thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingRequest")
	local t = { 
		["thingName"] = _thingName,
	}
	asserts.AssertDescribeThingRequest(t)
	return t
end

keys.ListThingPrincipalsResponse = { ["principals"] = true, nil }

function asserts.AssertListThingPrincipalsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingPrincipalsResponse to be of type 'table'")
	if struct["principals"] then asserts.AssertPrincipals(struct["principals"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingPrincipalsResponse[k], "ListThingPrincipalsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingPrincipalsResponse
-- <p>The output from the ListThingPrincipals operation.</p>
-- @param _principals [Principals] <p>The principals associated with the thing.</p>
function M.ListThingPrincipalsResponse(_principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingPrincipalsResponse")
	local t = { 
		["principals"] = _principals,
	}
	asserts.AssertListThingPrincipalsResponse(t)
	return t
end

keys.CertificateValidationException = { ["message"] = true, nil }

function asserts.AssertCertificateValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateValidationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateValidationException[k], "CertificateValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateValidationException
-- <p>The certificate is invalid.</p>
-- @param _message [errorMessage] <p>Additional information about the exception.</p>
function M.CertificateValidationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateValidationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCertificateValidationException(t)
	return t
end

keys.DeleteThingResponse = { nil }

function asserts.AssertDeleteThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingResponse[k], "DeleteThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingResponse
-- <p>The output of the DeleteThing operation.</p>
function M.DeleteThingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingResponse")
	local t = { 
	}
	asserts.AssertDeleteThingResponse(t)
	return t
end

keys.CreateThingRequest = { ["thingTypeName"] = true, ["attributePayload"] = true, ["thingName"] = true, nil }

function asserts.AssertCreateThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributePayload"] then asserts.AssertAttributePayload(struct["attributePayload"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingRequest[k], "CreateThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingRequest
-- <p>The input for the CreateThing operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type associated with the new thing.</p>
-- @param _attributePayload [AttributePayload] <p>The attribute payload, which consists of up to three name/value pairs in a JSON document. For example:</p> <p> <code>{\"attributes\":{\"string1\":\"string2\"}}</code> </p>
-- @param _thingName [ThingName] <p>The name of the thing to create.</p>
-- Required parameter: thingName
function M.CreateThingRequest(_thingTypeName, _attributePayload, _thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["attributePayload"] = _attributePayload,
		["thingName"] = _thingName,
	}
	asserts.AssertCreateThingRequest(t)
	return t
end

keys.RegisterCertificateResponse = { ["certificateArn"] = true, ["certificateId"] = true, nil }

function asserts.AssertRegisterCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCertificateResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCertificateResponse[k], "RegisterCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCertificateResponse
-- <p>The output from the RegisterCertificate operation.</p>
-- @param _certificateArn [CertificateArn] <p>The certificate ARN.</p>
-- @param _certificateId [CertificateId] <p>The certificate identifier.</p>
function M.RegisterCertificateResponse(_certificateArn, _certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCertificateResponse")
	local t = { 
		["certificateArn"] = _certificateArn,
		["certificateId"] = _certificateId,
	}
	asserts.AssertRegisterCertificateResponse(t)
	return t
end

keys.PolicyVersion = { ["versionId"] = true, ["createDate"] = true, ["isDefaultVersion"] = true, nil }

function asserts.AssertPolicyVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyVersion to be of type 'table'")
	if struct["versionId"] then asserts.AssertPolicyVersionId(struct["versionId"]) end
	if struct["createDate"] then asserts.AssertDateType(struct["createDate"]) end
	if struct["isDefaultVersion"] then asserts.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyVersion[k], "PolicyVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyVersion
-- <p>Describes a policy version.</p>
-- @param _versionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param _createDate [DateType] <p>The date and time the policy was created.</p>
-- @param _isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
function M.PolicyVersion(_versionId, _createDate, _isDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyVersion")
	local t = { 
		["versionId"] = _versionId,
		["createDate"] = _createDate,
		["isDefaultVersion"] = _isDefaultVersion,
	}
	asserts.AssertPolicyVersion(t)
	return t
end

keys.CreatePolicyVersionResponse = { ["policyDocument"] = true, ["policyVersionId"] = true, ["policyArn"] = true, ["isDefaultVersion"] = true, nil }

function asserts.AssertCreatePolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionResponse to be of type 'table'")
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	if struct["isDefaultVersion"] then asserts.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyVersionResponse[k], "CreatePolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionResponse
-- <p>The output of the CreatePolicyVersion operation.</p>
-- @param _policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param _policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param _policyArn [PolicyArn] <p>The policy ARN.</p>
-- @param _isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
function M.CreatePolicyVersionResponse(_policyDocument, _policyVersionId, _policyArn, _isDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionResponse")
	local t = { 
		["policyDocument"] = _policyDocument,
		["policyVersionId"] = _policyVersionId,
		["policyArn"] = _policyArn,
		["isDefaultVersion"] = _isDefaultVersion,
	}
	asserts.AssertCreatePolicyVersionResponse(t)
	return t
end

keys.GetRegistrationCodeRequest = { nil }

function asserts.AssertGetRegistrationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegistrationCodeRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetRegistrationCodeRequest[k], "GetRegistrationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegistrationCodeRequest
-- <p>The input to the GetRegistrationCode operation.</p>
function M.GetRegistrationCodeRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegistrationCodeRequest")
	local t = { 
	}
	asserts.AssertGetRegistrationCodeRequest(t)
	return t
end

keys.UpdateCertificateRequest = { ["newStatus"] = true, ["certificateId"] = true, nil }

function asserts.AssertUpdateCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	assert(struct["newStatus"], "Expected key newStatus to exist in table")
	if struct["newStatus"] then asserts.AssertCertificateStatus(struct["newStatus"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCertificateRequest[k], "UpdateCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCertificateRequest
-- <p>The input for the UpdateCertificate operation.</p>
-- @param _newStatus [CertificateStatus] <p>The new status.</p> <p> <b>Note:</b> Setting the status to PENDING_TRANSFER will result in an exception being thrown. PENDING_TRANSFER is a status used internally by AWS IoT. It is not intended for developer use.</p> <p> <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
-- Required parameter: newStatus
function M.UpdateCertificateRequest(_newStatus, _certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCertificateRequest")
	local t = { 
		["newStatus"] = _newStatus,
		["certificateId"] = _certificateId,
	}
	asserts.AssertUpdateCertificateRequest(t)
	return t
end

keys.ListPrincipalPoliciesResponse = { ["nextMarker"] = true, ["policies"] = true, nil }

function asserts.AssertListPrincipalPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalPoliciesResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["policies"] then asserts.AssertPolicies(struct["policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalPoliciesResponse[k], "ListPrincipalPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalPoliciesResponse
-- <p>The output from the ListPrincipalPolicies operation.</p>
-- @param _nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @param _policies [Policies] <p>The policies.</p>
function M.ListPrincipalPoliciesResponse(_nextMarker, _policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalPoliciesResponse")
	local t = { 
		["nextMarker"] = _nextMarker,
		["policies"] = _policies,
	}
	asserts.AssertListPrincipalPoliciesResponse(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of attached entities exceeds the limit.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ListOutgoingCertificatesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListOutgoingCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingCertificatesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOutgoingCertificatesRequest[k], "ListOutgoingCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingCertificatesRequest
-- <p>The input to the ListOutgoingCertificates operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
function M.ListOutgoingCertificatesRequest(_marker, _ascendingOrder, _pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingCertificatesRequest")
	local t = { 
		["marker"] = _marker,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
	}
	asserts.AssertListOutgoingCertificatesRequest(t)
	return t
end

keys.DeleteCACertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDeleteCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCACertificateRequest[k], "DeleteCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCACertificateRequest
-- <p>Input for the DeleteCACertificate operation.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate to delete.</p>
-- Required parameter: certificateId
function M.DeleteCACertificateRequest(_certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCACertificateRequest")
	local t = { 
		["certificateId"] = _certificateId,
	}
	asserts.AssertDeleteCACertificateRequest(t)
	return t
end

keys.CertificateStateException = { ["message"] = true, nil }

function asserts.AssertCertificateStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateStateException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateStateException[k], "CertificateStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateStateException
-- <p>The certificate operation is not allowed.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.CertificateStateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateStateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCertificateStateException(t)
	return t
end

keys.GetTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertGetTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTopicRuleRequest[k], "GetTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicRuleRequest
-- <p>The input for the GetTopicRule operation.</p>
-- @param _ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
function M.GetTopicRuleRequest(_ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicRuleRequest")
	local t = { 
		["ruleName"] = _ruleName,
	}
	asserts.AssertGetTopicRuleRequest(t)
	return t
end

keys.CertificateConflictException = { ["message"] = true, nil }

function asserts.AssertCertificateConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateConflictException[k], "CertificateConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateConflictException
-- <p>Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.CertificateConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCertificateConflictException(t)
	return t
end

keys.TransferData = { ["transferMessage"] = true, ["rejectDate"] = true, ["acceptDate"] = true, ["transferDate"] = true, ["rejectReason"] = true, nil }

function asserts.AssertTransferData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferData to be of type 'table'")
	if struct["transferMessage"] then asserts.AssertMessage(struct["transferMessage"]) end
	if struct["rejectDate"] then asserts.AssertDateType(struct["rejectDate"]) end
	if struct["acceptDate"] then asserts.AssertDateType(struct["acceptDate"]) end
	if struct["transferDate"] then asserts.AssertDateType(struct["transferDate"]) end
	if struct["rejectReason"] then asserts.AssertMessage(struct["rejectReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferData[k], "TransferData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferData
-- <p>Data used to transfer a certificate to an AWS account.</p>
-- @param _transferMessage [Message] <p>The transfer message.</p>
-- @param _rejectDate [DateType] <p>The date the transfer was rejected.</p>
-- @param _acceptDate [DateType] <p>The date the transfer was accepted.</p>
-- @param _transferDate [DateType] <p>The date the transfer took place.</p>
-- @param _rejectReason [Message] <p>The reason why the transfer was rejected.</p>
function M.TransferData(_transferMessage, _rejectDate, _acceptDate, _transferDate, _rejectReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferData")
	local t = { 
		["transferMessage"] = _transferMessage,
		["rejectDate"] = _rejectDate,
		["acceptDate"] = _acceptDate,
		["transferDate"] = _transferDate,
		["rejectReason"] = _rejectReason,
	}
	asserts.AssertTransferData(t)
	return t
end

keys.DeleteThingRequest = { ["expectedVersion"] = true, ["thingName"] = true, nil }

function asserts.AssertDeleteThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["expectedVersion"] then asserts.AssertOptionalVersion(struct["expectedVersion"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingRequest[k], "DeleteThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingRequest
-- <p>The input for the DeleteThing operation.</p>
-- @param _expectedVersion [OptionalVersion] <p>The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the <code>DeleteThing</code> request is rejected with a <code>VersionConflictException</code>.</p>
-- @param _thingName [ThingName] <p>The name of the thing to delete.</p>
-- Required parameter: thingName
function M.DeleteThingRequest(_expectedVersion, _thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingRequest")
	local t = { 
		["expectedVersion"] = _expectedVersion,
		["thingName"] = _thingName,
	}
	asserts.AssertDeleteThingRequest(t)
	return t
end

keys.ListTopicRulesRequest = { ["topic"] = true, ["nextToken"] = true, ["ruleDisabled"] = true, ["maxResults"] = true, nil }

function asserts.AssertListTopicRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicRulesRequest to be of type 'table'")
	if struct["topic"] then asserts.AssertTopic(struct["topic"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicRulesRequest[k], "ListTopicRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicRulesRequest
-- <p>The input for the ListTopicRules operation.</p>
-- @param _topic [Topic] <p>The topic.</p>
-- @param _nextToken [NextToken] <p>A token used to retrieve the next value.</p>
-- @param _ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @param _maxResults [MaxResults] <p>The maximum number of results to return.</p>
function M.ListTopicRulesRequest(_topic, _nextToken, _ruleDisabled, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicRulesRequest")
	local t = { 
		["topic"] = _topic,
		["nextToken"] = _nextToken,
		["ruleDisabled"] = _ruleDisabled,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListTopicRulesRequest(t)
	return t
end

keys.CreateThingTypeResponse = { ["thingTypeName"] = true, ["thingTypeArn"] = true, nil }

function asserts.AssertCreateThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingTypeResponse to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeArn"] then asserts.AssertThingTypeArn(struct["thingTypeArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingTypeResponse[k], "CreateThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingTypeResponse
-- <p>The output of the CreateThingType operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param _thingTypeArn [ThingTypeArn] <p>The Amazon Resource Name (ARN) of the thing type.</p>
function M.CreateThingTypeResponse(_thingTypeName, _thingTypeArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingTypeResponse")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["thingTypeArn"] = _thingTypeArn,
	}
	asserts.AssertCreateThingTypeResponse(t)
	return t
end

keys.ListPolicyPrincipalsRequest = { ["marker"] = true, ["policyName"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListPolicyPrincipalsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyPrincipalsRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyPrincipalsRequest[k], "ListPolicyPrincipalsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyPrincipalsRequest
-- <p>The input for the ListPolicyPrincipals operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, the results are returned in ascending creation order.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
-- Required parameter: policyName
function M.ListPolicyPrincipalsRequest(_marker, _policyName, _ascendingOrder, _pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyPrincipalsRequest")
	local t = { 
		["marker"] = _marker,
		["policyName"] = _policyName,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
	}
	asserts.AssertListPolicyPrincipalsRequest(t)
	return t
end

keys.CreatePolicyVersionRequest = { ["policyName"] = true, ["policyDocument"] = true, ["setAsDefault"] = true, nil }

function asserts.AssertCreatePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyDocument"], "Expected key policyDocument to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["setAsDefault"] then asserts.AssertSetAsDefault(struct["setAsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyVersionRequest[k], "CreatePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionRequest
-- <p>The input for the CreatePolicyVersion operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyDocument [PolicyDocument] <p>The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespaces</p>
-- @param _setAsDefault [SetAsDefault] <p>Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>
-- Required parameter: policyName
-- Required parameter: policyDocument
function M.CreatePolicyVersionRequest(_policyName, _policyDocument, _setAsDefault, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionRequest")
	local t = { 
		["policyName"] = _policyName,
		["policyDocument"] = _policyDocument,
		["setAsDefault"] = _setAsDefault,
	}
	asserts.AssertCreatePolicyVersionRequest(t)
	return t
end

keys.DetachThingPrincipalRequest = { ["thingName"] = true, ["principal"] = true, nil }

function asserts.AssertDetachThingPrincipalRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachThingPrincipalRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachThingPrincipalRequest[k], "DetachThingPrincipalRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachThingPrincipalRequest
-- <p>The input for the DetachThingPrincipal operation.</p>
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- @param _principal [Principal] <p>If the principal is a certificate, this value must be ARN of the certificate. If the principal is an Amazon Cognito identity, this value must be the ID of the Amazon Cognito identity.</p>
-- Required parameter: thingName
-- Required parameter: principal
function M.DetachThingPrincipalRequest(_thingName, _principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachThingPrincipalRequest")
	local t = { 
		["thingName"] = _thingName,
		["principal"] = _principal,
	}
	asserts.AssertDetachThingPrincipalRequest(t)
	return t
end

keys.VersionConflictException = { ["message"] = true, nil }

function asserts.AssertVersionConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionConflictException[k], "VersionConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionConflictException
-- <p>An exception thrown when the version of a thing passed to a command is different than the version specified with the --version parameter.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.VersionConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertVersionConflictException(t)
	return t
end

keys.CreatePolicyResponse = { ["policyName"] = true, ["policyDocument"] = true, ["policyVersionId"] = true, ["policyArn"] = true, nil }

function asserts.AssertCreatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyResponse to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyResponse[k], "CreatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyResponse
-- <p>The output from the CreatePolicy operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param _policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param _policyArn [PolicyArn] <p>The policy ARN.</p>
function M.CreatePolicyResponse(_policyName, _policyDocument, _policyVersionId, _policyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyResponse")
	local t = { 
		["policyName"] = _policyName,
		["policyDocument"] = _policyDocument,
		["policyVersionId"] = _policyVersionId,
		["policyArn"] = _policyArn,
	}
	asserts.AssertCreatePolicyResponse(t)
	return t
end

keys.CreateKeysAndCertificateRequest = { ["setAsActive"] = true, nil }

function asserts.AssertCreateKeysAndCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeysAndCertificateRequest to be of type 'table'")
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeysAndCertificateRequest[k], "CreateKeysAndCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeysAndCertificateRequest
-- <p>The input for the CreateKeysAndCertificate operation.</p>
-- @param _setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
function M.CreateKeysAndCertificateRequest(_setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeysAndCertificateRequest")
	local t = { 
		["setAsActive"] = _setAsActive,
	}
	asserts.AssertCreateKeysAndCertificateRequest(t)
	return t
end

keys.AttachPrincipalPolicyRequest = { ["policyName"] = true, ["principal"] = true, nil }

function asserts.AssertAttachPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPrincipalPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachPrincipalPolicyRequest[k], "AttachPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPrincipalPolicyRequest
-- <p>The input for the AttachPrincipalPolicy operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _principal [Principal] <p>The principal, which can be a certificate ARN (as returned from the CreateCertificate operation) or an Amazon Cognito ID.</p>
-- Required parameter: policyName
-- Required parameter: principal
function M.AttachPrincipalPolicyRequest(_policyName, _principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPrincipalPolicyRequest")
	local t = { 
		["policyName"] = _policyName,
		["principal"] = _principal,
	}
	asserts.AssertAttachPrincipalPolicyRequest(t)
	return t
end

keys.DeletePolicyRequest = { ["policyName"] = true, nil }

function asserts.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyRequest[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
-- <p>The input for the DeletePolicy operation.</p>
-- @param _policyName [PolicyName] <p>The name of the policy to delete.</p>
-- Required parameter: policyName
function M.DeletePolicyRequest(_policyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyRequest")
	local t = { 
		["policyName"] = _policyName,
	}
	asserts.AssertDeletePolicyRequest(t)
	return t
end

keys.UpdateThingRequest = { ["thingTypeName"] = true, ["removeThingType"] = true, ["attributePayload"] = true, ["expectedVersion"] = true, ["thingName"] = true, nil }

function asserts.AssertUpdateThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["removeThingType"] then asserts.AssertRemoveThingType(struct["removeThingType"]) end
	if struct["attributePayload"] then asserts.AssertAttributePayload(struct["attributePayload"]) end
	if struct["expectedVersion"] then asserts.AssertOptionalVersion(struct["expectedVersion"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateThingRequest[k], "UpdateThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingRequest
-- <p>The input for the UpdateThing operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param _removeThingType [RemoveThingType] <p>Remove a thing type association. If <b>true</b>, the assocation is removed.</p>
-- @param _attributePayload [AttributePayload] <p>A list of thing attributes, a JSON string containing name-value pairs. For example:</p> <p> <code>{\"attributes\":{\"name1\":\"value2\"}}</code> </p> <p>This data is used to add new attributes or update existing attributes.</p>
-- @param _expectedVersion [OptionalVersion] <p>The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the <code>UpdateThing</code> request is rejected with a <code>VersionConflictException</code>.</p>
-- @param _thingName [ThingName] <p>The name of the thing to update.</p>
-- Required parameter: thingName
function M.UpdateThingRequest(_thingTypeName, _removeThingType, _attributePayload, _expectedVersion, _thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["removeThingType"] = _removeThingType,
		["attributePayload"] = _attributePayload,
		["expectedVersion"] = _expectedVersion,
		["thingName"] = _thingName,
	}
	asserts.AssertUpdateThingRequest(t)
	return t
end

keys.TransferAlreadyCompletedException = { ["message"] = true, nil }

function asserts.AssertTransferAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferAlreadyCompletedException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferAlreadyCompletedException[k], "TransferAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferAlreadyCompletedException
-- <p>You can't revert the certificate transfer because the transfer is already complete.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.TransferAlreadyCompletedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferAlreadyCompletedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTransferAlreadyCompletedException(t)
	return t
end

keys.AttachThingPrincipalResponse = { nil }

function asserts.AssertAttachThingPrincipalResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachThingPrincipalResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AttachThingPrincipalResponse[k], "AttachThingPrincipalResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachThingPrincipalResponse
-- <p>The output from the AttachThingPrincipal operation.</p>
function M.AttachThingPrincipalResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachThingPrincipalResponse")
	local t = { 
	}
	asserts.AssertAttachThingPrincipalResponse(t)
	return t
end

keys.CreateThingTypeRequest = { ["thingTypeName"] = true, ["thingTypeProperties"] = true, nil }

function asserts.AssertCreateThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then asserts.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingTypeRequest[k], "CreateThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingTypeRequest
-- <p>The input for the CreateThingType operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param _thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties for the thing type to create. It contains information about the new thing type including a description, and a list of searchable thing attribute names.</p>
-- Required parameter: thingTypeName
function M.CreateThingTypeRequest(_thingTypeName, _thingTypeProperties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingTypeRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["thingTypeProperties"] = _thingTypeProperties,
	}
	asserts.AssertCreateThingTypeRequest(t)
	return t
end

keys.GetLoggingOptionsRequest = { nil }

function asserts.AssertGetLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingOptionsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetLoggingOptionsRequest[k], "GetLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingOptionsRequest
-- <p>The input for the GetLoggingOptions operation.</p>
function M.GetLoggingOptionsRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggingOptionsRequest")
	local t = { 
	}
	asserts.AssertGetLoggingOptionsRequest(t)
	return t
end

keys.TransferConflictException = { ["message"] = true, nil }

function asserts.AssertTransferConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferConflictException[k], "TransferConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferConflictException
-- <p>You can't transfer the certificate because authorization policies are still attached.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.TransferConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTransferConflictException(t)
	return t
end

keys.TopicRule = { ["description"] = true, ["ruleName"] = true, ["actions"] = true, ["createdAt"] = true, ["sql"] = true, ["awsIotSqlVersion"] = true, ["ruleDisabled"] = true, nil }

function asserts.AssertTopicRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRule to be of type 'table'")
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	if struct["actions"] then asserts.AssertActionList(struct["actions"]) end
	if struct["createdAt"] then asserts.AssertCreatedAtDate(struct["createdAt"]) end
	if struct["sql"] then asserts.AssertSQL(struct["sql"]) end
	if struct["awsIotSqlVersion"] then asserts.AssertAwsIotSqlVersion(struct["awsIotSqlVersion"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicRule[k], "TopicRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRule
-- <p>Describes a rule.</p>
-- @param _description [Description] <p>The description of the rule.</p>
-- @param _ruleName [RuleName] <p>The name of the rule.</p>
-- @param _actions [ActionList] <p>The actions associated with the rule.</p>
-- @param _createdAt [CreatedAtDate] <p>The date and time the rule was created.</p>
-- @param _sql [SQL] <p>The SQL statement used to query the topic. When using a SQL query with multiple lines, be sure to escape the newline characters.</p>
-- @param _awsIotSqlVersion [AwsIotSqlVersion] <p>The version of the SQL rules engine to use when evaluating the rule.</p>
-- @param _ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
function M.TopicRule(_description, _ruleName, _actions, _createdAt, _sql, _awsIotSqlVersion, _ruleDisabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicRule")
	local t = { 
		["description"] = _description,
		["ruleName"] = _ruleName,
		["actions"] = _actions,
		["createdAt"] = _createdAt,
		["sql"] = _sql,
		["awsIotSqlVersion"] = _awsIotSqlVersion,
		["ruleDisabled"] = _ruleDisabled,
	}
	asserts.AssertTopicRule(t)
	return t
end

keys.LoggingOptionsPayload = { ["logLevel"] = true, ["roleArn"] = true, nil }

function asserts.AssertLoggingOptionsPayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingOptionsPayload to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["logLevel"] then asserts.AssertLogLevel(struct["logLevel"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingOptionsPayload[k], "LoggingOptionsPayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingOptionsPayload
-- <p>Describes the logging options payload.</p>
-- @param _logLevel [LogLevel] <p>The logging level.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- Required parameter: roleArn
function M.LoggingOptionsPayload(_logLevel, _roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingOptionsPayload")
	local t = { 
		["logLevel"] = _logLevel,
		["roleArn"] = _roleArn,
	}
	asserts.AssertLoggingOptionsPayload(t)
	return t
end

keys.CreateCertificateFromCsrResponse = { ["certificateArn"] = true, ["certificateId"] = true, ["certificatePem"] = true, nil }

function asserts.AssertCreateCertificateFromCsrResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateFromCsrResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateFromCsrResponse[k], "CreateCertificateFromCsrResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateFromCsrResponse
-- <p>The output from the CreateCertificateFromCsr operation.</p>
-- @param _certificateArn [CertificateArn] <p>The Amazon Resource Name (ARN) of the certificate. You can use the ARN as a principal for policy operations.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate. Certificate management operations only take a certificateId.</p>
-- @param _certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
function M.CreateCertificateFromCsrResponse(_certificateArn, _certificateId, _certificatePem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCertificateFromCsrResponse")
	local t = { 
		["certificateArn"] = _certificateArn,
		["certificateId"] = _certificateId,
		["certificatePem"] = _certificatePem,
	}
	asserts.AssertCreateCertificateFromCsrResponse(t)
	return t
end

keys.ResourceAlreadyExistsException = { ["resourceId"] = true, ["message"] = true, ["resourceArn"] = true, nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["resourceId"] then asserts.AssertresourceId(struct["resourceId"]) end
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	if struct["resourceArn"] then asserts.AssertresourceArn(struct["resourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The resource already exists.</p>
-- @param _resourceId [resourceId] <p>The ID of the resource that caused the exception.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
-- @param _resourceArn [resourceArn] <p>The ARN of the resource that caused the exception.</p>
function M.ResourceAlreadyExistsException(_resourceId, _message, _resourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["resourceId"] = _resourceId,
		["message"] = _message,
		["resourceArn"] = _resourceArn,
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

keys.GetPolicyVersionRequest = { ["policyName"] = true, ["policyVersionId"] = true, nil }

function asserts.AssertGetPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyVersionRequest[k], "GetPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionRequest
-- <p>The input for the GetPolicyVersion operation.</p>
-- @param _policyName [PolicyName] <p>The name of the policy.</p>
-- @param _policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required parameter: policyName
-- Required parameter: policyVersionId
function M.GetPolicyVersionRequest(_policyName, _policyVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionRequest")
	local t = { 
		["policyName"] = _policyName,
		["policyVersionId"] = _policyVersionId,
	}
	asserts.AssertGetPolicyVersionRequest(t)
	return t
end

keys.TopicRulePayload = { ["awsIotSqlVersion"] = true, ["ruleDisabled"] = true, ["description"] = true, ["actions"] = true, ["sql"] = true, nil }

function asserts.AssertTopicRulePayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRulePayload to be of type 'table'")
	assert(struct["sql"], "Expected key sql to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["awsIotSqlVersion"] then asserts.AssertAwsIotSqlVersion(struct["awsIotSqlVersion"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["actions"] then asserts.AssertActionList(struct["actions"]) end
	if struct["sql"] then asserts.AssertSQL(struct["sql"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicRulePayload[k], "TopicRulePayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRulePayload
-- <p>Describes a rule.</p>
-- @param _awsIotSqlVersion [AwsIotSqlVersion] <p>The version of the SQL rules engine to use when evaluating the rule.</p>
-- @param _ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @param _description [Description] <p>The description of the rule.</p>
-- @param _actions [ActionList] <p>The actions associated with the rule.</p>
-- @param _sql [SQL] <p>The SQL statement used to query the topic. For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference">AWS IoT SQL Reference</a> in the <i>AWS IoT Developer Guide</i>.</p>
-- Required parameter: sql
-- Required parameter: actions
function M.TopicRulePayload(_awsIotSqlVersion, _ruleDisabled, _description, _actions, _sql, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicRulePayload")
	local t = { 
		["awsIotSqlVersion"] = _awsIotSqlVersion,
		["ruleDisabled"] = _ruleDisabled,
		["description"] = _description,
		["actions"] = _actions,
		["sql"] = _sql,
	}
	asserts.AssertTopicRulePayload(t)
	return t
end

keys.RegisterCertificateRequest = { ["status"] = true, ["certificatePem"] = true, ["caCertificatePem"] = true, ["setAsActive"] = true, nil }

function asserts.AssertRegisterCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCertificateRequest to be of type 'table'")
	assert(struct["certificatePem"], "Expected key certificatePem to exist in table")
	if struct["status"] then asserts.AssertCertificateStatus(struct["status"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	if struct["caCertificatePem"] then asserts.AssertCertificatePem(struct["caCertificatePem"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActiveFlag(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCertificateRequest[k], "RegisterCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCertificateRequest
-- <p>The input to the RegisterCertificate operation.</p>
-- @param _status [CertificateStatus] <p>The status of the register certificate request.</p>
-- @param _certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- @param _caCertificatePem [CertificatePem] <p>The CA certificate used to sign the device certificate being registered.</p>
-- @param _setAsActive [SetAsActiveFlag] <p>A boolean value that specifies if the CA certificate is set to active.</p>
-- Required parameter: certificatePem
function M.RegisterCertificateRequest(_status, _certificatePem, _caCertificatePem, _setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCertificateRequest")
	local t = { 
		["status"] = _status,
		["certificatePem"] = _certificatePem,
		["caCertificatePem"] = _caCertificatePem,
		["setAsActive"] = _setAsActive,
	}
	asserts.AssertRegisterCertificateRequest(t)
	return t
end

keys.ElasticsearchAction = { ["index"] = true, ["roleArn"] = true, ["endpoint"] = true, ["type"] = true, ["id"] = true, nil }

function asserts.AssertElasticsearchAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["endpoint"], "Expected key endpoint to exist in table")
	assert(struct["index"], "Expected key index to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["index"] then asserts.AssertElasticsearchIndex(struct["index"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["endpoint"] then asserts.AssertElasticsearchEndpoint(struct["endpoint"]) end
	if struct["type"] then asserts.AssertElasticsearchType(struct["type"]) end
	if struct["id"] then asserts.AssertElasticsearchId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchAction[k], "ElasticsearchAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchAction
-- <p>Describes an action that writes data to an Amazon Elasticsearch Service domain.</p>
-- @param _index [ElasticsearchIndex] <p>The Elasticsearch index where you want to store your data.</p>
-- @param _roleArn [AwsArn] <p>The IAM role ARN that has access to Elasticsearch.</p>
-- @param _endpoint [ElasticsearchEndpoint] <p>The endpoint of your Elasticsearch domain.</p>
-- @param _type [ElasticsearchType] <p>The type of document you are storing.</p>
-- @param _id [ElasticsearchId] <p>The unique identifier for the document you are storing.</p>
-- Required parameter: roleArn
-- Required parameter: endpoint
-- Required parameter: index
-- Required parameter: type
-- Required parameter: id
function M.ElasticsearchAction(_index, _roleArn, _endpoint, _type, _id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchAction")
	local t = { 
		["index"] = _index,
		["roleArn"] = _roleArn,
		["endpoint"] = _endpoint,
		["type"] = _type,
		["id"] = _id,
	}
	asserts.AssertElasticsearchAction(t)
	return t
end

keys.ListThingPrincipalsRequest = { ["thingName"] = true, nil }

function asserts.AssertListThingPrincipalsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingPrincipalsRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingPrincipalsRequest[k], "ListThingPrincipalsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingPrincipalsRequest
-- <p>The input for the ListThingPrincipal operation.</p>
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- Required parameter: thingName
function M.ListThingPrincipalsRequest(_thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingPrincipalsRequest")
	local t = { 
		["thingName"] = _thingName,
	}
	asserts.AssertListThingPrincipalsRequest(t)
	return t
end

keys.DynamoDBv2Action = { ["putItem"] = true, ["roleArn"] = true, nil }

function asserts.AssertDynamoDBv2Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBv2Action to be of type 'table'")
	if struct["putItem"] then asserts.AssertPutItemInput(struct["putItem"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamoDBv2Action[k], "DynamoDBv2Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBv2Action
-- <p>Describes an action to write to a DynamoDB table.</p> <p>This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.</p>
-- @param _putItem [PutItemInput] <p>Specifies the DynamoDB table to which the message data will be written. For example:</p> <p> <code>{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName": "my-table" } } }</code> </p> <p>Each attribute in the message payload will be written to a separate column in the DynamoDB database.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
function M.DynamoDBv2Action(_putItem, _roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DynamoDBv2Action")
	local t = { 
		["putItem"] = _putItem,
		["roleArn"] = _roleArn,
	}
	asserts.AssertDynamoDBv2Action(t)
	return t
end

keys.AttachThingPrincipalRequest = { ["thingName"] = true, ["principal"] = true, nil }

function asserts.AssertAttachThingPrincipalRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachThingPrincipalRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachThingPrincipalRequest[k], "AttachThingPrincipalRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachThingPrincipalRequest
-- <p>The input for the AttachThingPrincipal operation.</p>
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- @param _principal [Principal] <p>The principal, such as a certificate or other credential.</p>
-- Required parameter: thingName
-- Required parameter: principal
function M.AttachThingPrincipalRequest(_thingName, _principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachThingPrincipalRequest")
	local t = { 
		["thingName"] = _thingName,
		["principal"] = _principal,
	}
	asserts.AssertAttachThingPrincipalRequest(t)
	return t
end

keys.CACertificateDescription = { ["certificateArn"] = true, ["status"] = true, ["autoRegistrationStatus"] = true, ["certificateId"] = true, ["certificatePem"] = true, ["ownedBy"] = true, ["creationDate"] = true, nil }

function asserts.AssertCACertificateDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CACertificateDescription to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCACertificateStatus(struct["status"]) end
	if struct["autoRegistrationStatus"] then asserts.AssertAutoRegistrationStatus(struct["autoRegistrationStatus"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	if struct["ownedBy"] then asserts.AssertAwsAccountId(struct["ownedBy"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CACertificateDescription[k], "CACertificateDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CACertificateDescription
-- <p>Describes a CA certificate.</p>
-- @param _certificateArn [CertificateArn] <p>The CA certificate ARN.</p>
-- @param _status [CACertificateStatus] <p>The status of a CA certificate.</p>
-- @param _autoRegistrationStatus [AutoRegistrationStatus] <p>Whether the CA certificate configured for auto registration of device certificates. Valid values are "ENABLE" and "DISABLE"</p>
-- @param _certificateId [CertificateId] <p>The CA certificate ID.</p>
-- @param _certificatePem [CertificatePem] <p>The CA certificate data, in PEM format.</p>
-- @param _ownedBy [AwsAccountId] <p>The owner of the CA certificate.</p>
-- @param _creationDate [DateType] <p>The date the CA certificate was created.</p>
function M.CACertificateDescription(_certificateArn, _status, _autoRegistrationStatus, _certificateId, _certificatePem, _ownedBy, _creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CACertificateDescription")
	local t = { 
		["certificateArn"] = _certificateArn,
		["status"] = _status,
		["autoRegistrationStatus"] = _autoRegistrationStatus,
		["certificateId"] = _certificateId,
		["certificatePem"] = _certificatePem,
		["ownedBy"] = _ownedBy,
		["creationDate"] = _creationDate,
	}
	asserts.AssertCACertificateDescription(t)
	return t
end

keys.ReplaceTopicRuleRequest = { ["topicRulePayload"] = true, ["ruleName"] = true, nil }

function asserts.AssertReplaceTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	assert(struct["topicRulePayload"], "Expected key topicRulePayload to exist in table")
	if struct["topicRulePayload"] then asserts.AssertTopicRulePayload(struct["topicRulePayload"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReplaceTopicRuleRequest[k], "ReplaceTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceTopicRuleRequest
-- <p>The input for the ReplaceTopicRule operation.</p>
-- @param _topicRulePayload [TopicRulePayload] <p>The rule payload.</p>
-- @param _ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
-- Required parameter: topicRulePayload
function M.ReplaceTopicRuleRequest(_topicRulePayload, _ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplaceTopicRuleRequest")
	local t = { 
		["topicRulePayload"] = _topicRulePayload,
		["ruleName"] = _ruleName,
	}
	asserts.AssertReplaceTopicRuleRequest(t)
	return t
end

keys.InvalidRequestException = { ["message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request is not valid.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.InvalidRequestException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.DeleteConflictException = { ["message"] = true, nil }

function asserts.AssertDeleteConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConflictException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConflictException[k], "DeleteConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConflictException
-- <p>You can't delete the resource because it is attached to one or more resources.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.DeleteConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDeleteConflictException(t)
	return t
end

keys.Certificate = { ["certificateArn"] = true, ["status"] = true, ["creationDate"] = true, ["certificateId"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCertificateStatus(struct["status"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>Information about a certificate.</p>
-- @param _certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @param _status [CertificateStatus] <p>The status of the certificate.</p> <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param _creationDate [DateType] <p>The date and time the certificate was created.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
function M.Certificate(_certificateArn, _status, _creationDate, _certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["certificateArn"] = _certificateArn,
		["status"] = _status,
		["creationDate"] = _creationDate,
		["certificateId"] = _certificateId,
	}
	asserts.AssertCertificate(t)
	return t
end

keys.FirehoseAction = { ["roleArn"] = true, ["deliveryStreamName"] = true, ["separator"] = true, nil }

function asserts.AssertFirehoseAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FirehoseAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["deliveryStreamName"], "Expected key deliveryStreamName to exist in table")
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["deliveryStreamName"] then asserts.AssertDeliveryStreamName(struct["deliveryStreamName"]) end
	if struct["separator"] then asserts.AssertFirehoseSeparator(struct["separator"]) end
	for k,_ in pairs(struct) do
		assert(keys.FirehoseAction[k], "FirehoseAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FirehoseAction
-- <p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>
-- @param _roleArn [AwsArn] <p>The IAM role that grants access to the Amazon Kinesis Firehost stream.</p>
-- @param _deliveryStreamName [DeliveryStreamName] <p>The delivery stream name.</p>
-- @param _separator [FirehoseSeparator] <p>A character separator that will be used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).</p>
-- Required parameter: roleArn
-- Required parameter: deliveryStreamName
function M.FirehoseAction(_roleArn, _deliveryStreamName, _separator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FirehoseAction")
	local t = { 
		["roleArn"] = _roleArn,
		["deliveryStreamName"] = _deliveryStreamName,
		["separator"] = _separator,
	}
	asserts.AssertFirehoseAction(t)
	return t
end

keys.UpdateThingResponse = { nil }

function asserts.AssertUpdateThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateThingResponse[k], "UpdateThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingResponse
-- <p>The output from the UpdateThing operation.</p>
function M.UpdateThingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingResponse")
	local t = { 
	}
	asserts.AssertUpdateThingResponse(t)
	return t
end

keys.AttributePayload = { ["attributes"] = true, ["merge"] = true, nil }

function asserts.AssertAttributePayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributePayload to be of type 'table'")
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["merge"] then asserts.AssertFlag(struct["merge"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributePayload[k], "AttributePayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributePayload
-- <p>The attribute payload.</p>
-- @param _attributes [Attributes] <p>A JSON string containing up to three key-value pair in JSON format. For example:</p> <p> <code>{\"attributes\":{\"string1\":\"string2\"}}</code> </p>
-- @param _merge [Flag] <p>Specifies whether the list of attributes provided in the <code>AttributePayload</code> is merged with the attributes stored in the registry, instead of overwriting them.</p> <p>To remove an attribute, call <code>UpdateThing</code> with an empty attribute value.</p> <note> <p>The <code>merge</code> attribute is only valid when calling <code>UpdateThing</code>.</p> </note>
function M.AttributePayload(_attributes, _merge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributePayload")
	local t = { 
		["attributes"] = _attributes,
		["merge"] = _merge,
	}
	asserts.AssertAttributePayload(t)
	return t
end

keys.AcceptCertificateTransferRequest = { ["certificateId"] = true, ["setAsActive"] = true, nil }

function asserts.AssertAcceptCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptCertificateTransferRequest[k], "AcceptCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptCertificateTransferRequest
-- <p>The input for the AcceptCertificateTransfer operation.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @param _setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- Required parameter: certificateId
function M.AcceptCertificateTransferRequest(_certificateId, _setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptCertificateTransferRequest")
	local t = { 
		["certificateId"] = _certificateId,
		["setAsActive"] = _setAsActive,
	}
	asserts.AssertAcceptCertificateTransferRequest(t)
	return t
end

keys.ListPoliciesResponse = { ["nextMarker"] = true, ["policies"] = true, nil }

function asserts.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["policies"] then asserts.AssertPolicies(struct["policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesResponse[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
-- <p>The output from the ListPolicies operation.</p>
-- @param _nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @param _policies [Policies] <p>The descriptions of the policies.</p>
function M.ListPoliciesResponse(_nextMarker, _policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesResponse")
	local t = { 
		["nextMarker"] = _nextMarker,
		["policies"] = _policies,
	}
	asserts.AssertListPoliciesResponse(t)
	return t
end

keys.GetTopicRuleResponse = { ["ruleArn"] = true, ["rule"] = true, nil }

function asserts.AssertGetTopicRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicRuleResponse to be of type 'table'")
	if struct["ruleArn"] then asserts.AssertRuleArn(struct["ruleArn"]) end
	if struct["rule"] then asserts.AssertTopicRule(struct["rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTopicRuleResponse[k], "GetTopicRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicRuleResponse
-- <p>The output from the GetTopicRule operation.</p>
-- @param _ruleArn [RuleArn] <p>The rule ARN.</p>
-- @param _rule [TopicRule] <p>The rule.</p>
function M.GetTopicRuleResponse(_ruleArn, _rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicRuleResponse")
	local t = { 
		["ruleArn"] = _ruleArn,
		["rule"] = _rule,
	}
	asserts.AssertGetTopicRuleResponse(t)
	return t
end

keys.DisableTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertDisableTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableTopicRuleRequest[k], "DisableTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableTopicRuleRequest
-- <p>The input for the DisableTopicRuleRequest operation.</p>
-- @param _ruleName [RuleName] <p>The name of the rule to disable.</p>
-- Required parameter: ruleName
function M.DisableTopicRuleRequest(_ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableTopicRuleRequest")
	local t = { 
		["ruleName"] = _ruleName,
	}
	asserts.AssertDisableTopicRuleRequest(t)
	return t
end

keys.SqsAction = { ["queueUrl"] = true, ["roleArn"] = true, ["useBase64"] = true, nil }

function asserts.AssertSqsAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqsAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["queueUrl"], "Expected key queueUrl to exist in table")
	if struct["queueUrl"] then asserts.AssertQueueUrl(struct["queueUrl"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["useBase64"] then asserts.AssertUseBase64(struct["useBase64"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqsAction[k], "SqsAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqsAction
-- <p>Describes an action to publish data to an Amazon SQS queue.</p>
-- @param _queueUrl [QueueUrl] <p>The URL of the Amazon SQS queue.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @param _useBase64 [UseBase64] <p>Specifies whether to use Base64 encoding.</p>
-- Required parameter: roleArn
-- Required parameter: queueUrl
function M.SqsAction(_queueUrl, _roleArn, _useBase64, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqsAction")
	local t = { 
		["queueUrl"] = _queueUrl,
		["roleArn"] = _roleArn,
		["useBase64"] = _useBase64,
	}
	asserts.AssertSqsAction(t)
	return t
end

keys.DeleteThingTypeResponse = { nil }

function asserts.AssertDeleteThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingTypeResponse[k], "DeleteThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingTypeResponse
-- <p>The output for the DeleteThingType operation.</p>
function M.DeleteThingTypeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingTypeResponse")
	local t = { 
	}
	asserts.AssertDeleteThingTypeResponse(t)
	return t
end

keys.DescribeCertificateResponse = { ["certificateDescription"] = true, nil }

function asserts.AssertDescribeCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateResponse to be of type 'table'")
	if struct["certificateDescription"] then asserts.AssertCertificateDescription(struct["certificateDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateResponse[k], "DescribeCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateResponse
-- <p>The output of the DescribeCertificate operation.</p>
-- @param _certificateDescription [CertificateDescription] <p>The description of the certificate.</p>
function M.DescribeCertificateResponse(_certificateDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificateResponse")
	local t = { 
		["certificateDescription"] = _certificateDescription,
	}
	asserts.AssertDescribeCertificateResponse(t)
	return t
end

keys.RejectCertificateTransferRequest = { ["rejectReason"] = true, ["certificateId"] = true, nil }

function asserts.AssertRejectCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["rejectReason"] then asserts.AssertMessage(struct["rejectReason"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectCertificateTransferRequest[k], "RejectCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectCertificateTransferRequest
-- <p>The input for the RejectCertificateTransfer operation.</p>
-- @param _rejectReason [Message] <p>The reason the certificate transfer was rejected.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.RejectCertificateTransferRequest(_rejectReason, _certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectCertificateTransferRequest")
	local t = { 
		["rejectReason"] = _rejectReason,
		["certificateId"] = _certificateId,
	}
	asserts.AssertRejectCertificateTransferRequest(t)
	return t
end

keys.ListCACertificatesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListCACertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCACertificatesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCACertificatesRequest[k], "ListCACertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCACertificatesRequest
-- <p>Input for the ListCACertificates operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Determines the order of the results.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
function M.ListCACertificatesRequest(_marker, _ascendingOrder, _pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCACertificatesRequest")
	local t = { 
		["marker"] = _marker,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
	}
	asserts.AssertListCACertificatesRequest(t)
	return t
end

keys.SetLoggingOptionsRequest = { ["loggingOptionsPayload"] = true, nil }

function asserts.AssertSetLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoggingOptionsRequest to be of type 'table'")
	assert(struct["loggingOptionsPayload"], "Expected key loggingOptionsPayload to exist in table")
	if struct["loggingOptionsPayload"] then asserts.AssertLoggingOptionsPayload(struct["loggingOptionsPayload"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetLoggingOptionsRequest[k], "SetLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoggingOptionsRequest
-- <p>The input for the SetLoggingOptions operation.</p>
-- @param _loggingOptionsPayload [LoggingOptionsPayload] <p>The logging options payload.</p>
-- Required parameter: loggingOptionsPayload
function M.SetLoggingOptionsRequest(_loggingOptionsPayload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLoggingOptionsRequest")
	local t = { 
		["loggingOptionsPayload"] = _loggingOptionsPayload,
	}
	asserts.AssertSetLoggingOptionsRequest(t)
	return t
end

keys.CreateKeysAndCertificateResponse = { ["certificateArn"] = true, ["keyPair"] = true, ["certificateId"] = true, ["certificatePem"] = true, nil }

function asserts.AssertCreateKeysAndCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeysAndCertificateResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["keyPair"] then asserts.AssertKeyPair(struct["keyPair"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeysAndCertificateResponse[k], "CreateKeysAndCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeysAndCertificateResponse
-- <p>The output of the CreateKeysAndCertificate operation.</p>
-- @param _certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @param _keyPair [KeyPair] <p>The generated key pair.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate. AWS IoT issues a default subject name for the certificate (for example, AWS IoT Certificate).</p>
-- @param _certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
function M.CreateKeysAndCertificateResponse(_certificateArn, _keyPair, _certificateId, _certificatePem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeysAndCertificateResponse")
	local t = { 
		["certificateArn"] = _certificateArn,
		["keyPair"] = _keyPair,
		["certificateId"] = _certificateId,
		["certificatePem"] = _certificatePem,
	}
	asserts.AssertCreateKeysAndCertificateResponse(t)
	return t
end

keys.ListCertificatesResponse = { ["certificates"] = true, ["nextMarker"] = true, nil }

function asserts.AssertListCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesResponse to be of type 'table'")
	if struct["certificates"] then asserts.AssertCertificates(struct["certificates"]) end
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesResponse[k], "ListCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesResponse
-- <p>The output of the ListCertificates operation.</p>
-- @param _certificates [Certificates] <p>The descriptions of the certificates.</p>
-- @param _nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
function M.ListCertificatesResponse(_certificates, _nextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesResponse")
	local t = { 
		["certificates"] = _certificates,
		["nextMarker"] = _nextMarker,
	}
	asserts.AssertListCertificatesResponse(t)
	return t
end

keys.TopicRuleListItem = { ["topicPattern"] = true, ["ruleArn"] = true, ["ruleDisabled"] = true, ["createdAt"] = true, ["ruleName"] = true, nil }

function asserts.AssertTopicRuleListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRuleListItem to be of type 'table'")
	if struct["topicPattern"] then asserts.AssertTopicPattern(struct["topicPattern"]) end
	if struct["ruleArn"] then asserts.AssertRuleArn(struct["ruleArn"]) end
	if struct["ruleDisabled"] then asserts.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["createdAt"] then asserts.AssertCreatedAtDate(struct["createdAt"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicRuleListItem[k], "TopicRuleListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRuleListItem
-- <p>Describes a rule.</p>
-- @param _topicPattern [TopicPattern] <p>The pattern for the topic names that apply.</p>
-- @param _ruleArn [RuleArn] <p>The rule ARN.</p>
-- @param _ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @param _createdAt [CreatedAtDate] <p>The date and time the rule was created.</p>
-- @param _ruleName [RuleName] <p>The name of the rule.</p>
function M.TopicRuleListItem(_topicPattern, _ruleArn, _ruleDisabled, _createdAt, _ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicRuleListItem")
	local t = { 
		["topicPattern"] = _topicPattern,
		["ruleArn"] = _ruleArn,
		["ruleDisabled"] = _ruleDisabled,
		["createdAt"] = _createdAt,
		["ruleName"] = _ruleName,
	}
	asserts.AssertTopicRuleListItem(t)
	return t
end

keys.DescribeThingTypeResponse = { ["thingTypeName"] = true, ["thingTypeProperties"] = true, ["thingTypeMetadata"] = true, nil }

function asserts.AssertDescribeThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingTypeResponse to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then asserts.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	if struct["thingTypeMetadata"] then asserts.AssertThingTypeMetadata(struct["thingTypeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingTypeResponse[k], "DescribeThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingTypeResponse
-- <p>The output for the DescribeThingType operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param _thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties contains information about the thing type including description, and a list of searchable thing attribute names.</p>
-- @param _thingTypeMetadata [ThingTypeMetadata] <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.</p>
function M.DescribeThingTypeResponse(_thingTypeName, _thingTypeProperties, _thingTypeMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingTypeResponse")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["thingTypeProperties"] = _thingTypeProperties,
		["thingTypeMetadata"] = _thingTypeMetadata,
	}
	asserts.AssertDescribeThingTypeResponse(t)
	return t
end

keys.EnableTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertEnableTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableTopicRuleRequest[k], "EnableTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableTopicRuleRequest
-- <p>The input for the EnableTopicRuleRequest operation.</p>
-- @param _ruleName [RuleName] <p>The name of the topic rule to enable.</p>
-- Required parameter: ruleName
function M.EnableTopicRuleRequest(_ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableTopicRuleRequest")
	local t = { 
		["ruleName"] = _ruleName,
	}
	asserts.AssertEnableTopicRuleRequest(t)
	return t
end

keys.ListCertificatesByCAResponse = { ["certificates"] = true, ["nextMarker"] = true, nil }

function asserts.AssertListCertificatesByCAResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesByCAResponse to be of type 'table'")
	if struct["certificates"] then asserts.AssertCertificates(struct["certificates"]) end
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesByCAResponse[k], "ListCertificatesByCAResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesByCAResponse
-- <p>The output of the ListCertificatesByCA operation.</p>
-- @param _certificates [Certificates] <p>The device certificates signed by the specified CA certificate.</p>
-- @param _nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
function M.ListCertificatesByCAResponse(_certificates, _nextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesByCAResponse")
	local t = { 
		["certificates"] = _certificates,
		["nextMarker"] = _nextMarker,
	}
	asserts.AssertListCertificatesByCAResponse(t)
	return t
end

keys.ListTopicRulesResponse = { ["rules"] = true, ["nextToken"] = true, nil }

function asserts.AssertListTopicRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicRulesResponse to be of type 'table'")
	if struct["rules"] then asserts.AssertTopicRuleList(struct["rules"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicRulesResponse[k], "ListTopicRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicRulesResponse
-- <p>The output from the ListTopicRules operation.</p>
-- @param _rules [TopicRuleList] <p>The rules.</p>
-- @param _nextToken [NextToken] <p>A token used to retrieve the next value.</p>
function M.ListTopicRulesResponse(_rules, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicRulesResponse")
	local t = { 
		["rules"] = _rules,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListTopicRulesResponse(t)
	return t
end

keys.RegisterCACertificateResponse = { ["certificateArn"] = true, ["certificateId"] = true, nil }

function asserts.AssertRegisterCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCACertificateResponse to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCACertificateResponse[k], "RegisterCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCACertificateResponse
-- <p>The output from the RegisterCACertificateResponse operation.</p>
-- @param _certificateArn [CertificateArn] <p>The CA certificate ARN.</p>
-- @param _certificateId [CertificateId] <p>The CA certificate identifier.</p>
function M.RegisterCACertificateResponse(_certificateArn, _certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCACertificateResponse")
	local t = { 
		["certificateArn"] = _certificateArn,
		["certificateId"] = _certificateId,
	}
	asserts.AssertRegisterCACertificateResponse(t)
	return t
end

keys.ListOutgoingCertificatesResponse = { ["nextMarker"] = true, ["outgoingCertificates"] = true, nil }

function asserts.AssertListOutgoingCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingCertificatesResponse to be of type 'table'")
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	if struct["outgoingCertificates"] then asserts.AssertOutgoingCertificates(struct["outgoingCertificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOutgoingCertificatesResponse[k], "ListOutgoingCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingCertificatesResponse
-- <p>The output from the ListOutgoingCertificates operation.</p>
-- @param _nextMarker [Marker] <p>The marker for the next set of results.</p>
-- @param _outgoingCertificates [OutgoingCertificates] <p>The certificates that are being transfered but not yet accepted.</p>
function M.ListOutgoingCertificatesResponse(_nextMarker, _outgoingCertificates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingCertificatesResponse")
	local t = { 
		["nextMarker"] = _nextMarker,
		["outgoingCertificates"] = _outgoingCertificates,
	}
	asserts.AssertListOutgoingCertificatesResponse(t)
	return t
end

keys.DescribeCertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDescribeCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCertificateRequest[k], "DescribeCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateRequest
-- <p>The input for the DescribeCertificate operation.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.DescribeCertificateRequest(_certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificateRequest")
	local t = { 
		["certificateId"] = _certificateId,
	}
	asserts.AssertDescribeCertificateRequest(t)
	return t
end

keys.CreateThingResponse = { ["thingArn"] = true, ["thingName"] = true, nil }

function asserts.AssertCreateThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingResponse to be of type 'table'")
	if struct["thingArn"] then asserts.AssertThingArn(struct["thingArn"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateThingResponse[k], "CreateThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingResponse
-- <p>The output of the CreateThing operation.</p>
-- @param _thingArn [ThingArn] <p>The ARN of the new thing.</p>
-- @param _thingName [ThingName] <p>The name of the new thing.</p>
function M.CreateThingResponse(_thingArn, _thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingResponse")
	local t = { 
		["thingArn"] = _thingArn,
		["thingName"] = _thingName,
	}
	asserts.AssertCreateThingResponse(t)
	return t
end

keys.InternalException = { ["message"] = true, nil }

function asserts.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalException[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>An unexpected error has occurred.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.InternalException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalException(t)
	return t
end

keys.DeprecateThingTypeResponse = { nil }

function asserts.AssertDeprecateThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateThingTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeprecateThingTypeResponse[k], "DeprecateThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateThingTypeResponse
-- <p>The output for the DeprecateThingType operation.</p>
function M.DeprecateThingTypeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateThingTypeResponse")
	local t = { 
	}
	asserts.AssertDeprecateThingTypeResponse(t)
	return t
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>An unexpected error has occurred.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.InternalFailureException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalFailureException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalFailureException(t)
	return t
end

keys.CloudwatchMetricAction = { ["metricUnit"] = true, ["roleArn"] = true, ["metricTimestamp"] = true, ["metricNamespace"] = true, ["metricValue"] = true, ["metricName"] = true, nil }

function asserts.AssertCloudwatchMetricAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchMetricAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["metricNamespace"], "Expected key metricNamespace to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["metricValue"], "Expected key metricValue to exist in table")
	assert(struct["metricUnit"], "Expected key metricUnit to exist in table")
	if struct["metricUnit"] then asserts.AssertMetricUnit(struct["metricUnit"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["metricTimestamp"] then asserts.AssertMetricTimestamp(struct["metricTimestamp"]) end
	if struct["metricNamespace"] then asserts.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["metricValue"] then asserts.AssertMetricValue(struct["metricValue"]) end
	if struct["metricName"] then asserts.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudwatchMetricAction[k], "CloudwatchMetricAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchMetricAction
-- <p>Describes an action that captures a CloudWatch metric.</p>
-- @param _metricUnit [MetricUnit] <p>The <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit">metric unit</a> supported by CloudWatch.</p>
-- @param _roleArn [AwsArn] <p>The IAM role that allows access to the CloudWatch metric.</p>
-- @param _metricTimestamp [MetricTimestamp] <p>An optional <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp">Unix timestamp</a>.</p>
-- @param _metricNamespace [MetricNamespace] <p>The CloudWatch metric namespace name.</p>
-- @param _metricValue [MetricValue] <p>The CloudWatch metric value.</p>
-- @param _metricName [MetricName] <p>The CloudWatch metric name.</p>
-- Required parameter: roleArn
-- Required parameter: metricNamespace
-- Required parameter: metricName
-- Required parameter: metricValue
-- Required parameter: metricUnit
function M.CloudwatchMetricAction(_metricUnit, _roleArn, _metricTimestamp, _metricNamespace, _metricValue, _metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudwatchMetricAction")
	local t = { 
		["metricUnit"] = _metricUnit,
		["roleArn"] = _roleArn,
		["metricTimestamp"] = _metricTimestamp,
		["metricNamespace"] = _metricNamespace,
		["metricValue"] = _metricValue,
		["metricName"] = _metricName,
	}
	asserts.AssertCloudwatchMetricAction(t)
	return t
end

keys.MalformedPolicyException = { ["message"] = true, nil }

function asserts.AssertMalformedPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedPolicyException[k], "MalformedPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyException
-- <p>The policy documentation is not valid.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.MalformedPolicyException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMalformedPolicyException(t)
	return t
end

keys.DescribeThingTypeRequest = { ["thingTypeName"] = true, nil }

function asserts.AssertDescribeThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingTypeRequest[k], "DescribeThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingTypeRequest
-- <p>The input for the DescribeThingType operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- Required parameter: thingTypeName
function M.DescribeThingTypeRequest(_thingTypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingTypeRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
	}
	asserts.AssertDescribeThingTypeRequest(t)
	return t
end

keys.Action = { ["dynamoDBv2"] = true, ["salesforce"] = true, ["kinesis"] = true, ["sqs"] = true, ["republish"] = true, ["dynamoDB"] = true, ["s3"] = true, ["cloudwatchAlarm"] = true, ["sns"] = true, ["elasticsearch"] = true, ["cloudwatchMetric"] = true, ["firehose"] = true, ["lambda"] = true, nil }

function asserts.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	if struct["dynamoDBv2"] then asserts.AssertDynamoDBv2Action(struct["dynamoDBv2"]) end
	if struct["salesforce"] then asserts.AssertSalesforceAction(struct["salesforce"]) end
	if struct["kinesis"] then asserts.AssertKinesisAction(struct["kinesis"]) end
	if struct["sqs"] then asserts.AssertSqsAction(struct["sqs"]) end
	if struct["republish"] then asserts.AssertRepublishAction(struct["republish"]) end
	if struct["dynamoDB"] then asserts.AssertDynamoDBAction(struct["dynamoDB"]) end
	if struct["s3"] then asserts.AssertS3Action(struct["s3"]) end
	if struct["cloudwatchAlarm"] then asserts.AssertCloudwatchAlarmAction(struct["cloudwatchAlarm"]) end
	if struct["sns"] then asserts.AssertSnsAction(struct["sns"]) end
	if struct["elasticsearch"] then asserts.AssertElasticsearchAction(struct["elasticsearch"]) end
	if struct["cloudwatchMetric"] then asserts.AssertCloudwatchMetricAction(struct["cloudwatchMetric"]) end
	if struct["firehose"] then asserts.AssertFirehoseAction(struct["firehose"]) end
	if struct["lambda"] then asserts.AssertLambdaAction(struct["lambda"]) end
	for k,_ in pairs(struct) do
		assert(keys.Action[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- <p>Describes the actions associated with a rule.</p>
-- @param _dynamoDBv2 [DynamoDBv2Action] <p>Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.</p>
-- @param _salesforce [SalesforceAction] <p>Send a message to a Salesforce IoT Cloud Input Stream.</p>
-- @param _kinesis [KinesisAction] <p>Write data to an Amazon Kinesis stream.</p>
-- @param _sqs [SqsAction] <p>Publish to an Amazon SQS queue.</p>
-- @param _republish [RepublishAction] <p>Publish to another MQTT topic.</p>
-- @param _dynamoDB [DynamoDBAction] <p>Write to a DynamoDB table.</p>
-- @param _s3 [S3Action] <p>Write to an Amazon S3 bucket.</p>
-- @param _cloudwatchAlarm [CloudwatchAlarmAction] <p>Change the state of a CloudWatch alarm.</p>
-- @param _sns [SnsAction] <p>Publish to an Amazon SNS topic.</p>
-- @param _elasticsearch [ElasticsearchAction] <p>Write data to an Amazon Elasticsearch Service domain.</p>
-- @param _cloudwatchMetric [CloudwatchMetricAction] <p>Capture a CloudWatch metric.</p>
-- @param _firehose [FirehoseAction] <p>Write to an Amazon Kinesis Firehose stream.</p>
-- @param _lambda [LambdaAction] <p>Invoke a Lambda function.</p>
function M.Action(_dynamoDBv2, _salesforce, _kinesis, _sqs, _republish, _dynamoDB, _s3, _cloudwatchAlarm, _sns, _elasticsearch, _cloudwatchMetric, _firehose, _lambda, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Action")
	local t = { 
		["dynamoDBv2"] = _dynamoDBv2,
		["salesforce"] = _salesforce,
		["kinesis"] = _kinesis,
		["sqs"] = _sqs,
		["republish"] = _republish,
		["dynamoDB"] = _dynamoDB,
		["s3"] = _s3,
		["cloudwatchAlarm"] = _cloudwatchAlarm,
		["sns"] = _sns,
		["elasticsearch"] = _elasticsearch,
		["cloudwatchMetric"] = _cloudwatchMetric,
		["firehose"] = _firehose,
		["lambda"] = _lambda,
	}
	asserts.AssertAction(t)
	return t
end

keys.GetLoggingOptionsResponse = { ["logLevel"] = true, ["roleArn"] = true, nil }

function asserts.AssertGetLoggingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingOptionsResponse to be of type 'table'")
	if struct["logLevel"] then asserts.AssertLogLevel(struct["logLevel"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggingOptionsResponse[k], "GetLoggingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingOptionsResponse
-- <p>The output from the GetLoggingOptions operation.</p>
-- @param _logLevel [LogLevel] <p>The logging level.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
function M.GetLoggingOptionsResponse(_logLevel, _roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggingOptionsResponse")
	local t = { 
		["logLevel"] = _logLevel,
		["roleArn"] = _roleArn,
	}
	asserts.AssertGetLoggingOptionsResponse(t)
	return t
end

keys.S3Action = { ["cannedAcl"] = true, ["roleArn"] = true, ["bucketName"] = true, ["key"] = true, nil }

function asserts.AssertS3Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Action to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["cannedAcl"] then asserts.AssertCannedAccessControlList(struct["cannedAcl"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["bucketName"] then asserts.AssertBucketName(struct["bucketName"]) end
	if struct["key"] then asserts.AssertKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Action[k], "S3Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Action
-- <p>Describes an action to write data to an Amazon S3 bucket.</p>
-- @param _cannedAcl [CannedAccessControlList] <p>The Amazon S3 canned ACL that controls access to the object identified by the object key. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl">S3 canned ACLs</a>.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @param _bucketName [BucketName] <p>The Amazon S3 bucket.</p>
-- @param _key [Key] <p>The object key.</p>
-- Required parameter: roleArn
-- Required parameter: bucketName
-- Required parameter: key
function M.S3Action(_cannedAcl, _roleArn, _bucketName, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Action")
	local t = { 
		["cannedAcl"] = _cannedAcl,
		["roleArn"] = _roleArn,
		["bucketName"] = _bucketName,
		["key"] = _key,
	}
	asserts.AssertS3Action(t)
	return t
end

keys.DescribeCACertificateResponse = { ["certificateDescription"] = true, nil }

function asserts.AssertDescribeCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCACertificateResponse to be of type 'table'")
	if struct["certificateDescription"] then asserts.AssertCACertificateDescription(struct["certificateDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCACertificateResponse[k], "DescribeCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCACertificateResponse
-- <p>The output from the DescribeCACertificate operation.</p>
-- @param _certificateDescription [CACertificateDescription] <p>The CA certificate description.</p>
function M.DescribeCACertificateResponse(_certificateDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCACertificateResponse")
	local t = { 
		["certificateDescription"] = _certificateDescription,
	}
	asserts.AssertDescribeCACertificateResponse(t)
	return t
end

keys.ListCACertificatesResponse = { ["certificates"] = true, ["nextMarker"] = true, nil }

function asserts.AssertListCACertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCACertificatesResponse to be of type 'table'")
	if struct["certificates"] then asserts.AssertCACertificates(struct["certificates"]) end
	if struct["nextMarker"] then asserts.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCACertificatesResponse[k], "ListCACertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCACertificatesResponse
-- <p>The output from the ListCACertificates operation.</p>
-- @param _certificates [CACertificates] <p>The CA certificates registered in your AWS account.</p>
-- @param _nextMarker [Marker] <p>The current position within the list of CA certificates.</p>
function M.ListCACertificatesResponse(_certificates, _nextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCACertificatesResponse")
	local t = { 
		["certificates"] = _certificates,
		["nextMarker"] = _nextMarker,
	}
	asserts.AssertListCACertificatesResponse(t)
	return t
end

keys.ListPoliciesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesRequest[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
-- <p>The input for the ListPolicies operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, the results are returned in ascending creation order.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
function M.ListPoliciesRequest(_marker, _ascendingOrder, _pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesRequest")
	local t = { 
		["marker"] = _marker,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
	}
	asserts.AssertListPoliciesRequest(t)
	return t
end

keys.UpdateCACertificateRequest = { ["newStatus"] = true, ["certificateId"] = true, ["newAutoRegistrationStatus"] = true, nil }

function asserts.AssertUpdateCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["newStatus"] then asserts.AssertCACertificateStatus(struct["newStatus"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["newAutoRegistrationStatus"] then asserts.AssertAutoRegistrationStatus(struct["newAutoRegistrationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCACertificateRequest[k], "UpdateCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCACertificateRequest
-- <p>The input to the UpdateCACertificate operation.</p>
-- @param _newStatus [CACertificateStatus] <p>The updated status of the CA certificate.</p> <p> <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param _certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- @param _newAutoRegistrationStatus [AutoRegistrationStatus] <p>The new value for the auto registration status. Valid values are: "ENABLE" or "DISABLE".</p>
-- Required parameter: certificateId
function M.UpdateCACertificateRequest(_newStatus, _certificateId, _newAutoRegistrationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCACertificateRequest")
	local t = { 
		["newStatus"] = _newStatus,
		["certificateId"] = _certificateId,
		["newAutoRegistrationStatus"] = _newAutoRegistrationStatus,
	}
	asserts.AssertUpdateCACertificateRequest(t)
	return t
end

keys.ListThingsResponse = { ["things"] = true, ["nextToken"] = true, nil }

function asserts.AssertListThingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingsResponse to be of type 'table'")
	if struct["things"] then asserts.AssertThingAttributeList(struct["things"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingsResponse[k], "ListThingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingsResponse
-- <p>The output from the ListThings operation.</p>
-- @param _things [ThingAttributeList] <p>The things.</p>
-- @param _nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
function M.ListThingsResponse(_things, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingsResponse")
	local t = { 
		["things"] = _things,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListThingsResponse(t)
	return t
end

keys.DescribeEndpointRequest = { nil }

function asserts.AssertDescribeEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointRequest[k], "DescribeEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointRequest
-- <p>The input for the DescribeEndpoint operation.</p>
function M.DescribeEndpointRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointRequest")
	local t = { 
	}
	asserts.AssertDescribeEndpointRequest(t)
	return t
end

keys.DeleteTopicRuleRequest = { ["ruleName"] = true, nil }

function asserts.AssertDeleteTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTopicRuleRequest[k], "DeleteTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTopicRuleRequest
-- <p>The input for the DeleteTopicRule operation.</p>
-- @param _ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
function M.DeleteTopicRuleRequest(_ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTopicRuleRequest")
	local t = { 
		["ruleName"] = _ruleName,
	}
	asserts.AssertDeleteTopicRuleRequest(t)
	return t
end

keys.SqlParseException = { ["message"] = true, nil }

function asserts.AssertSqlParseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlParseException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqlParseException[k], "SqlParseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlParseException
-- <p>The Rule-SQL expression can't be parsed correctly.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.SqlParseException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqlParseException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSqlParseException(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource does not exist.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.CreatePolicyRequest = { ["policyName"] = true, ["policyDocument"] = true, nil }

function asserts.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyDocument"], "Expected key policyDocument to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyRequest[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
-- <p>The input for the CreatePolicy operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyDocument [PolicyDocument] <p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of 2048, excluding whitespace.</p>
-- Required parameter: policyName
-- Required parameter: policyDocument
function M.CreatePolicyRequest(_policyName, _policyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyRequest")
	local t = { 
		["policyName"] = _policyName,
		["policyDocument"] = _policyDocument,
	}
	asserts.AssertCreatePolicyRequest(t)
	return t
end

keys.ListThingsRequest = { ["thingTypeName"] = true, ["nextToken"] = true, ["attributeName"] = true, ["attributeValue"] = true, ["maxResults"] = true, nil }

function asserts.AssertListThingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingsRequest to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["attributeName"] then asserts.AssertAttributeName(struct["attributeName"]) end
	if struct["attributeValue"] then asserts.AssertAttributeValue(struct["attributeValue"]) end
	if struct["maxResults"] then asserts.AssertRegistryMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingsRequest[k], "ListThingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingsRequest
-- <p>The input for the ListThings operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type used to search for things.</p>
-- @param _nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param _attributeName [AttributeName] <p>The attribute name used to search for things.</p>
-- @param _attributeValue [AttributeValue] <p>The attribute value used to search for things.</p>
-- @param _maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
function M.ListThingsRequest(_thingTypeName, _nextToken, _attributeName, _attributeValue, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingsRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["nextToken"] = _nextToken,
		["attributeName"] = _attributeName,
		["attributeValue"] = _attributeValue,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListThingsRequest(t)
	return t
end

keys.DeletePolicyVersionRequest = { ["policyName"] = true, ["policyVersionId"] = true, nil }

function asserts.AssertDeletePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyVersionRequest[k], "DeletePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyVersionRequest
-- <p>The input for the DeletePolicyVersion operation.</p>
-- @param _policyName [PolicyName] <p>The name of the policy.</p>
-- @param _policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required parameter: policyName
-- Required parameter: policyVersionId
function M.DeletePolicyVersionRequest(_policyName, _policyVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyVersionRequest")
	local t = { 
		["policyName"] = _policyName,
		["policyVersionId"] = _policyVersionId,
	}
	asserts.AssertDeletePolicyVersionRequest(t)
	return t
end

keys.ThrottlingException = { ["message"] = true, nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The rate exceeds the limit.</p>
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.ThrottlingException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertThrottlingException(t)
	return t
end

keys.ListPrincipalPoliciesRequest = { ["marker"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, ["principal"] = true, nil }

function asserts.AssertListPrincipalPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalPoliciesRequest to be of type 'table'")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalPoliciesRequest[k], "ListPrincipalPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalPoliciesRequest
-- <p>The input for the ListPrincipalPolicies operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, results are returned in ascending creation order.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
-- @param _principal [Principal] <p>The principal.</p>
-- Required parameter: principal
function M.ListPrincipalPoliciesRequest(_marker, _ascendingOrder, _pageSize, _principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalPoliciesRequest")
	local t = { 
		["marker"] = _marker,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
		["principal"] = _principal,
	}
	asserts.AssertListPrincipalPoliciesRequest(t)
	return t
end

keys.ThingTypeProperties = { ["searchableAttributes"] = true, ["thingTypeDescription"] = true, nil }

function asserts.AssertThingTypeProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeProperties to be of type 'table'")
	if struct["searchableAttributes"] then asserts.AssertSearchableAttributes(struct["searchableAttributes"]) end
	if struct["thingTypeDescription"] then asserts.AssertThingTypeDescription(struct["thingTypeDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingTypeProperties[k], "ThingTypeProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeProperties
-- <p>The ThingTypeProperties contains information about the thing type including: a thing type description, and a list of searchable thing attribute names.</p>
-- @param _searchableAttributes [SearchableAttributes] <p>A list of searchable thing attribute names.</p>
-- @param _thingTypeDescription [ThingTypeDescription] <p>The description of the thing type.</p>
function M.ThingTypeProperties(_searchableAttributes, _thingTypeDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingTypeProperties")
	local t = { 
		["searchableAttributes"] = _searchableAttributes,
		["thingTypeDescription"] = _thingTypeDescription,
	}
	asserts.AssertThingTypeProperties(t)
	return t
end

keys.DeleteCertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDeleteCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCertificateRequest[k], "DeleteCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateRequest
-- <p>The input for the DeleteCertificate operation.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.DeleteCertificateRequest(_certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateRequest")
	local t = { 
		["certificateId"] = _certificateId,
	}
	asserts.AssertDeleteCertificateRequest(t)
	return t
end

keys.GetPolicyVersionResponse = { ["policyName"] = true, ["policyDocument"] = true, ["policyVersionId"] = true, ["policyArn"] = true, ["isDefaultVersion"] = true, nil }

function asserts.AssertGetPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionResponse to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	if struct["isDefaultVersion"] then asserts.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyVersionResponse[k], "GetPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionResponse
-- <p>The output from the GetPolicyVersion operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param _policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param _policyArn [PolicyArn] <p>The policy ARN.</p>
-- @param _isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
function M.GetPolicyVersionResponse(_policyName, _policyDocument, _policyVersionId, _policyArn, _isDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionResponse")
	local t = { 
		["policyName"] = _policyName,
		["policyDocument"] = _policyDocument,
		["policyVersionId"] = _policyVersionId,
		["policyArn"] = _policyArn,
		["isDefaultVersion"] = _isDefaultVersion,
	}
	asserts.AssertGetPolicyVersionResponse(t)
	return t
end

keys.CACertificate = { ["certificateArn"] = true, ["status"] = true, ["creationDate"] = true, ["certificateId"] = true, nil }

function asserts.AssertCACertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CACertificate to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCACertificateStatus(struct["status"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CACertificate[k], "CACertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CACertificate
-- <p>A CA certificate.</p>
-- @param _certificateArn [CertificateArn] <p>The ARN of the CA certificate.</p>
-- @param _status [CACertificateStatus] <p>The status of the CA certificate.</p> <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param _creationDate [DateType] <p>The date the CA certificate was created.</p>
-- @param _certificateId [CertificateId] <p>The ID of the CA certificate.</p>
function M.CACertificate(_certificateArn, _status, _creationDate, _certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CACertificate")
	local t = { 
		["certificateArn"] = _certificateArn,
		["status"] = _status,
		["creationDate"] = _creationDate,
		["certificateId"] = _certificateId,
	}
	asserts.AssertCACertificate(t)
	return t
end

keys.ThingTypeDefinition = { ["thingTypeName"] = true, ["thingTypeProperties"] = true, ["thingTypeMetadata"] = true, nil }

function asserts.AssertThingTypeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeDefinition to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then asserts.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	if struct["thingTypeMetadata"] then asserts.AssertThingTypeMetadata(struct["thingTypeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThingTypeDefinition[k], "ThingTypeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeDefinition
-- <p>The definition of the thing type, including thing type name and description.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param _thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties for the thing type.</p>
-- @param _thingTypeMetadata [ThingTypeMetadata] <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.</p>
function M.ThingTypeDefinition(_thingTypeName, _thingTypeProperties, _thingTypeMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingTypeDefinition")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["thingTypeProperties"] = _thingTypeProperties,
		["thingTypeMetadata"] = _thingTypeMetadata,
	}
	asserts.AssertThingTypeDefinition(t)
	return t
end

keys.ListThingTypesRequest = { ["thingTypeName"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListThingTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingTypesRequest to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertRegistryMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListThingTypesRequest[k], "ListThingTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingTypesRequest
-- <p>The input for the ListThingTypes operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param _nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param _maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
function M.ListThingTypesRequest(_thingTypeName, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingTypesRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListThingTypesRequest(t)
	return t
end

keys.RepublishAction = { ["topic"] = true, ["roleArn"] = true, nil }

function asserts.AssertRepublishAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepublishAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["topic"], "Expected key topic to exist in table")
	if struct["topic"] then asserts.AssertTopicPattern(struct["topic"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RepublishAction[k], "RepublishAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepublishAction
-- <p>Describes an action to republish to another topic.</p>
-- @param _topic [TopicPattern] <p>The name of the MQTT topic.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- Required parameter: roleArn
-- Required parameter: topic
function M.RepublishAction(_topic, _roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepublishAction")
	local t = { 
		["topic"] = _topic,
		["roleArn"] = _roleArn,
	}
	asserts.AssertRepublishAction(t)
	return t
end

keys.OutgoingCertificate = { ["certificateArn"] = true, ["certificateId"] = true, ["transferDate"] = true, ["transferredTo"] = true, ["transferMessage"] = true, ["creationDate"] = true, nil }

function asserts.AssertOutgoingCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutgoingCertificate to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["transferDate"] then asserts.AssertDateType(struct["transferDate"]) end
	if struct["transferredTo"] then asserts.AssertAwsAccountId(struct["transferredTo"]) end
	if struct["transferMessage"] then asserts.AssertMessage(struct["transferMessage"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutgoingCertificate[k], "OutgoingCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutgoingCertificate
-- <p>A certificate that has been transfered but not yet accepted.</p>
-- @param _certificateArn [CertificateArn] <p>The certificate ARN.</p>
-- @param _certificateId [CertificateId] <p>The certificate ID.</p>
-- @param _transferDate [DateType] <p>The date the transfer was initiated.</p>
-- @param _transferredTo [AwsAccountId] <p>The AWS account to which the transfer was made.</p>
-- @param _transferMessage [Message] <p>The transfer message.</p>
-- @param _creationDate [DateType] <p>The certificate creation date.</p>
function M.OutgoingCertificate(_certificateArn, _certificateId, _transferDate, _transferredTo, _transferMessage, _creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OutgoingCertificate")
	local t = { 
		["certificateArn"] = _certificateArn,
		["certificateId"] = _certificateId,
		["transferDate"] = _transferDate,
		["transferredTo"] = _transferredTo,
		["transferMessage"] = _transferMessage,
		["creationDate"] = _creationDate,
	}
	asserts.AssertOutgoingCertificate(t)
	return t
end

keys.CloudwatchAlarmAction = { ["stateReason"] = true, ["roleArn"] = true, ["alarmName"] = true, ["stateValue"] = true, nil }

function asserts.AssertCloudwatchAlarmAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchAlarmAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["alarmName"], "Expected key alarmName to exist in table")
	assert(struct["stateReason"], "Expected key stateReason to exist in table")
	assert(struct["stateValue"], "Expected key stateValue to exist in table")
	if struct["stateReason"] then asserts.AssertStateReason(struct["stateReason"]) end
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["alarmName"] then asserts.AssertAlarmName(struct["alarmName"]) end
	if struct["stateValue"] then asserts.AssertStateValue(struct["stateValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudwatchAlarmAction[k], "CloudwatchAlarmAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchAlarmAction
-- <p>Describes an action that updates a CloudWatch alarm.</p>
-- @param _stateReason [StateReason] <p>The reason for the alarm change.</p>
-- @param _roleArn [AwsArn] <p>The IAM role that allows access to the CloudWatch alarm.</p>
-- @param _alarmName [AlarmName] <p>The CloudWatch alarm name.</p>
-- @param _stateValue [StateValue] <p>The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.</p>
-- Required parameter: roleArn
-- Required parameter: alarmName
-- Required parameter: stateReason
-- Required parameter: stateValue
function M.CloudwatchAlarmAction(_stateReason, _roleArn, _alarmName, _stateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudwatchAlarmAction")
	local t = { 
		["stateReason"] = _stateReason,
		["roleArn"] = _roleArn,
		["alarmName"] = _alarmName,
		["stateValue"] = _stateValue,
	}
	asserts.AssertCloudwatchAlarmAction(t)
	return t
end

keys.ListPolicyVersionsResponse = { ["policyVersions"] = true, nil }

function asserts.AssertListPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsResponse to be of type 'table'")
	if struct["policyVersions"] then asserts.AssertPolicyVersions(struct["policyVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyVersionsResponse[k], "ListPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsResponse
-- <p>The output from the ListPolicyVersions operation.</p>
-- @param _policyVersions [PolicyVersions] <p>The policy versions.</p>
function M.ListPolicyVersionsResponse(_policyVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsResponse")
	local t = { 
		["policyVersions"] = _policyVersions,
	}
	asserts.AssertListPolicyVersionsResponse(t)
	return t
end

keys.Policy = { ["policyName"] = true, ["policyArn"] = true, nil }

function asserts.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Policy[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>Describes an AWS IoT policy.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyArn [PolicyArn] <p>The policy ARN.</p>
function M.Policy(_policyName, _policyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Policy")
	local t = { 
		["policyName"] = _policyName,
		["policyArn"] = _policyArn,
	}
	asserts.AssertPolicy(t)
	return t
end

keys.GetPolicyRequest = { ["policyName"] = true, nil }

function asserts.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyRequest[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
-- <p>The input for the GetPolicy operation.</p>
-- @param _policyName [PolicyName] <p>The name of the policy.</p>
-- Required parameter: policyName
function M.GetPolicyRequest(_policyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyRequest")
	local t = { 
		["policyName"] = _policyName,
	}
	asserts.AssertGetPolicyRequest(t)
	return t
end

keys.DeleteRegistrationCodeResponse = { nil }

function asserts.AssertDeleteRegistrationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegistrationCodeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRegistrationCodeResponse[k], "DeleteRegistrationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegistrationCodeResponse
-- <p>The output for the DeleteRegistrationCode operation.</p>
function M.DeleteRegistrationCodeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRegistrationCodeResponse")
	local t = { 
	}
	asserts.AssertDeleteRegistrationCodeResponse(t)
	return t
end

keys.DescribeThingResponse = { ["thingTypeName"] = true, ["attributes"] = true, ["version"] = true, ["thingName"] = true, ["defaultClientId"] = true, nil }

function asserts.AssertDescribeThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingResponse to be of type 'table'")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributes"] then asserts.AssertAttributes(struct["attributes"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["defaultClientId"] then asserts.AssertClientId(struct["defaultClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeThingResponse[k], "DescribeThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingResponse
-- <p>The output from the DescribeThing operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The thing type name.</p>
-- @param _attributes [Attributes] <p>The thing attributes.</p>
-- @param _version [Version] <p>The current version of the thing record in the registry.</p> <note> <p>To avoid unintentional changes to the information in the registry, you can pass the version information in the <code>expectedVersion</code> parameter of the <code>UpdateThing</code> and <code>DeleteThing</code> calls.</p> </note>
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- @param _defaultClientId [ClientId] <p>The default client ID.</p>
function M.DescribeThingResponse(_thingTypeName, _attributes, _version, _thingName, _defaultClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingResponse")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["attributes"] = _attributes,
		["version"] = _version,
		["thingName"] = _thingName,
		["defaultClientId"] = _defaultClientId,
	}
	asserts.AssertDescribeThingResponse(t)
	return t
end

keys.DeprecateThingTypeRequest = { ["thingTypeName"] = true, ["undoDeprecate"] = true, nil }

function asserts.AssertDeprecateThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["undoDeprecate"] then asserts.AssertUndoDeprecate(struct["undoDeprecate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeprecateThingTypeRequest[k], "DeprecateThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateThingTypeRequest
-- <p>The input for the DeprecateThingType operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type to deprecate.</p>
-- @param _undoDeprecate [UndoDeprecate] <p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can associate it with things.</p>
-- Required parameter: thingTypeName
function M.DeprecateThingTypeRequest(_thingTypeName, _undoDeprecate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateThingTypeRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
		["undoDeprecate"] = _undoDeprecate,
	}
	asserts.AssertDeprecateThingTypeRequest(t)
	return t
end

keys.GetPolicyResponse = { ["policyName"] = true, ["policyDocument"] = true, ["defaultVersionId"] = true, ["policyArn"] = true, nil }

function asserts.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["defaultVersionId"] then asserts.AssertPolicyVersionId(struct["defaultVersionId"]) end
	if struct["policyArn"] then asserts.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyResponse[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- <p>The output from the GetPolicy operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param _defaultVersionId [PolicyVersionId] <p>The default policy version ID.</p>
-- @param _policyArn [PolicyArn] <p>The policy ARN.</p>
function M.GetPolicyResponse(_policyName, _policyDocument, _defaultVersionId, _policyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyResponse")
	local t = { 
		["policyName"] = _policyName,
		["policyDocument"] = _policyDocument,
		["defaultVersionId"] = _defaultVersionId,
		["policyArn"] = _policyArn,
	}
	asserts.AssertGetPolicyResponse(t)
	return t
end

keys.SetDefaultPolicyVersionRequest = { ["policyName"] = true, ["policyVersionId"] = true, nil }

function asserts.AssertSetDefaultPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDefaultPolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then asserts.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetDefaultPolicyVersionRequest[k], "SetDefaultPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDefaultPolicyVersionRequest
-- <p>The input for the SetDefaultPolicyVersion operation.</p>
-- @param _policyName [PolicyName] <p>The policy name.</p>
-- @param _policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required parameter: policyName
-- Required parameter: policyVersionId
function M.SetDefaultPolicyVersionRequest(_policyName, _policyVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDefaultPolicyVersionRequest")
	local t = { 
		["policyName"] = _policyName,
		["policyVersionId"] = _policyVersionId,
	}
	asserts.AssertSetDefaultPolicyVersionRequest(t)
	return t
end

keys.ListPrincipalThingsRequest = { ["nextToken"] = true, ["maxResults"] = true, ["principal"] = true, nil }

function asserts.AssertListPrincipalThingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalThingsRequest to be of type 'table'")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertRegistryMaxResults(struct["maxResults"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPrincipalThingsRequest[k], "ListPrincipalThingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalThingsRequest
-- <p>The input for the ListPrincipalThings operation.</p>
-- @param _nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param _maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
-- @param _principal [Principal] <p>The principal.</p>
-- Required parameter: principal
function M.ListPrincipalThingsRequest(_nextToken, _maxResults, _principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalThingsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["principal"] = _principal,
	}
	asserts.AssertListPrincipalThingsRequest(t)
	return t
end

keys.KinesisAction = { ["roleArn"] = true, ["streamName"] = true, ["partitionKey"] = true, nil }

function asserts.AssertKinesisAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["streamName"], "Expected key streamName to exist in table")
	if struct["roleArn"] then asserts.AssertAwsArn(struct["roleArn"]) end
	if struct["streamName"] then asserts.AssertStreamName(struct["streamName"]) end
	if struct["partitionKey"] then asserts.AssertPartitionKey(struct["partitionKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisAction[k], "KinesisAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisAction
-- <p>Describes an action to write data to an Amazon Kinesis stream.</p>
-- @param _roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the Amazon Kinesis stream.</p>
-- @param _streamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- @param _partitionKey [PartitionKey] <p>The partition key.</p>
-- Required parameter: roleArn
-- Required parameter: streamName
function M.KinesisAction(_roleArn, _streamName, _partitionKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisAction")
	local t = { 
		["roleArn"] = _roleArn,
		["streamName"] = _streamName,
		["partitionKey"] = _partitionKey,
	}
	asserts.AssertKinesisAction(t)
	return t
end

keys.ListCertificatesByCARequest = { ["marker"] = true, ["caCertificateId"] = true, ["ascendingOrder"] = true, ["pageSize"] = true, nil }

function asserts.AssertListCertificatesByCARequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesByCARequest to be of type 'table'")
	assert(struct["caCertificateId"], "Expected key caCertificateId to exist in table")
	if struct["marker"] then asserts.AssertMarker(struct["marker"]) end
	if struct["caCertificateId"] then asserts.AssertCertificateId(struct["caCertificateId"]) end
	if struct["ascendingOrder"] then asserts.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then asserts.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCertificatesByCARequest[k], "ListCertificatesByCARequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesByCARequest
-- <p>The input to the ListCertificatesByCA operation.</p>
-- @param _marker [Marker] <p>The marker for the next set of results.</p>
-- @param _caCertificateId [CertificateId] <p>The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.</p>
-- @param _ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- @param _pageSize [PageSize] <p>The result page size.</p>
-- Required parameter: caCertificateId
function M.ListCertificatesByCARequest(_marker, _caCertificateId, _ascendingOrder, _pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesByCARequest")
	local t = { 
		["marker"] = _marker,
		["caCertificateId"] = _caCertificateId,
		["ascendingOrder"] = _ascendingOrder,
		["pageSize"] = _pageSize,
	}
	asserts.AssertListCertificatesByCARequest(t)
	return t
end

keys.RegistrationCodeValidationException = { ["message"] = true, nil }

function asserts.AssertRegistrationCodeValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegistrationCodeValidationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegistrationCodeValidationException[k], "RegistrationCodeValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegistrationCodeValidationException
-- <p>The registration code is invalid.</p>
-- @param _message [errorMessage] <p>Additional information about the exception.</p>
function M.RegistrationCodeValidationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegistrationCodeValidationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRegistrationCodeValidationException(t)
	return t
end

keys.CreateCertificateFromCsrRequest = { ["certificateSigningRequest"] = true, ["setAsActive"] = true, nil }

function asserts.AssertCreateCertificateFromCsrRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateFromCsrRequest to be of type 'table'")
	assert(struct["certificateSigningRequest"], "Expected key certificateSigningRequest to exist in table")
	if struct["certificateSigningRequest"] then asserts.AssertCertificateSigningRequest(struct["certificateSigningRequest"]) end
	if struct["setAsActive"] then asserts.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCertificateFromCsrRequest[k], "CreateCertificateFromCsrRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateFromCsrRequest
-- <p>The input for the CreateCertificateFromCsr operation.</p>
-- @param _certificateSigningRequest [CertificateSigningRequest] <p>The certificate signing request (CSR).</p>
-- @param _setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- Required parameter: certificateSigningRequest
function M.CreateCertificateFromCsrRequest(_certificateSigningRequest, _setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCertificateFromCsrRequest")
	local t = { 
		["certificateSigningRequest"] = _certificateSigningRequest,
		["setAsActive"] = _setAsActive,
	}
	asserts.AssertCreateCertificateFromCsrRequest(t)
	return t
end

keys.KeyPair = { ["PublicKey"] = true, ["PrivateKey"] = true, nil }

function asserts.AssertKeyPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPair to be of type 'table'")
	if struct["PublicKey"] then asserts.AssertPublicKey(struct["PublicKey"]) end
	if struct["PrivateKey"] then asserts.AssertPrivateKey(struct["PrivateKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPair[k], "KeyPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPair
-- <p>Describes a key pair.</p>
-- @param _PublicKey [PublicKey] <p>The public key.</p>
-- @param _PrivateKey [PrivateKey] <p>The private key.</p>
function M.KeyPair(_PublicKey, _PrivateKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPair")
	local t = { 
		["PublicKey"] = _PublicKey,
		["PrivateKey"] = _PrivateKey,
	}
	asserts.AssertKeyPair(t)
	return t
end

keys.CancelCertificateTransferRequest = { ["certificateId"] = true, nil }

function asserts.AssertCancelCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelCertificateTransferRequest[k], "CancelCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCertificateTransferRequest
-- <p>The input for the CancelCertificateTransfer operation.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.CancelCertificateTransferRequest(_certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelCertificateTransferRequest")
	local t = { 
		["certificateId"] = _certificateId,
	}
	asserts.AssertCancelCertificateTransferRequest(t)
	return t
end

keys.DetachPrincipalPolicyRequest = { ["policyName"] = true, ["principal"] = true, nil }

function asserts.AssertDetachPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPrincipalPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["principal"] then asserts.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachPrincipalPolicyRequest[k], "DetachPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPrincipalPolicyRequest
-- <p>The input for the DetachPrincipalPolicy operation.</p>
-- @param _policyName [PolicyName] <p>The name of the policy to detach.</p>
-- @param _principal [Principal] <p>The principal.</p> <p>If the principal is a certificate, specify the certificate ARN. If the principal is an Amazon Cognito identity, specify the identity ID.</p>
-- Required parameter: policyName
-- Required parameter: principal
function M.DetachPrincipalPolicyRequest(_policyName, _principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPrincipalPolicyRequest")
	local t = { 
		["policyName"] = _policyName,
		["principal"] = _principal,
	}
	asserts.AssertDetachPrincipalPolicyRequest(t)
	return t
end

keys.LambdaAction = { ["functionArn"] = true, nil }

function asserts.AssertLambdaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaAction to be of type 'table'")
	assert(struct["functionArn"], "Expected key functionArn to exist in table")
	if struct["functionArn"] then asserts.AssertFunctionArn(struct["functionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaAction[k], "LambdaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaAction
-- <p>Describes an action to invoke a Lambda function.</p>
-- @param _functionArn [FunctionArn] <p>The ARN of the Lambda function.</p>
-- Required parameter: functionArn
function M.LambdaAction(_functionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaAction")
	local t = { 
		["functionArn"] = _functionArn,
	}
	asserts.AssertLambdaAction(t)
	return t
end

keys.DescribeCACertificateRequest = { ["certificateId"] = true, nil }

function asserts.AssertDescribeCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCACertificateRequest[k], "DescribeCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCACertificateRequest
-- <p>The input for the DescribeCACertificate operation.</p>
-- @param _certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- Required parameter: certificateId
function M.DescribeCACertificateRequest(_certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCACertificateRequest")
	local t = { 
		["certificateId"] = _certificateId,
	}
	asserts.AssertDescribeCACertificateRequest(t)
	return t
end

keys.CreateTopicRuleRequest = { ["topicRulePayload"] = true, ["ruleName"] = true, nil }

function asserts.AssertCreateTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	assert(struct["topicRulePayload"], "Expected key topicRulePayload to exist in table")
	if struct["topicRulePayload"] then asserts.AssertTopicRulePayload(struct["topicRulePayload"]) end
	if struct["ruleName"] then asserts.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTopicRuleRequest[k], "CreateTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicRuleRequest
-- <p>The input for the CreateTopicRule operation.</p>
-- @param _topicRulePayload [TopicRulePayload] <p>The rule payload.</p>
-- @param _ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
-- Required parameter: topicRulePayload
function M.CreateTopicRuleRequest(_topicRulePayload, _ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTopicRuleRequest")
	local t = { 
		["topicRulePayload"] = _topicRulePayload,
		["ruleName"] = _ruleName,
	}
	asserts.AssertCreateTopicRuleRequest(t)
	return t
end

keys.PutItemInput = { ["tableName"] = true, nil }

function asserts.AssertPutItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemInput to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	if struct["tableName"] then asserts.AssertTableName(struct["tableName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutItemInput[k], "PutItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemInput
-- <p>The input for the DynamoActionVS action that specifies the DynamoDB table to which the message data will be written.</p>
-- @param _tableName [TableName] <p>The table where the message data will be written</p>
-- Required parameter: tableName
function M.PutItemInput(_tableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutItemInput")
	local t = { 
		["tableName"] = _tableName,
	}
	asserts.AssertPutItemInput(t)
	return t
end

keys.TransferCertificateRequest = { ["transferMessage"] = true, ["certificateId"] = true, ["targetAwsAccount"] = true, nil }

function asserts.AssertTransferCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	assert(struct["targetAwsAccount"], "Expected key targetAwsAccount to exist in table")
	if struct["transferMessage"] then asserts.AssertMessage(struct["transferMessage"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["targetAwsAccount"] then asserts.AssertAwsAccountId(struct["targetAwsAccount"]) end
	for k,_ in pairs(struct) do
		assert(keys.TransferCertificateRequest[k], "TransferCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferCertificateRequest
-- <p>The input for the TransferCertificate operation.</p>
-- @param _transferMessage [Message] <p>The transfer message.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @param _targetAwsAccount [AwsAccountId] <p>The AWS account.</p>
-- Required parameter: certificateId
-- Required parameter: targetAwsAccount
function M.TransferCertificateRequest(_transferMessage, _certificateId, _targetAwsAccount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferCertificateRequest")
	local t = { 
		["transferMessage"] = _transferMessage,
		["certificateId"] = _certificateId,
		["targetAwsAccount"] = _targetAwsAccount,
	}
	asserts.AssertTransferCertificateRequest(t)
	return t
end

keys.DeleteThingTypeRequest = { ["thingTypeName"] = true, nil }

function asserts.AssertDeleteThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then asserts.AssertThingTypeName(struct["thingTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingTypeRequest[k], "DeleteThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingTypeRequest
-- <p>The input for the DeleteThingType operation.</p>
-- @param _thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- Required parameter: thingTypeName
function M.DeleteThingTypeRequest(_thingTypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingTypeRequest")
	local t = { 
		["thingTypeName"] = _thingTypeName,
	}
	asserts.AssertDeleteThingTypeRequest(t)
	return t
end

keys.CertificateDescription = { ["certificateArn"] = true, ["status"] = true, ["previousOwnedBy"] = true, ["certificateId"] = true, ["lastModifiedDate"] = true, ["certificatePem"] = true, ["transferData"] = true, ["ownedBy"] = true, ["caCertificateId"] = true, ["creationDate"] = true, nil }

function asserts.AssertCertificateDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateDescription to be of type 'table'")
	if struct["certificateArn"] then asserts.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then asserts.AssertCertificateStatus(struct["status"]) end
	if struct["previousOwnedBy"] then asserts.AssertAwsAccountId(struct["previousOwnedBy"]) end
	if struct["certificateId"] then asserts.AssertCertificateId(struct["certificateId"]) end
	if struct["lastModifiedDate"] then asserts.AssertDateType(struct["lastModifiedDate"]) end
	if struct["certificatePem"] then asserts.AssertCertificatePem(struct["certificatePem"]) end
	if struct["transferData"] then asserts.AssertTransferData(struct["transferData"]) end
	if struct["ownedBy"] then asserts.AssertAwsAccountId(struct["ownedBy"]) end
	if struct["caCertificateId"] then asserts.AssertCertificateId(struct["caCertificateId"]) end
	if struct["creationDate"] then asserts.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CertificateDescription[k], "CertificateDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateDescription
-- <p>Describes a certificate.</p>
-- @param _certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @param _status [CertificateStatus] <p>The status of the certificate.</p>
-- @param _previousOwnedBy [AwsAccountId] <p>The ID of the AWS account of the previous owner of the certificate.</p>
-- @param _certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @param _lastModifiedDate [DateType] <p>The date and time the certificate was last modified.</p>
-- @param _certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- @param _transferData [TransferData] <p>The transfer data.</p>
-- @param _ownedBy [AwsAccountId] <p>The ID of the AWS account that owns the certificate.</p>
-- @param _caCertificateId [CertificateId] <p>The certificate ID of the CA certificate used to sign this certificate.</p>
-- @param _creationDate [DateType] <p>The date and time the certificate was created.</p>
function M.CertificateDescription(_certificateArn, _status, _previousOwnedBy, _certificateId, _lastModifiedDate, _certificatePem, _transferData, _ownedBy, _caCertificateId, _creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateDescription")
	local t = { 
		["certificateArn"] = _certificateArn,
		["status"] = _status,
		["previousOwnedBy"] = _previousOwnedBy,
		["certificateId"] = _certificateId,
		["lastModifiedDate"] = _lastModifiedDate,
		["certificatePem"] = _certificatePem,
		["transferData"] = _transferData,
		["ownedBy"] = _ownedBy,
		["caCertificateId"] = _caCertificateId,
		["creationDate"] = _creationDate,
	}
	asserts.AssertCertificateDescription(t)
	return t
end

function asserts.AssertAutoRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoRegistrationStatus to be of type 'string'")
end

--  
function M.AutoRegistrationStatus(str)
	asserts.AssertAutoRegistrationStatus(str)
	return str
end

function asserts.AssertStateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StateValue to be of type 'string'")
end

--  
function M.StateValue(str)
	asserts.AssertStateValue(str)
	return str
end

function asserts.AssertSalesforceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SalesforceToken to be of type 'string'")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

--  
function M.SalesforceToken(str)
	asserts.AssertSalesforceToken(str)
	return str
end

function asserts.AssertPolicyVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyVersionId to be of type 'string'")
end

--  
function M.PolicyVersionId(str)
	asserts.AssertPolicyVersionId(str)
	return str
end

function asserts.AssertCertificateSigningRequest(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateSigningRequest to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificateSigningRequest(str)
	asserts.AssertCertificateSigningRequest(str)
	return str
end

function asserts.AssertEndpointAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointAddress to be of type 'string'")
end

--  
function M.EndpointAddress(str)
	asserts.AssertEndpointAddress(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertHashKeyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKeyValue to be of type 'string'")
end

--  
function M.HashKeyValue(str)
	asserts.AssertHashKeyValue(str)
	return str
end

function asserts.AssertCertificateId(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
end

--  
function M.CertificateId(str)
	asserts.AssertCertificateId(str)
	return str
end

function asserts.AssertCertificatePem(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificatePem to be of type 'string'")
	assert(#str <= 65536, "Expected string to be max 65536 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificatePem(str)
	asserts.AssertCertificatePem(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
end

-- An attribute value for an Thing. An empty or null value in Update means that existing value for that attribute should be deleted. Empty and null values in create are ignored.
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertMessageFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageFormat to be of type 'string'")
end

--  
function M.MessageFormat(str)
	asserts.AssertMessageFormat(str)
	return str
end

function asserts.AssertTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected Topic to be of type 'string'")
end

--  
function M.Topic(str)
	asserts.AssertTopic(str)
	return str
end

function asserts.AssertPartitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionKey to be of type 'string'")
end

--  
function M.PartitionKey(str)
	asserts.AssertPartitionKey(str)
	return str
end

function asserts.AssertSQL(str)
	assert(str)
	assert(type(str) == "string", "Expected SQL to be of type 'string'")
end

--  
function M.SQL(str)
	asserts.AssertSQL(str)
	return str
end

function asserts.AssertDynamoKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamoKeyType to be of type 'string'")
end

--  
function M.DynamoKeyType(str)
	asserts.AssertDynamoKeyType(str)
	return str
end

function asserts.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

--  
function M.PolicyDocument(str)
	asserts.AssertPolicyDocument(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertElasticsearchId(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchId to be of type 'string'")
end

--  
function M.ElasticsearchId(str)
	asserts.AssertElasticsearchId(str)
	return str
end

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertDeliveryStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamName to be of type 'string'")
end

--  
function M.DeliveryStreamName(str)
	asserts.AssertDeliveryStreamName(str)
	return str
end

function asserts.AssertHashKeyField(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKeyField to be of type 'string'")
end

--  
function M.HashKeyField(str)
	asserts.AssertHashKeyField(str)
	return str
end

function asserts.AssertThingArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingArn to be of type 'string'")
end

--  
function M.ThingArn(str)
	asserts.AssertThingArn(str)
	return str
end

function asserts.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
end

--  
function M.TableName(str)
	asserts.AssertTableName(str)
	return str
end

function asserts.AssertMetricTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricTimestamp to be of type 'string'")
end

--  
function M.MetricTimestamp(str)
	asserts.AssertMetricTimestamp(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertAwsIotSqlVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsIotSqlVersion to be of type 'string'")
end

--  
function M.AwsIotSqlVersion(str)
	asserts.AssertAwsIotSqlVersion(str)
	return str
end

function asserts.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
end

--  
function M.BucketName(str)
	asserts.AssertBucketName(str)
	return str
end

function asserts.AssertRangeKeyField(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeKeyField to be of type 'string'")
end

--  
function M.RangeKeyField(str)
	asserts.AssertRangeKeyField(str)
	return str
end

function asserts.AssertCertificateArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateArn to be of type 'string'")
end

--  
function M.CertificateArn(str)
	asserts.AssertCertificateArn(str)
	return str
end

function asserts.AssertTopicPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicPattern to be of type 'string'")
end

--  
function M.TopicPattern(str)
	asserts.AssertTopicPattern(str)
	return str
end

function asserts.AssertThingTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThingTypeName(str)
	asserts.AssertThingTypeName(str)
	return str
end

function asserts.AssertFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionArn to be of type 'string'")
end

--  
function M.FunctionArn(str)
	asserts.AssertFunctionArn(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertElasticsearchEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchEndpoint to be of type 'string'")
end

--  
function M.ElasticsearchEndpoint(str)
	asserts.AssertElasticsearchEndpoint(str)
	return str
end

function asserts.AssertMetricValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricValue to be of type 'string'")
end

--  
function M.MetricValue(str)
	asserts.AssertMetricValue(str)
	return str
end

function asserts.AssertresourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected resourceId to be of type 'string'")
end

--  
function M.resourceId(str)
	asserts.AssertresourceId(str)
	return str
end

function asserts.AssertLogLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LogLevel to be of type 'string'")
end

--  
function M.LogLevel(str)
	asserts.AssertLogLevel(str)
	return str
end

function asserts.AssertDynamoOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamoOperation to be of type 'string'")
end

--  
function M.DynamoOperation(str)
	asserts.AssertDynamoOperation(str)
	return str
end

function asserts.AssertThingTypeDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeDescription to be of type 'string'")
	assert(#str <= 2028, "Expected string to be max 2028 characters")
end

--  
function M.ThingTypeDescription(str)
	asserts.AssertThingTypeDescription(str)
	return str
end

function asserts.AssertElasticsearchType(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchType to be of type 'string'")
end

--  
function M.ElasticsearchType(str)
	asserts.AssertElasticsearchType(str)
	return str
end

function asserts.AssertPolicyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyArn to be of type 'string'")
end

--  
function M.PolicyArn(str)
	asserts.AssertPolicyArn(str)
	return str
end

function asserts.AssertRangeKeyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeKeyValue to be of type 'string'")
end

--  
function M.RangeKeyValue(str)
	asserts.AssertRangeKeyValue(str)
	return str
end

function asserts.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
end

--  
function M.RuleArn(str)
	asserts.AssertRuleArn(str)
	return str
end

function asserts.AssertAwsArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsArn to be of type 'string'")
end

--  
function M.AwsArn(str)
	asserts.AssertAwsArn(str)
	return str
end

function asserts.AssertCannedAccessControlList(str)
	assert(str)
	assert(type(str) == "string", "Expected CannedAccessControlList to be of type 'string'")
end

--  
function M.CannedAccessControlList(str)
	asserts.AssertCannedAccessControlList(str)
	return str
end

function asserts.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
end

--  
function M.AlarmName(str)
	asserts.AssertAlarmName(str)
	return str
end

function asserts.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	asserts.AssertMarker(str)
	return str
end

function asserts.AssertQueueUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueUrl to be of type 'string'")
end

--  
function M.QueueUrl(str)
	asserts.AssertQueueUrl(str)
	return str
end

function asserts.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
end

--  
function M.StreamName(str)
	asserts.AssertStreamName(str)
	return str
end

function asserts.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	asserts.AssertMetricUnit(str)
	return str
end

function asserts.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
end

--  
function M.ClientId(str)
	asserts.AssertClientId(str)
	return str
end

function asserts.AssertRegistrationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationCode to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
end

--  
function M.RegistrationCode(str)
	asserts.AssertRegistrationCode(str)
	return str
end

function asserts.AssertresourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected resourceArn to be of type 'string'")
end

--  
function M.resourceArn(str)
	asserts.AssertresourceArn(str)
	return str
end

function asserts.AssertAwsAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsAccountId to be of type 'string'")
end

--  
function M.AwsAccountId(str)
	asserts.AssertAwsAccountId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertFirehoseSeparator(str)
	assert(str)
	assert(type(str) == "string", "Expected FirehoseSeparator to be of type 'string'")
end

--  
function M.FirehoseSeparator(str)
	asserts.AssertFirehoseSeparator(str)
	return str
end

function asserts.AssertPrincipalArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalArn to be of type 'string'")
end

--  
function M.PrincipalArn(str)
	asserts.AssertPrincipalArn(str)
	return str
end

function asserts.AssertThingName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThingName(str)
	asserts.AssertThingName(str)
	return str
end

function asserts.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
end

--  
function M.MetricNamespace(str)
	asserts.AssertMetricNamespace(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertCACertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CACertificateStatus to be of type 'string'")
end

--  
function M.CACertificateStatus(str)
	asserts.AssertCACertificateStatus(str)
	return str
end

function asserts.AssertElasticsearchIndex(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndex to be of type 'string'")
end

--  
function M.ElasticsearchIndex(str)
	asserts.AssertElasticsearchIndex(str)
	return str
end

function asserts.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
end

--  
function M.StateReason(str)
	asserts.AssertStateReason(str)
	return str
end

function asserts.AssertPrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected Principal to be of type 'string'")
end

--  
function M.Principal(str)
	asserts.AssertPrincipal(str)
	return str
end

function asserts.AssertPayloadField(str)
	assert(str)
	assert(type(str) == "string", "Expected PayloadField to be of type 'string'")
end

--  
function M.PayloadField(str)
	asserts.AssertPayloadField(str)
	return str
end

function asserts.AssertThingTypeArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeArn to be of type 'string'")
end

--  
function M.ThingTypeArn(str)
	asserts.AssertThingTypeArn(str)
	return str
end

function asserts.AssertPrivateKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PrivateKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrivateKey(str)
	asserts.AssertPrivateKey(str)
	return str
end

function asserts.AssertSalesforceEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected SalesforceEndpoint to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.SalesforceEndpoint(str)
	asserts.AssertSalesforceEndpoint(str)
	return str
end

function asserts.AssertPublicKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PublicKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PublicKey(str)
	asserts.AssertPublicKey(str)
	return str
end

function asserts.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RuleName(str)
	asserts.AssertRuleName(str)
	return str
end

function asserts.AssertCertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateStatus to be of type 'string'")
end

--  
function M.CertificateStatus(str)
	asserts.AssertCertificateStatus(str)
	return str
end

function asserts.AssertOptionalVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected OptionalVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.OptionalVersion(long)
	asserts.AssertOptionalVersion(long)
	return long
end

function asserts.AssertVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected Version to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Version(long)
	asserts.AssertVersion(long)
	return long
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertRegistryMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistryMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistryMaxResults(integer)
	asserts.AssertRegistryMaxResults(integer)
	return integer
end

function asserts.AssertSetAsActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsActive to be of type 'boolean'")
end

function M.SetAsActive(boolean)
	asserts.AssertSetAsActive(boolean)
	return boolean
end

function asserts.AssertRemoveThingType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RemoveThingType to be of type 'boolean'")
end

function M.RemoveThingType(boolean)
	asserts.AssertRemoveThingType(boolean)
	return boolean
end

function asserts.AssertSetAsActiveFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsActiveFlag to be of type 'boolean'")
end

function M.SetAsActiveFlag(boolean)
	asserts.AssertSetAsActiveFlag(boolean)
	return boolean
end

function asserts.AssertAllowAutoRegistration(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AllowAutoRegistration to be of type 'boolean'")
end

function M.AllowAutoRegistration(boolean)
	asserts.AssertAllowAutoRegistration(boolean)
	return boolean
end

function asserts.AssertUseBase64(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UseBase64 to be of type 'boolean'")
end

function M.UseBase64(boolean)
	asserts.AssertUseBase64(boolean)
	return boolean
end

function asserts.AssertAscendingOrder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AscendingOrder to be of type 'boolean'")
end

function M.AscendingOrder(boolean)
	asserts.AssertAscendingOrder(boolean)
	return boolean
end

function asserts.AssertSetAsDefault(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsDefault to be of type 'boolean'")
end

function M.SetAsDefault(boolean)
	asserts.AssertSetAsDefault(boolean)
	return boolean
end

function asserts.AssertFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Flag to be of type 'boolean'")
end

function M.Flag(boolean)
	asserts.AssertFlag(boolean)
	return boolean
end

function asserts.AssertIsDisabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDisabled to be of type 'boolean'")
end

function M.IsDisabled(boolean)
	asserts.AssertIsDisabled(boolean)
	return boolean
end

function asserts.AssertIsDefaultVersion(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDefaultVersion to be of type 'boolean'")
end

function M.IsDefaultVersion(boolean)
	asserts.AssertIsDefaultVersion(boolean)
	return boolean
end

function asserts.AssertUndoDeprecate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UndoDeprecate to be of type 'boolean'")
end

function M.UndoDeprecate(boolean)
	asserts.AssertUndoDeprecate(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.Attributes(map)
	asserts.AssertAttributes(map)
	return map
end

function asserts.AssertDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateType to be of type 'string'")
end

function M.DateType(timestamp)
	asserts.AssertDateType(timestamp)
	return timestamp
end

function asserts.AssertCreatedAtDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedAtDate to be of type 'string'")
end

function M.CreatedAtDate(timestamp)
	asserts.AssertCreatedAtDate(timestamp)
	return timestamp
end

function asserts.AssertDeprecationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeprecationDate to be of type 'string'")
end

function M.DeprecationDate(timestamp)
	asserts.AssertDeprecationDate(timestamp)
	return timestamp
end

function asserts.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	asserts.AssertCreationDate(timestamp)
	return timestamp
end

function asserts.AssertSearchableAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchableAttributes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.SearchableAttributes(list)
	asserts.AssertSearchableAttributes(list)
	return list
end

function asserts.AssertThingNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThingName(v)
	end
end

--  
-- List of ThingName objects
function M.ThingNameList(list)
	asserts.AssertThingNameList(list)
	return list
end

function asserts.AssertCertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected Certificates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.Certificates(list)
	asserts.AssertCertificates(list)
	return list
end

function asserts.AssertTopicRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTopicRuleListItem(v)
	end
end

--  
-- List of TopicRuleListItem objects
function M.TopicRuleList(list)
	asserts.AssertTopicRuleList(list)
	return list
end

function asserts.AssertThingTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThingTypeDefinition(v)
	end
end

--  
-- List of ThingTypeDefinition objects
function M.ThingTypeList(list)
	asserts.AssertThingTypeList(list)
	return list
end

function asserts.AssertActionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAction(v)
	end
end

--  
-- List of Action objects
function M.ActionList(list)
	asserts.AssertActionList(list)
	return list
end

function asserts.AssertPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected Policies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicy(v)
	end
end

--  
-- List of Policy objects
function M.Policies(list)
	asserts.AssertPolicies(list)
	return list
end

function asserts.AssertPolicyVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyVersions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyVersion(v)
	end
end

--  
-- List of PolicyVersion objects
function M.PolicyVersions(list)
	asserts.AssertPolicyVersions(list)
	return list
end

function asserts.AssertPrincipals(list)
	assert(list)
	assert(type(list) == "table", "Expected Principals to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPrincipalArn(v)
	end
end

--  
-- List of PrincipalArn objects
function M.Principals(list)
	asserts.AssertPrincipals(list)
	return list
end

function asserts.AssertOutgoingCertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected OutgoingCertificates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutgoingCertificate(v)
	end
end

--  
-- List of OutgoingCertificate objects
function M.OutgoingCertificates(list)
	asserts.AssertOutgoingCertificates(list)
	return list
end

function asserts.AssertThingAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertThingAttribute(v)
	end
end

--  
-- List of ThingAttribute objects
function M.ThingAttributeList(list)
	asserts.AssertThingAttributeList(list)
	return list
end

function asserts.AssertCACertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected CACertificates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCACertificate(v)
	end
end

--  
-- List of CACertificate objects
function M.CACertificates(list)
	asserts.AssertCACertificates(list)
	return list
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "iot.amazonaws.com"
		end
	end
	local ss = { "iot" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ReplaceTopicRule
-- @param ReplaceTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReplaceTopicRuleAsync(ReplaceTopicRuleRequest, cb)
	assert(ReplaceTopicRuleRequest, "You must provide a ReplaceTopicRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReplaceTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/rules/{ruleName}", ReplaceTopicRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteThingType
-- @param DeleteThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteThingTypeAsync(DeleteThingTypeRequest, cb)
	assert(DeleteThingTypeRequest, "You must provide a DeleteThingTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteThingType",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/thing-types/{thingTypeName}", DeleteThingTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachThingPrincipal
-- @param DetachThingPrincipalRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachThingPrincipalAsync(DetachThingPrincipalRequest, cb)
	assert(DetachThingPrincipalRequest, "You must provide a DetachThingPrincipalRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachThingPrincipal",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/things/{thingName}/principals", DetachThingPrincipalRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeprecateThingType
-- @param DeprecateThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeprecateThingTypeAsync(DeprecateThingTypeRequest, cb)
	assert(DeprecateThingTypeRequest, "You must provide a DeprecateThingTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeprecateThingType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/thing-types/{thingTypeName}/deprecate", DeprecateThingTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicyVersions
-- @param ListPolicyVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPolicyVersionsAsync(ListPolicyVersionsRequest, cb)
	assert(ListPolicyVersionsRequest, "You must provide a ListPolicyVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPolicyVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}/version", ListPolicyVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePolicy
-- @param DeletePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyAsync(DeletePolicyRequest, cb)
	assert(DeletePolicyRequest, "You must provide a DeletePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}", DeletePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePolicyVersion
-- @param DeletePolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyVersionAsync(DeletePolicyVersionRequest, cb)
	assert(DeletePolicyVersionRequest, "You must provide a DeletePolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}/version/{policyVersionId}", DeletePolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTopicRule
-- @param CreateTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTopicRuleAsync(CreateTopicRuleRequest, cb)
	assert(CreateTopicRuleRequest, "You must provide a CreateTopicRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/rules/{ruleName}", CreateTopicRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetDefaultPolicyVersion
-- @param SetDefaultPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetDefaultPolicyVersionAsync(SetDefaultPolicyVersionRequest, cb)
	assert(SetDefaultPolicyVersionRequest, "You must provide a SetDefaultPolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetDefaultPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}/version/{policyVersionId}", SetDefaultPolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableTopicRule
-- @param DisableTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableTopicRuleAsync(DisableTopicRuleRequest, cb)
	assert(DisableTopicRuleRequest, "You must provide a DisableTopicRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisableTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/rules/{ruleName}/disable", DisableTopicRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPrincipalPolicies
-- @param ListPrincipalPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPrincipalPoliciesAsync(ListPrincipalPoliciesRequest, cb)
	assert(ListPrincipalPoliciesRequest, "You must provide a ListPrincipalPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPrincipalPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/principal-policies", ListPrincipalPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetLoggingOptions
-- @param GetLoggingOptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetLoggingOptionsAsync(GetLoggingOptionsRequest, cb)
	assert(GetLoggingOptionsRequest, "You must provide a GetLoggingOptionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetLoggingOptions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/loggingOptions", GetLoggingOptionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TransferCertificate
-- @param TransferCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TransferCertificateAsync(TransferCertificateRequest, cb)
	assert(TransferCertificateRequest, "You must provide a TransferCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TransferCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/transfer-certificate/{certificateId}", TransferCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPolicy
-- @param GetPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}", GetPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RejectCertificateTransfer
-- @param RejectCertificateTransferRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RejectCertificateTransferAsync(RejectCertificateTransferRequest, cb)
	assert(RejectCertificateTransferRequest, "You must provide a RejectCertificateTransferRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RejectCertificateTransfer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/reject-certificate-transfer/{certificateId}", RejectCertificateTransferRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCertificates
-- @param ListCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCertificatesAsync(ListCertificatesRequest, cb)
	assert(ListCertificatesRequest, "You must provide a ListCertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/certificates", ListCertificatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCACertificate
-- @param DeleteCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCACertificateAsync(DeleteCACertificateRequest, cb)
	assert(DeleteCACertificateRequest, "You must provide a DeleteCACertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/cacertificate/{caCertificateId}", DeleteCACertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCertificate
-- @param DeleteCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCertificateAsync(DeleteCertificateRequest, cb)
	assert(DeleteCertificateRequest, "You must provide a DeleteCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/certificates/{certificateId}", DeleteCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicyPrincipals
-- @param ListPolicyPrincipalsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPolicyPrincipalsAsync(ListPolicyPrincipalsRequest, cb)
	assert(ListPolicyPrincipalsRequest, "You must provide a ListPolicyPrincipalsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPolicyPrincipals",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/policy-principals", ListPolicyPrincipalsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachPrincipalPolicy
-- @param AttachPrincipalPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachPrincipalPolicyAsync(AttachPrincipalPolicyRequest, cb)
	assert(AttachPrincipalPolicyRequest, "You must provide a AttachPrincipalPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachPrincipalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/principal-policies/{policyName}", AttachPrincipalPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCACertificates
-- @param ListCACertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCACertificatesAsync(ListCACertificatesRequest, cb)
	assert(ListCACertificatesRequest, "You must provide a ListCACertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCACertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/cacertificates", ListCACertificatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateThingType
-- @param CreateThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateThingTypeAsync(CreateThingTypeRequest, cb)
	assert(CreateThingTypeRequest, "You must provide a CreateThingTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateThingType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/thing-types/{thingTypeName}", CreateThingTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOutgoingCertificates
-- @param ListOutgoingCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOutgoingCertificatesAsync(ListOutgoingCertificatesRequest, cb)
	assert(ListOutgoingCertificatesRequest, "You must provide a ListOutgoingCertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListOutgoingCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/certificates-out-going", ListOutgoingCertificatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRegistrationCode
-- @param DeleteRegistrationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRegistrationCodeAsync(DeleteRegistrationCodeRequest, cb)
	assert(DeleteRegistrationCodeRequest, "You must provide a DeleteRegistrationCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteRegistrationCode",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/registrationcode", DeleteRegistrationCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCACertificate
-- @param DescribeCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCACertificateAsync(DescribeCACertificateRequest, cb)
	assert(DescribeCACertificateRequest, "You must provide a DescribeCACertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/cacertificate/{caCertificateId}", DescribeCACertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPolicyVersion
-- @param GetPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyVersionAsync(GetPolicyVersionRequest, cb)
	assert(GetPolicyVersionRequest, "You must provide a GetPolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}/version/{policyVersionId}", GetPolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListThingTypes
-- @param ListThingTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListThingTypesAsync(ListThingTypesRequest, cb)
	assert(ListThingTypesRequest, "You must provide a ListThingTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListThingTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/thing-types", ListThingTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTopicRule
-- @param GetTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTopicRuleAsync(GetTopicRuleRequest, cb)
	assert(GetTopicRuleRequest, "You must provide a GetTopicRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/rules/{ruleName}", GetTopicRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateKeysAndCertificate
-- @param CreateKeysAndCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateKeysAndCertificateAsync(CreateKeysAndCertificateRequest, cb)
	assert(CreateKeysAndCertificateRequest, "You must provide a CreateKeysAndCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateKeysAndCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/keys-and-certificate", CreateKeysAndCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcceptCertificateTransfer
-- @param AcceptCertificateTransferRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptCertificateTransferAsync(AcceptCertificateTransferRequest, cb)
	assert(AcceptCertificateTransferRequest, "You must provide a AcceptCertificateTransferRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AcceptCertificateTransfer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/accept-certificate-transfer/{certificateId}", AcceptCertificateTransferRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteThing
-- @param DeleteThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteThingAsync(DeleteThingRequest, cb)
	assert(DeleteThingRequest, "You must provide a DeleteThingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteThing",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/things/{thingName}", DeleteThingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListThings
-- @param ListThingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListThingsAsync(ListThingsRequest, cb)
	assert(ListThingsRequest, "You must provide a ListThingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListThings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/things", ListThingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCertificatesByCA
-- @param ListCertificatesByCARequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCertificatesByCAAsync(ListCertificatesByCARequest, cb)
	assert(ListCertificatesByCARequest, "You must provide a ListCertificatesByCARequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCertificatesByCA",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/certificates-by-ca/{caCertificateId}", ListCertificatesByCARequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCertificate
-- @param UpdateCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCertificateAsync(UpdateCertificateRequest, cb)
	assert(UpdateCertificateRequest, "You must provide a UpdateCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/certificates/{certificateId}", UpdateCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRegistrationCode
-- @param GetRegistrationCodeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRegistrationCodeAsync(GetRegistrationCodeRequest, cb)
	assert(GetRegistrationCodeRequest, "You must provide a GetRegistrationCodeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRegistrationCode",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/registrationcode", GetRegistrationCodeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPrincipalThings
-- @param ListPrincipalThingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPrincipalThingsAsync(ListPrincipalThingsRequest, cb)
	assert(ListPrincipalThingsRequest, "You must provide a ListPrincipalThingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPrincipalThings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/principals/things", ListPrincipalThingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelCertificateTransfer
-- @param CancelCertificateTransferRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelCertificateTransferAsync(CancelCertificateTransferRequest, cb)
	assert(CancelCertificateTransferRequest, "You must provide a CancelCertificateTransferRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CancelCertificateTransfer",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/cancel-certificate-transfer/{certificateId}", CancelCertificateTransferRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterCACertificate
-- @param RegisterCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterCACertificateAsync(RegisterCACertificateRequest, cb)
	assert(RegisterCACertificateRequest, "You must provide a RegisterCACertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RegisterCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/cacertificate", RegisterCACertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCertificate
-- @param DescribeCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCertificateAsync(DescribeCertificateRequest, cb)
	assert(DescribeCertificateRequest, "You must provide a DescribeCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/certificates/{certificateId}", DescribeCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEndpoint
-- @param DescribeEndpointRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEndpointAsync(DescribeEndpointRequest, cb)
	assert(DescribeEndpointRequest, "You must provide a DescribeEndpointRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/endpoint", DescribeEndpointRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTopicRules
-- @param ListTopicRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTopicRulesAsync(ListTopicRulesRequest, cb)
	assert(ListTopicRulesRequest, "You must provide a ListTopicRulesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTopicRules",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/rules", ListTopicRulesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePolicyVersion
-- @param CreatePolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyVersionAsync(CreatePolicyVersionRequest, cb)
	assert(CreatePolicyVersionRequest, "You must provide a CreatePolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}/version", CreatePolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCertificateFromCsr
-- @param CreateCertificateFromCsrRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCertificateFromCsrAsync(CreateCertificateFromCsrRequest, cb)
	assert(CreateCertificateFromCsrRequest, "You must provide a CreateCertificateFromCsrRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCertificateFromCsr",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/certificates", CreateCertificateFromCsrRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeThingType
-- @param DescribeThingTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeThingTypeAsync(DescribeThingTypeRequest, cb)
	assert(DescribeThingTypeRequest, "You must provide a DescribeThingTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeThingType",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/thing-types/{thingTypeName}", DescribeThingTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicies
-- @param ListPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPoliciesAsync(ListPoliciesRequest, cb)
	assert(ListPoliciesRequest, "You must provide a ListPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/policies", ListPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateThing
-- @param CreateThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateThingAsync(CreateThingRequest, cb)
	assert(CreateThingRequest, "You must provide a CreateThingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateThing",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/things/{thingName}", CreateThingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCACertificate
-- @param UpdateCACertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCACertificateAsync(UpdateCACertificateRequest, cb)
	assert(UpdateCACertificateRequest, "You must provide a UpdateCACertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateCACertificate",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/cacertificate/{caCertificateId}", UpdateCACertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateThing
-- @param UpdateThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateThingAsync(UpdateThingRequest, cb)
	assert(UpdateThingRequest, "You must provide a UpdateThingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateThing",
	}

	local request_handler, err = request_handlers.from_http_method("PATCH")
	if request_handler then
		request_handler(uri .. "/things/{thingName}", UpdateThingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachThingPrincipal
-- @param AttachThingPrincipalRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachThingPrincipalAsync(AttachThingPrincipalRequest, cb)
	assert(AttachThingPrincipalRequest, "You must provide a AttachThingPrincipalRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachThingPrincipal",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/things/{thingName}/principals", AttachThingPrincipalRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachPrincipalPolicy
-- @param DetachPrincipalPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachPrincipalPolicyAsync(DetachPrincipalPolicyRequest, cb)
	assert(DetachPrincipalPolicyRequest, "You must provide a DetachPrincipalPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachPrincipalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/principal-policies/{policyName}", DetachPrincipalPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableTopicRule
-- @param EnableTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableTopicRuleAsync(EnableTopicRuleRequest, cb)
	assert(EnableTopicRuleRequest, "You must provide a EnableTopicRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/rules/{ruleName}/enable", EnableTopicRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePolicy
-- @param CreatePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyAsync(CreatePolicyRequest, cb)
	assert(CreatePolicyRequest, "You must provide a CreatePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/policies/{policyName}", CreatePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterCertificate
-- @param RegisterCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterCertificateAsync(RegisterCertificateRequest, cb)
	assert(RegisterCertificateRequest, "You must provide a RegisterCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RegisterCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/certificate/register", RegisterCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeThing
-- @param DescribeThingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeThingAsync(DescribeThingRequest, cb)
	assert(DescribeThingRequest, "You must provide a DescribeThingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeThing",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/things/{thingName}", DescribeThingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetLoggingOptions
-- @param SetLoggingOptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetLoggingOptionsAsync(SetLoggingOptionsRequest, cb)
	assert(SetLoggingOptionsRequest, "You must provide a SetLoggingOptionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetLoggingOptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/loggingOptions", SetLoggingOptionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListThingPrincipals
-- @param ListThingPrincipalsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListThingPrincipalsAsync(ListThingPrincipalsRequest, cb)
	assert(ListThingPrincipalsRequest, "You must provide a ListThingPrincipalsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListThingPrincipals",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/things/{thingName}/principals", ListThingPrincipalsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTopicRule
-- @param DeleteTopicRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTopicRuleAsync(DeleteTopicRuleRequest, cb)
	assert(DeleteTopicRuleRequest, "You must provide a DeleteTopicRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTopicRule",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/rules/{ruleName}", DeleteTopicRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
