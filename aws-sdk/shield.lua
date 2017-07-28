--- GENERATED CODE - DO NOT MODIFY
-- AWS Shield (shield-2016-06-02)

local M = {}

M.metadata = {
	api_version = "2016-06-02",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "shield",
	service_abbreviation = "AWS Shield",
	service_full_name = "AWS Shield",
	signature_version = "v4",
	target_prefix = "AWSShield_20160616",
	timestamp_format = "",
	global_endpoint = "",
	uid = "shield-2016-06-02",
}

local keys = {}
local asserts = {}

keys.DeleteProtectionRequest = { ["ProtectionId"] = true, nil }

function asserts.AssertDeleteProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProtectionRequest to be of type 'table'")
	assert(struct["ProtectionId"], "Expected key ProtectionId to exist in table")
	if struct["ProtectionId"] then asserts.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProtectionRequest[k], "DeleteProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProtectionRequest
--  
-- @param _ProtectionId [ProtectionId] <p>The unique identifier (ID) for the <a>Protection</a> object to be deleted.</p>
-- Required parameter: ProtectionId
function M.DeleteProtectionRequest(_ProtectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProtectionRequest")
	local t = { 
		["ProtectionId"] = _ProtectionId,
	}
	asserts.AssertDeleteProtectionRequest(t)
	return t
end

keys.ListProtectionsResponse = { ["Protections"] = true, ["NextToken"] = true, nil }

function asserts.AssertListProtectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProtectionsResponse to be of type 'table'")
	if struct["Protections"] then asserts.AssertProtections(struct["Protections"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProtectionsResponse[k], "ListProtectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProtectionsResponse
--  
-- @param _Protections [Protections] <p>The array of enabled <a>Protection</a> objects.</p>
-- @param _NextToken [Token] <p>If you specify a value for <code>MaxResults</code> and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections.</p>
function M.ListProtectionsResponse(_Protections, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProtectionsResponse")
	local t = { 
		["Protections"] = _Protections,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListProtectionsResponse(t)
	return t
end

keys.DescribeAttackRequest = { ["AttackId"] = true, nil }

function asserts.AssertDescribeAttackRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttackRequest to be of type 'table'")
	assert(struct["AttackId"], "Expected key AttackId to exist in table")
	if struct["AttackId"] then asserts.AssertAttackId(struct["AttackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttackRequest[k], "DescribeAttackRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttackRequest
--  
-- @param _AttackId [AttackId] <p>The unique identifier (ID) for the attack that to be described.</p>
-- Required parameter: AttackId
function M.DescribeAttackRequest(_AttackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttackRequest")
	local t = { 
		["AttackId"] = _AttackId,
	}
	asserts.AssertDescribeAttackRequest(t)
	return t
end

keys.TimeRange = { ["FromInclusive"] = true, ["ToExclusive"] = true, nil }

function asserts.AssertTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeRange to be of type 'table'")
	if struct["FromInclusive"] then asserts.AssertAttackTimestamp(struct["FromInclusive"]) end
	if struct["ToExclusive"] then asserts.AssertAttackTimestamp(struct["ToExclusive"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimeRange[k], "TimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeRange
-- <p>The time range.</p>
-- @param _FromInclusive [AttackTimestamp] <p>The start time, in the format 2016-12-16T13:50Z.</p>
-- @param _ToExclusive [AttackTimestamp] <p>The end time, in the format 2016-12-16T15:50Z.</p>
function M.TimeRange(_FromInclusive, _ToExclusive, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeRange")
	local t = { 
		["FromInclusive"] = _FromInclusive,
		["ToExclusive"] = _ToExclusive,
	}
	asserts.AssertTimeRange(t)
	return t
end

keys.DescribeSubscriptionResponse = { ["Subscription"] = true, nil }

function asserts.AssertDescribeSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionResponse to be of type 'table'")
	if struct["Subscription"] then asserts.AssertSubscription(struct["Subscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscriptionResponse[k], "DescribeSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionResponse
--  
-- @param _Subscription [Subscription] <p>The AWS Shield Advanced subscription details for an account.</p>
function M.DescribeSubscriptionResponse(_Subscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscriptionResponse")
	local t = { 
		["Subscription"] = _Subscription,
	}
	asserts.AssertDescribeSubscriptionResponse(t)
	return t
end

keys.Mitigation = { ["MitigationName"] = true, nil }

function asserts.AssertMitigation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mitigation to be of type 'table'")
	if struct["MitigationName"] then asserts.AssertString(struct["MitigationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mitigation[k], "Mitigation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mitigation
-- <p>The mitigation applied to a DDoS attack.</p>
-- @param _MitigationName [String] <p>The name of the mitigation taken for this attack.</p>
function M.Mitigation(_MitigationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Mitigation")
	local t = { 
		["MitigationName"] = _MitigationName,
	}
	asserts.AssertMitigation(t)
	return t
end

keys.InternalErrorException = { ["message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>
-- @param _message [errorMessage] 
function M.InternalErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalErrorException(t)
	return t
end

keys.ListAttacksResponse = { ["NextToken"] = true, ["AttackSummaries"] = true, nil }

function asserts.AssertListAttacksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttacksResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["AttackSummaries"] then asserts.AssertAttackSummaries(struct["AttackSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttacksResponse[k], "ListAttacksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttacksResponse
--  
-- @param _NextToken [Token] <p>The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the <code>NextMarker</code> parameter in a subsequent call to <code>ListAttacks</code> to retrieve the next set of items.</p>
-- @param _AttackSummaries [AttackSummaries] <p>The attack information for the specified time range.</p>
function M.ListAttacksResponse(_NextToken, _AttackSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttacksResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["AttackSummaries"] = _AttackSummaries,
	}
	asserts.AssertListAttacksResponse(t)
	return t
end

keys.ListAttacksRequest = { ["NextToken"] = true, ["EndTime"] = true, ["ResourceArns"] = true, ["MaxResults"] = true, ["StartTime"] = true, nil }

function asserts.AssertListAttacksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttacksRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["EndTime"] then asserts.AssertTimeRange(struct["EndTime"]) end
	if struct["ResourceArns"] then asserts.AssertResourceArnFilterList(struct["ResourceArns"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["StartTime"] then asserts.AssertTimeRange(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttacksRequest[k], "ListAttacksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttacksRequest
--  
-- @param _NextToken [Token] <p>The <code>ListAttacksRequest.NextMarker</code> value from a previous call to <code>ListAttacksRequest</code>. Pass null if this is the first call.</p>
-- @param _EndTime [TimeRange] <p>The end of the time period for the attacks.</p>
-- @param _ResourceArns [ResourceArnFilterList] <p>The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.</p>
-- @param _MaxResults [MaxResults] <p>The maximum number of <a>AttackSummary</a> objects to be returned. If this is left blank, the first 20 results will be returned.</p>
-- @param _StartTime [TimeRange] <p>The time period for the attacks.</p>
function M.ListAttacksRequest(_NextToken, _EndTime, _ResourceArns, _MaxResults, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttacksRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["EndTime"] = _EndTime,
		["ResourceArns"] = _ResourceArns,
		["MaxResults"] = _MaxResults,
		["StartTime"] = _StartTime,
	}
	asserts.AssertListAttacksRequest(t)
	return t
end

keys.LockedSubscriptionException = { ["message"] = true, nil }

function asserts.AssertLockedSubscriptionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LockedSubscriptionException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LockedSubscriptionException[k], "LockedSubscriptionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LockedSubscriptionException
-- <p>Exception that indicates that the subscription has been modified by another client. You can retry the request.</p>
-- @param _message [errorMessage] 
function M.LockedSubscriptionException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LockedSubscriptionException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLockedSubscriptionException(t)
	return t
end

keys.DeleteSubscriptionRequest = { nil }

function asserts.AssertDeleteSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionRequest[k], "DeleteSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionRequest
--  
function M.DeleteSubscriptionRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionRequest")
	local t = { 
	}
	asserts.AssertDeleteSubscriptionRequest(t)
	return t
end

keys.CreateProtectionResponse = { ["ProtectionId"] = true, nil }

function asserts.AssertCreateProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProtectionResponse to be of type 'table'")
	if struct["ProtectionId"] then asserts.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProtectionResponse[k], "CreateProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProtectionResponse
--  
-- @param _ProtectionId [ProtectionId] <p>The unique identifier (ID) for the <a>Protection</a> object that is created.</p>
function M.CreateProtectionResponse(_ProtectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProtectionResponse")
	local t = { 
		["ProtectionId"] = _ProtectionId,
	}
	asserts.AssertCreateProtectionResponse(t)
	return t
end

keys.ListProtectionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListProtectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProtectionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProtectionsRequest[k], "ListProtectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProtectionsRequest
--  
-- @param _NextToken [Token] <p>The <code>ListProtectionsRequest.NextToken</code> value from a previous call to <code>ListProtections</code>. Pass null if this is the first call.</p>
-- @param _MaxResults [MaxResults] <p>The maximum number of <a>Protection</a> objects to be returned. If this is left blank the first 20 results will be returned.</p>
function M.ListProtectionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListProtectionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListProtectionsRequest(t)
	return t
end

keys.LimitsExceededException = { ["Limit"] = true, ["message"] = true, ["Type"] = true, nil }

function asserts.AssertLimitsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitsExceededException to be of type 'table'")
	if struct["Limit"] then asserts.AssertLimitNumber(struct["Limit"]) end
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	if struct["Type"] then asserts.AssertLimitType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitsExceededException[k], "LimitsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitsExceededException
-- <p>Exception that indicates that the operation would exceed a limit.</p>
-- @param _Limit [LimitNumber] 
-- @param _message [errorMessage] 
-- @param _Type [LimitType] 
function M.LimitsExceededException(_Limit, _message, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitsExceededException")
	local t = { 
		["Limit"] = _Limit,
		["message"] = _message,
		["Type"] = _Type,
	}
	asserts.AssertLimitsExceededException(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>Exception that indicates that the parameters passed to the API are invalid. </p>
-- @param _message [errorMessage] 
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.DescribeSubscriptionRequest = { nil }

function asserts.AssertDescribeSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscriptionRequest[k], "DescribeSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionRequest
--  
function M.DescribeSubscriptionRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscriptionRequest")
	local t = { 
	}
	asserts.AssertDescribeSubscriptionRequest(t)
	return t
end

keys.Protection = { ["ResourceArn"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertProtection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Protection to be of type 'table'")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Id"] then asserts.AssertProtectionId(struct["Id"]) end
	if struct["Name"] then asserts.AssertProtectionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Protection[k], "Protection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Protection
-- <p>An object that represents a resource that is under DDoS protection.</p>
-- @param _ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the AWS resource that is protected.</p>
-- @param _Id [ProtectionId] <p>The unique identifier (ID) of the protection.</p>
-- @param _Name [ProtectionName] <p>The friendly name of the protection. For example, <code>My CloudFront distributions</code>.</p>
function M.Protection(_ResourceArn, _Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Protection")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["Id"] = _Id,
		["Name"] = _Name,
	}
	asserts.AssertProtection(t)
	return t
end

keys.DeleteSubscriptionResponse = { nil }

function asserts.AssertDeleteSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionResponse[k], "DeleteSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionResponse
--  
function M.DeleteSubscriptionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionResponse")
	local t = { 
	}
	asserts.AssertDeleteSubscriptionResponse(t)
	return t
end

keys.CreateProtectionRequest = { ["ResourceArn"] = true, ["Name"] = true, nil }

function asserts.AssertCreateProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProtectionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ResourceArn"], "Expected key ResourceArn to exist in table")
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["Name"] then asserts.AssertProtectionName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProtectionRequest[k], "CreateProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProtectionRequest
--  
-- @param _ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource to be protected.</p>
-- @param _Name [ProtectionName] <p>Friendly name for the <code>Protection</code> you are creating.</p>
-- Required parameter: Name
-- Required parameter: ResourceArn
function M.CreateProtectionRequest(_ResourceArn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateProtectionRequest")
	local t = { 
		["ResourceArn"] = _ResourceArn,
		["Name"] = _Name,
	}
	asserts.AssertCreateProtectionRequest(t)
	return t
end

keys.InvalidOperationException = { ["message"] = true, nil }

function asserts.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOperationException[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>Exception that indicates that the operation would not cause any change to occur.</p>
-- @param _message [errorMessage] 
function M.InvalidOperationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidOperationException(t)
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
-- <p>Exception indicating the specified resource does not exist.</p>
-- @param _message [errorMessage] 
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.Subscription = { ["StartTime"] = true, ["TimeCommitmentInSeconds"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["TimeCommitmentInSeconds"] then asserts.AssertDurationInSeconds(struct["TimeCommitmentInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscription[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- <p>Information about the AWS Shield Advanced subscription for an account.</p>
-- @param _StartTime [Timestamp] <p>The start time of the subscription, in the format "2016-12-16T13:50Z".</p>
-- @param _TimeCommitmentInSeconds [DurationInSeconds] <p>The length, in seconds, of the AWS Shield Advanced subscription for the account.</p>
function M.Subscription(_StartTime, _TimeCommitmentInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["StartTime"] = _StartTime,
		["TimeCommitmentInSeconds"] = _TimeCommitmentInSeconds,
	}
	asserts.AssertSubscription(t)
	return t
end

keys.SubResourceSummary = { ["Counters"] = true, ["Type"] = true, ["Id"] = true, ["AttackVectors"] = true, nil }

function asserts.AssertSubResourceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubResourceSummary to be of type 'table'")
	if struct["Counters"] then asserts.AssertSummarizedCounterList(struct["Counters"]) end
	if struct["Type"] then asserts.AssertSubResourceType(struct["Type"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	if struct["AttackVectors"] then asserts.AssertSummarizedAttackVectorList(struct["AttackVectors"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubResourceSummary[k], "SubResourceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubResourceSummary
-- <p>The attack information for the specified SubResource.</p>
-- @param _Counters [SummarizedCounterList] <p>The counters that describe the details of the attack.</p>
-- @param _Type [SubResourceType] <p>The <code>SubResource</code> type.</p>
-- @param _Id [String] <p>The unique identifier (ID) of the <code>SubResource</code>.</p>
-- @param _AttackVectors [SummarizedAttackVectorList] <p>The list of attack types and associated counters.</p>
function M.SubResourceSummary(_Counters, _Type, _Id, _AttackVectors, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubResourceSummary")
	local t = { 
		["Counters"] = _Counters,
		["Type"] = _Type,
		["Id"] = _Id,
		["AttackVectors"] = _AttackVectors,
	}
	asserts.AssertSubResourceSummary(t)
	return t
end

keys.AttackSummary = { ["EndTime"] = true, ["ResourceArn"] = true, ["AttackId"] = true, ["AttackVectors"] = true, ["StartTime"] = true, nil }

function asserts.AssertAttackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackSummary to be of type 'table'")
	if struct["EndTime"] then asserts.AssertAttackTimestamp(struct["EndTime"]) end
	if struct["ResourceArn"] then asserts.AssertString(struct["ResourceArn"]) end
	if struct["AttackId"] then asserts.AssertString(struct["AttackId"]) end
	if struct["AttackVectors"] then asserts.AssertAttackVectorDescriptionList(struct["AttackVectors"]) end
	if struct["StartTime"] then asserts.AssertAttackTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackSummary[k], "AttackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackSummary
-- <p>Summarizes all DDoS attacks for a specified time period.</p>
-- @param _EndTime [AttackTimestamp] <p>The end time of the attack, in the format 2016-12-16T13:50Z.</p>
-- @param _ResourceArn [String] <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
-- @param _AttackId [String] <p>The unique identifier (ID) of the attack.</p>
-- @param _AttackVectors [AttackVectorDescriptionList] <p>The list of attacks for a specified time period.</p>
-- @param _StartTime [AttackTimestamp] <p>The start time of the attack, in the format 2016-12-16T13:50Z.</p>
function M.AttackSummary(_EndTime, _ResourceArn, _AttackId, _AttackVectors, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttackSummary")
	local t = { 
		["EndTime"] = _EndTime,
		["ResourceArn"] = _ResourceArn,
		["AttackId"] = _AttackId,
		["AttackVectors"] = _AttackVectors,
		["StartTime"] = _StartTime,
	}
	asserts.AssertAttackSummary(t)
	return t
end

keys.AttackDetail = { ["Mitigations"] = true, ["ResourceArn"] = true, ["AttackId"] = true, ["SubResources"] = true, ["StartTime"] = true, ["EndTime"] = true, ["AttackCounters"] = true, nil }

function asserts.AssertAttackDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackDetail to be of type 'table'")
	if struct["Mitigations"] then asserts.AssertMitigationList(struct["Mitigations"]) end
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	if struct["AttackId"] then asserts.AssertAttackId(struct["AttackId"]) end
	if struct["SubResources"] then asserts.AssertSubResourceSummaryList(struct["SubResources"]) end
	if struct["StartTime"] then asserts.AssertAttackTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertAttackTimestamp(struct["EndTime"]) end
	if struct["AttackCounters"] then asserts.AssertSummarizedCounterList(struct["AttackCounters"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackDetail[k], "AttackDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackDetail
-- <p>The details of a DDoS attack.</p>
-- @param _Mitigations [MitigationList] <p>List of mitigation actions taken for the attack.</p>
-- @param _ResourceArn [ResourceArn] <p>The ARN (Amazon Resource Name) of the resource that was attacked.</p>
-- @param _AttackId [AttackId] <p>The unique identifier (ID) of the attack.</p>
-- @param _SubResources [SubResourceSummaryList] <p>If applicable, additional detail about the resource being attacked, for example, IP address or URL.</p>
-- @param _StartTime [AttackTimestamp] <p>The time the attack started, in the format 2016-12-16T13:50Z.</p>
-- @param _EndTime [AttackTimestamp] <p>The time the attack ended, in the format 2016-12-16T13:50Z.</p>
-- @param _AttackCounters [SummarizedCounterList] <p>List of counters that describe the attack for the specified time period.</p>
function M.AttackDetail(_Mitigations, _ResourceArn, _AttackId, _SubResources, _StartTime, _EndTime, _AttackCounters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttackDetail")
	local t = { 
		["Mitigations"] = _Mitigations,
		["ResourceArn"] = _ResourceArn,
		["AttackId"] = _AttackId,
		["SubResources"] = _SubResources,
		["StartTime"] = _StartTime,
		["EndTime"] = _EndTime,
		["AttackCounters"] = _AttackCounters,
	}
	asserts.AssertAttackDetail(t)
	return t
end

keys.OptimisticLockException = { ["message"] = true, nil }

function asserts.AssertOptimisticLockException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptimisticLockException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptimisticLockException[k], "OptimisticLockException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptimisticLockException
-- <p>Exception that indicates that the protection state has been modified by another client. You can retry the request.</p>
-- @param _message [errorMessage] 
function M.OptimisticLockException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptimisticLockException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertOptimisticLockException(t)
	return t
end

keys.DescribeAttackResponse = { ["Attack"] = true, nil }

function asserts.AssertDescribeAttackResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAttackResponse to be of type 'table'")
	if struct["Attack"] then asserts.AssertAttackDetail(struct["Attack"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAttackResponse[k], "DescribeAttackResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAttackResponse
--  
-- @param _Attack [AttackDetail] <p>The attack that is described.</p>
function M.DescribeAttackResponse(_Attack, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAttackResponse")
	local t = { 
		["Attack"] = _Attack,
	}
	asserts.AssertDescribeAttackResponse(t)
	return t
end

keys.SummarizedAttackVector = { ["VectorCounters"] = true, ["VectorType"] = true, nil }

function asserts.AssertSummarizedAttackVector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SummarizedAttackVector to be of type 'table'")
	assert(struct["VectorType"], "Expected key VectorType to exist in table")
	if struct["VectorCounters"] then asserts.AssertSummarizedCounterList(struct["VectorCounters"]) end
	if struct["VectorType"] then asserts.AssertString(struct["VectorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SummarizedAttackVector[k], "SummarizedAttackVector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SummarizedAttackVector
-- <p>A summary of information about the attack.</p>
-- @param _VectorCounters [SummarizedCounterList] <p>The list of counters that describe the details of the attack.</p>
-- @param _VectorType [String] <p>The attack type, for example, SNMP reflection or SYN flood.</p>
-- Required parameter: VectorType
function M.SummarizedAttackVector(_VectorCounters, _VectorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SummarizedAttackVector")
	local t = { 
		["VectorCounters"] = _VectorCounters,
		["VectorType"] = _VectorType,
	}
	asserts.AssertSummarizedAttackVector(t)
	return t
end

keys.DescribeProtectionResponse = { ["Protection"] = true, nil }

function asserts.AssertDescribeProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProtectionResponse to be of type 'table'")
	if struct["Protection"] then asserts.AssertProtection(struct["Protection"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProtectionResponse[k], "DescribeProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProtectionResponse
--  
-- @param _Protection [Protection] <p>The <a>Protection</a> object that is described.</p>
function M.DescribeProtectionResponse(_Protection, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProtectionResponse")
	local t = { 
		["Protection"] = _Protection,
	}
	asserts.AssertDescribeProtectionResponse(t)
	return t
end

keys.SummarizedCounter = { ["Name"] = true, ["Max"] = true, ["Average"] = true, ["N"] = true, ["Sum"] = true, ["Unit"] = true, nil }

function asserts.AssertSummarizedCounter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SummarizedCounter to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Max"] then asserts.AssertDouble(struct["Max"]) end
	if struct["Average"] then asserts.AssertDouble(struct["Average"]) end
	if struct["N"] then asserts.AssertInteger(struct["N"]) end
	if struct["Sum"] then asserts.AssertDouble(struct["Sum"]) end
	if struct["Unit"] then asserts.AssertString(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.SummarizedCounter[k], "SummarizedCounter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SummarizedCounter
-- <p>The counter that describes a DDoS attack.</p>
-- @param _Name [String] <p>The counter name.</p>
-- @param _Max [Double] <p>The maximum value of the counter for a specified time period.</p>
-- @param _Average [Double] <p>The average value of the counter for a specified time period.</p>
-- @param _N [Integer] <p>The number of counters for a specified time period.</p>
-- @param _Sum [Double] <p>The total of counter values for a specified time period.</p>
-- @param _Unit [String] <p>The unit of the counters.</p>
function M.SummarizedCounter(_Name, _Max, _Average, _N, _Sum, _Unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SummarizedCounter")
	local t = { 
		["Name"] = _Name,
		["Max"] = _Max,
		["Average"] = _Average,
		["N"] = _N,
		["Sum"] = _Sum,
		["Unit"] = _Unit,
	}
	asserts.AssertSummarizedCounter(t)
	return t
end

keys.CreateSubscriptionRequest = { nil }

function asserts.AssertCreateSubscriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionRequest[k], "CreateSubscriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionRequest
--  
function M.CreateSubscriptionRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionRequest")
	local t = { 
	}
	asserts.AssertCreateSubscriptionRequest(t)
	return t
end

keys.InvalidResourceException = { ["message"] = true, nil }

function asserts.AssertInvalidResourceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceException[k], "InvalidResourceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceException
-- <p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>
-- @param _message [errorMessage] 
function M.InvalidResourceException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidResourceException(t)
	return t
end

keys.DeleteProtectionResponse = { nil }

function asserts.AssertDeleteProtectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProtectionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProtectionResponse[k], "DeleteProtectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProtectionResponse
--  
function M.DeleteProtectionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteProtectionResponse")
	local t = { 
	}
	asserts.AssertDeleteProtectionResponse(t)
	return t
end

keys.CreateSubscriptionResponse = { nil }

function asserts.AssertCreateSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionResponse[k], "CreateSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionResponse
--  
function M.CreateSubscriptionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionResponse")
	local t = { 
	}
	asserts.AssertCreateSubscriptionResponse(t)
	return t
end

keys.DescribeProtectionRequest = { ["ProtectionId"] = true, nil }

function asserts.AssertDescribeProtectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProtectionRequest to be of type 'table'")
	assert(struct["ProtectionId"], "Expected key ProtectionId to exist in table")
	if struct["ProtectionId"] then asserts.AssertProtectionId(struct["ProtectionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProtectionRequest[k], "DescribeProtectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProtectionRequest
--  
-- @param _ProtectionId [ProtectionId] <p>The unique identifier (ID) for the <a>Protection</a> object that is described.</p>
-- Required parameter: ProtectionId
function M.DescribeProtectionRequest(_ProtectionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeProtectionRequest")
	local t = { 
		["ProtectionId"] = _ProtectionId,
	}
	asserts.AssertDescribeProtectionRequest(t)
	return t
end

keys.AttackVectorDescription = { ["VectorType"] = true, nil }

function asserts.AssertAttackVectorDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttackVectorDescription to be of type 'table'")
	assert(struct["VectorType"], "Expected key VectorType to exist in table")
	if struct["VectorType"] then asserts.AssertString(struct["VectorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttackVectorDescription[k], "AttackVectorDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttackVectorDescription
-- <p>Describes the attack.</p>
-- @param _VectorType [String] <p>The attack type, for example, SNMP reflection or SYN flood.</p>
-- Required parameter: VectorType
function M.AttackVectorDescription(_VectorType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttackVectorDescription")
	local t = { 
		["VectorType"] = _VectorType,
	}
	asserts.AssertAttackVectorDescription(t)
	return t
end

keys.ResourceAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceAlreadyExistsException[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>Exception indicating the specified resource already exists.</p>
-- @param _message [errorMessage] 
function M.ResourceAlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceAlreadyExistsException(t)
	return t
end

function asserts.AssertProtectionId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProtectionId(str)
	asserts.AssertProtectionId(str)
	return str
end

function asserts.AssertLimitType(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitType to be of type 'string'")
end

--  
function M.LimitType(str)
	asserts.AssertLimitType(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertProtectionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProtectionName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProtectionName(str)
	asserts.AssertProtectionName(str)
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

function asserts.AssertSubResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubResourceType to be of type 'string'")
end

--  
function M.SubResourceType(str)
	asserts.AssertSubResourceType(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertAttackId(str)
	assert(str)
	assert(type(str) == "string", "Expected AttackId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttackId(str)
	asserts.AssertAttackId(str)
	return str
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
end

function asserts.AssertLimitNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected LimitNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.LimitNumber(long)
	asserts.AssertLimitNumber(long)
	return long
end

function asserts.AssertDurationInSeconds(long)
	assert(long)
	assert(type(long) == "number", "Expected DurationInSeconds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.DurationInSeconds(long)
	asserts.AssertDurationInSeconds(long)
	return long
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertAttackTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected AttackTimestamp to be of type 'string'")
end

function M.AttackTimestamp(timestamp)
	asserts.AssertAttackTimestamp(timestamp)
	return timestamp
end

function asserts.AssertMitigationList(list)
	assert(list)
	assert(type(list) == "table", "Expected MitigationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMitigation(v)
	end
end

--  
-- List of Mitigation objects
function M.MitigationList(list)
	asserts.AssertMitigationList(list)
	return list
end

function asserts.AssertAttackVectorDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackVectorDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttackVectorDescription(v)
	end
end

--  
-- List of AttackVectorDescription objects
function M.AttackVectorDescriptionList(list)
	asserts.AssertAttackVectorDescriptionList(list)
	return list
end

function asserts.AssertProtections(list)
	assert(list)
	assert(type(list) == "table", "Expected Protections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProtection(v)
	end
end

--  
-- List of Protection objects
function M.Protections(list)
	asserts.AssertProtections(list)
	return list
end

function asserts.AssertResourceArnFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceArnFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceArn(v)
	end
end

--  
-- List of ResourceArn objects
function M.ResourceArnFilterList(list)
	asserts.AssertResourceArnFilterList(list)
	return list
end

function asserts.AssertSubResourceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubResourceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubResourceSummary(v)
	end
end

--  
-- List of SubResourceSummary objects
function M.SubResourceSummaryList(list)
	asserts.AssertSubResourceSummaryList(list)
	return list
end

function asserts.AssertSummarizedAttackVectorList(list)
	assert(list)
	assert(type(list) == "table", "Expected SummarizedAttackVectorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSummarizedAttackVector(v)
	end
end

--  
-- List of SummarizedAttackVector objects
function M.SummarizedAttackVectorList(list)
	asserts.AssertSummarizedAttackVectorList(list)
	return list
end

function asserts.AssertSummarizedCounterList(list)
	assert(list)
	assert(type(list) == "table", "Expected SummarizedCounterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSummarizedCounter(v)
	end
end

--  
-- List of SummarizedCounter objects
function M.SummarizedCounterList(list)
	asserts.AssertSummarizedCounterList(list)
	return list
end

function asserts.AssertAttackSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected AttackSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttackSummary(v)
	end
end

--  
-- List of AttackSummary objects
function M.AttackSummaries(list)
	asserts.AssertAttackSummaries(list)
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
			return "shield.amazonaws.com"
		end
	end
	local ss = { "shield" }
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
--- DeleteProtection
-- @param DeleteProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteProtectionAsync(DeleteProtectionRequest, cb)
	assert(DeleteProtectionRequest, "You must provide a DeleteProtectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteProtectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSubscription
-- @param DescribeSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubscriptionAsync(DescribeSubscriptionRequest, cb)
	assert(DescribeSubscriptionRequest, "You must provide a DescribeSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSubscription
-- @param CreateSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubscriptionAsync(CreateSubscriptionRequest, cb)
	assert(CreateSubscriptionRequest, "You must provide a CreateSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeProtection
-- @param DescribeProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeProtectionAsync(DescribeProtectionRequest, cb)
	assert(DescribeProtectionRequest, "You must provide a DescribeProtectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeProtectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAttack
-- @param DescribeAttackRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAttackAsync(DescribeAttackRequest, cb)
	assert(DescribeAttackRequest, "You must provide a DescribeAttackRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DescribeAttack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAttackRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSubscription
-- @param DeleteSubscriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubscriptionAsync(DeleteSubscriptionRequest, cb)
	assert(DeleteSubscriptionRequest, "You must provide a DeleteSubscriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.DeleteSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSubscriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListProtections
-- @param ListProtectionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListProtectionsAsync(ListProtectionsRequest, cb)
	assert(ListProtectionsRequest, "You must provide a ListProtectionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListProtections",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListProtectionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttacks
-- @param ListAttacksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttacksAsync(ListAttacksRequest, cb)
	assert(ListAttacksRequest, "You must provide a ListAttacksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.ListAttacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAttacksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateProtection
-- @param CreateProtectionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateProtectionAsync(CreateProtectionRequest, cb)
	assert(CreateProtectionRequest, "You must provide a CreateProtectionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSShield_20160616.CreateProtection",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateProtectionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
