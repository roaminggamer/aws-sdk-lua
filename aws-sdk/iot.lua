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

local SalesforceAction_keys = { "url" = true, "token" = true, nil }

function M.AssertSalesforceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SalesforceAction to be of type 'table'")
	assert(struct["token"], "Expected key token to exist in table")
	assert(struct["url"], "Expected key url to exist in table")
	if struct["url"] then M.AssertSalesforceEndpoint(struct["url"]) end
	if struct["token"] then M.AssertSalesforceToken(struct["token"]) end
	for k,_ in pairs(struct) do
		assert(SalesforceAction_keys[k], "SalesforceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SalesforceAction
-- <p>Describes an action to write a message to a Salesforce IoT Cloud Input Stream.</p>
-- @param url [SalesforceEndpoint] <p>The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is available from the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
-- @param token [SalesforceToken] <p>The token used to authenticate access to the Salesforce IoT Cloud Input Stream. The token is available from the Salesforce IoT Cloud platform after creation of the Input Stream.</p>
-- Required parameter: token
-- Required parameter: url
function M.SalesforceAction(url, token, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SalesforceAction")
	local t = { 
		["url"] = url,
		["token"] = token,
	}
	M.AssertSalesforceAction(t)
	return t
end

local VersionsLimitExceededException_keys = { "message" = true, nil }

function M.AssertVersionsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionsLimitExceededException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(VersionsLimitExceededException_keys[k], "VersionsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionsLimitExceededException
-- <p>The number of policy versions exceeds the limit.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.VersionsLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionsLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertVersionsLimitExceededException(t)
	return t
end

local DetachThingPrincipalResponse_keys = { nil }

function M.AssertDetachThingPrincipalResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachThingPrincipalResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DetachThingPrincipalResponse_keys[k], "DetachThingPrincipalResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachThingPrincipalResponse
-- <p>The output from the DetachThingPrincipal operation.</p>
function M.DetachThingPrincipalResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachThingPrincipalResponse")
	local t = { 
	}
	M.AssertDetachThingPrincipalResponse(t)
	return t
end

local ServiceUnavailableException_keys = { "message" = true, nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service is temporarily unavailable.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.ServiceUnavailableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local UnauthorizedException_keys = { "message" = true, nil }

function M.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnauthorizedException_keys[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p>You are not authorized to perform this operation.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.UnauthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnauthorizedException(t)
	return t
end

local ListThingTypesResponse_keys = { "nextToken" = true, "thingTypes" = true, nil }

function M.AssertListThingTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingTypesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["thingTypes"] then M.AssertThingTypeList(struct["thingTypes"]) end
	for k,_ in pairs(struct) do
		assert(ListThingTypesResponse_keys[k], "ListThingTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingTypesResponse
-- <p>The output for the ListThingTypes operation.</p>
-- @param nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param thingTypes [ThingTypeList] <p>The thing types.</p>
function M.ListThingTypesResponse(nextToken, thingTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingTypesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["thingTypes"] = thingTypes,
	}
	M.AssertListThingTypesResponse(t)
	return t
end

local SnsAction_keys = { "targetArn" = true, "roleArn" = true, "messageFormat" = true, nil }

function M.AssertSnsAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SnsAction to be of type 'table'")
	assert(struct["targetArn"], "Expected key targetArn to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["targetArn"] then M.AssertAwsArn(struct["targetArn"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["messageFormat"] then M.AssertMessageFormat(struct["messageFormat"]) end
	for k,_ in pairs(struct) do
		assert(SnsAction_keys[k], "SnsAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SnsAction
-- <p>Describes an action to publish to an Amazon SNS topic.</p>
-- @param targetArn [AwsArn] <p>The ARN of the SNS topic.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @param messageFormat [MessageFormat] <p>The message format of the message to publish. Optional. Accepted values are "JSON" and "RAW". The default value of the attribute is "RAW". SNS uses this setting to determine if the payload should be parsed and relevant platform-specific bits of the payload should be extracted. To read more about SNS message formats, see <a href="http://docs.aws.amazon.com/sns/latest/dg/json-formats.html">http://docs.aws.amazon.com/sns/latest/dg/json-formats.html</a> refer to their official documentation.</p>
-- Required parameter: targetArn
-- Required parameter: roleArn
function M.SnsAction(targetArn, roleArn, messageFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SnsAction")
	local t = { 
		["targetArn"] = targetArn,
		["roleArn"] = roleArn,
		["messageFormat"] = messageFormat,
	}
	M.AssertSnsAction(t)
	return t
end

local ThingTypeMetadata_keys = { "deprecated" = true, "creationDate" = true, "deprecationDate" = true, nil }

function M.AssertThingTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeMetadata to be of type 'table'")
	if struct["deprecated"] then M.AssertBoolean(struct["deprecated"]) end
	if struct["creationDate"] then M.AssertCreationDate(struct["creationDate"]) end
	if struct["deprecationDate"] then M.AssertDeprecationDate(struct["deprecationDate"]) end
	for k,_ in pairs(struct) do
		assert(ThingTypeMetadata_keys[k], "ThingTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeMetadata
-- <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when time was deprecated.</p>
-- @param deprecated [Boolean] <p>Whether the thing type is deprecated. If <b>true</b>, no new things could be associated with this type.</p>
-- @param creationDate [CreationDate] <p>The date and time when the thing type was created.</p>
-- @param deprecationDate [DeprecationDate] <p>The date and time when the thing type was deprecated.</p>
function M.ThingTypeMetadata(deprecated, creationDate, deprecationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingTypeMetadata")
	local t = { 
		["deprecated"] = deprecated,
		["creationDate"] = creationDate,
		["deprecationDate"] = deprecationDate,
	}
	M.AssertThingTypeMetadata(t)
	return t
end

local TransferCertificateResponse_keys = { "transferredCertificateArn" = true, nil }

function M.AssertTransferCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferCertificateResponse to be of type 'table'")
	if struct["transferredCertificateArn"] then M.AssertCertificateArn(struct["transferredCertificateArn"]) end
	for k,_ in pairs(struct) do
		assert(TransferCertificateResponse_keys[k], "TransferCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferCertificateResponse
-- <p>The output from the TransferCertificate operation.</p>
-- @param transferredCertificateArn [CertificateArn] <p>The ARN of the certificate.</p>
function M.TransferCertificateResponse(transferredCertificateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferCertificateResponse")
	local t = { 
		["transferredCertificateArn"] = transferredCertificateArn,
	}
	M.AssertTransferCertificateResponse(t)
	return t
end

local ListPrincipalThingsResponse_keys = { "things" = true, "nextToken" = true, nil }

function M.AssertListPrincipalThingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalThingsResponse to be of type 'table'")
	if struct["things"] then M.AssertThingNameList(struct["things"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListPrincipalThingsResponse_keys[k], "ListPrincipalThingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalThingsResponse
-- <p>The output from the ListPrincipalThings operation.</p>
-- @param things [ThingNameList] <p>The things.</p>
-- @param nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
function M.ListPrincipalThingsResponse(things, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalThingsResponse")
	local t = { 
		["things"] = things,
		["nextToken"] = nextToken,
	}
	M.AssertListPrincipalThingsResponse(t)
	return t
end

local ListPolicyPrincipalsResponse_keys = { "nextMarker" = true, "principals" = true, nil }

function M.AssertListPolicyPrincipalsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyPrincipalsResponse to be of type 'table'")
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	if struct["principals"] then M.AssertPrincipals(struct["principals"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyPrincipalsResponse_keys[k], "ListPolicyPrincipalsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyPrincipalsResponse
-- <p>The output from the ListPolicyPrincipals operation.</p>
-- @param nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @param principals [Principals] <p>The descriptions of the principals.</p>
function M.ListPolicyPrincipalsResponse(nextMarker, principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyPrincipalsResponse")
	local t = { 
		["nextMarker"] = nextMarker,
		["principals"] = principals,
	}
	M.AssertListPolicyPrincipalsResponse(t)
	return t
end

local DynamoDBAction_keys = { "rangeKeyType" = true, "payloadField" = true, "hashKeyType" = true, "hashKeyField" = true, "roleArn" = true, "tableName" = true, "hashKeyValue" = true, "rangeKeyValue" = true, "operation" = true, "rangeKeyField" = true, nil }

function M.AssertDynamoDBAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBAction to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["hashKeyField"], "Expected key hashKeyField to exist in table")
	assert(struct["hashKeyValue"], "Expected key hashKeyValue to exist in table")
	if struct["rangeKeyType"] then M.AssertDynamoKeyType(struct["rangeKeyType"]) end
	if struct["payloadField"] then M.AssertPayloadField(struct["payloadField"]) end
	if struct["hashKeyType"] then M.AssertDynamoKeyType(struct["hashKeyType"]) end
	if struct["hashKeyField"] then M.AssertHashKeyField(struct["hashKeyField"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["tableName"] then M.AssertTableName(struct["tableName"]) end
	if struct["hashKeyValue"] then M.AssertHashKeyValue(struct["hashKeyValue"]) end
	if struct["rangeKeyValue"] then M.AssertRangeKeyValue(struct["rangeKeyValue"]) end
	if struct["operation"] then M.AssertDynamoOperation(struct["operation"]) end
	if struct["rangeKeyField"] then M.AssertRangeKeyField(struct["rangeKeyField"]) end
	for k,_ in pairs(struct) do
		assert(DynamoDBAction_keys[k], "DynamoDBAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBAction
-- <p>Describes an action to write to a DynamoDB table.</p> <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code> values must match the values used when you created the table.</p> <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a substitution template syntax. These templates provide data at runtime. The syntax is as follows: ${<i>sql-expression</i>}.</p> <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON properties, comparisons, calculations, and functions. For example, the following field uses the third level of the topic:</p> <p> <code>"hashKeyValue": "${topic(3)}"</code> </p> <p>The following field uses the timestamp:</p> <p> <code>"rangeKeyValue": "${timestamp()}"</code> </p>
-- @param rangeKeyType [DynamoKeyType] <p>The range key type. Valid values are "STRING" or "NUMBER"</p>
-- @param payloadField [PayloadField] <p>The action payload. This name can be customized.</p>
-- @param hashKeyType [DynamoKeyType] <p>The hash key type. Valid values are "STRING" or "NUMBER"</p>
-- @param hashKeyField [HashKeyField] <p>The hash key name.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
-- @param tableName [TableName] <p>The name of the DynamoDB table.</p>
-- @param hashKeyValue [HashKeyValue] <p>The hash key value.</p>
-- @param rangeKeyValue [RangeKeyValue] <p>The range key value.</p>
-- @param operation [DynamoOperation] <p>The type of operation to be performed. This follows the substitution template, so it can be <code>${operation}</code>, but the substitution must result in one of the following: <code>INSERT</code>, <code>UPDATE</code>, or <code>DELETE</code>.</p>
-- @param rangeKeyField [RangeKeyField] <p>The range key name.</p>
-- Required parameter: tableName
-- Required parameter: roleArn
-- Required parameter: hashKeyField
-- Required parameter: hashKeyValue
function M.DynamoDBAction(rangeKeyType, payloadField, hashKeyType, hashKeyField, roleArn, tableName, hashKeyValue, rangeKeyValue, operation, rangeKeyField, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DynamoDBAction")
	local t = { 
		["rangeKeyType"] = rangeKeyType,
		["payloadField"] = payloadField,
		["hashKeyType"] = hashKeyType,
		["hashKeyField"] = hashKeyField,
		["roleArn"] = roleArn,
		["tableName"] = tableName,
		["hashKeyValue"] = hashKeyValue,
		["rangeKeyValue"] = rangeKeyValue,
		["operation"] = operation,
		["rangeKeyField"] = rangeKeyField,
	}
	M.AssertDynamoDBAction(t)
	return t
end

local DeleteCACertificateResponse_keys = { nil }

function M.AssertDeleteCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCACertificateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteCACertificateResponse_keys[k], "DeleteCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCACertificateResponse
-- <p>The output for the DeleteCACertificate operation.</p>
function M.DeleteCACertificateResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCACertificateResponse")
	local t = { 
	}
	M.AssertDeleteCACertificateResponse(t)
	return t
end

local DescribeEndpointResponse_keys = { "endpointAddress" = true, nil }

function M.AssertDescribeEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointResponse to be of type 'table'")
	if struct["endpointAddress"] then M.AssertEndpointAddress(struct["endpointAddress"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEndpointResponse_keys[k], "DescribeEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointResponse
-- <p>The output from the DescribeEndpoint operation.</p>
-- @param endpointAddress [EndpointAddress] <p>The endpoint. The format of the endpoint is as follows: <i>identifier</i>.iot.<i>region</i>.amazonaws.com.</p>
function M.DescribeEndpointResponse(endpointAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointResponse")
	local t = { 
		["endpointAddress"] = endpointAddress,
	}
	M.AssertDescribeEndpointResponse(t)
	return t
end

local RegisterCACertificateRequest_keys = { "caCertificate" = true, "verificationCertificate" = true, "allowAutoRegistration" = true, "setAsActive" = true, nil }

function M.AssertRegisterCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCACertificateRequest to be of type 'table'")
	assert(struct["caCertificate"], "Expected key caCertificate to exist in table")
	assert(struct["verificationCertificate"], "Expected key verificationCertificate to exist in table")
	if struct["caCertificate"] then M.AssertCertificatePem(struct["caCertificate"]) end
	if struct["verificationCertificate"] then M.AssertCertificatePem(struct["verificationCertificate"]) end
	if struct["allowAutoRegistration"] then M.AssertAllowAutoRegistration(struct["allowAutoRegistration"]) end
	if struct["setAsActive"] then M.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(RegisterCACertificateRequest_keys[k], "RegisterCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCACertificateRequest
-- <p>The input to the RegisterCACertificate operation.</p>
-- @param caCertificate [CertificatePem] <p>The CA certificate.</p>
-- @param verificationCertificate [CertificatePem] <p>The private key verification certificate.</p>
-- @param allowAutoRegistration [AllowAutoRegistration] <p>Allows this CA certificate to be used for auto registration of device certificates.</p>
-- @param setAsActive [SetAsActive] <p>A boolean value that specifies if the CA certificate is set to active.</p>
-- Required parameter: caCertificate
-- Required parameter: verificationCertificate
function M.RegisterCACertificateRequest(caCertificate, verificationCertificate, allowAutoRegistration, setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCACertificateRequest")
	local t = { 
		["caCertificate"] = caCertificate,
		["verificationCertificate"] = verificationCertificate,
		["allowAutoRegistration"] = allowAutoRegistration,
		["setAsActive"] = setAsActive,
	}
	M.AssertRegisterCACertificateRequest(t)
	return t
end

local DeleteRegistrationCodeRequest_keys = { nil }

function M.AssertDeleteRegistrationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegistrationCodeRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteRegistrationCodeRequest_keys[k], "DeleteRegistrationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegistrationCodeRequest
-- <p>The input for the DeleteRegistrationCode operation.</p>
function M.DeleteRegistrationCodeRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRegistrationCodeRequest")
	local t = { 
	}
	M.AssertDeleteRegistrationCodeRequest(t)
	return t
end

local GetRegistrationCodeResponse_keys = { "registrationCode" = true, nil }

function M.AssertGetRegistrationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegistrationCodeResponse to be of type 'table'")
	if struct["registrationCode"] then M.AssertRegistrationCode(struct["registrationCode"]) end
	for k,_ in pairs(struct) do
		assert(GetRegistrationCodeResponse_keys[k], "GetRegistrationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegistrationCodeResponse
-- <p>The output from the GetRegistrationCode operation.</p>
-- @param registrationCode [RegistrationCode] <p>The CA certificate registration code.</p>
function M.GetRegistrationCodeResponse(registrationCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegistrationCodeResponse")
	local t = { 
		["registrationCode"] = registrationCode,
	}
	M.AssertGetRegistrationCodeResponse(t)
	return t
end

local ListPolicyVersionsRequest_keys = { "policyName" = true, nil }

function M.AssertListPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyVersionsRequest_keys[k], "ListPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsRequest
-- <p>The input for the ListPolicyVersions operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- Required parameter: policyName
function M.ListPolicyVersionsRequest(policyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsRequest")
	local t = { 
		["policyName"] = policyName,
	}
	M.AssertListPolicyVersionsRequest(t)
	return t
end

local ListCertificatesRequest_keys = { "marker" = true, "ascendingOrder" = true, "pageSize" = true, nil }

function M.AssertListCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesRequest to be of type 'table'")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListCertificatesRequest_keys[k], "ListCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesRequest
-- <p>The input for the ListCertificates operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
function M.ListCertificatesRequest(marker, ascendingOrder, pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesRequest")
	local t = { 
		["marker"] = marker,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
	}
	M.AssertListCertificatesRequest(t)
	return t
end

local ThingAttribute_keys = { "thingTypeName" = true, "attributes" = true, "version" = true, "thingName" = true, nil }

function M.AssertThingAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingAttribute to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(ThingAttribute_keys[k], "ThingAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingAttribute
-- <p>The properties of the thing, including thing name, thing type name, and a list of thing attributes.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type, if the thing has been associated with a type.</p>
-- @param attributes [Attributes] <p>A list of thing attributes which are name-value pairs.</p>
-- @param version [Version] <p>The version of the thing record in the registry.</p>
-- @param thingName [ThingName] <p>The name of the thing.</p>
function M.ThingAttribute(thingTypeName, attributes, version, thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingAttribute")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["attributes"] = attributes,
		["version"] = version,
		["thingName"] = thingName,
	}
	M.AssertThingAttribute(t)
	return t
end

local DescribeThingRequest_keys = { "thingName" = true, nil }

function M.AssertDescribeThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeThingRequest_keys[k], "DescribeThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingRequest
-- <p>The input for the DescribeThing operation.</p>
-- @param thingName [ThingName] <p>The name of the thing.</p>
-- Required parameter: thingName
function M.DescribeThingRequest(thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingRequest")
	local t = { 
		["thingName"] = thingName,
	}
	M.AssertDescribeThingRequest(t)
	return t
end

local ListThingPrincipalsResponse_keys = { "principals" = true, nil }

function M.AssertListThingPrincipalsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingPrincipalsResponse to be of type 'table'")
	if struct["principals"] then M.AssertPrincipals(struct["principals"]) end
	for k,_ in pairs(struct) do
		assert(ListThingPrincipalsResponse_keys[k], "ListThingPrincipalsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingPrincipalsResponse
-- <p>The output from the ListThingPrincipals operation.</p>
-- @param principals [Principals] <p>The principals associated with the thing.</p>
function M.ListThingPrincipalsResponse(principals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingPrincipalsResponse")
	local t = { 
		["principals"] = principals,
	}
	M.AssertListThingPrincipalsResponse(t)
	return t
end

local CertificateValidationException_keys = { "message" = true, nil }

function M.AssertCertificateValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateValidationException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CertificateValidationException_keys[k], "CertificateValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateValidationException
-- <p>The certificate is invalid.</p>
-- @param message [errorMessage] <p>Additional information about the exception.</p>
function M.CertificateValidationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateValidationException")
	local t = { 
		["message"] = message,
	}
	M.AssertCertificateValidationException(t)
	return t
end

local DeleteThingResponse_keys = { nil }

function M.AssertDeleteThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteThingResponse_keys[k], "DeleteThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingResponse
-- <p>The output of the DeleteThing operation.</p>
function M.DeleteThingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingResponse")
	local t = { 
	}
	M.AssertDeleteThingResponse(t)
	return t
end

local CreateThingRequest_keys = { "thingTypeName" = true, "attributePayload" = true, "thingName" = true, nil }

function M.AssertCreateThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributePayload"] then M.AssertAttributePayload(struct["attributePayload"]) end
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(CreateThingRequest_keys[k], "CreateThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingRequest
-- <p>The input for the CreateThing operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type associated with the new thing.</p>
-- @param attributePayload [AttributePayload] <p>The attribute payload, which consists of up to three name/value pairs in a JSON document. For example:</p> <p> <code>{\"attributes\":{\"string1\":\"string2\"}}</code> </p>
-- @param thingName [ThingName] <p>The name of the thing to create.</p>
-- Required parameter: thingName
function M.CreateThingRequest(thingTypeName, attributePayload, thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["attributePayload"] = attributePayload,
		["thingName"] = thingName,
	}
	M.AssertCreateThingRequest(t)
	return t
end

local RegisterCertificateResponse_keys = { "certificateArn" = true, "certificateId" = true, nil }

function M.AssertRegisterCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCertificateResponse to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterCertificateResponse_keys[k], "RegisterCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCertificateResponse
-- <p>The output from the RegisterCertificate operation.</p>
-- @param certificateArn [CertificateArn] <p>The certificate ARN.</p>
-- @param certificateId [CertificateId] <p>The certificate identifier.</p>
function M.RegisterCertificateResponse(certificateArn, certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCertificateResponse")
	local t = { 
		["certificateArn"] = certificateArn,
		["certificateId"] = certificateId,
	}
	M.AssertRegisterCertificateResponse(t)
	return t
end

local PolicyVersion_keys = { "versionId" = true, "createDate" = true, "isDefaultVersion" = true, nil }

function M.AssertPolicyVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyVersion to be of type 'table'")
	if struct["versionId"] then M.AssertPolicyVersionId(struct["versionId"]) end
	if struct["createDate"] then M.AssertDateType(struct["createDate"]) end
	if struct["isDefaultVersion"] then M.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(PolicyVersion_keys[k], "PolicyVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyVersion
-- <p>Describes a policy version.</p>
-- @param versionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param createDate [DateType] <p>The date and time the policy was created.</p>
-- @param isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
function M.PolicyVersion(versionId, createDate, isDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyVersion")
	local t = { 
		["versionId"] = versionId,
		["createDate"] = createDate,
		["isDefaultVersion"] = isDefaultVersion,
	}
	M.AssertPolicyVersion(t)
	return t
end

local CreatePolicyVersionResponse_keys = { "policyDocument" = true, "policyVersionId" = true, "policyArn" = true, "isDefaultVersion" = true, nil }

function M.AssertCreatePolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionResponse to be of type 'table'")
	if struct["policyDocument"] then M.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then M.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then M.AssertPolicyArn(struct["policyArn"]) end
	if struct["isDefaultVersion"] then M.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyVersionResponse_keys[k], "CreatePolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionResponse
-- <p>The output of the CreatePolicyVersion operation.</p>
-- @param policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param policyArn [PolicyArn] <p>The policy ARN.</p>
-- @param isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
function M.CreatePolicyVersionResponse(policyDocument, policyVersionId, policyArn, isDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionResponse")
	local t = { 
		["policyDocument"] = policyDocument,
		["policyVersionId"] = policyVersionId,
		["policyArn"] = policyArn,
		["isDefaultVersion"] = isDefaultVersion,
	}
	M.AssertCreatePolicyVersionResponse(t)
	return t
end

local GetRegistrationCodeRequest_keys = { nil }

function M.AssertGetRegistrationCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRegistrationCodeRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetRegistrationCodeRequest_keys[k], "GetRegistrationCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRegistrationCodeRequest
-- <p>The input to the GetRegistrationCode operation.</p>
function M.GetRegistrationCodeRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRegistrationCodeRequest")
	local t = { 
	}
	M.AssertGetRegistrationCodeRequest(t)
	return t
end

local UpdateCertificateRequest_keys = { "newStatus" = true, "certificateId" = true, nil }

function M.AssertUpdateCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	assert(struct["newStatus"], "Expected key newStatus to exist in table")
	if struct["newStatus"] then M.AssertCertificateStatus(struct["newStatus"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCertificateRequest_keys[k], "UpdateCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCertificateRequest
-- <p>The input for the UpdateCertificate operation.</p>
-- @param newStatus [CertificateStatus] <p>The new status.</p> <p> <b>Note:</b> Setting the status to PENDING_TRANSFER will result in an exception being thrown. PENDING_TRANSFER is a status used internally by AWS IoT. It is not intended for developer use.</p> <p> <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
-- Required parameter: newStatus
function M.UpdateCertificateRequest(newStatus, certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCertificateRequest")
	local t = { 
		["newStatus"] = newStatus,
		["certificateId"] = certificateId,
	}
	M.AssertUpdateCertificateRequest(t)
	return t
end

local ListPrincipalPoliciesResponse_keys = { "nextMarker" = true, "policies" = true, nil }

function M.AssertListPrincipalPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalPoliciesResponse to be of type 'table'")
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	if struct["policies"] then M.AssertPolicies(struct["policies"]) end
	for k,_ in pairs(struct) do
		assert(ListPrincipalPoliciesResponse_keys[k], "ListPrincipalPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalPoliciesResponse
-- <p>The output from the ListPrincipalPolicies operation.</p>
-- @param nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @param policies [Policies] <p>The policies.</p>
function M.ListPrincipalPoliciesResponse(nextMarker, policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalPoliciesResponse")
	local t = { 
		["nextMarker"] = nextMarker,
		["policies"] = policies,
	}
	M.AssertListPrincipalPoliciesResponse(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The number of attached entities exceeds the limit.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local ListOutgoingCertificatesRequest_keys = { "marker" = true, "ascendingOrder" = true, "pageSize" = true, nil }

function M.AssertListOutgoingCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingCertificatesRequest to be of type 'table'")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListOutgoingCertificatesRequest_keys[k], "ListOutgoingCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingCertificatesRequest
-- <p>The input to the ListOutgoingCertificates operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
function M.ListOutgoingCertificatesRequest(marker, ascendingOrder, pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingCertificatesRequest")
	local t = { 
		["marker"] = marker,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
	}
	M.AssertListOutgoingCertificatesRequest(t)
	return t
end

local DeleteCACertificateRequest_keys = { "certificateId" = true, nil }

function M.AssertDeleteCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCACertificateRequest_keys[k], "DeleteCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCACertificateRequest
-- <p>Input for the DeleteCACertificate operation.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate to delete.</p>
-- Required parameter: certificateId
function M.DeleteCACertificateRequest(certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCACertificateRequest")
	local t = { 
		["certificateId"] = certificateId,
	}
	M.AssertDeleteCACertificateRequest(t)
	return t
end

local CertificateStateException_keys = { "message" = true, nil }

function M.AssertCertificateStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateStateException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CertificateStateException_keys[k], "CertificateStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateStateException
-- <p>The certificate operation is not allowed.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.CertificateStateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateStateException")
	local t = { 
		["message"] = message,
	}
	M.AssertCertificateStateException(t)
	return t
end

local GetTopicRuleRequest_keys = { "ruleName" = true, nil }

function M.AssertGetTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(GetTopicRuleRequest_keys[k], "GetTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicRuleRequest
-- <p>The input for the GetTopicRule operation.</p>
-- @param ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
function M.GetTopicRuleRequest(ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicRuleRequest")
	local t = { 
		["ruleName"] = ruleName,
	}
	M.AssertGetTopicRuleRequest(t)
	return t
end

local CertificateConflictException_keys = { "message" = true, nil }

function M.AssertCertificateConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateConflictException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CertificateConflictException_keys[k], "CertificateConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateConflictException
-- <p>Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.CertificateConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertCertificateConflictException(t)
	return t
end

local TransferData_keys = { "transferMessage" = true, "rejectDate" = true, "acceptDate" = true, "transferDate" = true, "rejectReason" = true, nil }

function M.AssertTransferData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferData to be of type 'table'")
	if struct["transferMessage"] then M.AssertMessage(struct["transferMessage"]) end
	if struct["rejectDate"] then M.AssertDateType(struct["rejectDate"]) end
	if struct["acceptDate"] then M.AssertDateType(struct["acceptDate"]) end
	if struct["transferDate"] then M.AssertDateType(struct["transferDate"]) end
	if struct["rejectReason"] then M.AssertMessage(struct["rejectReason"]) end
	for k,_ in pairs(struct) do
		assert(TransferData_keys[k], "TransferData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferData
-- <p>Data used to transfer a certificate to an AWS account.</p>
-- @param transferMessage [Message] <p>The transfer message.</p>
-- @param rejectDate [DateType] <p>The date the transfer was rejected.</p>
-- @param acceptDate [DateType] <p>The date the transfer was accepted.</p>
-- @param transferDate [DateType] <p>The date the transfer took place.</p>
-- @param rejectReason [Message] <p>The reason why the transfer was rejected.</p>
function M.TransferData(transferMessage, rejectDate, acceptDate, transferDate, rejectReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferData")
	local t = { 
		["transferMessage"] = transferMessage,
		["rejectDate"] = rejectDate,
		["acceptDate"] = acceptDate,
		["transferDate"] = transferDate,
		["rejectReason"] = rejectReason,
	}
	M.AssertTransferData(t)
	return t
end

local DeleteThingRequest_keys = { "expectedVersion" = true, "thingName" = true, nil }

function M.AssertDeleteThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["expectedVersion"] then M.AssertOptionalVersion(struct["expectedVersion"]) end
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteThingRequest_keys[k], "DeleteThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingRequest
-- <p>The input for the DeleteThing operation.</p>
-- @param expectedVersion [OptionalVersion] <p>The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the <code>DeleteThing</code> request is rejected with a <code>VersionConflictException</code>.</p>
-- @param thingName [ThingName] <p>The name of the thing to delete.</p>
-- Required parameter: thingName
function M.DeleteThingRequest(expectedVersion, thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingRequest")
	local t = { 
		["expectedVersion"] = expectedVersion,
		["thingName"] = thingName,
	}
	M.AssertDeleteThingRequest(t)
	return t
end

local ListTopicRulesRequest_keys = { "topic" = true, "nextToken" = true, "ruleDisabled" = true, "maxResults" = true, nil }

function M.AssertListTopicRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicRulesRequest to be of type 'table'")
	if struct["topic"] then M.AssertTopic(struct["topic"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["ruleDisabled"] then M.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListTopicRulesRequest_keys[k], "ListTopicRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicRulesRequest
-- <p>The input for the ListTopicRules operation.</p>
-- @param topic [Topic] <p>The topic.</p>
-- @param nextToken [NextToken] <p>A token used to retrieve the next value.</p>
-- @param ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @param maxResults [MaxResults] <p>The maximum number of results to return.</p>
function M.ListTopicRulesRequest(topic, nextToken, ruleDisabled, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicRulesRequest")
	local t = { 
		["topic"] = topic,
		["nextToken"] = nextToken,
		["ruleDisabled"] = ruleDisabled,
		["maxResults"] = maxResults,
	}
	M.AssertListTopicRulesRequest(t)
	return t
end

local CreateThingTypeResponse_keys = { "thingTypeName" = true, "thingTypeArn" = true, nil }

function M.AssertCreateThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingTypeResponse to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeArn"] then M.AssertThingTypeArn(struct["thingTypeArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateThingTypeResponse_keys[k], "CreateThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingTypeResponse
-- <p>The output of the CreateThingType operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param thingTypeArn [ThingTypeArn] <p>The Amazon Resource Name (ARN) of the thing type.</p>
function M.CreateThingTypeResponse(thingTypeName, thingTypeArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingTypeResponse")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["thingTypeArn"] = thingTypeArn,
	}
	M.AssertCreateThingTypeResponse(t)
	return t
end

local ListPolicyPrincipalsRequest_keys = { "marker" = true, "policyName" = true, "ascendingOrder" = true, "pageSize" = true, nil }

function M.AssertListPolicyPrincipalsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyPrincipalsRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyPrincipalsRequest_keys[k], "ListPolicyPrincipalsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyPrincipalsRequest
-- <p>The input for the ListPolicyPrincipals operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, the results are returned in ascending creation order.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
-- Required parameter: policyName
function M.ListPolicyPrincipalsRequest(marker, policyName, ascendingOrder, pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyPrincipalsRequest")
	local t = { 
		["marker"] = marker,
		["policyName"] = policyName,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
	}
	M.AssertListPolicyPrincipalsRequest(t)
	return t
end

local CreatePolicyVersionRequest_keys = { "policyName" = true, "policyDocument" = true, "setAsDefault" = true, nil }

function M.AssertCreatePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyDocument"], "Expected key policyDocument to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then M.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["setAsDefault"] then M.AssertSetAsDefault(struct["setAsDefault"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyVersionRequest_keys[k], "CreatePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionRequest
-- <p>The input for the CreatePolicyVersion operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyDocument [PolicyDocument] <p>The JSON document that describes the policy. Minimum length of 1. Maximum length of 2048, excluding whitespaces</p>
-- @param setAsDefault [SetAsDefault] <p>Specifies whether the policy version is set as the default. When this parameter is true, the new policy version becomes the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>
-- Required parameter: policyName
-- Required parameter: policyDocument
function M.CreatePolicyVersionRequest(policyName, policyDocument, setAsDefault, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionRequest")
	local t = { 
		["policyName"] = policyName,
		["policyDocument"] = policyDocument,
		["setAsDefault"] = setAsDefault,
	}
	M.AssertCreatePolicyVersionRequest(t)
	return t
end

local DetachThingPrincipalRequest_keys = { "thingName" = true, "principal" = true, nil }

function M.AssertDetachThingPrincipalRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachThingPrincipalRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	if struct["principal"] then M.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(DetachThingPrincipalRequest_keys[k], "DetachThingPrincipalRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachThingPrincipalRequest
-- <p>The input for the DetachThingPrincipal operation.</p>
-- @param thingName [ThingName] <p>The name of the thing.</p>
-- @param principal [Principal] <p>If the principal is a certificate, this value must be ARN of the certificate. If the principal is an Amazon Cognito identity, this value must be the ID of the Amazon Cognito identity.</p>
-- Required parameter: thingName
-- Required parameter: principal
function M.DetachThingPrincipalRequest(thingName, principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachThingPrincipalRequest")
	local t = { 
		["thingName"] = thingName,
		["principal"] = principal,
	}
	M.AssertDetachThingPrincipalRequest(t)
	return t
end

local VersionConflictException_keys = { "message" = true, nil }

function M.AssertVersionConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionConflictException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(VersionConflictException_keys[k], "VersionConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionConflictException
-- <p>An exception thrown when the version of a thing passed to a command is different than the version specified with the --version parameter.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.VersionConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertVersionConflictException(t)
	return t
end

local CreatePolicyResponse_keys = { "policyName" = true, "policyDocument" = true, "policyVersionId" = true, "policyArn" = true, nil }

function M.AssertCreatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyResponse to be of type 'table'")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then M.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then M.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then M.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyResponse_keys[k], "CreatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyResponse
-- <p>The output from the CreatePolicy operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param policyArn [PolicyArn] <p>The policy ARN.</p>
function M.CreatePolicyResponse(policyName, policyDocument, policyVersionId, policyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyResponse")
	local t = { 
		["policyName"] = policyName,
		["policyDocument"] = policyDocument,
		["policyVersionId"] = policyVersionId,
		["policyArn"] = policyArn,
	}
	M.AssertCreatePolicyResponse(t)
	return t
end

local CreateKeysAndCertificateRequest_keys = { "setAsActive" = true, nil }

function M.AssertCreateKeysAndCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeysAndCertificateRequest to be of type 'table'")
	if struct["setAsActive"] then M.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(CreateKeysAndCertificateRequest_keys[k], "CreateKeysAndCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeysAndCertificateRequest
-- <p>The input for the CreateKeysAndCertificate operation.</p>
-- @param setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
function M.CreateKeysAndCertificateRequest(setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeysAndCertificateRequest")
	local t = { 
		["setAsActive"] = setAsActive,
	}
	M.AssertCreateKeysAndCertificateRequest(t)
	return t
end

local AttachPrincipalPolicyRequest_keys = { "policyName" = true, "principal" = true, nil }

function M.AssertAttachPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPrincipalPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["principal"] then M.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(AttachPrincipalPolicyRequest_keys[k], "AttachPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPrincipalPolicyRequest
-- <p>The input for the AttachPrincipalPolicy operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param principal [Principal] <p>The principal, which can be a certificate ARN (as returned from the CreateCertificate operation) or an Amazon Cognito ID.</p>
-- Required parameter: policyName
-- Required parameter: principal
function M.AttachPrincipalPolicyRequest(policyName, principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPrincipalPolicyRequest")
	local t = { 
		["policyName"] = policyName,
		["principal"] = principal,
	}
	M.AssertAttachPrincipalPolicyRequest(t)
	return t
end

local DeletePolicyRequest_keys = { "policyName" = true, nil }

function M.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(DeletePolicyRequest_keys[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
-- <p>The input for the DeletePolicy operation.</p>
-- @param policyName [PolicyName] <p>The name of the policy to delete.</p>
-- Required parameter: policyName
function M.DeletePolicyRequest(policyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyRequest")
	local t = { 
		["policyName"] = policyName,
	}
	M.AssertDeletePolicyRequest(t)
	return t
end

local UpdateThingRequest_keys = { "thingTypeName" = true, "removeThingType" = true, "attributePayload" = true, "expectedVersion" = true, "thingName" = true, nil }

function M.AssertUpdateThingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["removeThingType"] then M.AssertRemoveThingType(struct["removeThingType"]) end
	if struct["attributePayload"] then M.AssertAttributePayload(struct["attributePayload"]) end
	if struct["expectedVersion"] then M.AssertOptionalVersion(struct["expectedVersion"]) end
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateThingRequest_keys[k], "UpdateThingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingRequest
-- <p>The input for the UpdateThing operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param removeThingType [RemoveThingType] <p>Remove a thing type association. If <b>true</b>, the assocation is removed.</p>
-- @param attributePayload [AttributePayload] <p>A list of thing attributes, a JSON string containing name-value pairs. For example:</p> <p> <code>{\"attributes\":{\"name1\":\"value2\"}}</code> </p> <p>This data is used to add new attributes or update existing attributes.</p>
-- @param expectedVersion [OptionalVersion] <p>The expected version of the thing record in the registry. If the version of the record in the registry does not match the expected version specified in the request, the <code>UpdateThing</code> request is rejected with a <code>VersionConflictException</code>.</p>
-- @param thingName [ThingName] <p>The name of the thing to update.</p>
-- Required parameter: thingName
function M.UpdateThingRequest(thingTypeName, removeThingType, attributePayload, expectedVersion, thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["removeThingType"] = removeThingType,
		["attributePayload"] = attributePayload,
		["expectedVersion"] = expectedVersion,
		["thingName"] = thingName,
	}
	M.AssertUpdateThingRequest(t)
	return t
end

local TransferAlreadyCompletedException_keys = { "message" = true, nil }

function M.AssertTransferAlreadyCompletedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferAlreadyCompletedException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TransferAlreadyCompletedException_keys[k], "TransferAlreadyCompletedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferAlreadyCompletedException
-- <p>You can't revert the certificate transfer because the transfer is already complete.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.TransferAlreadyCompletedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferAlreadyCompletedException")
	local t = { 
		["message"] = message,
	}
	M.AssertTransferAlreadyCompletedException(t)
	return t
end

local AttachThingPrincipalResponse_keys = { nil }

function M.AssertAttachThingPrincipalResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachThingPrincipalResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AttachThingPrincipalResponse_keys[k], "AttachThingPrincipalResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachThingPrincipalResponse
-- <p>The output from the AttachThingPrincipal operation.</p>
function M.AttachThingPrincipalResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachThingPrincipalResponse")
	local t = { 
	}
	M.AssertAttachThingPrincipalResponse(t)
	return t
end

local CreateThingTypeRequest_keys = { "thingTypeName" = true, "thingTypeProperties" = true, nil }

function M.AssertCreateThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then M.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	for k,_ in pairs(struct) do
		assert(CreateThingTypeRequest_keys[k], "CreateThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingTypeRequest
-- <p>The input for the CreateThingType operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties for the thing type to create. It contains information about the new thing type including a description, and a list of searchable thing attribute names.</p>
-- Required parameter: thingTypeName
function M.CreateThingTypeRequest(thingTypeName, thingTypeProperties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingTypeRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["thingTypeProperties"] = thingTypeProperties,
	}
	M.AssertCreateThingTypeRequest(t)
	return t
end

local GetLoggingOptionsRequest_keys = { nil }

function M.AssertGetLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingOptionsRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetLoggingOptionsRequest_keys[k], "GetLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingOptionsRequest
-- <p>The input for the GetLoggingOptions operation.</p>
function M.GetLoggingOptionsRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggingOptionsRequest")
	local t = { 
	}
	M.AssertGetLoggingOptionsRequest(t)
	return t
end

local TransferConflictException_keys = { "message" = true, nil }

function M.AssertTransferConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferConflictException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TransferConflictException_keys[k], "TransferConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferConflictException
-- <p>You can't transfer the certificate because authorization policies are still attached.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.TransferConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertTransferConflictException(t)
	return t
end

local TopicRule_keys = { "description" = true, "ruleName" = true, "actions" = true, "createdAt" = true, "sql" = true, "awsIotSqlVersion" = true, "ruleDisabled" = true, nil }

function M.AssertTopicRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRule to be of type 'table'")
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	if struct["actions"] then M.AssertActionList(struct["actions"]) end
	if struct["createdAt"] then M.AssertCreatedAtDate(struct["createdAt"]) end
	if struct["sql"] then M.AssertSQL(struct["sql"]) end
	if struct["awsIotSqlVersion"] then M.AssertAwsIotSqlVersion(struct["awsIotSqlVersion"]) end
	if struct["ruleDisabled"] then M.AssertIsDisabled(struct["ruleDisabled"]) end
	for k,_ in pairs(struct) do
		assert(TopicRule_keys[k], "TopicRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRule
-- <p>Describes a rule.</p>
-- @param description [Description] <p>The description of the rule.</p>
-- @param ruleName [RuleName] <p>The name of the rule.</p>
-- @param actions [ActionList] <p>The actions associated with the rule.</p>
-- @param createdAt [CreatedAtDate] <p>The date and time the rule was created.</p>
-- @param sql [SQL] <p>The SQL statement used to query the topic. When using a SQL query with multiple lines, be sure to escape the newline characters.</p>
-- @param awsIotSqlVersion [AwsIotSqlVersion] <p>The version of the SQL rules engine to use when evaluating the rule.</p>
-- @param ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
function M.TopicRule(description, ruleName, actions, createdAt, sql, awsIotSqlVersion, ruleDisabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicRule")
	local t = { 
		["description"] = description,
		["ruleName"] = ruleName,
		["actions"] = actions,
		["createdAt"] = createdAt,
		["sql"] = sql,
		["awsIotSqlVersion"] = awsIotSqlVersion,
		["ruleDisabled"] = ruleDisabled,
	}
	M.AssertTopicRule(t)
	return t
end

local LoggingOptionsPayload_keys = { "logLevel" = true, "roleArn" = true, nil }

function M.AssertLoggingOptionsPayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingOptionsPayload to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["logLevel"] then M.AssertLogLevel(struct["logLevel"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(LoggingOptionsPayload_keys[k], "LoggingOptionsPayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingOptionsPayload
-- <p>Describes the logging options payload.</p>
-- @param logLevel [LogLevel] <p>The logging level.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- Required parameter: roleArn
function M.LoggingOptionsPayload(logLevel, roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingOptionsPayload")
	local t = { 
		["logLevel"] = logLevel,
		["roleArn"] = roleArn,
	}
	M.AssertLoggingOptionsPayload(t)
	return t
end

local CreateCertificateFromCsrResponse_keys = { "certificateArn" = true, "certificateId" = true, "certificatePem" = true, nil }

function M.AssertCreateCertificateFromCsrResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateFromCsrResponse to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then M.AssertCertificatePem(struct["certificatePem"]) end
	for k,_ in pairs(struct) do
		assert(CreateCertificateFromCsrResponse_keys[k], "CreateCertificateFromCsrResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateFromCsrResponse
-- <p>The output from the CreateCertificateFromCsr operation.</p>
-- @param certificateArn [CertificateArn] <p>The Amazon Resource Name (ARN) of the certificate. You can use the ARN as a principal for policy operations.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate. Certificate management operations only take a certificateId.</p>
-- @param certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
function M.CreateCertificateFromCsrResponse(certificateArn, certificateId, certificatePem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCertificateFromCsrResponse")
	local t = { 
		["certificateArn"] = certificateArn,
		["certificateId"] = certificateId,
		["certificatePem"] = certificatePem,
	}
	M.AssertCreateCertificateFromCsrResponse(t)
	return t
end

local ResourceAlreadyExistsException_keys = { "resourceId" = true, "message" = true, "resourceArn" = true, nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["resourceId"] then M.AssertresourceId(struct["resourceId"]) end
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	if struct["resourceArn"] then M.AssertresourceArn(struct["resourceArn"]) end
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The resource already exists.</p>
-- @param resourceId [resourceId] <p>The ID of the resource that caused the exception.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
-- @param resourceArn [resourceArn] <p>The ARN of the resource that caused the exception.</p>
function M.ResourceAlreadyExistsException(resourceId, message, resourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["resourceId"] = resourceId,
		["message"] = message,
		["resourceArn"] = resourceArn,
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

local GetPolicyVersionRequest_keys = { "policyName" = true, "policyVersionId" = true, nil }

function M.AssertGetPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then M.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyVersionRequest_keys[k], "GetPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionRequest
-- <p>The input for the GetPolicyVersion operation.</p>
-- @param policyName [PolicyName] <p>The name of the policy.</p>
-- @param policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required parameter: policyName
-- Required parameter: policyVersionId
function M.GetPolicyVersionRequest(policyName, policyVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionRequest")
	local t = { 
		["policyName"] = policyName,
		["policyVersionId"] = policyVersionId,
	}
	M.AssertGetPolicyVersionRequest(t)
	return t
end

local TopicRulePayload_keys = { "awsIotSqlVersion" = true, "ruleDisabled" = true, "description" = true, "actions" = true, "sql" = true, nil }

function M.AssertTopicRulePayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRulePayload to be of type 'table'")
	assert(struct["sql"], "Expected key sql to exist in table")
	assert(struct["actions"], "Expected key actions to exist in table")
	if struct["awsIotSqlVersion"] then M.AssertAwsIotSqlVersion(struct["awsIotSqlVersion"]) end
	if struct["ruleDisabled"] then M.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["actions"] then M.AssertActionList(struct["actions"]) end
	if struct["sql"] then M.AssertSQL(struct["sql"]) end
	for k,_ in pairs(struct) do
		assert(TopicRulePayload_keys[k], "TopicRulePayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRulePayload
-- <p>Describes a rule.</p>
-- @param awsIotSqlVersion [AwsIotSqlVersion] <p>The version of the SQL rules engine to use when evaluating the rule.</p>
-- @param ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @param description [Description] <p>The description of the rule.</p>
-- @param actions [ActionList] <p>The actions associated with the rule.</p>
-- @param sql [SQL] <p>The SQL statement used to query the topic. For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference">AWS IoT SQL Reference</a> in the <i>AWS IoT Developer Guide</i>.</p>
-- Required parameter: sql
-- Required parameter: actions
function M.TopicRulePayload(awsIotSqlVersion, ruleDisabled, description, actions, sql, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicRulePayload")
	local t = { 
		["awsIotSqlVersion"] = awsIotSqlVersion,
		["ruleDisabled"] = ruleDisabled,
		["description"] = description,
		["actions"] = actions,
		["sql"] = sql,
	}
	M.AssertTopicRulePayload(t)
	return t
end

local RegisterCertificateRequest_keys = { "status" = true, "certificatePem" = true, "caCertificatePem" = true, "setAsActive" = true, nil }

function M.AssertRegisterCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCertificateRequest to be of type 'table'")
	assert(struct["certificatePem"], "Expected key certificatePem to exist in table")
	if struct["status"] then M.AssertCertificateStatus(struct["status"]) end
	if struct["certificatePem"] then M.AssertCertificatePem(struct["certificatePem"]) end
	if struct["caCertificatePem"] then M.AssertCertificatePem(struct["caCertificatePem"]) end
	if struct["setAsActive"] then M.AssertSetAsActiveFlag(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(RegisterCertificateRequest_keys[k], "RegisterCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCertificateRequest
-- <p>The input to the RegisterCertificate operation.</p>
-- @param status [CertificateStatus] <p>The status of the register certificate request.</p>
-- @param certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- @param caCertificatePem [CertificatePem] <p>The CA certificate used to sign the device certificate being registered.</p>
-- @param setAsActive [SetAsActiveFlag] <p>A boolean value that specifies if the CA certificate is set to active.</p>
-- Required parameter: certificatePem
function M.RegisterCertificateRequest(status, certificatePem, caCertificatePem, setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCertificateRequest")
	local t = { 
		["status"] = status,
		["certificatePem"] = certificatePem,
		["caCertificatePem"] = caCertificatePem,
		["setAsActive"] = setAsActive,
	}
	M.AssertRegisterCertificateRequest(t)
	return t
end

local ElasticsearchAction_keys = { "index" = true, "roleArn" = true, "endpoint" = true, "type" = true, "id" = true, nil }

function M.AssertElasticsearchAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["endpoint"], "Expected key endpoint to exist in table")
	assert(struct["index"], "Expected key index to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["index"] then M.AssertElasticsearchIndex(struct["index"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["endpoint"] then M.AssertElasticsearchEndpoint(struct["endpoint"]) end
	if struct["type"] then M.AssertElasticsearchType(struct["type"]) end
	if struct["id"] then M.AssertElasticsearchId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(ElasticsearchAction_keys[k], "ElasticsearchAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchAction
-- <p>Describes an action that writes data to an Amazon Elasticsearch Service domain.</p>
-- @param index [ElasticsearchIndex] <p>The Elasticsearch index where you want to store your data.</p>
-- @param roleArn [AwsArn] <p>The IAM role ARN that has access to Elasticsearch.</p>
-- @param endpoint [ElasticsearchEndpoint] <p>The endpoint of your Elasticsearch domain.</p>
-- @param type [ElasticsearchType] <p>The type of document you are storing.</p>
-- @param id [ElasticsearchId] <p>The unique identifier for the document you are storing.</p>
-- Required parameter: roleArn
-- Required parameter: endpoint
-- Required parameter: index
-- Required parameter: type
-- Required parameter: id
function M.ElasticsearchAction(index, roleArn, endpoint, type, id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ElasticsearchAction")
	local t = { 
		["index"] = index,
		["roleArn"] = roleArn,
		["endpoint"] = endpoint,
		["type"] = type,
		["id"] = id,
	}
	M.AssertElasticsearchAction(t)
	return t
end

local ListThingPrincipalsRequest_keys = { "thingName" = true, nil }

function M.AssertListThingPrincipalsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingPrincipalsRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(ListThingPrincipalsRequest_keys[k], "ListThingPrincipalsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingPrincipalsRequest
-- <p>The input for the ListThingPrincipal operation.</p>
-- @param thingName [ThingName] <p>The name of the thing.</p>
-- Required parameter: thingName
function M.ListThingPrincipalsRequest(thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingPrincipalsRequest")
	local t = { 
		["thingName"] = thingName,
	}
	M.AssertListThingPrincipalsRequest(t)
	return t
end

local DynamoDBv2Action_keys = { "putItem" = true, "roleArn" = true, nil }

function M.AssertDynamoDBv2Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBv2Action to be of type 'table'")
	if struct["putItem"] then M.AssertPutItemInput(struct["putItem"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(DynamoDBv2Action_keys[k], "DynamoDBv2Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBv2Action
-- <p>Describes an action to write to a DynamoDB table.</p> <p>This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.</p>
-- @param putItem [PutItemInput] <p>Specifies the DynamoDB table to which the message data will be written. For example:</p> <p> <code>{ "dynamoDBv2": { "roleArn": "aws:iam:12341251:my-role" "putItem": { "tableName": "my-table" } } }</code> </p> <p>Each attribute in the message payload will be written to a separate column in the DynamoDB database.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the DynamoDB table.</p>
function M.DynamoDBv2Action(putItem, roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DynamoDBv2Action")
	local t = { 
		["putItem"] = putItem,
		["roleArn"] = roleArn,
	}
	M.AssertDynamoDBv2Action(t)
	return t
end

local AttachThingPrincipalRequest_keys = { "thingName" = true, "principal" = true, nil }

function M.AssertAttachThingPrincipalRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachThingPrincipalRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	if struct["principal"] then M.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(AttachThingPrincipalRequest_keys[k], "AttachThingPrincipalRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachThingPrincipalRequest
-- <p>The input for the AttachThingPrincipal operation.</p>
-- @param thingName [ThingName] <p>The name of the thing.</p>
-- @param principal [Principal] <p>The principal, such as a certificate or other credential.</p>
-- Required parameter: thingName
-- Required parameter: principal
function M.AttachThingPrincipalRequest(thingName, principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachThingPrincipalRequest")
	local t = { 
		["thingName"] = thingName,
		["principal"] = principal,
	}
	M.AssertAttachThingPrincipalRequest(t)
	return t
end

local CACertificateDescription_keys = { "certificateArn" = true, "status" = true, "autoRegistrationStatus" = true, "certificateId" = true, "certificatePem" = true, "ownedBy" = true, "creationDate" = true, nil }

function M.AssertCACertificateDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CACertificateDescription to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then M.AssertCACertificateStatus(struct["status"]) end
	if struct["autoRegistrationStatus"] then M.AssertAutoRegistrationStatus(struct["autoRegistrationStatus"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then M.AssertCertificatePem(struct["certificatePem"]) end
	if struct["ownedBy"] then M.AssertAwsAccountId(struct["ownedBy"]) end
	if struct["creationDate"] then M.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(CACertificateDescription_keys[k], "CACertificateDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CACertificateDescription
-- <p>Describes a CA certificate.</p>
-- @param certificateArn [CertificateArn] <p>The CA certificate ARN.</p>
-- @param status [CACertificateStatus] <p>The status of a CA certificate.</p>
-- @param autoRegistrationStatus [AutoRegistrationStatus] <p>Whether the CA certificate configured for auto registration of device certificates. Valid values are "ENABLE" and "DISABLE"</p>
-- @param certificateId [CertificateId] <p>The CA certificate ID.</p>
-- @param certificatePem [CertificatePem] <p>The CA certificate data, in PEM format.</p>
-- @param ownedBy [AwsAccountId] <p>The owner of the CA certificate.</p>
-- @param creationDate [DateType] <p>The date the CA certificate was created.</p>
function M.CACertificateDescription(certificateArn, status, autoRegistrationStatus, certificateId, certificatePem, ownedBy, creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CACertificateDescription")
	local t = { 
		["certificateArn"] = certificateArn,
		["status"] = status,
		["autoRegistrationStatus"] = autoRegistrationStatus,
		["certificateId"] = certificateId,
		["certificatePem"] = certificatePem,
		["ownedBy"] = ownedBy,
		["creationDate"] = creationDate,
	}
	M.AssertCACertificateDescription(t)
	return t
end

local ReplaceTopicRuleRequest_keys = { "topicRulePayload" = true, "ruleName" = true, nil }

function M.AssertReplaceTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReplaceTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	assert(struct["topicRulePayload"], "Expected key topicRulePayload to exist in table")
	if struct["topicRulePayload"] then M.AssertTopicRulePayload(struct["topicRulePayload"]) end
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(ReplaceTopicRuleRequest_keys[k], "ReplaceTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReplaceTopicRuleRequest
-- <p>The input for the ReplaceTopicRule operation.</p>
-- @param topicRulePayload [TopicRulePayload] <p>The rule payload.</p>
-- @param ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
-- Required parameter: topicRulePayload
function M.ReplaceTopicRuleRequest(topicRulePayload, ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReplaceTopicRuleRequest")
	local t = { 
		["topicRulePayload"] = topicRulePayload,
		["ruleName"] = ruleName,
	}
	M.AssertReplaceTopicRuleRequest(t)
	return t
end

local InvalidRequestException_keys = { "message" = true, nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request is not valid.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.InvalidRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidRequestException(t)
	return t
end

local DeleteConflictException_keys = { "message" = true, nil }

function M.AssertDeleteConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConflictException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConflictException_keys[k], "DeleteConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConflictException
-- <p>You can't delete the resource because it is attached to one or more resources.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.DeleteConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertDeleteConflictException(t)
	return t
end

local Certificate_keys = { "certificateArn" = true, "status" = true, "creationDate" = true, "certificateId" = true, nil }

function M.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then M.AssertCertificateStatus(struct["status"]) end
	if struct["creationDate"] then M.AssertDateType(struct["creationDate"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(Certificate_keys[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>Information about a certificate.</p>
-- @param certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @param status [CertificateStatus] <p>The status of the certificate.</p> <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param creationDate [DateType] <p>The date and time the certificate was created.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
function M.Certificate(certificateArn, status, creationDate, certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Certificate")
	local t = { 
		["certificateArn"] = certificateArn,
		["status"] = status,
		["creationDate"] = creationDate,
		["certificateId"] = certificateId,
	}
	M.AssertCertificate(t)
	return t
end

local FirehoseAction_keys = { "roleArn" = true, "deliveryStreamName" = true, "separator" = true, nil }

function M.AssertFirehoseAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FirehoseAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["deliveryStreamName"], "Expected key deliveryStreamName to exist in table")
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["deliveryStreamName"] then M.AssertDeliveryStreamName(struct["deliveryStreamName"]) end
	if struct["separator"] then M.AssertFirehoseSeparator(struct["separator"]) end
	for k,_ in pairs(struct) do
		assert(FirehoseAction_keys[k], "FirehoseAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FirehoseAction
-- <p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>
-- @param roleArn [AwsArn] <p>The IAM role that grants access to the Amazon Kinesis Firehost stream.</p>
-- @param deliveryStreamName [DeliveryStreamName] <p>The delivery stream name.</p>
-- @param separator [FirehoseSeparator] <p>A character separator that will be used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).</p>
-- Required parameter: roleArn
-- Required parameter: deliveryStreamName
function M.FirehoseAction(roleArn, deliveryStreamName, separator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FirehoseAction")
	local t = { 
		["roleArn"] = roleArn,
		["deliveryStreamName"] = deliveryStreamName,
		["separator"] = separator,
	}
	M.AssertFirehoseAction(t)
	return t
end

local UpdateThingResponse_keys = { nil }

function M.AssertUpdateThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateThingResponse_keys[k], "UpdateThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingResponse
-- <p>The output from the UpdateThing operation.</p>
function M.UpdateThingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingResponse")
	local t = { 
	}
	M.AssertUpdateThingResponse(t)
	return t
end

local AttributePayload_keys = { "attributes" = true, "merge" = true, nil }

function M.AssertAttributePayload(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributePayload to be of type 'table'")
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	if struct["merge"] then M.AssertFlag(struct["merge"]) end
	for k,_ in pairs(struct) do
		assert(AttributePayload_keys[k], "AttributePayload contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributePayload
-- <p>The attribute payload.</p>
-- @param attributes [Attributes] <p>A JSON string containing up to three key-value pair in JSON format. For example:</p> <p> <code>{\"attributes\":{\"string1\":\"string2\"}}</code> </p>
-- @param merge [Flag] <p>Specifies whether the list of attributes provided in the <code>AttributePayload</code> is merged with the attributes stored in the registry, instead of overwriting them.</p> <p>To remove an attribute, call <code>UpdateThing</code> with an empty attribute value.</p> <note> <p>The <code>merge</code> attribute is only valid when calling <code>UpdateThing</code>.</p> </note>
function M.AttributePayload(attributes, merge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributePayload")
	local t = { 
		["attributes"] = attributes,
		["merge"] = merge,
	}
	M.AssertAttributePayload(t)
	return t
end

local AcceptCertificateTransferRequest_keys = { "certificateId" = true, "setAsActive" = true, nil }

function M.AssertAcceptCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["setAsActive"] then M.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(AcceptCertificateTransferRequest_keys[k], "AcceptCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptCertificateTransferRequest
-- <p>The input for the AcceptCertificateTransfer operation.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @param setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- Required parameter: certificateId
function M.AcceptCertificateTransferRequest(certificateId, setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptCertificateTransferRequest")
	local t = { 
		["certificateId"] = certificateId,
		["setAsActive"] = setAsActive,
	}
	M.AssertAcceptCertificateTransferRequest(t)
	return t
end

local ListPoliciesResponse_keys = { "nextMarker" = true, "policies" = true, nil }

function M.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	if struct["policies"] then M.AssertPolicies(struct["policies"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesResponse_keys[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
-- <p>The output from the ListPolicies operation.</p>
-- @param nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
-- @param policies [Policies] <p>The descriptions of the policies.</p>
function M.ListPoliciesResponse(nextMarker, policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesResponse")
	local t = { 
		["nextMarker"] = nextMarker,
		["policies"] = policies,
	}
	M.AssertListPoliciesResponse(t)
	return t
end

local GetTopicRuleResponse_keys = { "ruleArn" = true, "rule" = true, nil }

function M.AssertGetTopicRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicRuleResponse to be of type 'table'")
	if struct["ruleArn"] then M.AssertRuleArn(struct["ruleArn"]) end
	if struct["rule"] then M.AssertTopicRule(struct["rule"]) end
	for k,_ in pairs(struct) do
		assert(GetTopicRuleResponse_keys[k], "GetTopicRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicRuleResponse
-- <p>The output from the GetTopicRule operation.</p>
-- @param ruleArn [RuleArn] <p>The rule ARN.</p>
-- @param rule [TopicRule] <p>The rule.</p>
function M.GetTopicRuleResponse(ruleArn, rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicRuleResponse")
	local t = { 
		["ruleArn"] = ruleArn,
		["rule"] = rule,
	}
	M.AssertGetTopicRuleResponse(t)
	return t
end

local DisableTopicRuleRequest_keys = { "ruleName" = true, nil }

function M.AssertDisableTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(DisableTopicRuleRequest_keys[k], "DisableTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableTopicRuleRequest
-- <p>The input for the DisableTopicRuleRequest operation.</p>
-- @param ruleName [RuleName] <p>The name of the rule to disable.</p>
-- Required parameter: ruleName
function M.DisableTopicRuleRequest(ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableTopicRuleRequest")
	local t = { 
		["ruleName"] = ruleName,
	}
	M.AssertDisableTopicRuleRequest(t)
	return t
end

local SqsAction_keys = { "queueUrl" = true, "roleArn" = true, "useBase64" = true, nil }

function M.AssertSqsAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqsAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["queueUrl"], "Expected key queueUrl to exist in table")
	if struct["queueUrl"] then M.AssertQueueUrl(struct["queueUrl"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["useBase64"] then M.AssertUseBase64(struct["useBase64"]) end
	for k,_ in pairs(struct) do
		assert(SqsAction_keys[k], "SqsAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqsAction
-- <p>Describes an action to publish data to an Amazon SQS queue.</p>
-- @param queueUrl [QueueUrl] <p>The URL of the Amazon SQS queue.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @param useBase64 [UseBase64] <p>Specifies whether to use Base64 encoding.</p>
-- Required parameter: roleArn
-- Required parameter: queueUrl
function M.SqsAction(queueUrl, roleArn, useBase64, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqsAction")
	local t = { 
		["queueUrl"] = queueUrl,
		["roleArn"] = roleArn,
		["useBase64"] = useBase64,
	}
	M.AssertSqsAction(t)
	return t
end

local DeleteThingTypeResponse_keys = { nil }

function M.AssertDeleteThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteThingTypeResponse_keys[k], "DeleteThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingTypeResponse
-- <p>The output for the DeleteThingType operation.</p>
function M.DeleteThingTypeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingTypeResponse")
	local t = { 
	}
	M.AssertDeleteThingTypeResponse(t)
	return t
end

local DescribeCertificateResponse_keys = { "certificateDescription" = true, nil }

function M.AssertDescribeCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateResponse to be of type 'table'")
	if struct["certificateDescription"] then M.AssertCertificateDescription(struct["certificateDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificateResponse_keys[k], "DescribeCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateResponse
-- <p>The output of the DescribeCertificate operation.</p>
-- @param certificateDescription [CertificateDescription] <p>The description of the certificate.</p>
function M.DescribeCertificateResponse(certificateDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificateResponse")
	local t = { 
		["certificateDescription"] = certificateDescription,
	}
	M.AssertDescribeCertificateResponse(t)
	return t
end

local RejectCertificateTransferRequest_keys = { "rejectReason" = true, "certificateId" = true, nil }

function M.AssertRejectCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["rejectReason"] then M.AssertMessage(struct["rejectReason"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(RejectCertificateTransferRequest_keys[k], "RejectCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectCertificateTransferRequest
-- <p>The input for the RejectCertificateTransfer operation.</p>
-- @param rejectReason [Message] <p>The reason the certificate transfer was rejected.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.RejectCertificateTransferRequest(rejectReason, certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectCertificateTransferRequest")
	local t = { 
		["rejectReason"] = rejectReason,
		["certificateId"] = certificateId,
	}
	M.AssertRejectCertificateTransferRequest(t)
	return t
end

local ListCACertificatesRequest_keys = { "marker" = true, "ascendingOrder" = true, "pageSize" = true, nil }

function M.AssertListCACertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCACertificatesRequest to be of type 'table'")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListCACertificatesRequest_keys[k], "ListCACertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCACertificatesRequest
-- <p>Input for the ListCACertificates operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param ascendingOrder [AscendingOrder] <p>Determines the order of the results.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
function M.ListCACertificatesRequest(marker, ascendingOrder, pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCACertificatesRequest")
	local t = { 
		["marker"] = marker,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
	}
	M.AssertListCACertificatesRequest(t)
	return t
end

local SetLoggingOptionsRequest_keys = { "loggingOptionsPayload" = true, nil }

function M.AssertSetLoggingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetLoggingOptionsRequest to be of type 'table'")
	assert(struct["loggingOptionsPayload"], "Expected key loggingOptionsPayload to exist in table")
	if struct["loggingOptionsPayload"] then M.AssertLoggingOptionsPayload(struct["loggingOptionsPayload"]) end
	for k,_ in pairs(struct) do
		assert(SetLoggingOptionsRequest_keys[k], "SetLoggingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetLoggingOptionsRequest
-- <p>The input for the SetLoggingOptions operation.</p>
-- @param loggingOptionsPayload [LoggingOptionsPayload] <p>The logging options payload.</p>
-- Required parameter: loggingOptionsPayload
function M.SetLoggingOptionsRequest(loggingOptionsPayload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetLoggingOptionsRequest")
	local t = { 
		["loggingOptionsPayload"] = loggingOptionsPayload,
	}
	M.AssertSetLoggingOptionsRequest(t)
	return t
end

local CreateKeysAndCertificateResponse_keys = { "certificateArn" = true, "keyPair" = true, "certificateId" = true, "certificatePem" = true, nil }

function M.AssertCreateKeysAndCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeysAndCertificateResponse to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["keyPair"] then M.AssertKeyPair(struct["keyPair"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["certificatePem"] then M.AssertCertificatePem(struct["certificatePem"]) end
	for k,_ in pairs(struct) do
		assert(CreateKeysAndCertificateResponse_keys[k], "CreateKeysAndCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeysAndCertificateResponse
-- <p>The output of the CreateKeysAndCertificate operation.</p>
-- @param certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @param keyPair [KeyPair] <p>The generated key pair.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate. AWS IoT issues a default subject name for the certificate (for example, AWS IoT Certificate).</p>
-- @param certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
function M.CreateKeysAndCertificateResponse(certificateArn, keyPair, certificateId, certificatePem, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeysAndCertificateResponse")
	local t = { 
		["certificateArn"] = certificateArn,
		["keyPair"] = keyPair,
		["certificateId"] = certificateId,
		["certificatePem"] = certificatePem,
	}
	M.AssertCreateKeysAndCertificateResponse(t)
	return t
end

local ListCertificatesResponse_keys = { "certificates" = true, "nextMarker" = true, nil }

function M.AssertListCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesResponse to be of type 'table'")
	if struct["certificates"] then M.AssertCertificates(struct["certificates"]) end
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListCertificatesResponse_keys[k], "ListCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesResponse
-- <p>The output of the ListCertificates operation.</p>
-- @param certificates [Certificates] <p>The descriptions of the certificates.</p>
-- @param nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
function M.ListCertificatesResponse(certificates, nextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesResponse")
	local t = { 
		["certificates"] = certificates,
		["nextMarker"] = nextMarker,
	}
	M.AssertListCertificatesResponse(t)
	return t
end

local TopicRuleListItem_keys = { "topicPattern" = true, "ruleArn" = true, "ruleDisabled" = true, "createdAt" = true, "ruleName" = true, nil }

function M.AssertTopicRuleListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicRuleListItem to be of type 'table'")
	if struct["topicPattern"] then M.AssertTopicPattern(struct["topicPattern"]) end
	if struct["ruleArn"] then M.AssertRuleArn(struct["ruleArn"]) end
	if struct["ruleDisabled"] then M.AssertIsDisabled(struct["ruleDisabled"]) end
	if struct["createdAt"] then M.AssertCreatedAtDate(struct["createdAt"]) end
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(TopicRuleListItem_keys[k], "TopicRuleListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicRuleListItem
-- <p>Describes a rule.</p>
-- @param topicPattern [TopicPattern] <p>The pattern for the topic names that apply.</p>
-- @param ruleArn [RuleArn] <p>The rule ARN.</p>
-- @param ruleDisabled [IsDisabled] <p>Specifies whether the rule is disabled.</p>
-- @param createdAt [CreatedAtDate] <p>The date and time the rule was created.</p>
-- @param ruleName [RuleName] <p>The name of the rule.</p>
function M.TopicRuleListItem(topicPattern, ruleArn, ruleDisabled, createdAt, ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicRuleListItem")
	local t = { 
		["topicPattern"] = topicPattern,
		["ruleArn"] = ruleArn,
		["ruleDisabled"] = ruleDisabled,
		["createdAt"] = createdAt,
		["ruleName"] = ruleName,
	}
	M.AssertTopicRuleListItem(t)
	return t
end

local DescribeThingTypeResponse_keys = { "thingTypeName" = true, "thingTypeProperties" = true, "thingTypeMetadata" = true, nil }

function M.AssertDescribeThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingTypeResponse to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then M.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	if struct["thingTypeMetadata"] then M.AssertThingTypeMetadata(struct["thingTypeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(DescribeThingTypeResponse_keys[k], "DescribeThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingTypeResponse
-- <p>The output for the DescribeThingType operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties contains information about the thing type including description, and a list of searchable thing attribute names.</p>
-- @param thingTypeMetadata [ThingTypeMetadata] <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.</p>
function M.DescribeThingTypeResponse(thingTypeName, thingTypeProperties, thingTypeMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingTypeResponse")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["thingTypeProperties"] = thingTypeProperties,
		["thingTypeMetadata"] = thingTypeMetadata,
	}
	M.AssertDescribeThingTypeResponse(t)
	return t
end

local EnableTopicRuleRequest_keys = { "ruleName" = true, nil }

function M.AssertEnableTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(EnableTopicRuleRequest_keys[k], "EnableTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableTopicRuleRequest
-- <p>The input for the EnableTopicRuleRequest operation.</p>
-- @param ruleName [RuleName] <p>The name of the topic rule to enable.</p>
-- Required parameter: ruleName
function M.EnableTopicRuleRequest(ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableTopicRuleRequest")
	local t = { 
		["ruleName"] = ruleName,
	}
	M.AssertEnableTopicRuleRequest(t)
	return t
end

local ListCertificatesByCAResponse_keys = { "certificates" = true, "nextMarker" = true, nil }

function M.AssertListCertificatesByCAResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesByCAResponse to be of type 'table'")
	if struct["certificates"] then M.AssertCertificates(struct["certificates"]) end
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListCertificatesByCAResponse_keys[k], "ListCertificatesByCAResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesByCAResponse
-- <p>The output of the ListCertificatesByCA operation.</p>
-- @param certificates [Certificates] <p>The device certificates signed by the specified CA certificate.</p>
-- @param nextMarker [Marker] <p>The marker for the next set of results, or null if there are no additional results.</p>
function M.ListCertificatesByCAResponse(certificates, nextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesByCAResponse")
	local t = { 
		["certificates"] = certificates,
		["nextMarker"] = nextMarker,
	}
	M.AssertListCertificatesByCAResponse(t)
	return t
end

local ListTopicRulesResponse_keys = { "rules" = true, "nextToken" = true, nil }

function M.AssertListTopicRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicRulesResponse to be of type 'table'")
	if struct["rules"] then M.AssertTopicRuleList(struct["rules"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTopicRulesResponse_keys[k], "ListTopicRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicRulesResponse
-- <p>The output from the ListTopicRules operation.</p>
-- @param rules [TopicRuleList] <p>The rules.</p>
-- @param nextToken [NextToken] <p>A token used to retrieve the next value.</p>
function M.ListTopicRulesResponse(rules, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicRulesResponse")
	local t = { 
		["rules"] = rules,
		["nextToken"] = nextToken,
	}
	M.AssertListTopicRulesResponse(t)
	return t
end

local RegisterCACertificateResponse_keys = { "certificateArn" = true, "certificateId" = true, nil }

function M.AssertRegisterCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCACertificateResponse to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterCACertificateResponse_keys[k], "RegisterCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCACertificateResponse
-- <p>The output from the RegisterCACertificateResponse operation.</p>
-- @param certificateArn [CertificateArn] <p>The CA certificate ARN.</p>
-- @param certificateId [CertificateId] <p>The CA certificate identifier.</p>
function M.RegisterCACertificateResponse(certificateArn, certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCACertificateResponse")
	local t = { 
		["certificateArn"] = certificateArn,
		["certificateId"] = certificateId,
	}
	M.AssertRegisterCACertificateResponse(t)
	return t
end

local ListOutgoingCertificatesResponse_keys = { "nextMarker" = true, "outgoingCertificates" = true, nil }

function M.AssertListOutgoingCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOutgoingCertificatesResponse to be of type 'table'")
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	if struct["outgoingCertificates"] then M.AssertOutgoingCertificates(struct["outgoingCertificates"]) end
	for k,_ in pairs(struct) do
		assert(ListOutgoingCertificatesResponse_keys[k], "ListOutgoingCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOutgoingCertificatesResponse
-- <p>The output from the ListOutgoingCertificates operation.</p>
-- @param nextMarker [Marker] <p>The marker for the next set of results.</p>
-- @param outgoingCertificates [OutgoingCertificates] <p>The certificates that are being transfered but not yet accepted.</p>
function M.ListOutgoingCertificatesResponse(nextMarker, outgoingCertificates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOutgoingCertificatesResponse")
	local t = { 
		["nextMarker"] = nextMarker,
		["outgoingCertificates"] = outgoingCertificates,
	}
	M.AssertListOutgoingCertificatesResponse(t)
	return t
end

local DescribeCertificateRequest_keys = { "certificateId" = true, nil }

function M.AssertDescribeCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCertificateRequest_keys[k], "DescribeCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCertificateRequest
-- <p>The input for the DescribeCertificate operation.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.DescribeCertificateRequest(certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCertificateRequest")
	local t = { 
		["certificateId"] = certificateId,
	}
	M.AssertDescribeCertificateRequest(t)
	return t
end

local CreateThingResponse_keys = { "thingArn" = true, "thingName" = true, nil }

function M.AssertCreateThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateThingResponse to be of type 'table'")
	if struct["thingArn"] then M.AssertThingArn(struct["thingArn"]) end
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(CreateThingResponse_keys[k], "CreateThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateThingResponse
-- <p>The output of the CreateThing operation.</p>
-- @param thingArn [ThingArn] <p>The ARN of the new thing.</p>
-- @param thingName [ThingName] <p>The name of the new thing.</p>
function M.CreateThingResponse(thingArn, thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateThingResponse")
	local t = { 
		["thingArn"] = thingArn,
		["thingName"] = thingName,
	}
	M.AssertCreateThingResponse(t)
	return t
end

local InternalException_keys = { "message" = true, nil }

function M.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalException_keys[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>An unexpected error has occurred.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.InternalException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalException(t)
	return t
end

local DeprecateThingTypeResponse_keys = { nil }

function M.AssertDeprecateThingTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateThingTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeprecateThingTypeResponse_keys[k], "DeprecateThingTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateThingTypeResponse
-- <p>The output for the DeprecateThingType operation.</p>
function M.DeprecateThingTypeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateThingTypeResponse")
	local t = { 
	}
	M.AssertDeprecateThingTypeResponse(t)
	return t
end

local InternalFailureException_keys = { "message" = true, nil }

function M.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalFailureException_keys[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>An unexpected error has occurred.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.InternalFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalFailureException(t)
	return t
end

local CloudwatchMetricAction_keys = { "metricUnit" = true, "roleArn" = true, "metricTimestamp" = true, "metricNamespace" = true, "metricValue" = true, "metricName" = true, nil }

function M.AssertCloudwatchMetricAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchMetricAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["metricNamespace"], "Expected key metricNamespace to exist in table")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["metricValue"], "Expected key metricValue to exist in table")
	assert(struct["metricUnit"], "Expected key metricUnit to exist in table")
	if struct["metricUnit"] then M.AssertMetricUnit(struct["metricUnit"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["metricTimestamp"] then M.AssertMetricTimestamp(struct["metricTimestamp"]) end
	if struct["metricNamespace"] then M.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["metricValue"] then M.AssertMetricValue(struct["metricValue"]) end
	if struct["metricName"] then M.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(CloudwatchMetricAction_keys[k], "CloudwatchMetricAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchMetricAction
-- <p>Describes an action that captures a CloudWatch metric.</p>
-- @param metricUnit [MetricUnit] <p>The <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit">metric unit</a> supported by CloudWatch.</p>
-- @param roleArn [AwsArn] <p>The IAM role that allows access to the CloudWatch metric.</p>
-- @param metricTimestamp [MetricTimestamp] <p>An optional <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp">Unix timestamp</a>.</p>
-- @param metricNamespace [MetricNamespace] <p>The CloudWatch metric namespace name.</p>
-- @param metricValue [MetricValue] <p>The CloudWatch metric value.</p>
-- @param metricName [MetricName] <p>The CloudWatch metric name.</p>
-- Required parameter: roleArn
-- Required parameter: metricNamespace
-- Required parameter: metricName
-- Required parameter: metricValue
-- Required parameter: metricUnit
function M.CloudwatchMetricAction(metricUnit, roleArn, metricTimestamp, metricNamespace, metricValue, metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudwatchMetricAction")
	local t = { 
		["metricUnit"] = metricUnit,
		["roleArn"] = roleArn,
		["metricTimestamp"] = metricTimestamp,
		["metricNamespace"] = metricNamespace,
		["metricValue"] = metricValue,
		["metricName"] = metricName,
	}
	M.AssertCloudwatchMetricAction(t)
	return t
end

local MalformedPolicyException_keys = { "message" = true, nil }

function M.AssertMalformedPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MalformedPolicyException_keys[k], "MalformedPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyException
-- <p>The policy documentation is not valid.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.MalformedPolicyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyException")
	local t = { 
		["message"] = message,
	}
	M.AssertMalformedPolicyException(t)
	return t
end

local DescribeThingTypeRequest_keys = { "thingTypeName" = true, nil }

function M.AssertDescribeThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeThingTypeRequest_keys[k], "DescribeThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingTypeRequest
-- <p>The input for the DescribeThingType operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- Required parameter: thingTypeName
function M.DescribeThingTypeRequest(thingTypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingTypeRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
	}
	M.AssertDescribeThingTypeRequest(t)
	return t
end

local Action_keys = { "dynamoDBv2" = true, "salesforce" = true, "kinesis" = true, "sqs" = true, "republish" = true, "dynamoDB" = true, "s3" = true, "cloudwatchAlarm" = true, "sns" = true, "elasticsearch" = true, "cloudwatchMetric" = true, "firehose" = true, "lambda" = true, nil }

function M.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	if struct["dynamoDBv2"] then M.AssertDynamoDBv2Action(struct["dynamoDBv2"]) end
	if struct["salesforce"] then M.AssertSalesforceAction(struct["salesforce"]) end
	if struct["kinesis"] then M.AssertKinesisAction(struct["kinesis"]) end
	if struct["sqs"] then M.AssertSqsAction(struct["sqs"]) end
	if struct["republish"] then M.AssertRepublishAction(struct["republish"]) end
	if struct["dynamoDB"] then M.AssertDynamoDBAction(struct["dynamoDB"]) end
	if struct["s3"] then M.AssertS3Action(struct["s3"]) end
	if struct["cloudwatchAlarm"] then M.AssertCloudwatchAlarmAction(struct["cloudwatchAlarm"]) end
	if struct["sns"] then M.AssertSnsAction(struct["sns"]) end
	if struct["elasticsearch"] then M.AssertElasticsearchAction(struct["elasticsearch"]) end
	if struct["cloudwatchMetric"] then M.AssertCloudwatchMetricAction(struct["cloudwatchMetric"]) end
	if struct["firehose"] then M.AssertFirehoseAction(struct["firehose"]) end
	if struct["lambda"] then M.AssertLambdaAction(struct["lambda"]) end
	for k,_ in pairs(struct) do
		assert(Action_keys[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- <p>Describes the actions associated with a rule.</p>
-- @param dynamoDBv2 [DynamoDBv2Action] <p>Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows you to write each attribute in an MQTT message payload into a separate DynamoDB column.</p>
-- @param salesforce [SalesforceAction] <p>Send a message to a Salesforce IoT Cloud Input Stream.</p>
-- @param kinesis [KinesisAction] <p>Write data to an Amazon Kinesis stream.</p>
-- @param sqs [SqsAction] <p>Publish to an Amazon SQS queue.</p>
-- @param republish [RepublishAction] <p>Publish to another MQTT topic.</p>
-- @param dynamoDB [DynamoDBAction] <p>Write to a DynamoDB table.</p>
-- @param s3 [S3Action] <p>Write to an Amazon S3 bucket.</p>
-- @param cloudwatchAlarm [CloudwatchAlarmAction] <p>Change the state of a CloudWatch alarm.</p>
-- @param sns [SnsAction] <p>Publish to an Amazon SNS topic.</p>
-- @param elasticsearch [ElasticsearchAction] <p>Write data to an Amazon Elasticsearch Service domain.</p>
-- @param cloudwatchMetric [CloudwatchMetricAction] <p>Capture a CloudWatch metric.</p>
-- @param firehose [FirehoseAction] <p>Write to an Amazon Kinesis Firehose stream.</p>
-- @param lambda [LambdaAction] <p>Invoke a Lambda function.</p>
function M.Action(dynamoDBv2, salesforce, kinesis, sqs, republish, dynamoDB, s3, cloudwatchAlarm, sns, elasticsearch, cloudwatchMetric, firehose, lambda, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Action")
	local t = { 
		["dynamoDBv2"] = dynamoDBv2,
		["salesforce"] = salesforce,
		["kinesis"] = kinesis,
		["sqs"] = sqs,
		["republish"] = republish,
		["dynamoDB"] = dynamoDB,
		["s3"] = s3,
		["cloudwatchAlarm"] = cloudwatchAlarm,
		["sns"] = sns,
		["elasticsearch"] = elasticsearch,
		["cloudwatchMetric"] = cloudwatchMetric,
		["firehose"] = firehose,
		["lambda"] = lambda,
	}
	M.AssertAction(t)
	return t
end

local GetLoggingOptionsResponse_keys = { "logLevel" = true, "roleArn" = true, nil }

function M.AssertGetLoggingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggingOptionsResponse to be of type 'table'")
	if struct["logLevel"] then M.AssertLogLevel(struct["logLevel"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(GetLoggingOptionsResponse_keys[k], "GetLoggingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggingOptionsResponse
-- <p>The output from the GetLoggingOptions operation.</p>
-- @param logLevel [LogLevel] <p>The logging level.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
function M.GetLoggingOptionsResponse(logLevel, roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggingOptionsResponse")
	local t = { 
		["logLevel"] = logLevel,
		["roleArn"] = roleArn,
	}
	M.AssertGetLoggingOptionsResponse(t)
	return t
end

local S3Action_keys = { "cannedAcl" = true, "roleArn" = true, "bucketName" = true, "key" = true, nil }

function M.AssertS3Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Action to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["bucketName"], "Expected key bucketName to exist in table")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["cannedAcl"] then M.AssertCannedAccessControlList(struct["cannedAcl"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["bucketName"] then M.AssertBucketName(struct["bucketName"]) end
	if struct["key"] then M.AssertKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(S3Action_keys[k], "S3Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Action
-- <p>Describes an action to write data to an Amazon S3 bucket.</p>
-- @param cannedAcl [CannedAccessControlList] <p>The Amazon S3 canned ACL that controls access to the object identified by the object key. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl">S3 canned ACLs</a>.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- @param bucketName [BucketName] <p>The Amazon S3 bucket.</p>
-- @param key [Key] <p>The object key.</p>
-- Required parameter: roleArn
-- Required parameter: bucketName
-- Required parameter: key
function M.S3Action(cannedAcl, roleArn, bucketName, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Action")
	local t = { 
		["cannedAcl"] = cannedAcl,
		["roleArn"] = roleArn,
		["bucketName"] = bucketName,
		["key"] = key,
	}
	M.AssertS3Action(t)
	return t
end

local DescribeCACertificateResponse_keys = { "certificateDescription" = true, nil }

function M.AssertDescribeCACertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCACertificateResponse to be of type 'table'")
	if struct["certificateDescription"] then M.AssertCACertificateDescription(struct["certificateDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCACertificateResponse_keys[k], "DescribeCACertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCACertificateResponse
-- <p>The output from the DescribeCACertificate operation.</p>
-- @param certificateDescription [CACertificateDescription] <p>The CA certificate description.</p>
function M.DescribeCACertificateResponse(certificateDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCACertificateResponse")
	local t = { 
		["certificateDescription"] = certificateDescription,
	}
	M.AssertDescribeCACertificateResponse(t)
	return t
end

local ListCACertificatesResponse_keys = { "certificates" = true, "nextMarker" = true, nil }

function M.AssertListCACertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCACertificatesResponse to be of type 'table'")
	if struct["certificates"] then M.AssertCACertificates(struct["certificates"]) end
	if struct["nextMarker"] then M.AssertMarker(struct["nextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListCACertificatesResponse_keys[k], "ListCACertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCACertificatesResponse
-- <p>The output from the ListCACertificates operation.</p>
-- @param certificates [CACertificates] <p>The CA certificates registered in your AWS account.</p>
-- @param nextMarker [Marker] <p>The current position within the list of CA certificates.</p>
function M.ListCACertificatesResponse(certificates, nextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCACertificatesResponse")
	local t = { 
		["certificates"] = certificates,
		["nextMarker"] = nextMarker,
	}
	M.AssertListCACertificatesResponse(t)
	return t
end

local ListPoliciesRequest_keys = { "marker" = true, "ascendingOrder" = true, "pageSize" = true, nil }

function M.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesRequest_keys[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
-- <p>The input for the ListPolicies operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, the results are returned in ascending creation order.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
function M.ListPoliciesRequest(marker, ascendingOrder, pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesRequest")
	local t = { 
		["marker"] = marker,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
	}
	M.AssertListPoliciesRequest(t)
	return t
end

local UpdateCACertificateRequest_keys = { "newStatus" = true, "certificateId" = true, "newAutoRegistrationStatus" = true, nil }

function M.AssertUpdateCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["newStatus"] then M.AssertCACertificateStatus(struct["newStatus"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["newAutoRegistrationStatus"] then M.AssertAutoRegistrationStatus(struct["newAutoRegistrationStatus"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCACertificateRequest_keys[k], "UpdateCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCACertificateRequest
-- <p>The input to the UpdateCACertificate operation.</p>
-- @param newStatus [CACertificateStatus] <p>The updated status of the CA certificate.</p> <p> <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- @param newAutoRegistrationStatus [AutoRegistrationStatus] <p>The new value for the auto registration status. Valid values are: "ENABLE" or "DISABLE".</p>
-- Required parameter: certificateId
function M.UpdateCACertificateRequest(newStatus, certificateId, newAutoRegistrationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCACertificateRequest")
	local t = { 
		["newStatus"] = newStatus,
		["certificateId"] = certificateId,
		["newAutoRegistrationStatus"] = newAutoRegistrationStatus,
	}
	M.AssertUpdateCACertificateRequest(t)
	return t
end

local ListThingsResponse_keys = { "things" = true, "nextToken" = true, nil }

function M.AssertListThingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingsResponse to be of type 'table'")
	if struct["things"] then M.AssertThingAttributeList(struct["things"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListThingsResponse_keys[k], "ListThingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingsResponse
-- <p>The output from the ListThings operation.</p>
-- @param things [ThingAttributeList] <p>The things.</p>
-- @param nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
function M.ListThingsResponse(things, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingsResponse")
	local t = { 
		["things"] = things,
		["nextToken"] = nextToken,
	}
	M.AssertListThingsResponse(t)
	return t
end

local DescribeEndpointRequest_keys = { nil }

function M.AssertDescribeEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeEndpointRequest_keys[k], "DescribeEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointRequest
-- <p>The input for the DescribeEndpoint operation.</p>
function M.DescribeEndpointRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEndpointRequest")
	local t = { 
	}
	M.AssertDescribeEndpointRequest(t)
	return t
end

local DeleteTopicRuleRequest_keys = { "ruleName" = true, nil }

function M.AssertDeleteTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTopicRuleRequest_keys[k], "DeleteTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTopicRuleRequest
-- <p>The input for the DeleteTopicRule operation.</p>
-- @param ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
function M.DeleteTopicRuleRequest(ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTopicRuleRequest")
	local t = { 
		["ruleName"] = ruleName,
	}
	M.AssertDeleteTopicRuleRequest(t)
	return t
end

local SqlParseException_keys = { "message" = true, nil }

function M.AssertSqlParseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqlParseException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SqlParseException_keys[k], "SqlParseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqlParseException
-- <p>The Rule-SQL expression can't be parsed correctly.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.SqlParseException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SqlParseException")
	local t = { 
		["message"] = message,
	}
	M.AssertSqlParseException(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource does not exist.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local CreatePolicyRequest_keys = { "policyName" = true, "policyDocument" = true, nil }

function M.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyDocument"], "Expected key policyDocument to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then M.AssertPolicyDocument(struct["policyDocument"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyRequest_keys[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
-- <p>The input for the CreatePolicy operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyDocument [PolicyDocument] <p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of 2048, excluding whitespace.</p>
-- Required parameter: policyName
-- Required parameter: policyDocument
function M.CreatePolicyRequest(policyName, policyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyRequest")
	local t = { 
		["policyName"] = policyName,
		["policyDocument"] = policyDocument,
	}
	M.AssertCreatePolicyRequest(t)
	return t
end

local ListThingsRequest_keys = { "thingTypeName" = true, "nextToken" = true, "attributeName" = true, "attributeValue" = true, "maxResults" = true, nil }

function M.AssertListThingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingsRequest to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["attributeName"] then M.AssertAttributeName(struct["attributeName"]) end
	if struct["attributeValue"] then M.AssertAttributeValue(struct["attributeValue"]) end
	if struct["maxResults"] then M.AssertRegistryMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListThingsRequest_keys[k], "ListThingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingsRequest
-- <p>The input for the ListThings operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type used to search for things.</p>
-- @param nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param attributeName [AttributeName] <p>The attribute name used to search for things.</p>
-- @param attributeValue [AttributeValue] <p>The attribute value used to search for things.</p>
-- @param maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
function M.ListThingsRequest(thingTypeName, nextToken, attributeName, attributeValue, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingsRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["nextToken"] = nextToken,
		["attributeName"] = attributeName,
		["attributeValue"] = attributeValue,
		["maxResults"] = maxResults,
	}
	M.AssertListThingsRequest(t)
	return t
end

local DeletePolicyVersionRequest_keys = { "policyName" = true, "policyVersionId" = true, nil }

function M.AssertDeletePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then M.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(DeletePolicyVersionRequest_keys[k], "DeletePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyVersionRequest
-- <p>The input for the DeletePolicyVersion operation.</p>
-- @param policyName [PolicyName] <p>The name of the policy.</p>
-- @param policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required parameter: policyName
-- Required parameter: policyVersionId
function M.DeletePolicyVersionRequest(policyName, policyVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyVersionRequest")
	local t = { 
		["policyName"] = policyName,
		["policyVersionId"] = policyVersionId,
	}
	M.AssertDeletePolicyVersionRequest(t)
	return t
end

local ThrottlingException_keys = { "message" = true, nil }

function M.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottlingException_keys[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The rate exceeds the limit.</p>
-- @param message [errorMessage] <p>The message for the exception.</p>
function M.ThrottlingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = message,
	}
	M.AssertThrottlingException(t)
	return t
end

local ListPrincipalPoliciesRequest_keys = { "marker" = true, "ascendingOrder" = true, "pageSize" = true, "principal" = true, nil }

function M.AssertListPrincipalPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalPoliciesRequest to be of type 'table'")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	if struct["principal"] then M.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(ListPrincipalPoliciesRequest_keys[k], "ListPrincipalPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalPoliciesRequest
-- <p>The input for the ListPrincipalPolicies operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param ascendingOrder [AscendingOrder] <p>Specifies the order for results. If true, results are returned in ascending creation order.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
-- @param principal [Principal] <p>The principal.</p>
-- Required parameter: principal
function M.ListPrincipalPoliciesRequest(marker, ascendingOrder, pageSize, principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalPoliciesRequest")
	local t = { 
		["marker"] = marker,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
		["principal"] = principal,
	}
	M.AssertListPrincipalPoliciesRequest(t)
	return t
end

local ThingTypeProperties_keys = { "searchableAttributes" = true, "thingTypeDescription" = true, nil }

function M.AssertThingTypeProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeProperties to be of type 'table'")
	if struct["searchableAttributes"] then M.AssertSearchableAttributes(struct["searchableAttributes"]) end
	if struct["thingTypeDescription"] then M.AssertThingTypeDescription(struct["thingTypeDescription"]) end
	for k,_ in pairs(struct) do
		assert(ThingTypeProperties_keys[k], "ThingTypeProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeProperties
-- <p>The ThingTypeProperties contains information about the thing type including: a thing type description, and a list of searchable thing attribute names.</p>
-- @param searchableAttributes [SearchableAttributes] <p>A list of searchable thing attribute names.</p>
-- @param thingTypeDescription [ThingTypeDescription] <p>The description of the thing type.</p>
function M.ThingTypeProperties(searchableAttributes, thingTypeDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingTypeProperties")
	local t = { 
		["searchableAttributes"] = searchableAttributes,
		["thingTypeDescription"] = thingTypeDescription,
	}
	M.AssertThingTypeProperties(t)
	return t
end

local DeleteCertificateRequest_keys = { "certificateId" = true, nil }

function M.AssertDeleteCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCertificateRequest_keys[k], "DeleteCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCertificateRequest
-- <p>The input for the DeleteCertificate operation.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.DeleteCertificateRequest(certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCertificateRequest")
	local t = { 
		["certificateId"] = certificateId,
	}
	M.AssertDeleteCertificateRequest(t)
	return t
end

local GetPolicyVersionResponse_keys = { "policyName" = true, "policyDocument" = true, "policyVersionId" = true, "policyArn" = true, "isDefaultVersion" = true, nil }

function M.AssertGetPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionResponse to be of type 'table'")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then M.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["policyVersionId"] then M.AssertPolicyVersionId(struct["policyVersionId"]) end
	if struct["policyArn"] then M.AssertPolicyArn(struct["policyArn"]) end
	if struct["isDefaultVersion"] then M.AssertIsDefaultVersion(struct["isDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyVersionResponse_keys[k], "GetPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionResponse
-- <p>The output from the GetPolicyVersion operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- @param policyArn [PolicyArn] <p>The policy ARN.</p>
-- @param isDefaultVersion [IsDefaultVersion] <p>Specifies whether the policy version is the default.</p>
function M.GetPolicyVersionResponse(policyName, policyDocument, policyVersionId, policyArn, isDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionResponse")
	local t = { 
		["policyName"] = policyName,
		["policyDocument"] = policyDocument,
		["policyVersionId"] = policyVersionId,
		["policyArn"] = policyArn,
		["isDefaultVersion"] = isDefaultVersion,
	}
	M.AssertGetPolicyVersionResponse(t)
	return t
end

local CACertificate_keys = { "certificateArn" = true, "status" = true, "creationDate" = true, "certificateId" = true, nil }

function M.AssertCACertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CACertificate to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then M.AssertCACertificateStatus(struct["status"]) end
	if struct["creationDate"] then M.AssertDateType(struct["creationDate"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(CACertificate_keys[k], "CACertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CACertificate
-- <p>A CA certificate.</p>
-- @param certificateArn [CertificateArn] <p>The ARN of the CA certificate.</p>
-- @param status [CACertificateStatus] <p>The status of the CA certificate.</p> <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>
-- @param creationDate [DateType] <p>The date the CA certificate was created.</p>
-- @param certificateId [CertificateId] <p>The ID of the CA certificate.</p>
function M.CACertificate(certificateArn, status, creationDate, certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CACertificate")
	local t = { 
		["certificateArn"] = certificateArn,
		["status"] = status,
		["creationDate"] = creationDate,
		["certificateId"] = certificateId,
	}
	M.AssertCACertificate(t)
	return t
end

local ThingTypeDefinition_keys = { "thingTypeName" = true, "thingTypeProperties" = true, "thingTypeMetadata" = true, nil }

function M.AssertThingTypeDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThingTypeDefinition to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["thingTypeProperties"] then M.AssertThingTypeProperties(struct["thingTypeProperties"]) end
	if struct["thingTypeMetadata"] then M.AssertThingTypeMetadata(struct["thingTypeMetadata"]) end
	for k,_ in pairs(struct) do
		assert(ThingTypeDefinition_keys[k], "ThingTypeDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThingTypeDefinition
-- <p>The definition of the thing type, including thing type name and description.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param thingTypeProperties [ThingTypeProperties] <p>The ThingTypeProperties for the thing type.</p>
-- @param thingTypeMetadata [ThingTypeMetadata] <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when it was deprecated.</p>
function M.ThingTypeDefinition(thingTypeName, thingTypeProperties, thingTypeMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThingTypeDefinition")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["thingTypeProperties"] = thingTypeProperties,
		["thingTypeMetadata"] = thingTypeMetadata,
	}
	M.AssertThingTypeDefinition(t)
	return t
end

local ListThingTypesRequest_keys = { "thingTypeName" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListThingTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListThingTypesRequest to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertRegistryMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListThingTypesRequest_keys[k], "ListThingTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListThingTypesRequest
-- <p>The input for the ListThingTypes operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- @param nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
function M.ListThingTypesRequest(thingTypeName, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListThingTypesRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListThingTypesRequest(t)
	return t
end

local RepublishAction_keys = { "topic" = true, "roleArn" = true, nil }

function M.AssertRepublishAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RepublishAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["topic"], "Expected key topic to exist in table")
	if struct["topic"] then M.AssertTopicPattern(struct["topic"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(RepublishAction_keys[k], "RepublishAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RepublishAction
-- <p>Describes an action to republish to another topic.</p>
-- @param topic [TopicPattern] <p>The name of the MQTT topic.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access.</p>
-- Required parameter: roleArn
-- Required parameter: topic
function M.RepublishAction(topic, roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RepublishAction")
	local t = { 
		["topic"] = topic,
		["roleArn"] = roleArn,
	}
	M.AssertRepublishAction(t)
	return t
end

local OutgoingCertificate_keys = { "certificateArn" = true, "certificateId" = true, "transferDate" = true, "transferredTo" = true, "transferMessage" = true, "creationDate" = true, nil }

function M.AssertOutgoingCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutgoingCertificate to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["transferDate"] then M.AssertDateType(struct["transferDate"]) end
	if struct["transferredTo"] then M.AssertAwsAccountId(struct["transferredTo"]) end
	if struct["transferMessage"] then M.AssertMessage(struct["transferMessage"]) end
	if struct["creationDate"] then M.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(OutgoingCertificate_keys[k], "OutgoingCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutgoingCertificate
-- <p>A certificate that has been transfered but not yet accepted.</p>
-- @param certificateArn [CertificateArn] <p>The certificate ARN.</p>
-- @param certificateId [CertificateId] <p>The certificate ID.</p>
-- @param transferDate [DateType] <p>The date the transfer was initiated.</p>
-- @param transferredTo [AwsAccountId] <p>The AWS account to which the transfer was made.</p>
-- @param transferMessage [Message] <p>The transfer message.</p>
-- @param creationDate [DateType] <p>The certificate creation date.</p>
function M.OutgoingCertificate(certificateArn, certificateId, transferDate, transferredTo, transferMessage, creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OutgoingCertificate")
	local t = { 
		["certificateArn"] = certificateArn,
		["certificateId"] = certificateId,
		["transferDate"] = transferDate,
		["transferredTo"] = transferredTo,
		["transferMessage"] = transferMessage,
		["creationDate"] = creationDate,
	}
	M.AssertOutgoingCertificate(t)
	return t
end

local CloudwatchAlarmAction_keys = { "stateReason" = true, "roleArn" = true, "alarmName" = true, "stateValue" = true, nil }

function M.AssertCloudwatchAlarmAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudwatchAlarmAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["alarmName"], "Expected key alarmName to exist in table")
	assert(struct["stateReason"], "Expected key stateReason to exist in table")
	assert(struct["stateValue"], "Expected key stateValue to exist in table")
	if struct["stateReason"] then M.AssertStateReason(struct["stateReason"]) end
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["alarmName"] then M.AssertAlarmName(struct["alarmName"]) end
	if struct["stateValue"] then M.AssertStateValue(struct["stateValue"]) end
	for k,_ in pairs(struct) do
		assert(CloudwatchAlarmAction_keys[k], "CloudwatchAlarmAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudwatchAlarmAction
-- <p>Describes an action that updates a CloudWatch alarm.</p>
-- @param stateReason [StateReason] <p>The reason for the alarm change.</p>
-- @param roleArn [AwsArn] <p>The IAM role that allows access to the CloudWatch alarm.</p>
-- @param alarmName [AlarmName] <p>The CloudWatch alarm name.</p>
-- @param stateValue [StateValue] <p>The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.</p>
-- Required parameter: roleArn
-- Required parameter: alarmName
-- Required parameter: stateReason
-- Required parameter: stateValue
function M.CloudwatchAlarmAction(stateReason, roleArn, alarmName, stateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudwatchAlarmAction")
	local t = { 
		["stateReason"] = stateReason,
		["roleArn"] = roleArn,
		["alarmName"] = alarmName,
		["stateValue"] = stateValue,
	}
	M.AssertCloudwatchAlarmAction(t)
	return t
end

local ListPolicyVersionsResponse_keys = { "policyVersions" = true, nil }

function M.AssertListPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsResponse to be of type 'table'")
	if struct["policyVersions"] then M.AssertPolicyVersions(struct["policyVersions"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyVersionsResponse_keys[k], "ListPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsResponse
-- <p>The output from the ListPolicyVersions operation.</p>
-- @param policyVersions [PolicyVersions] <p>The policy versions.</p>
function M.ListPolicyVersionsResponse(policyVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsResponse")
	local t = { 
		["policyVersions"] = policyVersions,
	}
	M.AssertListPolicyVersionsResponse(t)
	return t
end

local Policy_keys = { "policyName" = true, "policyArn" = true, nil }

function M.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyArn"] then M.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(Policy_keys[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>Describes an AWS IoT policy.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyArn [PolicyArn] <p>The policy ARN.</p>
function M.Policy(policyName, policyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Policy")
	local t = { 
		["policyName"] = policyName,
		["policyArn"] = policyArn,
	}
	M.AssertPolicy(t)
	return t
end

local GetPolicyRequest_keys = { "policyName" = true, nil }

function M.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyRequest_keys[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
-- <p>The input for the GetPolicy operation.</p>
-- @param policyName [PolicyName] <p>The name of the policy.</p>
-- Required parameter: policyName
function M.GetPolicyRequest(policyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyRequest")
	local t = { 
		["policyName"] = policyName,
	}
	M.AssertGetPolicyRequest(t)
	return t
end

local DeleteRegistrationCodeResponse_keys = { nil }

function M.AssertDeleteRegistrationCodeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRegistrationCodeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteRegistrationCodeResponse_keys[k], "DeleteRegistrationCodeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRegistrationCodeResponse
-- <p>The output for the DeleteRegistrationCode operation.</p>
function M.DeleteRegistrationCodeResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRegistrationCodeResponse")
	local t = { 
	}
	M.AssertDeleteRegistrationCodeResponse(t)
	return t
end

local DescribeThingResponse_keys = { "thingTypeName" = true, "attributes" = true, "version" = true, "thingName" = true, "defaultClientId" = true, nil }

function M.AssertDescribeThingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeThingResponse to be of type 'table'")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["attributes"] then M.AssertAttributes(struct["attributes"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	if struct["defaultClientId"] then M.AssertClientId(struct["defaultClientId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeThingResponse_keys[k], "DescribeThingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeThingResponse
-- <p>The output from the DescribeThing operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The thing type name.</p>
-- @param attributes [Attributes] <p>The thing attributes.</p>
-- @param version [Version] <p>The current version of the thing record in the registry.</p> <note> <p>To avoid unintentional changes to the information in the registry, you can pass the version information in the <code>expectedVersion</code> parameter of the <code>UpdateThing</code> and <code>DeleteThing</code> calls.</p> </note>
-- @param thingName [ThingName] <p>The name of the thing.</p>
-- @param defaultClientId [ClientId] <p>The default client ID.</p>
function M.DescribeThingResponse(thingTypeName, attributes, version, thingName, defaultClientId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeThingResponse")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["attributes"] = attributes,
		["version"] = version,
		["thingName"] = thingName,
		["defaultClientId"] = defaultClientId,
	}
	M.AssertDescribeThingResponse(t)
	return t
end

local DeprecateThingTypeRequest_keys = { "thingTypeName" = true, "undoDeprecate" = true, nil }

function M.AssertDeprecateThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	if struct["undoDeprecate"] then M.AssertUndoDeprecate(struct["undoDeprecate"]) end
	for k,_ in pairs(struct) do
		assert(DeprecateThingTypeRequest_keys[k], "DeprecateThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateThingTypeRequest
-- <p>The input for the DeprecateThingType operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type to deprecate.</p>
-- @param undoDeprecate [UndoDeprecate] <p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can associate it with things.</p>
-- Required parameter: thingTypeName
function M.DeprecateThingTypeRequest(thingTypeName, undoDeprecate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateThingTypeRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
		["undoDeprecate"] = undoDeprecate,
	}
	M.AssertDeprecateThingTypeRequest(t)
	return t
end

local GetPolicyResponse_keys = { "policyName" = true, "policyDocument" = true, "defaultVersionId" = true, "policyArn" = true, nil }

function M.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then M.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["defaultVersionId"] then M.AssertPolicyVersionId(struct["defaultVersionId"]) end
	if struct["policyArn"] then M.AssertPolicyArn(struct["policyArn"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyResponse_keys[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- <p>The output from the GetPolicy operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyDocument [PolicyDocument] <p>The JSON document that describes the policy.</p>
-- @param defaultVersionId [PolicyVersionId] <p>The default policy version ID.</p>
-- @param policyArn [PolicyArn] <p>The policy ARN.</p>
function M.GetPolicyResponse(policyName, policyDocument, defaultVersionId, policyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyResponse")
	local t = { 
		["policyName"] = policyName,
		["policyDocument"] = policyDocument,
		["defaultVersionId"] = defaultVersionId,
		["policyArn"] = policyArn,
	}
	M.AssertGetPolicyResponse(t)
	return t
end

local SetDefaultPolicyVersionRequest_keys = { "policyName" = true, "policyVersionId" = true, nil }

function M.AssertSetDefaultPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDefaultPolicyVersionRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["policyVersionId"], "Expected key policyVersionId to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["policyVersionId"] then M.AssertPolicyVersionId(struct["policyVersionId"]) end
	for k,_ in pairs(struct) do
		assert(SetDefaultPolicyVersionRequest_keys[k], "SetDefaultPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDefaultPolicyVersionRequest
-- <p>The input for the SetDefaultPolicyVersion operation.</p>
-- @param policyName [PolicyName] <p>The policy name.</p>
-- @param policyVersionId [PolicyVersionId] <p>The policy version ID.</p>
-- Required parameter: policyName
-- Required parameter: policyVersionId
function M.SetDefaultPolicyVersionRequest(policyName, policyVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDefaultPolicyVersionRequest")
	local t = { 
		["policyName"] = policyName,
		["policyVersionId"] = policyVersionId,
	}
	M.AssertSetDefaultPolicyVersionRequest(t)
	return t
end

local ListPrincipalThingsRequest_keys = { "nextToken" = true, "maxResults" = true, "principal" = true, nil }

function M.AssertListPrincipalThingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPrincipalThingsRequest to be of type 'table'")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertRegistryMaxResults(struct["maxResults"]) end
	if struct["principal"] then M.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(ListPrincipalThingsRequest_keys[k], "ListPrincipalThingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPrincipalThingsRequest
-- <p>The input for the ListPrincipalThings operation.</p>
-- @param nextToken [NextToken] <p>The token for the next set of results, or <b>null</b> if there are no additional results.</p>
-- @param maxResults [RegistryMaxResults] <p>The maximum number of results to return in this operation.</p>
-- @param principal [Principal] <p>The principal.</p>
-- Required parameter: principal
function M.ListPrincipalThingsRequest(nextToken, maxResults, principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPrincipalThingsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["principal"] = principal,
	}
	M.AssertListPrincipalThingsRequest(t)
	return t
end

local KinesisAction_keys = { "roleArn" = true, "streamName" = true, "partitionKey" = true, nil }

function M.AssertKinesisAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisAction to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["streamName"], "Expected key streamName to exist in table")
	if struct["roleArn"] then M.AssertAwsArn(struct["roleArn"]) end
	if struct["streamName"] then M.AssertStreamName(struct["streamName"]) end
	if struct["partitionKey"] then M.AssertPartitionKey(struct["partitionKey"]) end
	for k,_ in pairs(struct) do
		assert(KinesisAction_keys[k], "KinesisAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisAction
-- <p>Describes an action to write data to an Amazon Kinesis stream.</p>
-- @param roleArn [AwsArn] <p>The ARN of the IAM role that grants access to the Amazon Kinesis stream.</p>
-- @param streamName [StreamName] <p>The name of the Amazon Kinesis stream.</p>
-- @param partitionKey [PartitionKey] <p>The partition key.</p>
-- Required parameter: roleArn
-- Required parameter: streamName
function M.KinesisAction(roleArn, streamName, partitionKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisAction")
	local t = { 
		["roleArn"] = roleArn,
		["streamName"] = streamName,
		["partitionKey"] = partitionKey,
	}
	M.AssertKinesisAction(t)
	return t
end

local ListCertificatesByCARequest_keys = { "marker" = true, "caCertificateId" = true, "ascendingOrder" = true, "pageSize" = true, nil }

function M.AssertListCertificatesByCARequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCertificatesByCARequest to be of type 'table'")
	assert(struct["caCertificateId"], "Expected key caCertificateId to exist in table")
	if struct["marker"] then M.AssertMarker(struct["marker"]) end
	if struct["caCertificateId"] then M.AssertCertificateId(struct["caCertificateId"]) end
	if struct["ascendingOrder"] then M.AssertAscendingOrder(struct["ascendingOrder"]) end
	if struct["pageSize"] then M.AssertPageSize(struct["pageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListCertificatesByCARequest_keys[k], "ListCertificatesByCARequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCertificatesByCARequest
-- <p>The input to the ListCertificatesByCA operation.</p>
-- @param marker [Marker] <p>The marker for the next set of results.</p>
-- @param caCertificateId [CertificateId] <p>The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.</p>
-- @param ascendingOrder [AscendingOrder] <p>Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.</p>
-- @param pageSize [PageSize] <p>The result page size.</p>
-- Required parameter: caCertificateId
function M.ListCertificatesByCARequest(marker, caCertificateId, ascendingOrder, pageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCertificatesByCARequest")
	local t = { 
		["marker"] = marker,
		["caCertificateId"] = caCertificateId,
		["ascendingOrder"] = ascendingOrder,
		["pageSize"] = pageSize,
	}
	M.AssertListCertificatesByCARequest(t)
	return t
end

local RegistrationCodeValidationException_keys = { "message" = true, nil }

function M.AssertRegistrationCodeValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegistrationCodeValidationException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RegistrationCodeValidationException_keys[k], "RegistrationCodeValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegistrationCodeValidationException
-- <p>The registration code is invalid.</p>
-- @param message [errorMessage] <p>Additional information about the exception.</p>
function M.RegistrationCodeValidationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegistrationCodeValidationException")
	local t = { 
		["message"] = message,
	}
	M.AssertRegistrationCodeValidationException(t)
	return t
end

local CreateCertificateFromCsrRequest_keys = { "certificateSigningRequest" = true, "setAsActive" = true, nil }

function M.AssertCreateCertificateFromCsrRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCertificateFromCsrRequest to be of type 'table'")
	assert(struct["certificateSigningRequest"], "Expected key certificateSigningRequest to exist in table")
	if struct["certificateSigningRequest"] then M.AssertCertificateSigningRequest(struct["certificateSigningRequest"]) end
	if struct["setAsActive"] then M.AssertSetAsActive(struct["setAsActive"]) end
	for k,_ in pairs(struct) do
		assert(CreateCertificateFromCsrRequest_keys[k], "CreateCertificateFromCsrRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCertificateFromCsrRequest
-- <p>The input for the CreateCertificateFromCsr operation.</p>
-- @param certificateSigningRequest [CertificateSigningRequest] <p>The certificate signing request (CSR).</p>
-- @param setAsActive [SetAsActive] <p>Specifies whether the certificate is active.</p>
-- Required parameter: certificateSigningRequest
function M.CreateCertificateFromCsrRequest(certificateSigningRequest, setAsActive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCertificateFromCsrRequest")
	local t = { 
		["certificateSigningRequest"] = certificateSigningRequest,
		["setAsActive"] = setAsActive,
	}
	M.AssertCreateCertificateFromCsrRequest(t)
	return t
end

local KeyPair_keys = { "PublicKey" = true, "PrivateKey" = true, nil }

function M.AssertKeyPair(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPair to be of type 'table'")
	if struct["PublicKey"] then M.AssertPublicKey(struct["PublicKey"]) end
	if struct["PrivateKey"] then M.AssertPrivateKey(struct["PrivateKey"]) end
	for k,_ in pairs(struct) do
		assert(KeyPair_keys[k], "KeyPair contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPair
-- <p>Describes a key pair.</p>
-- @param PublicKey [PublicKey] <p>The public key.</p>
-- @param PrivateKey [PrivateKey] <p>The private key.</p>
function M.KeyPair(PublicKey, PrivateKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPair")
	local t = { 
		["PublicKey"] = PublicKey,
		["PrivateKey"] = PrivateKey,
	}
	M.AssertKeyPair(t)
	return t
end

local CancelCertificateTransferRequest_keys = { "certificateId" = true, nil }

function M.AssertCancelCertificateTransferRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCertificateTransferRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(CancelCertificateTransferRequest_keys[k], "CancelCertificateTransferRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCertificateTransferRequest
-- <p>The input for the CancelCertificateTransfer operation.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- Required parameter: certificateId
function M.CancelCertificateTransferRequest(certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelCertificateTransferRequest")
	local t = { 
		["certificateId"] = certificateId,
	}
	M.AssertCancelCertificateTransferRequest(t)
	return t
end

local DetachPrincipalPolicyRequest_keys = { "policyName" = true, "principal" = true, nil }

function M.AssertDetachPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPrincipalPolicyRequest to be of type 'table'")
	assert(struct["policyName"], "Expected key policyName to exist in table")
	assert(struct["principal"], "Expected key principal to exist in table")
	if struct["policyName"] then M.AssertPolicyName(struct["policyName"]) end
	if struct["principal"] then M.AssertPrincipal(struct["principal"]) end
	for k,_ in pairs(struct) do
		assert(DetachPrincipalPolicyRequest_keys[k], "DetachPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPrincipalPolicyRequest
-- <p>The input for the DetachPrincipalPolicy operation.</p>
-- @param policyName [PolicyName] <p>The name of the policy to detach.</p>
-- @param principal [Principal] <p>The principal.</p> <p>If the principal is a certificate, specify the certificate ARN. If the principal is an Amazon Cognito identity, specify the identity ID.</p>
-- Required parameter: policyName
-- Required parameter: principal
function M.DetachPrincipalPolicyRequest(policyName, principal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPrincipalPolicyRequest")
	local t = { 
		["policyName"] = policyName,
		["principal"] = principal,
	}
	M.AssertDetachPrincipalPolicyRequest(t)
	return t
end

local LambdaAction_keys = { "functionArn" = true, nil }

function M.AssertLambdaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaAction to be of type 'table'")
	assert(struct["functionArn"], "Expected key functionArn to exist in table")
	if struct["functionArn"] then M.AssertFunctionArn(struct["functionArn"]) end
	for k,_ in pairs(struct) do
		assert(LambdaAction_keys[k], "LambdaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaAction
-- <p>Describes an action to invoke a Lambda function.</p>
-- @param functionArn [FunctionArn] <p>The ARN of the Lambda function.</p>
-- Required parameter: functionArn
function M.LambdaAction(functionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaAction")
	local t = { 
		["functionArn"] = functionArn,
	}
	M.AssertLambdaAction(t)
	return t
end

local DescribeCACertificateRequest_keys = { "certificateId" = true, nil }

function M.AssertDescribeCACertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCACertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCACertificateRequest_keys[k], "DescribeCACertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCACertificateRequest
-- <p>The input for the DescribeCACertificate operation.</p>
-- @param certificateId [CertificateId] <p>The CA certificate identifier.</p>
-- Required parameter: certificateId
function M.DescribeCACertificateRequest(certificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCACertificateRequest")
	local t = { 
		["certificateId"] = certificateId,
	}
	M.AssertDescribeCACertificateRequest(t)
	return t
end

local CreateTopicRuleRequest_keys = { "topicRulePayload" = true, "ruleName" = true, nil }

function M.AssertCreateTopicRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicRuleRequest to be of type 'table'")
	assert(struct["ruleName"], "Expected key ruleName to exist in table")
	assert(struct["topicRulePayload"], "Expected key topicRulePayload to exist in table")
	if struct["topicRulePayload"] then M.AssertTopicRulePayload(struct["topicRulePayload"]) end
	if struct["ruleName"] then M.AssertRuleName(struct["ruleName"]) end
	for k,_ in pairs(struct) do
		assert(CreateTopicRuleRequest_keys[k], "CreateTopicRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicRuleRequest
-- <p>The input for the CreateTopicRule operation.</p>
-- @param topicRulePayload [TopicRulePayload] <p>The rule payload.</p>
-- @param ruleName [RuleName] <p>The name of the rule.</p>
-- Required parameter: ruleName
-- Required parameter: topicRulePayload
function M.CreateTopicRuleRequest(topicRulePayload, ruleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTopicRuleRequest")
	local t = { 
		["topicRulePayload"] = topicRulePayload,
		["ruleName"] = ruleName,
	}
	M.AssertCreateTopicRuleRequest(t)
	return t
end

local PutItemInput_keys = { "tableName" = true, nil }

function M.AssertPutItemInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutItemInput to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	if struct["tableName"] then M.AssertTableName(struct["tableName"]) end
	for k,_ in pairs(struct) do
		assert(PutItemInput_keys[k], "PutItemInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutItemInput
-- <p>The input for the DynamoActionVS action that specifies the DynamoDB table to which the message data will be written.</p>
-- @param tableName [TableName] <p>The table where the message data will be written</p>
-- Required parameter: tableName
function M.PutItemInput(tableName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutItemInput")
	local t = { 
		["tableName"] = tableName,
	}
	M.AssertPutItemInput(t)
	return t
end

local TransferCertificateRequest_keys = { "transferMessage" = true, "certificateId" = true, "targetAwsAccount" = true, nil }

function M.AssertTransferCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TransferCertificateRequest to be of type 'table'")
	assert(struct["certificateId"], "Expected key certificateId to exist in table")
	assert(struct["targetAwsAccount"], "Expected key targetAwsAccount to exist in table")
	if struct["transferMessage"] then M.AssertMessage(struct["transferMessage"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["targetAwsAccount"] then M.AssertAwsAccountId(struct["targetAwsAccount"]) end
	for k,_ in pairs(struct) do
		assert(TransferCertificateRequest_keys[k], "TransferCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TransferCertificateRequest
-- <p>The input for the TransferCertificate operation.</p>
-- @param transferMessage [Message] <p>The transfer message.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @param targetAwsAccount [AwsAccountId] <p>The AWS account.</p>
-- Required parameter: certificateId
-- Required parameter: targetAwsAccount
function M.TransferCertificateRequest(transferMessage, certificateId, targetAwsAccount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TransferCertificateRequest")
	local t = { 
		["transferMessage"] = transferMessage,
		["certificateId"] = certificateId,
		["targetAwsAccount"] = targetAwsAccount,
	}
	M.AssertTransferCertificateRequest(t)
	return t
end

local DeleteThingTypeRequest_keys = { "thingTypeName" = true, nil }

function M.AssertDeleteThingTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingTypeRequest to be of type 'table'")
	assert(struct["thingTypeName"], "Expected key thingTypeName to exist in table")
	if struct["thingTypeName"] then M.AssertThingTypeName(struct["thingTypeName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteThingTypeRequest_keys[k], "DeleteThingTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingTypeRequest
-- <p>The input for the DeleteThingType operation.</p>
-- @param thingTypeName [ThingTypeName] <p>The name of the thing type.</p>
-- Required parameter: thingTypeName
function M.DeleteThingTypeRequest(thingTypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingTypeRequest")
	local t = { 
		["thingTypeName"] = thingTypeName,
	}
	M.AssertDeleteThingTypeRequest(t)
	return t
end

local CertificateDescription_keys = { "certificateArn" = true, "status" = true, "previousOwnedBy" = true, "certificateId" = true, "lastModifiedDate" = true, "certificatePem" = true, "transferData" = true, "ownedBy" = true, "caCertificateId" = true, "creationDate" = true, nil }

function M.AssertCertificateDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CertificateDescription to be of type 'table'")
	if struct["certificateArn"] then M.AssertCertificateArn(struct["certificateArn"]) end
	if struct["status"] then M.AssertCertificateStatus(struct["status"]) end
	if struct["previousOwnedBy"] then M.AssertAwsAccountId(struct["previousOwnedBy"]) end
	if struct["certificateId"] then M.AssertCertificateId(struct["certificateId"]) end
	if struct["lastModifiedDate"] then M.AssertDateType(struct["lastModifiedDate"]) end
	if struct["certificatePem"] then M.AssertCertificatePem(struct["certificatePem"]) end
	if struct["transferData"] then M.AssertTransferData(struct["transferData"]) end
	if struct["ownedBy"] then M.AssertAwsAccountId(struct["ownedBy"]) end
	if struct["caCertificateId"] then M.AssertCertificateId(struct["caCertificateId"]) end
	if struct["creationDate"] then M.AssertDateType(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(CertificateDescription_keys[k], "CertificateDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CertificateDescription
-- <p>Describes a certificate.</p>
-- @param certificateArn [CertificateArn] <p>The ARN of the certificate.</p>
-- @param status [CertificateStatus] <p>The status of the certificate.</p>
-- @param previousOwnedBy [AwsAccountId] <p>The ID of the AWS account of the previous owner of the certificate.</p>
-- @param certificateId [CertificateId] <p>The ID of the certificate.</p>
-- @param lastModifiedDate [DateType] <p>The date and time the certificate was last modified.</p>
-- @param certificatePem [CertificatePem] <p>The certificate data, in PEM format.</p>
-- @param transferData [TransferData] <p>The transfer data.</p>
-- @param ownedBy [AwsAccountId] <p>The ID of the AWS account that owns the certificate.</p>
-- @param caCertificateId [CertificateId] <p>The certificate ID of the CA certificate used to sign this certificate.</p>
-- @param creationDate [DateType] <p>The date and time the certificate was created.</p>
function M.CertificateDescription(certificateArn, status, previousOwnedBy, certificateId, lastModifiedDate, certificatePem, transferData, ownedBy, caCertificateId, creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CertificateDescription")
	local t = { 
		["certificateArn"] = certificateArn,
		["status"] = status,
		["previousOwnedBy"] = previousOwnedBy,
		["certificateId"] = certificateId,
		["lastModifiedDate"] = lastModifiedDate,
		["certificatePem"] = certificatePem,
		["transferData"] = transferData,
		["ownedBy"] = ownedBy,
		["caCertificateId"] = caCertificateId,
		["creationDate"] = creationDate,
	}
	M.AssertCertificateDescription(t)
	return t
end

function M.AssertAutoRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoRegistrationStatus to be of type 'string'")
end

--  
function M.AutoRegistrationStatus(str)
	M.AssertAutoRegistrationStatus(str)
	return str
end

function M.AssertStateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StateValue to be of type 'string'")
end

--  
function M.StateValue(str)
	M.AssertStateValue(str)
	return str
end

function M.AssertSalesforceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SalesforceToken to be of type 'string'")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

--  
function M.SalesforceToken(str)
	M.AssertSalesforceToken(str)
	return str
end

function M.AssertPolicyVersionId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyVersionId to be of type 'string'")
	assert(str:match("[0-9]+"), "Expected string to match pattern '[0-9]+'")
end

--  
function M.PolicyVersionId(str)
	M.AssertPolicyVersionId(str)
	return str
end

function M.AssertCertificateSigningRequest(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateSigningRequest to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificateSigningRequest(str)
	M.AssertCertificateSigningRequest(str)
	return str
end

function M.AssertEndpointAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointAddress to be of type 'string'")
end

--  
function M.EndpointAddress(str)
	M.AssertEndpointAddress(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	M.AsserterrorMessage(str)
	return str
end

function M.AssertHashKeyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKeyValue to be of type 'string'")
end

--  
function M.HashKeyValue(str)
	M.AssertHashKeyValue(str)
	return str
end

function M.AssertCertificateId(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
	assert(str:match("(0x)?[a-fA-F0-9]+"), "Expected string to match pattern '(0x)?[a-fA-F0-9]+'")
end

--  
function M.CertificateId(str)
	M.AssertCertificateId(str)
	return str
end

function M.AssertCertificatePem(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificatePem to be of type 'string'")
	assert(#str <= 65536, "Expected string to be max 65536 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CertificatePem(str)
	M.AssertCertificatePem(str)
	return str
end

function M.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
	assert(str:match("[a-zA-Z0-9_.,@/:#-]*"), "Expected string to match pattern '[a-zA-Z0-9_.,@/:#-]*'")
end

-- An attribute value for an Thing. An empty or null value in Update means that existing value for that attribute should be deleted. Empty and null values in create are ignored.
function M.AttributeValue(str)
	M.AssertAttributeValue(str)
	return str
end

function M.AssertMessageFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageFormat to be of type 'string'")
end

--  
function M.MessageFormat(str)
	M.AssertMessageFormat(str)
	return str
end

function M.AssertTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected Topic to be of type 'string'")
end

--  
function M.Topic(str)
	M.AssertTopic(str)
	return str
end

function M.AssertPartitionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PartitionKey to be of type 'string'")
end

--  
function M.PartitionKey(str)
	M.AssertPartitionKey(str)
	return str
end

function M.AssertSQL(str)
	assert(str)
	assert(type(str) == "string", "Expected SQL to be of type 'string'")
end

--  
function M.SQL(str)
	M.AssertSQL(str)
	return str
end

function M.AssertDynamoKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamoKeyType to be of type 'string'")
end

--  
function M.DynamoKeyType(str)
	M.AssertDynamoKeyType(str)
	return str
end

function M.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
end

--  
function M.PolicyDocument(str)
	M.AssertPolicyDocument(str)
	return str
end

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(str:match("[a-zA-Z0-9_.,@/:#-]+"), "Expected string to match pattern '[a-zA-Z0-9_.,@/:#-]+'")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertElasticsearchId(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchId to be of type 'string'")
end

--  
function M.ElasticsearchId(str)
	M.AssertElasticsearchId(str)
	return str
end

function M.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.PolicyName(str)
	M.AssertPolicyName(str)
	return str
end

function M.AssertDeliveryStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStreamName to be of type 'string'")
end

--  
function M.DeliveryStreamName(str)
	M.AssertDeliveryStreamName(str)
	return str
end

function M.AssertHashKeyField(str)
	assert(str)
	assert(type(str) == "string", "Expected HashKeyField to be of type 'string'")
end

--  
function M.HashKeyField(str)
	M.AssertHashKeyField(str)
	return str
end

function M.AssertThingArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingArn to be of type 'string'")
end

--  
function M.ThingArn(str)
	M.AssertThingArn(str)
	return str
end

function M.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
end

--  
function M.TableName(str)
	M.AssertTableName(str)
	return str
end

function M.AssertMetricTimestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricTimestamp to be of type 'string'")
end

--  
function M.MetricTimestamp(str)
	M.AssertMetricTimestamp(str)
	return str
end

function M.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
end

--  
function M.Key(str)
	M.AssertKey(str)
	return str
end

function M.AssertAwsIotSqlVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsIotSqlVersion to be of type 'string'")
end

--  
function M.AwsIotSqlVersion(str)
	M.AssertAwsIotSqlVersion(str)
	return str
end

function M.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
end

--  
function M.BucketName(str)
	M.AssertBucketName(str)
	return str
end

function M.AssertRangeKeyField(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeKeyField to be of type 'string'")
end

--  
function M.RangeKeyField(str)
	M.AssertRangeKeyField(str)
	return str
end

function M.AssertCertificateArn(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateArn to be of type 'string'")
end

--  
function M.CertificateArn(str)
	M.AssertCertificateArn(str)
	return str
end

function M.AssertTopicPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected TopicPattern to be of type 'string'")
end

--  
function M.TopicPattern(str)
	M.AssertTopicPattern(str)
	return str
end

function M.AssertThingTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9:_-]+"), "Expected string to match pattern '[a-zA-Z0-9:_-]+'")
end

--  
function M.ThingTypeName(str)
	M.AssertThingTypeName(str)
	return str
end

function M.AssertFunctionArn(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionArn to be of type 'string'")
end

--  
function M.FunctionArn(str)
	M.AssertFunctionArn(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertElasticsearchEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchEndpoint to be of type 'string'")
	assert(str:match("https?://.*"), "Expected string to match pattern 'https?://.*'")
end

--  
function M.ElasticsearchEndpoint(str)
	M.AssertElasticsearchEndpoint(str)
	return str
end

function M.AssertMetricValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricValue to be of type 'string'")
end

--  
function M.MetricValue(str)
	M.AssertMetricValue(str)
	return str
end

function M.AssertresourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected resourceId to be of type 'string'")
end

--  
function M.resourceId(str)
	M.AssertresourceId(str)
	return str
end

function M.AssertLogLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LogLevel to be of type 'string'")
end

--  
function M.LogLevel(str)
	M.AssertLogLevel(str)
	return str
end

function M.AssertDynamoOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected DynamoOperation to be of type 'string'")
end

--  
function M.DynamoOperation(str)
	M.AssertDynamoOperation(str)
	return str
end

function M.AssertThingTypeDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeDescription to be of type 'string'")
	assert(#str <= 2028, "Expected string to be max 2028 characters")
	assert(str:match("[%p{Graph}%x20]*"), "Expected string to match pattern '[%p{Graph}%x20]*'")
end

--  
function M.ThingTypeDescription(str)
	M.AssertThingTypeDescription(str)
	return str
end

function M.AssertElasticsearchType(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchType to be of type 'string'")
end

--  
function M.ElasticsearchType(str)
	M.AssertElasticsearchType(str)
	return str
end

function M.AssertPolicyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyArn to be of type 'string'")
end

--  
function M.PolicyArn(str)
	M.AssertPolicyArn(str)
	return str
end

function M.AssertRangeKeyValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RangeKeyValue to be of type 'string'")
end

--  
function M.RangeKeyValue(str)
	M.AssertRangeKeyValue(str)
	return str
end

function M.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
end

--  
function M.RuleArn(str)
	M.AssertRuleArn(str)
	return str
end

function M.AssertAwsArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsArn to be of type 'string'")
end

--  
function M.AwsArn(str)
	M.AssertAwsArn(str)
	return str
end

function M.AssertCannedAccessControlList(str)
	assert(str)
	assert(type(str) == "string", "Expected CannedAccessControlList to be of type 'string'")
end

--  
function M.CannedAccessControlList(str)
	M.AssertCannedAccessControlList(str)
	return str
end

function M.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
end

--  
function M.AlarmName(str)
	M.AssertAlarmName(str)
	return str
end

function M.AssertMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected Marker to be of type 'string'")
end

--  
function M.Marker(str)
	M.AssertMarker(str)
	return str
end

function M.AssertQueueUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueUrl to be of type 'string'")
end

--  
function M.QueueUrl(str)
	M.AssertQueueUrl(str)
	return str
end

function M.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
end

--  
function M.StreamName(str)
	M.AssertStreamName(str)
	return str
end

function M.AssertMetricUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricUnit to be of type 'string'")
end

--  
function M.MetricUnit(str)
	M.AssertMetricUnit(str)
	return str
end

function M.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
end

--  
function M.ClientId(str)
	M.AssertClientId(str)
	return str
end

function M.AssertRegistrationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationCode to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 64, "Expected string to be min 64 characters")
	assert(str:match("(0x)?[a-fA-F0-9]+"), "Expected string to match pattern '(0x)?[a-fA-F0-9]+'")
end

--  
function M.RegistrationCode(str)
	M.AssertRegistrationCode(str)
	return str
end

function M.AssertresourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected resourceArn to be of type 'string'")
end

--  
function M.resourceArn(str)
	M.AssertresourceArn(str)
	return str
end

function M.AssertAwsAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsAccountId to be of type 'string'")
	assert(str:match("[0-9]{12}"), "Expected string to match pattern '[0-9]{12}'")
end

--  
function M.AwsAccountId(str)
	M.AssertAwsAccountId(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertFirehoseSeparator(str)
	assert(str)
	assert(type(str) == "string", "Expected FirehoseSeparator to be of type 'string'")
	assert(str:match("([%n%t])|(%r%n)|(,)"), "Expected string to match pattern '([%n%t])|(%r%n)|(,)'")
end

--  
function M.FirehoseSeparator(str)
	M.AssertFirehoseSeparator(str)
	return str
end

function M.AssertPrincipalArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalArn to be of type 'string'")
end

--  
function M.PrincipalArn(str)
	M.AssertPrincipalArn(str)
	return str
end

function M.AssertThingName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9:_-]+"), "Expected string to match pattern '[a-zA-Z0-9:_-]+'")
end

--  
function M.ThingName(str)
	M.AssertThingName(str)
	return str
end

function M.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
end

--  
function M.MetricNamespace(str)
	M.AssertMetricNamespace(str)
	return str
end

function M.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
end

--  
function M.MetricName(str)
	M.AssertMetricName(str)
	return str
end

function M.AssertCACertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CACertificateStatus to be of type 'string'")
end

--  
function M.CACertificateStatus(str)
	M.AssertCACertificateStatus(str)
	return str
end

function M.AssertElasticsearchIndex(str)
	assert(str)
	assert(type(str) == "string", "Expected ElasticsearchIndex to be of type 'string'")
end

--  
function M.ElasticsearchIndex(str)
	M.AssertElasticsearchIndex(str)
	return str
end

function M.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
end

--  
function M.StateReason(str)
	M.AssertStateReason(str)
	return str
end

function M.AssertPrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected Principal to be of type 'string'")
end

--  
function M.Principal(str)
	M.AssertPrincipal(str)
	return str
end

function M.AssertPayloadField(str)
	assert(str)
	assert(type(str) == "string", "Expected PayloadField to be of type 'string'")
end

--  
function M.PayloadField(str)
	M.AssertPayloadField(str)
	return str
end

function M.AssertThingTypeArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingTypeArn to be of type 'string'")
end

--  
function M.ThingTypeArn(str)
	M.AssertThingTypeArn(str)
	return str
end

function M.AssertPrivateKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PrivateKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrivateKey(str)
	M.AssertPrivateKey(str)
	return str
end

function M.AssertSalesforceEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected SalesforceEndpoint to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(str:match("https://ingestion-[a-zA-Z0-9]{1,12}%.[a-zA-Z0-9]+%.((sfdc-matrix%.net)|(sfdcnow%.com))/streams/%w{1,20}/%w{1,20}/event"), "Expected string to match pattern 'https://ingestion-[a-zA-Z0-9]{1,12}%.[a-zA-Z0-9]+%.((sfdc-matrix%.net)|(sfdcnow%.com))/streams/%w{1,20}/%w{1,20}/event'")
end

--  
function M.SalesforceEndpoint(str)
	M.AssertSalesforceEndpoint(str)
	return str
end

function M.AssertPublicKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PublicKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PublicKey(str)
	M.AssertPublicKey(str)
	return str
end

function M.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z0-9_]+$"), "Expected string to match pattern '^[a-zA-Z0-9_]+$'")
end

--  
function M.RuleName(str)
	M.AssertRuleName(str)
	return str
end

function M.AssertCertificateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CertificateStatus to be of type 'string'")
end

--  
function M.CertificateStatus(str)
	M.AssertCertificateStatus(str)
	return str
end

function M.AssertOptionalVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected OptionalVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.OptionalVersion(long)
	M.AssertOptionalVersion(long)
	return long
end

function M.AssertVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected Version to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Version(long)
	M.AssertVersion(long)
	return long
end

function M.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageSize(integer)
	M.AssertPageSize(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertRegistryMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistryMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistryMaxResults(integer)
	M.AssertRegistryMaxResults(integer)
	return integer
end

function M.AssertSetAsActive(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsActive to be of type 'boolean'")
end

function M.SetAsActive(boolean)
	M.AssertSetAsActive(boolean)
	return boolean
end

function M.AssertRemoveThingType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RemoveThingType to be of type 'boolean'")
end

function M.RemoveThingType(boolean)
	M.AssertRemoveThingType(boolean)
	return boolean
end

function M.AssertSetAsActiveFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsActiveFlag to be of type 'boolean'")
end

function M.SetAsActiveFlag(boolean)
	M.AssertSetAsActiveFlag(boolean)
	return boolean
end

function M.AssertAllowAutoRegistration(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AllowAutoRegistration to be of type 'boolean'")
end

function M.AllowAutoRegistration(boolean)
	M.AssertAllowAutoRegistration(boolean)
	return boolean
end

function M.AssertUseBase64(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UseBase64 to be of type 'boolean'")
end

function M.UseBase64(boolean)
	M.AssertUseBase64(boolean)
	return boolean
end

function M.AssertAscendingOrder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AscendingOrder to be of type 'boolean'")
end

function M.AscendingOrder(boolean)
	M.AssertAscendingOrder(boolean)
	return boolean
end

function M.AssertSetAsDefault(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected SetAsDefault to be of type 'boolean'")
end

function M.SetAsDefault(boolean)
	M.AssertSetAsDefault(boolean)
	return boolean
end

function M.AssertFlag(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Flag to be of type 'boolean'")
end

function M.Flag(boolean)
	M.AssertFlag(boolean)
	return boolean
end

function M.AssertIsDisabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDisabled to be of type 'boolean'")
end

function M.IsDisabled(boolean)
	M.AssertIsDisabled(boolean)
	return boolean
end

function M.AssertIsDefaultVersion(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsDefaultVersion to be of type 'boolean'")
end

function M.IsDefaultVersion(boolean)
	M.AssertIsDefaultVersion(boolean)
	return boolean
end

function M.AssertUndoDeprecate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UndoDeprecate to be of type 'boolean'")
end

function M.UndoDeprecate(boolean)
	M.AssertUndoDeprecate(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.Attributes(map)
	M.AssertAttributes(map)
	return map
end

function M.AssertDateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateType to be of type 'string'")
end

function M.DateType(timestamp)
	M.AssertDateType(timestamp)
	return timestamp
end

function M.AssertCreatedAtDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedAtDate to be of type 'string'")
end

function M.CreatedAtDate(timestamp)
	M.AssertCreatedAtDate(timestamp)
	return timestamp
end

function M.AssertDeprecationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeprecationDate to be of type 'string'")
end

function M.DeprecationDate(timestamp)
	M.AssertDeprecationDate(timestamp)
	return timestamp
end

function M.AssertCreationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationDate to be of type 'string'")
end

function M.CreationDate(timestamp)
	M.AssertCreationDate(timestamp)
	return timestamp
end

function M.AssertSearchableAttributes(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchableAttributes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttributeName(v)
	end
end

--  
-- List of AttributeName objects
function M.SearchableAttributes(list)
	M.AssertSearchableAttributes(list)
	return list
end

function M.AssertThingNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertThingName(v)
	end
end

--  
-- List of ThingName objects
function M.ThingNameList(list)
	M.AssertThingNameList(list)
	return list
end

function M.AssertCertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected Certificates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCertificate(v)
	end
end

--  
-- List of Certificate objects
function M.Certificates(list)
	M.AssertCertificates(list)
	return list
end

function M.AssertTopicRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicRuleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTopicRuleListItem(v)
	end
end

--  
-- List of TopicRuleListItem objects
function M.TopicRuleList(list)
	M.AssertTopicRuleList(list)
	return list
end

function M.AssertThingTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertThingTypeDefinition(v)
	end
end

--  
-- List of ThingTypeDefinition objects
function M.ThingTypeList(list)
	M.AssertThingTypeList(list)
	return list
end

function M.AssertActionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAction(v)
	end
end

--  
-- List of Action objects
function M.ActionList(list)
	M.AssertActionList(list)
	return list
end

function M.AssertPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected Policies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicy(v)
	end
end

--  
-- List of Policy objects
function M.Policies(list)
	M.AssertPolicies(list)
	return list
end

function M.AssertPolicyVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyVersions to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyVersion(v)
	end
end

--  
-- List of PolicyVersion objects
function M.PolicyVersions(list)
	M.AssertPolicyVersions(list)
	return list
end

function M.AssertPrincipals(list)
	assert(list)
	assert(type(list) == "table", "Expected Principals to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPrincipalArn(v)
	end
end

--  
-- List of PrincipalArn objects
function M.Principals(list)
	M.AssertPrincipals(list)
	return list
end

function M.AssertOutgoingCertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected OutgoingCertificates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutgoingCertificate(v)
	end
end

--  
-- List of OutgoingCertificate objects
function M.OutgoingCertificates(list)
	M.AssertOutgoingCertificates(list)
	return list
end

function M.AssertThingAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ThingAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertThingAttribute(v)
	end
end

--  
-- List of ThingAttribute objects
function M.ThingAttributeList(list)
	M.AssertThingAttributeList(list)
	return list
end

function M.AssertCACertificates(list)
	assert(list)
	assert(type(list) == "table", "Expected CACertificates to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCACertificate(v)
	end
end

--  
-- List of CACertificate objects
function M.CACertificates(list)
	M.AssertCACertificates(list)
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