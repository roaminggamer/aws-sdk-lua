--- GENERATED CODE - DO NOT MODIFY
-- AWS Key Management Service (kms-2014-11-01)

local M = {}

M.metadata = {
	api_version = "2014-11-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "kms",
	service_abbreviation = "KMS",
	service_full_name = "AWS Key Management Service",
	signature_version = "v4",
	target_prefix = "TrentService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "kms-2014-11-01",
}

local keys = {}
local asserts = {}

keys.ListRetirableGrantsRequest = { ["Marker"] = true, ["Limit"] = true, ["RetiringPrincipal"] = true, nil }

function asserts.AssertListRetirableGrantsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRetirableGrantsRequest to be of type 'table'")
	assert(struct["RetiringPrincipal"], "Expected key RetiringPrincipal to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	if struct["RetiringPrincipal"] then asserts.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRetirableGrantsRequest[k], "ListRetirableGrantsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRetirableGrantsRequest
--  
-- @param _Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- @param _Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
-- @param _RetiringPrincipal [PrincipalIdType] <p>The retiring principal for which to list grants.</p> <p>To specify the retiring principal, use the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax for specifying a principal, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the <i>Amazon Web Services General Reference</i>.</p>
-- Required parameter: RetiringPrincipal
function M.ListRetirableGrantsRequest(_Marker, _Limit, _RetiringPrincipal, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRetirableGrantsRequest")
	local t = { 
		["Marker"] = _Marker,
		["Limit"] = _Limit,
		["RetiringPrincipal"] = _RetiringPrincipal,
	}
	asserts.AssertListRetirableGrantsRequest(t)
	return t
end

keys.DependencyTimeoutException = { ["message"] = true, nil }

function asserts.AssertDependencyTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyTimeoutException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DependencyTimeoutException[k], "DependencyTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyTimeoutException
-- <p>The system timed out while trying to fulfill the request. The request can be retried.</p>
-- @param _message [ErrorMessageType] 
function M.DependencyTimeoutException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependencyTimeoutException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDependencyTimeoutException(t)
	return t
end

keys.UnsupportedOperationException = { ["message"] = true, nil }

function asserts.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperationException[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.</p>
-- @param _message [ErrorMessageType] 
function M.UnsupportedOperationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedOperationException(t)
	return t
end

keys.InvalidArnException = { ["message"] = true, nil }

function asserts.AssertInvalidArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArnException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArnException[k], "InvalidArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArnException
-- <p>The request was rejected because a specified ARN was not valid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidArnException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArnException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidArnException(t)
	return t
end

keys.EnableKeyRotationRequest = { ["KeyId"] = true, nil }

function asserts.AssertEnableKeyRotationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableKeyRotationRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableKeyRotationRequest[k], "EnableKeyRotationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableKeyRotationRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- Required parameter: KeyId
function M.EnableKeyRotationRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableKeyRotationRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertEnableKeyRotationRequest(t)
	return t
end

keys.InvalidKeyUsageException = { ["message"] = true, nil }

function asserts.AssertInvalidKeyUsageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyUsageException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidKeyUsageException[k], "InvalidKeyUsageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyUsageException
-- <p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidKeyUsageException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKeyUsageException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidKeyUsageException(t)
	return t
end

keys.CreateKeyRequest = { ["Origin"] = true, ["Description"] = true, ["Tags"] = true, ["BypassPolicyLockoutSafetyCheck"] = true, ["KeyUsage"] = true, ["Policy"] = true, nil }

function asserts.AssertCreateKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyRequest to be of type 'table'")
	if struct["Origin"] then asserts.AssertOriginType(struct["Origin"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["BypassPolicyLockoutSafetyCheck"] then asserts.AssertBooleanType(struct["BypassPolicyLockoutSafetyCheck"]) end
	if struct["KeyUsage"] then asserts.AssertKeyUsageType(struct["KeyUsage"]) end
	if struct["Policy"] then asserts.AssertPolicyType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeyRequest[k], "CreateKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyRequest
--  
-- @param _Origin [OriginType] <p>The source of the CMK's key material.</p> <p>The default is <code>AWS_KMS</code>, which means AWS KMS creates the key material. When this parameter is set to <code>EXTERNAL</code>, the request creates a CMK without key material so that you can import key material from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>The CMK's <code>Origin</code> is immutable and is set when the CMK is created.</p>
-- @param _Description [DescriptionType] <p>A description of the CMK.</p> <p>Use a description that helps you decide whether the CMK is appropriate for a task.</p>
-- @param _Tags [TagList] <p>One or more tags. Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>Use this parameter to tag the CMK when it is created. Alternately, you can omit this parameter and instead tag the CMK after it is created using <a>TagResource</a>.</p>
-- @param _BypassPolicyLockoutSafetyCheck [BooleanType] <p>A flag to indicate whether to bypass the key policy lockout safety check.</p> <important> <p>Setting this value to true increases the likelihood that the CMK becomes unmanageable. Do not set this value to true indiscriminately.</p> <p>For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p> </important> <p>Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent <a>PutKeyPolicy</a> request on the CMK.</p> <p>The default value is false.</p>
-- @param _KeyUsage [KeyUsageType] <p>The intended use of the CMK.</p> <p>You can use CMKs only for symmetric encryption and decryption.</p>
-- @param _Policy [PolicyType] <p>The key policy to attach to the CMK.</p> <p>If you specify a policy and do not set <code>BypassPolicyLockoutSafetyCheck</code> to true, the policy must meet the following criteria:</p> <ul> <li> <p>It must allow the principal that is making the <code>CreateKey</code> request to make a subsequent <a>PutKeyPolicy</a> request on the CMK. This reduces the likelihood that the CMK becomes unmanageable. For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p> </li> <li> <p>The principals that are specified in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before specifying the new principal in a key policy because the new principal might not immediately be visible to AWS KMS. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>IAM User Guide</i>.</p> </li> </ul> <p>If you do not specify a policy, AWS KMS attaches a default key policy to the CMK. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default">Default Key Policy</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>The policy size limit is 32 KiB (32768 bytes).</p>
function M.CreateKeyRequest(_Origin, _Description, _Tags, _BypassPolicyLockoutSafetyCheck, _KeyUsage, _Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyRequest")
	local t = { 
		["Origin"] = _Origin,
		["Description"] = _Description,
		["Tags"] = _Tags,
		["BypassPolicyLockoutSafetyCheck"] = _BypassPolicyLockoutSafetyCheck,
		["KeyUsage"] = _KeyUsage,
		["Policy"] = _Policy,
	}
	asserts.AssertCreateKeyRequest(t)
	return t
end

keys.GetKeyPolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertGetKeyPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicyType(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPolicyResponse[k], "GetKeyPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPolicyResponse
--  
-- @param _Policy [PolicyType] <p>A policy document in JSON format.</p>
function M.GetKeyPolicyResponse(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPolicyResponse")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertGetKeyPolicyResponse(t)
	return t
end

keys.DisabledException = { ["message"] = true, nil }

function asserts.AssertDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisabledException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisabledException[k], "DisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisabledException
-- <p>The request was rejected because the specified CMK is not enabled.</p>
-- @param _message [ErrorMessageType] 
function M.DisabledException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisabledException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDisabledException(t)
	return t
end

keys.GenerateDataKeyWithoutPlaintextResponse = { ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertGenerateDataKeyWithoutPlaintextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyWithoutPlaintextResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyWithoutPlaintextResponse[k], "GenerateDataKeyWithoutPlaintextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyWithoutPlaintextResponse
--  
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK under which the data encryption key was generated and encrypted.</p>
-- @param _CiphertextBlob [CiphertextType] <p>The encrypted data encryption key.</p>
function M.GenerateDataKeyWithoutPlaintextResponse(_KeyId, _CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyWithoutPlaintextResponse")
	local t = { 
		["KeyId"] = _KeyId,
		["CiphertextBlob"] = _CiphertextBlob,
	}
	asserts.AssertGenerateDataKeyWithoutPlaintextResponse(t)
	return t
end

keys.DescribeKeyRequest = { ["KeyId"] = true, ["GrantTokens"] = true, nil }

function asserts.AssertDescribeKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeKeyRequest[k], "DescribeKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by "alias/".</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Alias ARN Example - arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Alias Name Example - alias/MyAliasName</p> </li> </ul>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- Required parameter: KeyId
function M.DescribeKeyRequest(_KeyId, _GrantTokens, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeKeyRequest")
	local t = { 
		["KeyId"] = _KeyId,
		["GrantTokens"] = _GrantTokens,
	}
	asserts.AssertDescribeKeyRequest(t)
	return t
end

keys.InvalidGrantIdException = { ["message"] = true, nil }

function asserts.AssertInvalidGrantIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGrantIdException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGrantIdException[k], "InvalidGrantIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGrantIdException
-- <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidGrantIdException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGrantIdException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidGrantIdException(t)
	return t
end

keys.EnableKeyRequest = { ["KeyId"] = true, nil }

function asserts.AssertEnableKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableKeyRequest[k], "EnableKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableKeyRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- Required parameter: KeyId
function M.EnableKeyRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableKeyRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertEnableKeyRequest(t)
	return t
end

keys.ImportKeyMaterialResponse = { nil }

function asserts.AssertImportKeyMaterialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyMaterialResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImportKeyMaterialResponse[k], "ImportKeyMaterialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyMaterialResponse
--  
function M.ImportKeyMaterialResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyMaterialResponse")
	local t = { 
	}
	asserts.AssertImportKeyMaterialResponse(t)
	return t
end

keys.UpdateAliasRequest = { ["TargetKeyId"] = true, ["AliasName"] = true, nil }

function asserts.AssertUpdateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	assert(struct["TargetKeyId"], "Expected key TargetKeyId to exist in table")
	if struct["TargetKeyId"] then asserts.AssertKeyIdType(struct["TargetKeyId"]) end
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAliasRequest[k], "UpdateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAliasRequest
--  
-- @param _TargetKeyId [KeyIdType] <p>Unique identifier of the customer master key to be mapped to the alias. This value can be a globally unique identifier or the fully specified ARN of a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul> <p>You can call <a>ListAliases</a> to verify that the alias is mapped to the correct <code>TargetKeyId</code>.</p>
-- @param _AliasName [AliasNameType] <p>String that contains the name of the alias to be modified. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/aws" are reserved.</p>
-- Required parameter: AliasName
-- Required parameter: TargetKeyId
function M.UpdateAliasRequest(_TargetKeyId, _AliasName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAliasRequest")
	local t = { 
		["TargetKeyId"] = _TargetKeyId,
		["AliasName"] = _AliasName,
	}
	asserts.AssertUpdateAliasRequest(t)
	return t
end

keys.GenerateDataKeyRequest = { ["NumberOfBytes"] = true, ["EncryptionContext"] = true, ["KeyId"] = true, ["GrantTokens"] = true, ["KeySpec"] = true, nil }

function asserts.AssertGenerateDataKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["NumberOfBytes"] then asserts.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["KeySpec"] then asserts.AssertDataKeySpec(struct["KeySpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyRequest[k], "GenerateDataKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyRequest
--  
-- @param _NumberOfBytes [NumberOfBytesType] <p>The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the <code>KeySpec</code> field instead of this one.</p>
-- @param _EncryptionContext [EncryptionContextType] <p>A set of key-value pairs that represents additional authenticated data.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK under which to generate and encrypt the data encryption key.</p> <p>A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK, or the alias name or ARN of an alias that refers to the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>CMK ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _KeySpec [DataKeySpec] <p>The length of the data encryption key. Use <code>AES_128</code> to generate a 128-bit symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
-- Required parameter: KeyId
function M.GenerateDataKeyRequest(_NumberOfBytes, _EncryptionContext, _KeyId, _GrantTokens, _KeySpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyRequest")
	local t = { 
		["NumberOfBytes"] = _NumberOfBytes,
		["EncryptionContext"] = _EncryptionContext,
		["KeyId"] = _KeyId,
		["GrantTokens"] = _GrantTokens,
		["KeySpec"] = _KeySpec,
	}
	asserts.AssertGenerateDataKeyRequest(t)
	return t
end

keys.KMSInvalidStateException = { ["message"] = true, nil }

function asserts.AssertKMSInvalidStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInvalidStateException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSInvalidStateException[k], "KMSInvalidStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInvalidStateException
-- <p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _message [ErrorMessageType] 
function M.KMSInvalidStateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSInvalidStateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertKMSInvalidStateException(t)
	return t
end

keys.GenerateDataKeyWithoutPlaintextRequest = { ["NumberOfBytes"] = true, ["EncryptionContext"] = true, ["KeyId"] = true, ["GrantTokens"] = true, ["KeySpec"] = true, nil }

function asserts.AssertGenerateDataKeyWithoutPlaintextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyWithoutPlaintextRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["NumberOfBytes"] then asserts.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["KeySpec"] then asserts.AssertDataKeySpec(struct["KeySpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyWithoutPlaintextRequest[k], "GenerateDataKeyWithoutPlaintextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyWithoutPlaintextRequest
--  
-- @param _NumberOfBytes [NumberOfBytesType] <p>The length of the data encryption key in bytes. For example, use the value 64 to generate a 512-bit data key (64 bytes is 512 bits). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use the <code>KeySpec</code> field instead of this one.</p>
-- @param _EncryptionContext [EncryptionContextType] <p>A set of key-value pairs that represents additional authenticated data.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK under which to generate and encrypt the data encryption key.</p> <p>A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK, or the alias name or ARN of an alias that refers to the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>CMK ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Alias name: <code>alias/ExampleAlias</code> </p> </li> <li> <p>Alias ARN: <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code> </p> </li> </ul>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _KeySpec [DataKeySpec] <p>The length of the data encryption key. Use <code>AES_128</code> to generate a 128-bit symmetric key, or <code>AES_256</code> to generate a 256-bit symmetric key.</p>
-- Required parameter: KeyId
function M.GenerateDataKeyWithoutPlaintextRequest(_NumberOfBytes, _EncryptionContext, _KeyId, _GrantTokens, _KeySpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyWithoutPlaintextRequest")
	local t = { 
		["NumberOfBytes"] = _NumberOfBytes,
		["EncryptionContext"] = _EncryptionContext,
		["KeyId"] = _KeyId,
		["GrantTokens"] = _GrantTokens,
		["KeySpec"] = _KeySpec,
	}
	asserts.AssertGenerateDataKeyWithoutPlaintextRequest(t)
	return t
end

keys.ScheduleKeyDeletionResponse = { ["KeyId"] = true, ["DeletionDate"] = true, nil }

function asserts.AssertScheduleKeyDeletionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleKeyDeletionResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["DeletionDate"] then asserts.AssertDateType(struct["DeletionDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleKeyDeletionResponse[k], "ScheduleKeyDeletionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleKeyDeletionResponse
--  
-- @param _KeyId [KeyIdType] <p>The unique identifier of the customer master key (CMK) for which deletion is scheduled.</p>
-- @param _DeletionDate [DateType] <p>The date and time after which AWS KMS deletes the customer master key (CMK).</p>
function M.ScheduleKeyDeletionResponse(_KeyId, _DeletionDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleKeyDeletionResponse")
	local t = { 
		["KeyId"] = _KeyId,
		["DeletionDate"] = _DeletionDate,
	}
	asserts.AssertScheduleKeyDeletionResponse(t)
	return t
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The request was rejected because the specified entity or resource could not be found.</p>
-- @param _message [ErrorMessageType] 
function M.NotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.GenerateRandomResponse = { ["Plaintext"] = true, nil }

function asserts.AssertGenerateRandomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateRandomResponse to be of type 'table'")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateRandomResponse[k], "GenerateRandomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateRandomResponse
--  
-- @param _Plaintext [PlaintextType] <p>The random byte string.</p>
function M.GenerateRandomResponse(_Plaintext, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateRandomResponse")
	local t = { 
		["Plaintext"] = _Plaintext,
	}
	asserts.AssertGenerateRandomResponse(t)
	return t
end

keys.ReEncryptRequest = { ["SourceEncryptionContext"] = true, ["GrantTokens"] = true, ["DestinationEncryptionContext"] = true, ["DestinationKeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertReEncryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReEncryptRequest to be of type 'table'")
	assert(struct["CiphertextBlob"], "Expected key CiphertextBlob to exist in table")
	assert(struct["DestinationKeyId"], "Expected key DestinationKeyId to exist in table")
	if struct["SourceEncryptionContext"] then asserts.AssertEncryptionContextType(struct["SourceEncryptionContext"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["DestinationEncryptionContext"] then asserts.AssertEncryptionContextType(struct["DestinationEncryptionContext"]) end
	if struct["DestinationKeyId"] then asserts.AssertKeyIdType(struct["DestinationKeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReEncryptRequest[k], "ReEncryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReEncryptRequest
--  
-- @param _SourceEncryptionContext [EncryptionContextType] <p>Encryption context used to encrypt and decrypt the data specified in the <code>CiphertextBlob</code> parameter.</p>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _DestinationEncryptionContext [EncryptionContextType] <p>Encryption context to use when the data is reencrypted.</p>
-- @param _DestinationKeyId [KeyIdType] <p>A unique identifier for the CMK to use to reencrypt the data. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by "alias/".</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Alias ARN Example - arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Alias Name Example - alias/MyAliasName</p> </li> </ul>
-- @param _CiphertextBlob [CiphertextType] <p>Ciphertext of the data to reencrypt.</p>
-- Required parameter: CiphertextBlob
-- Required parameter: DestinationKeyId
function M.ReEncryptRequest(_SourceEncryptionContext, _GrantTokens, _DestinationEncryptionContext, _DestinationKeyId, _CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReEncryptRequest")
	local t = { 
		["SourceEncryptionContext"] = _SourceEncryptionContext,
		["GrantTokens"] = _GrantTokens,
		["DestinationEncryptionContext"] = _DestinationEncryptionContext,
		["DestinationKeyId"] = _DestinationKeyId,
		["CiphertextBlob"] = _CiphertextBlob,
	}
	asserts.AssertReEncryptRequest(t)
	return t
end

keys.InvalidGrantTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidGrantTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidGrantTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidGrantTokenException[k], "InvalidGrantTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidGrantTokenException
-- <p>The request was rejected because the specified grant token is not valid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidGrantTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidGrantTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidGrantTokenException(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _message [ErrorMessageType] 
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ListAliasesResponse = { ["Truncated"] = true, ["NextMarker"] = true, ["Aliases"] = true, nil }

function asserts.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Aliases"] then asserts.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesResponse[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param _Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- @param _NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- @param _Aliases [AliasList] <p>A list of key aliases in the user's account.</p>
function M.ListAliasesResponse(_Truncated, _NextMarker, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesResponse")
	local t = { 
		["Truncated"] = _Truncated,
		["NextMarker"] = _NextMarker,
		["Aliases"] = _Aliases,
	}
	asserts.AssertListAliasesResponse(t)
	return t
end

keys.InvalidMarkerException = { ["message"] = true, nil }

function asserts.AssertInvalidMarkerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMarkerException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidMarkerException[k], "InvalidMarkerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMarkerException
-- <p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidMarkerException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMarkerException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidMarkerException(t)
	return t
end

keys.ListKeyPoliciesRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListKeyPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPoliciesRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeyPoliciesRequest[k], "ListKeyPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPoliciesRequest
--  
-- @param _Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key (CMK). You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- @param _Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p> <p>Currently only 1 policy can be attached to a key.</p>
-- Required parameter: KeyId
function M.ListKeyPoliciesRequest(_Marker, _KeyId, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeyPoliciesRequest")
	local t = { 
		["Marker"] = _Marker,
		["KeyId"] = _KeyId,
		["Limit"] = _Limit,
	}
	asserts.AssertListKeyPoliciesRequest(t)
	return t
end

keys.DeleteAliasRequest = { ["AliasName"] = true, nil }

function asserts.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasRequest[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param _AliasName [AliasNameType] <p>The alias to be deleted. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/AWS" are reserved.</p>
-- Required parameter: AliasName
function M.DeleteAliasRequest(_AliasName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAliasRequest")
	local t = { 
		["AliasName"] = _AliasName,
	}
	asserts.AssertDeleteAliasRequest(t)
	return t
end

keys.MalformedPolicyDocumentException = { ["message"] = true, nil }

function asserts.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedPolicyDocumentException[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- <p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>
-- @param _message [ErrorMessageType] 
function M.MalformedPolicyDocumentException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyDocumentException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMalformedPolicyDocumentException(t)
	return t
end

keys.DecryptResponse = { ["Plaintext"] = true, ["KeyId"] = true, nil }

function asserts.AssertDecryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecryptResponse to be of type 'table'")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecryptResponse[k], "DecryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecryptResponse
--  
-- @param _Plaintext [PlaintextType] <p>Decrypted plaintext data. This value may not be returned if the customer master key is not available or if you didn't have permission to use it.</p>
-- @param _KeyId [KeyIdType] <p>ARN of the key used to perform the decryption. This value is returned if no errors are encountered during the operation.</p>
function M.DecryptResponse(_Plaintext, _KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecryptResponse")
	local t = { 
		["Plaintext"] = _Plaintext,
		["KeyId"] = _KeyId,
	}
	asserts.AssertDecryptResponse(t)
	return t
end

keys.ListResourceTagsResponse = { ["Truncated"] = true, ["NextMarker"] = true, ["Tags"] = true, nil }

function asserts.AssertListResourceTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceTagsResponse to be of type 'table'")
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceTagsResponse[k], "ListResourceTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceTagsResponse
--  
-- @param _Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
-- @param _NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p> <p>Do not assume or infer any information from this value.</p>
-- @param _Tags [TagList] <p>A list of tags. Each tag consists of a tag key and a tag value.</p>
function M.ListResourceTagsResponse(_Truncated, _NextMarker, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourceTagsResponse")
	local t = { 
		["Truncated"] = _Truncated,
		["NextMarker"] = _NextMarker,
		["Tags"] = _Tags,
	}
	asserts.AssertListResourceTagsResponse(t)
	return t
end

keys.GrantConstraints = { ["EncryptionContextSubset"] = true, ["EncryptionContextEquals"] = true, nil }

function asserts.AssertGrantConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantConstraints to be of type 'table'")
	if struct["EncryptionContextSubset"] then asserts.AssertEncryptionContextType(struct["EncryptionContextSubset"]) end
	if struct["EncryptionContextEquals"] then asserts.AssertEncryptionContextType(struct["EncryptionContextEquals"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrantConstraints[k], "GrantConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantConstraints
-- <p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Grant constraints apply only to operations that accept encryption context as input. For example, the <code> <a>DescribeKey</a> </code> operation does not accept encryption context as input. A grant that allows the <code>DescribeKey</code> operation does so regardless of the grant constraints. In constrast, the <code> <a>Encrypt</a> </code> operation accepts encryption context as input. A grant that allows the <code>Encrypt</code> operation does so only when the encryption context of the <code>Encrypt</code> operation satisfies the grant constraints.</p>
-- @param _EncryptionContextSubset [EncryptionContextType] <p>A list of key-value pairs, all of which must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list or is a superset of this list, the grant allows the operation. Otherwise, the grant does not allow the operation.</p>
-- @param _EncryptionContextEquals [EncryptionContextType] <p>A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list, the grant allows the operation. Otherwise, the grant does not allow the operation.</p>
function M.GrantConstraints(_EncryptionContextSubset, _EncryptionContextEquals, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantConstraints")
	local t = { 
		["EncryptionContextSubset"] = _EncryptionContextSubset,
		["EncryptionContextEquals"] = _EncryptionContextEquals,
	}
	asserts.AssertGrantConstraints(t)
	return t
end

keys.Tag = { ["TagKey"] = true, ["TagValue"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["TagKey"], "Expected key TagKey to exist in table")
	assert(struct["TagValue"], "Expected key TagValue to exist in table")
	if struct["TagKey"] then asserts.AssertTagKeyType(struct["TagKey"]) end
	if struct["TagValue"] then asserts.AssertTagValueType(struct["TagValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p>
-- @param _TagKey [TagKeyType] <p>The key of the tag.</p>
-- @param _TagValue [TagValueType] <p>The value of the tag.</p>
-- Required parameter: TagKey
-- Required parameter: TagValue
function M.Tag(_TagKey, _TagValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["TagKey"] = _TagKey,
		["TagValue"] = _TagValue,
	}
	asserts.AssertTag(t)
	return t
end

keys.ImportKeyMaterialRequest = { ["ExpirationModel"] = true, ["ValidTo"] = true, ["KeyId"] = true, ["ImportToken"] = true, ["EncryptedKeyMaterial"] = true, nil }

function asserts.AssertImportKeyMaterialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportKeyMaterialRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["ImportToken"], "Expected key ImportToken to exist in table")
	assert(struct["EncryptedKeyMaterial"], "Expected key EncryptedKeyMaterial to exist in table")
	if struct["ExpirationModel"] then asserts.AssertExpirationModelType(struct["ExpirationModel"]) end
	if struct["ValidTo"] then asserts.AssertDateType(struct["ValidTo"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["ImportToken"] then asserts.AssertCiphertextType(struct["ImportToken"]) end
	if struct["EncryptedKeyMaterial"] then asserts.AssertCiphertextType(struct["EncryptedKeyMaterial"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportKeyMaterialRequest[k], "ImportKeyMaterialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportKeyMaterialRequest
--  
-- @param _ExpirationModel [ExpirationModelType] <p>Specifies whether the key material expires. The default is <code>KEY_MATERIAL_EXPIRES</code>, in which case you must include the <code>ValidTo</code> parameter. When this parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>, you must omit the <code>ValidTo</code> parameter.</p>
-- @param _ValidTo [DateType] <p>The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. You must omit this parameter when the <code>ExpirationModel</code> parameter is set to <code>KEY_MATERIAL_DOES_NOT_EXPIRE</code>. Otherwise it is required.</p>
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK to import the key material into. The CMK's <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- @param _ImportToken [CiphertextType] <p>The import token that you received in the response to a previous <a>GetParametersForImport</a> request. It must be from the same response that contained the public key that you used to encrypt the key material.</p>
-- @param _EncryptedKeyMaterial [CiphertextType] <p>The encrypted key material to import. It must be encrypted with the public key that you received in the response to a previous <a>GetParametersForImport</a> request, using the wrapping algorithm that you specified in that request.</p>
-- Required parameter: KeyId
-- Required parameter: ImportToken
-- Required parameter: EncryptedKeyMaterial
function M.ImportKeyMaterialRequest(_ExpirationModel, _ValidTo, _KeyId, _ImportToken, _EncryptedKeyMaterial, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportKeyMaterialRequest")
	local t = { 
		["ExpirationModel"] = _ExpirationModel,
		["ValidTo"] = _ValidTo,
		["KeyId"] = _KeyId,
		["ImportToken"] = _ImportToken,
		["EncryptedKeyMaterial"] = _EncryptedKeyMaterial,
	}
	asserts.AssertImportKeyMaterialRequest(t)
	return t
end

keys.RetireGrantRequest = { ["GrantToken"] = true, ["KeyId"] = true, ["GrantId"] = true, nil }

function asserts.AssertRetireGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RetireGrantRequest to be of type 'table'")
	if struct["GrantToken"] then asserts.AssertGrantTokenType(struct["GrantToken"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RetireGrantRequest[k], "RetireGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RetireGrantRequest
--  
-- @param _GrantToken [GrantTokenType] <p>Token that identifies the grant to be retired.</p>
-- @param _KeyId [KeyIdType] <p>The Amazon Resource Name of the CMK associated with the grant. Example:</p> <ul> <li> <p>arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> </ul>
-- @param _GrantId [GrantIdType] <p>Unique identifier of the grant to retire. The grant ID is returned in the response to a <code>CreateGrant</code> operation.</p> <ul> <li> <p>Grant ID Example - 0123456789012345678901234567890123456789012345678901234567890123</p> </li> </ul>
function M.RetireGrantRequest(_GrantToken, _KeyId, _GrantId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RetireGrantRequest")
	local t = { 
		["GrantToken"] = _GrantToken,
		["KeyId"] = _KeyId,
		["GrantId"] = _GrantId,
	}
	asserts.AssertRetireGrantRequest(t)
	return t
end

keys.ListKeysResponse = { ["Keys"] = true, ["NextMarker"] = true, ["Truncated"] = true, nil }

function asserts.AssertListKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeysResponse to be of type 'table'")
	if struct["Keys"] then asserts.AssertKeyList(struct["Keys"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeysResponse[k], "ListKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeysResponse
--  
-- @param _Keys [KeyList] <p>A list of keys.</p>
-- @param _NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- @param _Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
function M.ListKeysResponse(_Keys, _NextMarker, _Truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeysResponse")
	local t = { 
		["Keys"] = _Keys,
		["NextMarker"] = _NextMarker,
		["Truncated"] = _Truncated,
	}
	asserts.AssertListKeysResponse(t)
	return t
end

keys.UntagResourceRequest = { ["KeyId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the CMK from which you are removing tags. You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- @param _TagKeys [TagKeyList] <p>One or more tag keys. Specify only the tag keys, not the tag values.</p>
-- Required parameter: KeyId
-- Required parameter: TagKeys
function M.UntagResourceRequest(_KeyId, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagResourceRequest")
	local t = { 
		["KeyId"] = _KeyId,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertUntagResourceRequest(t)
	return t
end

keys.EncryptResponse = { ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertEncryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptResponse[k], "EncryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptResponse
--  
-- @param _KeyId [KeyIdType] <p>The ID of the key used during encryption.</p>
-- @param _CiphertextBlob [CiphertextType] <p>The encrypted plaintext. If you are using the CLI, the value is Base64 encoded. Otherwise, it is not encoded.</p>
function M.EncryptResponse(_KeyId, _CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptResponse")
	local t = { 
		["KeyId"] = _KeyId,
		["CiphertextBlob"] = _CiphertextBlob,
	}
	asserts.AssertEncryptResponse(t)
	return t
end

keys.AlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyExistsException[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>The request was rejected because it attempted to create a resource that already exists.</p>
-- @param _message [ErrorMessageType] 
function M.AlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAlreadyExistsException(t)
	return t
end

keys.GenerateDataKeyResponse = { ["Plaintext"] = true, ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertGenerateDataKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateDataKeyResponse to be of type 'table'")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateDataKeyResponse[k], "GenerateDataKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateDataKeyResponse
--  
-- @param _Plaintext [PlaintextType] <p>The data encryption key. Use this data key for local encryption and decryption, then remove it from memory as soon as possible.</p>
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK under which the data encryption key was generated and encrypted.</p>
-- @param _CiphertextBlob [CiphertextType] <p>The encrypted data encryption key.</p>
function M.GenerateDataKeyResponse(_Plaintext, _KeyId, _CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateDataKeyResponse")
	local t = { 
		["Plaintext"] = _Plaintext,
		["KeyId"] = _KeyId,
		["CiphertextBlob"] = _CiphertextBlob,
	}
	asserts.AssertGenerateDataKeyResponse(t)
	return t
end

keys.ListKeyPoliciesResponse = { ["PolicyNames"] = true, ["NextMarker"] = true, ["Truncated"] = true, nil }

function asserts.AssertListKeyPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeyPoliciesResponse to be of type 'table'")
	if struct["PolicyNames"] then asserts.AssertPolicyNameList(struct["PolicyNames"]) end
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeyPoliciesResponse[k], "ListKeyPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeyPoliciesResponse
--  
-- @param _PolicyNames [PolicyNameList] <p>A list of policy names. Currently, there is only one policy and it is named "Default".</p>
-- @param _NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- @param _Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
function M.ListKeyPoliciesResponse(_PolicyNames, _NextMarker, _Truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeyPoliciesResponse")
	local t = { 
		["PolicyNames"] = _PolicyNames,
		["NextMarker"] = _NextMarker,
		["Truncated"] = _Truncated,
	}
	asserts.AssertListKeyPoliciesResponse(t)
	return t
end

keys.GetParametersForImportRequest = { ["WrappingAlgorithm"] = true, ["KeyId"] = true, ["WrappingKeySpec"] = true, nil }

function asserts.AssertGetParametersForImportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersForImportRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["WrappingAlgorithm"], "Expected key WrappingAlgorithm to exist in table")
	assert(struct["WrappingKeySpec"], "Expected key WrappingKeySpec to exist in table")
	if struct["WrappingAlgorithm"] then asserts.AssertAlgorithmSpec(struct["WrappingAlgorithm"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["WrappingKeySpec"] then asserts.AssertWrappingKeySpec(struct["WrappingKeySpec"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersForImportRequest[k], "GetParametersForImportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersForImportRequest
--  
-- @param _WrappingAlgorithm [AlgorithmSpec] <p>The algorithm you will use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html">Encrypt the Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK into which you will import key material. The CMK's <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- @param _WrappingKeySpec [WrappingKeySpec] <p>The type of wrapping key (public key) to return in the response. Only 2048-bit RSA public keys are supported.</p>
-- Required parameter: KeyId
-- Required parameter: WrappingAlgorithm
-- Required parameter: WrappingKeySpec
function M.GetParametersForImportRequest(_WrappingAlgorithm, _KeyId, _WrappingKeySpec, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersForImportRequest")
	local t = { 
		["WrappingAlgorithm"] = _WrappingAlgorithm,
		["KeyId"] = _KeyId,
		["WrappingKeySpec"] = _WrappingKeySpec,
	}
	asserts.AssertGetParametersForImportRequest(t)
	return t
end

keys.CreateKeyResponse = { ["KeyMetadata"] = true, nil }

function asserts.AssertCreateKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateKeyResponse to be of type 'table'")
	if struct["KeyMetadata"] then asserts.AssertKeyMetadata(struct["KeyMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateKeyResponse[k], "CreateKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateKeyResponse
--  
-- @param _KeyMetadata [KeyMetadata] <p>Metadata associated with the CMK.</p>
function M.CreateKeyResponse(_KeyMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateKeyResponse")
	local t = { 
		["KeyMetadata"] = _KeyMetadata,
	}
	asserts.AssertCreateKeyResponse(t)
	return t
end

keys.ReEncryptResponse = { ["SourceKeyId"] = true, ["KeyId"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertReEncryptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReEncryptResponse to be of type 'table'")
	if struct["SourceKeyId"] then asserts.AssertKeyIdType(struct["SourceKeyId"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReEncryptResponse[k], "ReEncryptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReEncryptResponse
--  
-- @param _SourceKeyId [KeyIdType] <p>Unique identifier of the CMK used to originally encrypt the data.</p>
-- @param _KeyId [KeyIdType] <p>Unique identifier of the CMK used to reencrypt the data.</p>
-- @param _CiphertextBlob [CiphertextType] <p>The reencrypted data.</p>
function M.ReEncryptResponse(_SourceKeyId, _KeyId, _CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReEncryptResponse")
	local t = { 
		["SourceKeyId"] = _SourceKeyId,
		["KeyId"] = _KeyId,
		["CiphertextBlob"] = _CiphertextBlob,
	}
	asserts.AssertReEncryptResponse(t)
	return t
end

keys.CreateAliasRequest = { ["TargetKeyId"] = true, ["AliasName"] = true, nil }

function asserts.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["AliasName"], "Expected key AliasName to exist in table")
	assert(struct["TargetKeyId"], "Expected key TargetKeyId to exist in table")
	if struct["TargetKeyId"] then asserts.AssertKeyIdType(struct["TargetKeyId"]) end
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasRequest[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param _TargetKeyId [KeyIdType] <p>An identifier of the key for which you are creating the alias. This value cannot be another alias but can be a globally unique identifier or a fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _AliasName [AliasNameType] <p>String that contains the display name. The name must start with the word "alias" followed by a forward slash (alias/). Aliases that begin with "alias/AWS" are reserved.</p>
-- Required parameter: AliasName
-- Required parameter: TargetKeyId
function M.CreateAliasRequest(_TargetKeyId, _AliasName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAliasRequest")
	local t = { 
		["TargetKeyId"] = _TargetKeyId,
		["AliasName"] = _AliasName,
	}
	asserts.AssertCreateAliasRequest(t)
	return t
end

keys.KeyUnavailableException = { ["message"] = true, nil }

function asserts.AssertKeyUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyUnavailableException[k], "KeyUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyUnavailableException
-- <p>The request was rejected because the specified CMK was not available. The request can be retried.</p>
-- @param _message [ErrorMessageType] 
function M.KeyUnavailableException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyUnavailableException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertKeyUnavailableException(t)
	return t
end

keys.CancelKeyDeletionRequest = { ["KeyId"] = true, nil }

function asserts.AssertCancelKeyDeletionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelKeyDeletionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelKeyDeletionRequest[k], "CancelKeyDeletionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelKeyDeletionRequest
--  
-- @param _KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) for which to cancel deletion.</p> <p>To specify this value, use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> <li> <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> </ul> <p>To obtain the unique key ID and key ARN for a given CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required parameter: KeyId
function M.CancelKeyDeletionRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelKeyDeletionRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertCancelKeyDeletionRequest(t)
	return t
end

keys.IncorrectKeyMaterialException = { ["message"] = true, nil }

function asserts.AssertIncorrectKeyMaterialException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncorrectKeyMaterialException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncorrectKeyMaterialException[k], "IncorrectKeyMaterialException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncorrectKeyMaterialException
-- <p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>
-- @param _message [ErrorMessageType] 
function M.IncorrectKeyMaterialException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncorrectKeyMaterialException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertIncorrectKeyMaterialException(t)
	return t
end

keys.DeleteImportedKeyMaterialRequest = { ["KeyId"] = true, nil }

function asserts.AssertDeleteImportedKeyMaterialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteImportedKeyMaterialRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteImportedKeyMaterialRequest[k], "DeleteImportedKeyMaterialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteImportedKeyMaterialRequest
--  
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK whose key material to delete. The CMK's <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>A valid identifier is the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- Required parameter: KeyId
function M.DeleteImportedKeyMaterialRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteImportedKeyMaterialRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertDeleteImportedKeyMaterialRequest(t)
	return t
end

keys.GetKeyRotationStatusResponse = { ["KeyRotationEnabled"] = true, nil }

function asserts.AssertGetKeyRotationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyRotationStatusResponse to be of type 'table'")
	if struct["KeyRotationEnabled"] then asserts.AssertBooleanType(struct["KeyRotationEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyRotationStatusResponse[k], "GetKeyRotationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyRotationStatusResponse
--  
-- @param _KeyRotationEnabled [BooleanType] <p>A Boolean value that specifies whether key rotation is enabled.</p>
function M.GetKeyRotationStatusResponse(_KeyRotationEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyRotationStatusResponse")
	local t = { 
		["KeyRotationEnabled"] = _KeyRotationEnabled,
	}
	asserts.AssertGetKeyRotationStatusResponse(t)
	return t
end

keys.EncryptRequest = { ["Plaintext"] = true, ["EncryptionContext"] = true, ["KeyId"] = true, ["GrantTokens"] = true, nil }

function asserts.AssertEncryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Plaintext"], "Expected key Plaintext to exist in table")
	if struct["Plaintext"] then asserts.AssertPlaintextType(struct["Plaintext"]) end
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptRequest[k], "EncryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptRequest
--  
-- @param _Plaintext [PlaintextType] <p>Data to be encrypted.</p>
-- @param _EncryptionContext [EncryptionContextType] <p>Name-value pair that specifies the encryption context to be used for authenticated encryption. If used here, the same value must be supplied to the <code>Decrypt</code> API or decryption will fail. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a>.</p>
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by "alias/".</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Alias ARN Example - arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Alias Name Example - alias/MyAliasName</p> </li> </ul>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- Required parameter: KeyId
-- Required parameter: Plaintext
function M.EncryptRequest(_Plaintext, _EncryptionContext, _KeyId, _GrantTokens, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptRequest")
	local t = { 
		["Plaintext"] = _Plaintext,
		["EncryptionContext"] = _EncryptionContext,
		["KeyId"] = _KeyId,
		["GrantTokens"] = _GrantTokens,
	}
	asserts.AssertEncryptRequest(t)
	return t
end

keys.KeyListEntry = { ["KeyArn"] = true, ["KeyId"] = true, nil }

function asserts.AssertKeyListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyListEntry to be of type 'table'")
	if struct["KeyArn"] then asserts.AssertArnType(struct["KeyArn"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyListEntry[k], "KeyListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyListEntry
-- <p>Contains information about each entry in the key list.</p>
-- @param _KeyArn [ArnType] <p>ARN of the key.</p>
-- @param _KeyId [KeyIdType] <p>Unique identifier of the key.</p>
function M.KeyListEntry(_KeyArn, _KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyListEntry")
	local t = { 
		["KeyArn"] = _KeyArn,
		["KeyId"] = _KeyId,
	}
	asserts.AssertKeyListEntry(t)
	return t
end

keys.ListKeysRequest = { ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertListKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListKeysRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListKeysRequest[k], "ListKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListKeysRequest
--  
-- @param _Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- @param _Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.</p>
function M.ListKeysRequest(_Marker, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListKeysRequest")
	local t = { 
		["Marker"] = _Marker,
		["Limit"] = _Limit,
	}
	asserts.AssertListKeysRequest(t)
	return t
end

keys.KeyMetadata = { ["Origin"] = true, ["KeyId"] = true, ["Description"] = true, ["DeletionDate"] = true, ["ExpirationModel"] = true, ["ValidTo"] = true, ["Enabled"] = true, ["KeyUsage"] = true, ["KeyState"] = true, ["CreationDate"] = true, ["Arn"] = true, ["AWSAccountId"] = true, nil }

function asserts.AssertKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyMetadata to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Origin"] then asserts.AssertOriginType(struct["Origin"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	if struct["DeletionDate"] then asserts.AssertDateType(struct["DeletionDate"]) end
	if struct["ExpirationModel"] then asserts.AssertExpirationModelType(struct["ExpirationModel"]) end
	if struct["ValidTo"] then asserts.AssertDateType(struct["ValidTo"]) end
	if struct["Enabled"] then asserts.AssertBooleanType(struct["Enabled"]) end
	if struct["KeyUsage"] then asserts.AssertKeyUsageType(struct["KeyUsage"]) end
	if struct["KeyState"] then asserts.AssertKeyState(struct["KeyState"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["Arn"] then asserts.AssertArnType(struct["Arn"]) end
	if struct["AWSAccountId"] then asserts.AssertAWSAccountIdType(struct["AWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyMetadata[k], "KeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyMetadata
-- <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
-- @param _Origin [OriginType] <p>The source of the CMK's key material. When this value is <code>AWS_KMS</code>, AWS KMS created the key material. When this value is <code>EXTERNAL</code>, the key material was imported from your existing key management infrastructure or the CMK lacks key material.</p>
-- @param _KeyId [KeyIdType] <p>The globally unique identifier for the CMK.</p>
-- @param _Description [DescriptionType] <p>The description of the CMK.</p>
-- @param _DeletionDate [DateType] <p>The date and time after which AWS KMS deletes the CMK. This value is present only when <code>KeyState</code> is <code>PendingDeletion</code>, otherwise this value is omitted.</p>
-- @param _ExpirationModel [ExpirationModelType] <p>Specifies whether the CMK's key material expires. This value is present only when <code>Origin</code> is <code>EXTERNAL</code>, otherwise this value is omitted.</p>
-- @param _ValidTo [DateType] <p>The time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. This value is present only for CMKs whose <code>Origin</code> is <code>EXTERNAL</code> and whose <code>ExpirationModel</code> is <code>KEY_MATERIAL_EXPIRES</code>, otherwise this value is omitted.</p>
-- @param _Enabled [BooleanType] <p>Specifies whether the CMK is enabled. When <code>KeyState</code> is <code>Enabled</code> this value is true, otherwise it is false.</p>
-- @param _KeyUsage [KeyUsageType] <p>The cryptographic operations for which you can use the CMK. Currently the only allowed value is <code>ENCRYPT_DECRYPT</code>, which means you can use the CMK for the <a>Encrypt</a> and <a>Decrypt</a> operations.</p>
-- @param _KeyState [KeyState] <p>The state of the CMK.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects the Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _CreationDate [DateType] <p>The date and time when the CMK was created.</p>
-- @param _Arn [ArnType] <p>The Amazon Resource Name (ARN) of the CMK. For examples, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">AWS Key Management Service (AWS KMS)</a> in the Example ARNs section of the <i>AWS General Reference</i>.</p>
-- @param _AWSAccountId [AWSAccountIdType] <p>The twelve-digit account ID of the AWS account that owns the CMK.</p>
-- Required parameter: KeyId
function M.KeyMetadata(_Origin, _KeyId, _Description, _DeletionDate, _ExpirationModel, _ValidTo, _Enabled, _KeyUsage, _KeyState, _CreationDate, _Arn, _AWSAccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyMetadata")
	local t = { 
		["Origin"] = _Origin,
		["KeyId"] = _KeyId,
		["Description"] = _Description,
		["DeletionDate"] = _DeletionDate,
		["ExpirationModel"] = _ExpirationModel,
		["ValidTo"] = _ValidTo,
		["Enabled"] = _Enabled,
		["KeyUsage"] = _KeyUsage,
		["KeyState"] = _KeyState,
		["CreationDate"] = _CreationDate,
		["Arn"] = _Arn,
		["AWSAccountId"] = _AWSAccountId,
	}
	asserts.AssertKeyMetadata(t)
	return t
end

keys.ListGrantsRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListGrantsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGrantsRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGrantsRequest[k], "ListGrantsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGrantsRequest
--  
-- @param _Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
-- Required parameter: KeyId
function M.ListGrantsRequest(_Marker, _KeyId, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGrantsRequest")
	local t = { 
		["Marker"] = _Marker,
		["KeyId"] = _KeyId,
		["Limit"] = _Limit,
	}
	asserts.AssertListGrantsRequest(t)
	return t
end

keys.DecryptRequest = { ["EncryptionContext"] = true, ["GrantTokens"] = true, ["CiphertextBlob"] = true, nil }

function asserts.AssertDecryptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecryptRequest to be of type 'table'")
	assert(struct["CiphertextBlob"], "Expected key CiphertextBlob to exist in table")
	if struct["EncryptionContext"] then asserts.AssertEncryptionContextType(struct["EncryptionContext"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["CiphertextBlob"] then asserts.AssertCiphertextType(struct["CiphertextBlob"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecryptRequest[k], "DecryptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecryptRequest
--  
-- @param _EncryptionContext [EncryptionContextType] <p>The encryption context. If this was specified in the <a>Encrypt</a> function, it must be specified here or the decryption operation will fail. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a>.</p>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _CiphertextBlob [CiphertextType] <p>Ciphertext to be decrypted. The blob includes metadata.</p>
-- Required parameter: CiphertextBlob
function M.DecryptRequest(_EncryptionContext, _GrantTokens, _CiphertextBlob, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecryptRequest")
	local t = { 
		["EncryptionContext"] = _EncryptionContext,
		["GrantTokens"] = _GrantTokens,
		["CiphertextBlob"] = _CiphertextBlob,
	}
	asserts.AssertDecryptRequest(t)
	return t
end

keys.CancelKeyDeletionResponse = { ["KeyId"] = true, nil }

function asserts.AssertCancelKeyDeletionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelKeyDeletionResponse to be of type 'table'")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelKeyDeletionResponse[k], "CancelKeyDeletionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelKeyDeletionResponse
--  
-- @param _KeyId [KeyIdType] <p>The unique identifier of the master key for which deletion is canceled.</p>
function M.CancelKeyDeletionResponse(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelKeyDeletionResponse")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertCancelKeyDeletionResponse(t)
	return t
end

keys.AliasListEntry = { ["AliasArn"] = true, ["AliasName"] = true, ["TargetKeyId"] = true, nil }

function asserts.AssertAliasListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasListEntry to be of type 'table'")
	if struct["AliasArn"] then asserts.AssertArnType(struct["AliasArn"]) end
	if struct["AliasName"] then asserts.AssertAliasNameType(struct["AliasName"]) end
	if struct["TargetKeyId"] then asserts.AssertKeyIdType(struct["TargetKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasListEntry[k], "AliasListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasListEntry
-- <p>Contains information about an alias.</p>
-- @param _AliasArn [ArnType] <p>String that contains the key ARN.</p>
-- @param _AliasName [AliasNameType] <p>String that contains the alias.</p>
-- @param _TargetKeyId [KeyIdType] <p>String that contains the key identifier referred to by the alias.</p>
function M.AliasListEntry(_AliasArn, _AliasName, _TargetKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AliasListEntry")
	local t = { 
		["AliasArn"] = _AliasArn,
		["AliasName"] = _AliasName,
		["TargetKeyId"] = _TargetKeyId,
	}
	asserts.AssertAliasListEntry(t)
	return t
end

keys.GetKeyPolicyRequest = { ["PolicyName"] = true, ["KeyId"] = true, nil }

function asserts.AssertGetKeyPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyPolicyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyNameType(struct["PolicyName"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyPolicyRequest[k], "GetKeyPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyPolicyRequest
--  
-- @param _PolicyName [PolicyNameType] <p>String that contains the name of the policy. Currently, this must be "default". Policy names can be discovered by calling <a>ListKeyPolicies</a>.</p>
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- Required parameter: KeyId
-- Required parameter: PolicyName
function M.GetKeyPolicyRequest(_PolicyName, _KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyPolicyRequest")
	local t = { 
		["PolicyName"] = _PolicyName,
		["KeyId"] = _KeyId,
	}
	asserts.AssertGetKeyPolicyRequest(t)
	return t
end

keys.UpdateKeyDescriptionRequest = { ["KeyId"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateKeyDescriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateKeyDescriptionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Description"] then asserts.AssertDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateKeyDescriptionRequest[k], "UpdateKeyDescriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateKeyDescriptionRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the CMK. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _Description [DescriptionType] <p>New description for the CMK.</p>
-- Required parameter: KeyId
-- Required parameter: Description
function M.UpdateKeyDescriptionRequest(_KeyId, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateKeyDescriptionRequest")
	local t = { 
		["KeyId"] = _KeyId,
		["Description"] = _Description,
	}
	asserts.AssertUpdateKeyDescriptionRequest(t)
	return t
end

keys.PutKeyPolicyRequest = { ["Policy"] = true, ["PolicyName"] = true, ["KeyId"] = true, ["BypassPolicyLockoutSafetyCheck"] = true, nil }

function asserts.AssertPutKeyPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutKeyPolicyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicyType(struct["Policy"]) end
	if struct["PolicyName"] then asserts.AssertPolicyNameType(struct["PolicyName"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["BypassPolicyLockoutSafetyCheck"] then asserts.AssertBooleanType(struct["BypassPolicyLockoutSafetyCheck"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutKeyPolicyRequest[k], "PutKeyPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutKeyPolicyRequest
--  
-- @param _Policy [PolicyType] <p>The key policy to attach to the CMK.</p> <p>If you do not set <code>BypassPolicyLockoutSafetyCheck</code> to true, the policy must meet the following criteria:</p> <ul> <li> <p>It must allow the principal that is making the <code>PutKeyPolicy</code> request to make a subsequent <code>PutKeyPolicy</code> request on the CMK. This reduces the likelihood that the CMK becomes unmanageable. For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p> </li> <li> <p>The principals that are specified in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before specifying the new principal in a key policy because the new principal might not immediately be visible to AWS KMS. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency">Changes that I make are not always immediately visible</a> in the <i>IAM User Guide</i>.</p> </li> </ul> <p>The policy size limit is 32 KiB (32768 bytes).</p>
-- @param _PolicyName [PolicyNameType] <p>The name of the key policy.</p> <p>This value must be <code>default</code>.</p>
-- @param _KeyId [KeyIdType] <p>A unique identifier for the CMK.</p> <p>Use the CMK's unique identifier or its Amazon Resource Name (ARN). For example:</p> <ul> <li> <p>Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> <li> <p>ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> </ul>
-- @param _BypassPolicyLockoutSafetyCheck [BooleanType] <p>A flag to indicate whether to bypass the key policy lockout safety check.</p> <important> <p>Setting this value to true increases the likelihood that the CMK becomes unmanageable. Do not set this value to true indiscriminately.</p> <p>For more information, refer to the scenario in the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam">Default Key Policy</a> section in the <i>AWS Key Management Service Developer Guide</i>.</p> </important> <p>Use this parameter only when you intend to prevent the principal that is making the request from making a subsequent <code>PutKeyPolicy</code> request on the CMK.</p> <p>The default value is false.</p>
-- Required parameter: KeyId
-- Required parameter: PolicyName
-- Required parameter: Policy
function M.PutKeyPolicyRequest(_Policy, _PolicyName, _KeyId, _BypassPolicyLockoutSafetyCheck, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutKeyPolicyRequest")
	local t = { 
		["Policy"] = _Policy,
		["PolicyName"] = _PolicyName,
		["KeyId"] = _KeyId,
		["BypassPolicyLockoutSafetyCheck"] = _BypassPolicyLockoutSafetyCheck,
	}
	asserts.AssertPutKeyPolicyRequest(t)
	return t
end

keys.RevokeGrantRequest = { ["KeyId"] = true, ["GrantId"] = true, nil }

function asserts.AssertRevokeGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeGrantRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["GrantId"], "Expected key GrantId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeGrantRequest[k], "RevokeGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeGrantRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key associated with the grant. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _GrantId [GrantIdType] <p>Identifier of the grant to be revoked.</p>
-- Required parameter: KeyId
-- Required parameter: GrantId
function M.RevokeGrantRequest(_KeyId, _GrantId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RevokeGrantRequest")
	local t = { 
		["KeyId"] = _KeyId,
		["GrantId"] = _GrantId,
	}
	asserts.AssertRevokeGrantRequest(t)
	return t
end

keys.InvalidAliasNameException = { ["message"] = true, nil }

function asserts.AssertInvalidAliasNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAliasNameException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAliasNameException[k], "InvalidAliasNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAliasNameException
-- <p>The request was rejected because the specified alias name is not valid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidAliasNameException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAliasNameException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidAliasNameException(t)
	return t
end

keys.GenerateRandomRequest = { ["NumberOfBytes"] = true, nil }

function asserts.AssertGenerateRandomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateRandomRequest to be of type 'table'")
	if struct["NumberOfBytes"] then asserts.AssertNumberOfBytesType(struct["NumberOfBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateRandomRequest[k], "GenerateRandomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateRandomRequest
--  
-- @param _NumberOfBytes [NumberOfBytesType] <p>The length of the byte string.</p>
function M.GenerateRandomRequest(_NumberOfBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateRandomRequest")
	local t = { 
		["NumberOfBytes"] = _NumberOfBytes,
	}
	asserts.AssertGenerateRandomRequest(t)
	return t
end

keys.ListResourceTagsRequest = { ["Marker"] = true, ["KeyId"] = true, ["Limit"] = true, nil }

function asserts.AssertListResourceTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceTagsRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceTagsRequest[k], "ListResourceTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceTagsRequest
--  
-- @param _Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p> <p>Do not attempt to construct this value. Use only the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- @param _KeyId [KeyIdType] <p>A unique identifier for the CMK whose tags you are listing. You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- @param _Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 50, inclusive. If you do not include a value, it defaults to 50.</p>
-- Required parameter: KeyId
function M.ListResourceTagsRequest(_Marker, _KeyId, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourceTagsRequest")
	local t = { 
		["Marker"] = _Marker,
		["KeyId"] = _KeyId,
		["Limit"] = _Limit,
	}
	asserts.AssertListResourceTagsRequest(t)
	return t
end

keys.ScheduleKeyDeletionRequest = { ["PendingWindowInDays"] = true, ["KeyId"] = true, nil }

function asserts.AssertScheduleKeyDeletionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleKeyDeletionRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["PendingWindowInDays"] then asserts.AssertPendingWindowInDaysType(struct["PendingWindowInDays"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleKeyDeletionRequest[k], "ScheduleKeyDeletionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleKeyDeletionRequest
--  
-- @param _PendingWindowInDays [PendingWindowInDaysType] <p>The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the customer master key (CMK).</p> <p>This value is optional. If you include a value, it must be between 7 and 30, inclusive. If you do not include a value, it defaults to 30.</p>
-- @param _KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) to delete.</p> <p>To specify this value, use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> <li> <p>Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> </ul> <p>To obtain the unique key ID and key ARN for a given CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
-- Required parameter: KeyId
function M.ScheduleKeyDeletionRequest(_PendingWindowInDays, _KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleKeyDeletionRequest")
	local t = { 
		["PendingWindowInDays"] = _PendingWindowInDays,
		["KeyId"] = _KeyId,
	}
	asserts.AssertScheduleKeyDeletionRequest(t)
	return t
end

keys.TagException = { ["message"] = true, nil }

function asserts.AssertTagException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagException[k], "TagException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagException
-- <p>The request was rejected because one or more tags are not valid.</p>
-- @param _message [ErrorMessageType] 
function M.TagException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTagException(t)
	return t
end

keys.DisableKeyRequest = { ["KeyId"] = true, nil }

function asserts.AssertDisableKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableKeyRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableKeyRequest[k], "DisableKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableKeyRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the CMK.</p> <p>Use the CMK's unique identifier or its Amazon Resource Name (ARN). For example:</p> <ul> <li> <p>Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> <li> <p>ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</p> </li> </ul>
-- Required parameter: KeyId
function M.DisableKeyRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableKeyRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertDisableKeyRequest(t)
	return t
end

keys.CreateGrantRequest = { ["Operations"] = true, ["KeyId"] = true, ["Name"] = true, ["RetiringPrincipal"] = true, ["GranteePrincipal"] = true, ["GrantTokens"] = true, ["Constraints"] = true, nil }

function asserts.AssertCreateGrantRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrantRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["GranteePrincipal"], "Expected key GranteePrincipal to exist in table")
	if struct["Operations"] then asserts.AssertGrantOperationList(struct["Operations"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertGrantNameType(struct["Name"]) end
	if struct["RetiringPrincipal"] then asserts.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	if struct["GranteePrincipal"] then asserts.AssertPrincipalIdType(struct["GranteePrincipal"]) end
	if struct["GrantTokens"] then asserts.AssertGrantTokenList(struct["GrantTokens"]) end
	if struct["Constraints"] then asserts.AssertGrantConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGrantRequest[k], "CreateGrantRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrantRequest
--  
-- @param _Operations [GrantOperationList] <p>A list of operations that the grant permits.</p>
-- @param _KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) that the grant applies to.</p> <p>To specify this value, use the globally unique key ID or the Amazon Resource Name (ARN) of the key. Examples:</p> <ul> <li> <p>Globally unique key ID: 12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Key ARN: arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _Name [GrantNameType] <p>A friendly name for identifying the grant. Use this value to prevent unintended creation of duplicate grants when retrying this request.</p> <p>When this value is absent, all <code>CreateGrant</code> requests result in a new grant with a unique <code>GrantId</code> even if all the supplied parameters are identical. This can result in unintended duplicates when you retry the <code>CreateGrant</code> request.</p> <p>When this value is present, you can retry a <code>CreateGrant</code> request with identical parameters; if the grant already exists, the original <code>GrantId</code> is returned without creating a new grant. Note that the returned grant token is unique with every <code>CreateGrant</code> request, even when a duplicate <code>GrantId</code> is returned. All grant tokens obtained in this way can be used interchangeably.</p>
-- @param _RetiringPrincipal [PrincipalIdType] <p>The principal that is given permission to retire the grant by using <a>RetireGrant</a> operation.</p> <p>To specify the principal, use the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the <i>AWS General Reference</i>.</p>
-- @param _GranteePrincipal [PrincipalIdType] <p>The principal that is given permission to perform the operations that the grant permits.</p> <p>To specify the principal, use the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, IAM roles, federated users, and assumed role users. For examples of the ARN syntax to use for specifying a principal, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam">AWS Identity and Access Management (IAM)</a> in the Example ARNs section of the <i>AWS General Reference</i>.</p>
-- @param _GrantTokens [GrantTokenList] <p>A list of grant tokens.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _Constraints [GrantConstraints] <p>A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- Required parameter: KeyId
-- Required parameter: GranteePrincipal
function M.CreateGrantRequest(_Operations, _KeyId, _Name, _RetiringPrincipal, _GranteePrincipal, _GrantTokens, _Constraints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGrantRequest")
	local t = { 
		["Operations"] = _Operations,
		["KeyId"] = _KeyId,
		["Name"] = _Name,
		["RetiringPrincipal"] = _RetiringPrincipal,
		["GranteePrincipal"] = _GranteePrincipal,
		["GrantTokens"] = _GrantTokens,
		["Constraints"] = _Constraints,
	}
	asserts.AssertCreateGrantRequest(t)
	return t
end

keys.ExpiredImportTokenException = { ["message"] = true, nil }

function asserts.AssertExpiredImportTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredImportTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredImportTokenException[k], "ExpiredImportTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredImportTokenException
-- <p>The request was rejected because the provided import token is expired. Use <a>GetParametersForImport</a> to retrieve a new import token and public key, use the new public key to encrypt the key material, and then try the request again.</p>
-- @param _message [ErrorMessageType] 
function M.ExpiredImportTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredImportTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExpiredImportTokenException(t)
	return t
end

keys.GetKeyRotationStatusRequest = { ["KeyId"] = true, nil }

function asserts.AssertGetKeyRotationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetKeyRotationStatusRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetKeyRotationStatusRequest[k], "GetKeyRotationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetKeyRotationStatusRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- Required parameter: KeyId
function M.GetKeyRotationStatusRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetKeyRotationStatusRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertGetKeyRotationStatusRequest(t)
	return t
end

keys.GetParametersForImportResponse = { ["ParametersValidTo"] = true, ["PublicKey"] = true, ["KeyId"] = true, ["ImportToken"] = true, nil }

function asserts.AssertGetParametersForImportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersForImportResponse to be of type 'table'")
	if struct["ParametersValidTo"] then asserts.AssertDateType(struct["ParametersValidTo"]) end
	if struct["PublicKey"] then asserts.AssertPlaintextType(struct["PublicKey"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["ImportToken"] then asserts.AssertCiphertextType(struct["ImportToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersForImportResponse[k], "GetParametersForImportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersForImportResponse
--  
-- @param _ParametersValidTo [DateType] <p>The time at which the import token and public key are no longer valid. After this time, you cannot use them to make an <a>ImportKeyMaterial</a> request and you must send another <code>GetParametersForImport</code> request to retrieve new ones.</p>
-- @param _PublicKey [PlaintextType] <p>The public key to use to encrypt the key material before importing it with <a>ImportKeyMaterial</a>.</p>
-- @param _KeyId [KeyIdType] <p>The identifier of the CMK to use in a subsequent <a>ImportKeyMaterial</a> request. This is the same CMK specified in the <code>GetParametersForImport</code> request.</p>
-- @param _ImportToken [CiphertextType] <p>The import token to send in a subsequent <a>ImportKeyMaterial</a> request.</p>
function M.GetParametersForImportResponse(_ParametersValidTo, _PublicKey, _KeyId, _ImportToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersForImportResponse")
	local t = { 
		["ParametersValidTo"] = _ParametersValidTo,
		["PublicKey"] = _PublicKey,
		["KeyId"] = _KeyId,
		["ImportToken"] = _ImportToken,
	}
	asserts.AssertGetParametersForImportResponse(t)
	return t
end

keys.ListAliasesRequest = { ["Marker"] = true, ["Limit"] = true, nil }

function asserts.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertMarkerType(struct["Marker"]) end
	if struct["Limit"] then asserts.AssertLimitType(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesRequest[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param _Marker [MarkerType] <p>Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of <code>NextMarker</code> from the truncated response you just received.</p>
-- @param _Limit [LimitType] <p>Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer.</p> <p>This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.</p>
function M.ListAliasesRequest(_Marker, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAliasesRequest")
	local t = { 
		["Marker"] = _Marker,
		["Limit"] = _Limit,
	}
	asserts.AssertListAliasesRequest(t)
	return t
end

keys.InvalidCiphertextException = { ["message"] = true, nil }

function asserts.AssertInvalidCiphertextException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCiphertextException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCiphertextException[k], "InvalidCiphertextException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCiphertextException
-- <p>The request was rejected because the specified ciphertext has been corrupted or is otherwise invalid.</p>
-- @param _message [ErrorMessageType] 
function M.InvalidCiphertextException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCiphertextException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidCiphertextException(t)
	return t
end

keys.TagResourceRequest = { ["KeyId"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the CMK you are tagging. You can use the unique key ID or the Amazon Resource Name (ARN) of the CMK. Examples:</p> <ul> <li> <p>Unique key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> <li> <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code> </p> </li> </ul>
-- @param _Tags [TagList] <p>One or more tags. Each tag consists of a tag key and a tag value.</p>
-- Required parameter: KeyId
-- Required parameter: Tags
function M.TagResourceRequest(_KeyId, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagResourceRequest")
	local t = { 
		["KeyId"] = _KeyId,
		["Tags"] = _Tags,
	}
	asserts.AssertTagResourceRequest(t)
	return t
end

keys.GrantListEntry = { ["Operations"] = true, ["KeyId"] = true, ["Name"] = true, ["RetiringPrincipal"] = true, ["GranteePrincipal"] = true, ["GrantId"] = true, ["IssuingAccount"] = true, ["CreationDate"] = true, ["Constraints"] = true, nil }

function asserts.AssertGrantListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrantListEntry to be of type 'table'")
	if struct["Operations"] then asserts.AssertGrantOperationList(struct["Operations"]) end
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertGrantNameType(struct["Name"]) end
	if struct["RetiringPrincipal"] then asserts.AssertPrincipalIdType(struct["RetiringPrincipal"]) end
	if struct["GranteePrincipal"] then asserts.AssertPrincipalIdType(struct["GranteePrincipal"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	if struct["IssuingAccount"] then asserts.AssertPrincipalIdType(struct["IssuingAccount"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["Constraints"] then asserts.AssertGrantConstraints(struct["Constraints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrantListEntry[k], "GrantListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrantListEntry
-- <p>Contains information about an entry in a list of grants.</p>
-- @param _Operations [GrantOperationList] <p>The list of operations permitted by the grant.</p>
-- @param _KeyId [KeyIdType] <p>The unique identifier for the customer master key (CMK) to which the grant applies.</p>
-- @param _Name [GrantNameType] <p>The friendly name that identifies the grant. If a name was provided in the <a>CreateGrant</a> request, that name is returned. Otherwise this value is null.</p>
-- @param _RetiringPrincipal [PrincipalIdType] <p>The principal that can retire the grant.</p>
-- @param _GranteePrincipal [PrincipalIdType] <p>The principal that receives the grant's permissions.</p>
-- @param _GrantId [GrantIdType] <p>The unique identifier for the grant.</p>
-- @param _IssuingAccount [PrincipalIdType] <p>The AWS account under which the grant was issued.</p>
-- @param _CreationDate [DateType] <p>The date and time when the grant was created.</p>
-- @param _Constraints [GrantConstraints] <p>A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows.</p>
function M.GrantListEntry(_Operations, _KeyId, _Name, _RetiringPrincipal, _GranteePrincipal, _GrantId, _IssuingAccount, _CreationDate, _Constraints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GrantListEntry")
	local t = { 
		["Operations"] = _Operations,
		["KeyId"] = _KeyId,
		["Name"] = _Name,
		["RetiringPrincipal"] = _RetiringPrincipal,
		["GranteePrincipal"] = _GranteePrincipal,
		["GrantId"] = _GrantId,
		["IssuingAccount"] = _IssuingAccount,
		["CreationDate"] = _CreationDate,
		["Constraints"] = _Constraints,
	}
	asserts.AssertGrantListEntry(t)
	return t
end

keys.CreateGrantResponse = { ["GrantToken"] = true, ["GrantId"] = true, nil }

function asserts.AssertCreateGrantResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrantResponse to be of type 'table'")
	if struct["GrantToken"] then asserts.AssertGrantTokenType(struct["GrantToken"]) end
	if struct["GrantId"] then asserts.AssertGrantIdType(struct["GrantId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGrantResponse[k], "CreateGrantResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrantResponse
--  
-- @param _GrantToken [GrantTokenType] <p>The grant token.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token">Grant Tokens</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-- @param _GrantId [GrantIdType] <p>The unique identifier for the grant.</p> <p>You can use the <code>GrantId</code> in a subsequent <a>RetireGrant</a> or <a>RevokeGrant</a> operation.</p>
function M.CreateGrantResponse(_GrantToken, _GrantId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGrantResponse")
	local t = { 
		["GrantToken"] = _GrantToken,
		["GrantId"] = _GrantId,
	}
	asserts.AssertCreateGrantResponse(t)
	return t
end

keys.ListGrantsResponse = { ["NextMarker"] = true, ["Grants"] = true, ["Truncated"] = true, nil }

function asserts.AssertListGrantsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGrantsResponse to be of type 'table'")
	if struct["NextMarker"] then asserts.AssertMarkerType(struct["NextMarker"]) end
	if struct["Grants"] then asserts.AssertGrantList(struct["Grants"]) end
	if struct["Truncated"] then asserts.AssertBooleanType(struct["Truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGrantsResponse[k], "ListGrantsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGrantsResponse
--  
-- @param _NextMarker [MarkerType] <p>When <code>Truncated</code> is true, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent request.</p>
-- @param _Grants [GrantList] <p>A list of grants.</p>
-- @param _Truncated [BooleanType] <p>A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To retrieve more items, pass the value of the <code>NextMarker</code> element in this response to the <code>Marker</code> parameter in a subsequent request.</p>
function M.ListGrantsResponse(_NextMarker, _Grants, _Truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGrantsResponse")
	local t = { 
		["NextMarker"] = _NextMarker,
		["Grants"] = _Grants,
		["Truncated"] = _Truncated,
	}
	asserts.AssertListGrantsResponse(t)
	return t
end

keys.KMSInternalException = { ["message"] = true, nil }

function asserts.AssertKMSInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KMSInternalException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KMSInternalException[k], "KMSInternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KMSInternalException
-- <p>The request was rejected because an internal exception occurred. The request can be retried.</p>
-- @param _message [ErrorMessageType] 
function M.KMSInternalException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KMSInternalException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertKMSInternalException(t)
	return t
end

keys.DescribeKeyResponse = { ["KeyMetadata"] = true, nil }

function asserts.AssertDescribeKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeKeyResponse to be of type 'table'")
	if struct["KeyMetadata"] then asserts.AssertKeyMetadata(struct["KeyMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeKeyResponse[k], "DescribeKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeKeyResponse
--  
-- @param _KeyMetadata [KeyMetadata] <p>Metadata associated with the key.</p>
function M.DescribeKeyResponse(_KeyMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeKeyResponse")
	local t = { 
		["KeyMetadata"] = _KeyMetadata,
	}
	asserts.AssertDescribeKeyResponse(t)
	return t
end

keys.InvalidImportTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidImportTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidImportTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessageType(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidImportTokenException[k], "InvalidImportTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidImportTokenException
-- <p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>
-- @param _message [ErrorMessageType] 
function M.InvalidImportTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidImportTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidImportTokenException(t)
	return t
end

keys.DisableKeyRotationRequest = { ["KeyId"] = true, nil }

function asserts.AssertDisableKeyRotationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableKeyRotationRequest to be of type 'table'")
	assert(struct["KeyId"], "Expected key KeyId to exist in table")
	if struct["KeyId"] then asserts.AssertKeyIdType(struct["KeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableKeyRotationRequest[k], "DisableKeyRotationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableKeyRotationRequest
--  
-- @param _KeyId [KeyIdType] <p>A unique identifier for the customer master key. This value can be a globally unique identifier or the fully specified ARN to a key.</p> <ul> <li> <p>Key ARN Example - arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>Globally Unique Key ID Example - 12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- Required parameter: KeyId
function M.DisableKeyRotationRequest(_KeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableKeyRotationRequest")
	local t = { 
		["KeyId"] = _KeyId,
	}
	asserts.AssertDisableKeyRotationRequest(t)
	return t
end

function asserts.AssertTagKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKeyType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKeyType(str)
	asserts.AssertTagKeyType(str)
	return str
end

function asserts.AssertDataKeySpec(str)
	assert(str)
	assert(type(str) == "string", "Expected DataKeySpec to be of type 'string'")
end

--  
function M.DataKeySpec(str)
	asserts.AssertDataKeySpec(str)
	return str
end

function asserts.AssertEncryptionContextValue(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionContextValue to be of type 'string'")
end

--  
function M.EncryptionContextValue(str)
	asserts.AssertEncryptionContextValue(str)
	return str
end

function asserts.AssertKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyIdType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeyIdType(str)
	asserts.AssertKeyIdType(str)
	return str
end

function asserts.AssertAWSAccountIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSAccountIdType to be of type 'string'")
end

--  
function M.AWSAccountIdType(str)
	asserts.AssertAWSAccountIdType(str)
	return str
end

function asserts.AssertKeyState(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyState to be of type 'string'")
end

--  
function M.KeyState(str)
	asserts.AssertKeyState(str)
	return str
end

function asserts.AssertAlgorithmSpec(str)
	assert(str)
	assert(type(str) == "string", "Expected AlgorithmSpec to be of type 'string'")
end

--  
function M.AlgorithmSpec(str)
	asserts.AssertAlgorithmSpec(str)
	return str
end

function asserts.AssertPrincipalIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalIdType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PrincipalIdType(str)
	asserts.AssertPrincipalIdType(str)
	return str
end

function asserts.AssertGrantNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantNameType(str)
	asserts.AssertGrantNameType(str)
	return str
end

function asserts.AssertWrappingKeySpec(str)
	assert(str)
	assert(type(str) == "string", "Expected WrappingKeySpec to be of type 'string'")
end

--  
function M.WrappingKeySpec(str)
	asserts.AssertWrappingKeySpec(str)
	return str
end

function asserts.AssertGrantIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantIdType(str)
	asserts.AssertGrantIdType(str)
	return str
end

function asserts.AssertTagValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValueType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValueType(str)
	asserts.AssertTagValueType(str)
	return str
end

function asserts.AssertGrantOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantOperation to be of type 'string'")
end

--  
function M.GrantOperation(str)
	asserts.AssertGrantOperation(str)
	return str
end

function asserts.AssertDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionType to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.DescriptionType(str)
	asserts.AssertDescriptionType(str)
	return str
end

function asserts.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
	assert(#str <= 131072, "Expected string to be max 131072 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyType(str)
	asserts.AssertPolicyType(str)
	return str
end

function asserts.AssertGrantTokenType(str)
	assert(str)
	assert(type(str) == "string", "Expected GrantTokenType to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrantTokenType(str)
	asserts.AssertGrantTokenType(str)
	return str
end

function asserts.AssertErrorMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessageType to be of type 'string'")
end

--  
function M.ErrorMessageType(str)
	asserts.AssertErrorMessageType(str)
	return str
end

function asserts.AssertMarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerType to be of type 'string'")
	assert(#str <= 320, "Expected string to be max 320 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MarkerType(str)
	asserts.AssertMarkerType(str)
	return str
end

function asserts.AssertArnType(str)
	assert(str)
	assert(type(str) == "string", "Expected ArnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ArnType(str)
	asserts.AssertArnType(str)
	return str
end

function asserts.AssertPolicyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyNameType(str)
	asserts.AssertPolicyNameType(str)
	return str
end

function asserts.AssertKeyUsageType(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyUsageType to be of type 'string'")
end

--  
function M.KeyUsageType(str)
	asserts.AssertKeyUsageType(str)
	return str
end

function asserts.AssertOriginType(str)
	assert(str)
	assert(type(str) == "string", "Expected OriginType to be of type 'string'")
end

--  
function M.OriginType(str)
	asserts.AssertOriginType(str)
	return str
end

function asserts.AssertEncryptionContextKey(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionContextKey to be of type 'string'")
end

--  
function M.EncryptionContextKey(str)
	asserts.AssertEncryptionContextKey(str)
	return str
end

function asserts.AssertExpirationModelType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExpirationModelType to be of type 'string'")
end

--  
function M.ExpirationModelType(str)
	asserts.AssertExpirationModelType(str)
	return str
end

function asserts.AssertAliasNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AliasNameType(str)
	asserts.AssertAliasNameType(str)
	return str
end

function asserts.AssertLimitType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitType(integer)
	asserts.AssertLimitType(integer)
	return integer
end

function asserts.AssertNumberOfBytesType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumberOfBytesType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1024, "Expected integer to be max 1024")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NumberOfBytesType(integer)
	asserts.AssertNumberOfBytesType(integer)
	return integer
end

function asserts.AssertPendingWindowInDaysType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PendingWindowInDaysType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 365, "Expected integer to be max 365")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PendingWindowInDaysType(integer)
	asserts.AssertPendingWindowInDaysType(integer)
	return integer
end

function asserts.AssertBooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanType to be of type 'boolean'")
end

function M.BooleanType(boolean)
	asserts.AssertBooleanType(boolean)
	return boolean
end

function asserts.AssertEncryptionContextType(map)
	assert(map)
	assert(type(map) == "table", "Expected EncryptionContextType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertEncryptionContextKey(k)
		asserts.AssertEncryptionContextValue(v)
	end
end

function M.EncryptionContextType(map)
	asserts.AssertEncryptionContextType(map)
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

function asserts.AssertCiphertextType(blob)
	assert(blob)
	assert(type(string) == "string", "Expected CiphertextType to be of type 'string'")
	assert(#blob <= 6144, "Expected blob to be max 6144")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.CiphertextType(blob)
	asserts.AssertCiphertextType(blob)
	return blob
end

function asserts.AssertPlaintextType(blob)
	assert(blob)
	assert(type(string) == "string", "Expected PlaintextType to be of type 'string'")
	assert(#blob <= 4096, "Expected blob to be max 4096")
	assert(#blob >= 1, "Expected blob to be max 1")
end

function M.PlaintextType(blob)
	asserts.AssertPlaintextType(blob)
	return blob
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKeyType(v)
	end
end

--  
-- List of TagKeyType objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAliasListEntry(v)
	end
end

--  
-- List of AliasListEntry objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end

function asserts.AssertGrantList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGrantListEntry(v)
	end
end

--  
-- List of GrantListEntry objects
function M.GrantList(list)
	asserts.AssertGrantList(list)
	return list
end

function asserts.AssertGrantTokenList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantTokenList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertGrantTokenType(v)
	end
end

--  
-- List of GrantTokenType objects
function M.GrantTokenList(list)
	asserts.AssertGrantTokenList(list)
	return list
end

function asserts.AssertPolicyNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyNameType(v)
	end
end

--  
-- List of PolicyNameType objects
function M.PolicyNameList(list)
	asserts.AssertPolicyNameList(list)
	return list
end

function asserts.AssertGrantOperationList(list)
	assert(list)
	assert(type(list) == "table", "Expected GrantOperationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGrantOperation(v)
	end
end

--  
-- List of GrantOperation objects
function M.GrantOperationList(list)
	asserts.AssertGrantOperationList(list)
	return list
end

function asserts.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertKeyListEntry(v)
	end
end

--  
-- List of KeyListEntry objects
function M.KeyList(list)
	asserts.AssertKeyList(list)
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
			return "kms.amazonaws.com"
		end
	end
	local ss = { "kms" }
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
--- Encrypt
-- @param EncryptRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EncryptAsync(EncryptRequest, cb)
	assert(EncryptRequest, "You must provide a EncryptRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.Encrypt",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EncryptRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Decrypt
-- @param DecryptRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DecryptAsync(DecryptRequest, cb)
	assert(DecryptRequest, "You must provide a DecryptRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.Decrypt",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DecryptRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAlias
-- @param UpdateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAliasAsync(UpdateAliasRequest, cb)
	assert(UpdateAliasRequest, "You must provide a UpdateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.UpdateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ImportKeyMaterial
-- @param ImportKeyMaterialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ImportKeyMaterialAsync(ImportKeyMaterialRequest, cb)
	assert(ImportKeyMaterialRequest, "You must provide a ImportKeyMaterialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ImportKeyMaterial",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ImportKeyMaterialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableKey
-- @param DisableKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableKeyAsync(DisableKeyRequest, cb)
	assert(DisableKeyRequest, "You must provide a DisableKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DisableKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateDataKeyWithoutPlaintext
-- @param GenerateDataKeyWithoutPlaintextRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateDataKeyWithoutPlaintextAsync(GenerateDataKeyWithoutPlaintextRequest, cb)
	assert(GenerateDataKeyWithoutPlaintextRequest, "You must provide a GenerateDataKeyWithoutPlaintextRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GenerateDataKeyWithoutPlaintext",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateDataKeyWithoutPlaintextRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateDataKey
-- @param GenerateDataKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateDataKeyAsync(GenerateDataKeyRequest, cb)
	assert(GenerateDataKeyRequest, "You must provide a GenerateDataKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GenerateDataKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateDataKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListResourceTags
-- @param ListResourceTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourceTagsAsync(ListResourceTagsRequest, cb)
	assert(ListResourceTagsRequest, "You must provide a ListResourceTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListResourceTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListResourceTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAliases
-- @param ListAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListAliases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAliasesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelKeyDeletion
-- @param CancelKeyDeletionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelKeyDeletionAsync(CancelKeyDeletionRequest, cb)
	assert(CancelKeyDeletionRequest, "You must provide a CancelKeyDeletionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CancelKeyDeletion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelKeyDeletionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetKeyRotationStatus
-- @param GetKeyRotationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyRotationStatusAsync(GetKeyRotationStatusRequest, cb)
	assert(GetKeyRotationStatusRequest, "You must provide a GetKeyRotationStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GetKeyRotationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetKeyRotationStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListKeyPolicies
-- @param ListKeyPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListKeyPoliciesAsync(ListKeyPoliciesRequest, cb)
	assert(ListKeyPoliciesRequest, "You must provide a ListKeyPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListKeyPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListKeyPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAlias
-- @param DeleteAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DeleteAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RetireGrant
-- @param RetireGrantRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RetireGrantAsync(RetireGrantRequest, cb)
	assert(RetireGrantRequest, "You must provide a RetireGrantRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.RetireGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RetireGrantRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagResource
-- @param TagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.TagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeKey
-- @param DescribeKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeKeyAsync(DescribeKeyRequest, cb)
	assert(DescribeKeyRequest, "You must provide a DescribeKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DescribeKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListKeys
-- @param ListKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListKeysAsync(ListKeysRequest, cb)
	assert(ListKeysRequest, "You must provide a ListKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateRandom
-- @param GenerateRandomRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateRandomAsync(GenerateRandomRequest, cb)
	assert(GenerateRandomRequest, "You must provide a GenerateRandomRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GenerateRandom",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GenerateRandomRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetKeyPolicy
-- @param GetKeyPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetKeyPolicyAsync(GetKeyPolicyRequest, cb)
	assert(GetKeyPolicyRequest, "You must provide a GetKeyPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GetKeyPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetKeyPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGrant
-- @param CreateGrantRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGrantAsync(CreateGrantRequest, cb)
	assert(CreateGrantRequest, "You must provide a CreateGrantRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CreateGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateGrantRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateKey
-- @param CreateKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateKeyAsync(CreateKeyRequest, cb)
	assert(CreateKeyRequest, "You must provide a CreateKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CreateKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReEncrypt
-- @param ReEncryptRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReEncryptAsync(ReEncryptRequest, cb)
	assert(ReEncryptRequest, "You must provide a ReEncryptRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ReEncrypt",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReEncryptRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetParametersForImport
-- @param GetParametersForImportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParametersForImportAsync(GetParametersForImportRequest, cb)
	assert(GetParametersForImportRequest, "You must provide a GetParametersForImportRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.GetParametersForImport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetParametersForImportRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableKeyRotation
-- @param DisableKeyRotationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableKeyRotationAsync(DisableKeyRotationRequest, cb)
	assert(DisableKeyRotationRequest, "You must provide a DisableKeyRotationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DisableKeyRotation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableKeyRotationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRetirableGrants
-- @param ListRetirableGrantsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRetirableGrantsAsync(ListRetirableGrantsRequest, cb)
	assert(ListRetirableGrantsRequest, "You must provide a ListRetirableGrantsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListRetirableGrants",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRetirableGrantsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ScheduleKeyDeletion
-- @param ScheduleKeyDeletionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ScheduleKeyDeletionAsync(ScheduleKeyDeletionRequest, cb)
	assert(ScheduleKeyDeletionRequest, "You must provide a ScheduleKeyDeletionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ScheduleKeyDeletion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ScheduleKeyDeletionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAlias
-- @param CreateAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.CreateAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableKeyRotation
-- @param EnableKeyRotationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableKeyRotationAsync(EnableKeyRotationRequest, cb)
	assert(EnableKeyRotationRequest, "You must provide a EnableKeyRotationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.EnableKeyRotation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableKeyRotationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagResource
-- @param UntagResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.UntagResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGrants
-- @param ListGrantsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGrantsAsync(ListGrantsRequest, cb)
	assert(ListGrantsRequest, "You must provide a ListGrantsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.ListGrants",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGrantsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableKey
-- @param EnableKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableKeyAsync(EnableKeyRequest, cb)
	assert(EnableKeyRequest, "You must provide a EnableKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.EnableKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteImportedKeyMaterial
-- @param DeleteImportedKeyMaterialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteImportedKeyMaterialAsync(DeleteImportedKeyMaterialRequest, cb)
	assert(DeleteImportedKeyMaterialRequest, "You must provide a DeleteImportedKeyMaterialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.DeleteImportedKeyMaterial",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteImportedKeyMaterialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateKeyDescription
-- @param UpdateKeyDescriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateKeyDescriptionAsync(UpdateKeyDescriptionRequest, cb)
	assert(UpdateKeyDescriptionRequest, "You must provide a UpdateKeyDescriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.UpdateKeyDescription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateKeyDescriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RevokeGrant
-- @param RevokeGrantRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RevokeGrantAsync(RevokeGrantRequest, cb)
	assert(RevokeGrantRequest, "You must provide a RevokeGrantRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.RevokeGrant",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RevokeGrantRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutKeyPolicy
-- @param PutKeyPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutKeyPolicyAsync(PutKeyPolicyRequest, cb)
	assert(PutKeyPolicyRequest, "You must provide a PutKeyPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "TrentService.PutKeyPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutKeyPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
