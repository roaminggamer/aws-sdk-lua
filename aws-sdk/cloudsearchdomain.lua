--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudSearch Domain (cloudsearchdomain-2013-01-01)

local M = {}

M.metadata = {
	api_version = "2013-01-01",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "cloudsearchdomain",
	service_abbreviation = "",
	service_full_name = "Amazon CloudSearch Domain",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudsearchdomain-2013-01-01",
}

local keys = {}
local asserts = {}

keys.FieldStats = { ["count"] = true, ["missing"] = true, ["max"] = true, ["sum"] = true, ["min"] = true, ["sumOfSquares"] = true, ["stddev"] = true, ["mean"] = true, nil }

function asserts.AssertFieldStats(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FieldStats to be of type 'table'")
	if struct["count"] then asserts.AssertLong(struct["count"]) end
	if struct["missing"] then asserts.AssertLong(struct["missing"]) end
	if struct["max"] then asserts.AssertString(struct["max"]) end
	if struct["sum"] then asserts.AssertDouble(struct["sum"]) end
	if struct["min"] then asserts.AssertString(struct["min"]) end
	if struct["sumOfSquares"] then asserts.AssertDouble(struct["sumOfSquares"]) end
	if struct["stddev"] then asserts.AssertDouble(struct["stddev"]) end
	if struct["mean"] then asserts.AssertString(struct["mean"]) end
	for k,_ in pairs(struct) do
		assert(keys.FieldStats[k], "FieldStats contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FieldStats
-- <p>The statistics for a field calculated in the request.</p>
-- @param _count [Long] <p>The number of documents that contain a value in the specified field in the result set.</p>
-- @param _missing [Long] <p>The number of documents that do not contain a value in the specified field in the result set.</p>
-- @param _max [String] <p>The maximum value found in the specified field in the result set.</p> <p>If the field is numeric (<code>int</code>, <code>int-array</code>, <code>double</code>, or <code>double-array</code>), <code>max</code> is the string representation of a double-precision 64-bit floating point value. If the field is <code>date</code> or <code>date-array</code>, <code>max</code> is the string representation of a date with the format specified in <a href="http://tools.ietf.org/html/rfc3339">IETF RFC3339</a>: yyyy-mm-ddTHH:mm:ss.SSSZ.</p>
-- @param _sum [Double] <p>The sum of the field values across the documents in the result set. <code>null</code> for date fields.</p>
-- @param _min [String] <p>The minimum value found in the specified field in the result set.</p> <p>If the field is numeric (<code>int</code>, <code>int-array</code>, <code>double</code>, or <code>double-array</code>), <code>min</code> is the string representation of a double-precision 64-bit floating point value. If the field is <code>date</code> or <code>date-array</code>, <code>min</code> is the string representation of a date with the format specified in <a href="http://tools.ietf.org/html/rfc3339">IETF RFC3339</a>: yyyy-mm-ddTHH:mm:ss.SSSZ.</p>
-- @param _sumOfSquares [Double] <p>The sum of all field values in the result set squared.</p>
-- @param _stddev [Double] <p>The standard deviation of the values in the specified field in the result set.</p>
-- @param _mean [String] <p>The average of the values found in the specified field in the result set.</p> <p>If the field is numeric (<code>int</code>, <code>int-array</code>, <code>double</code>, or <code>double-array</code>), <code>mean</code> is the string representation of a double-precision 64-bit floating point value. If the field is <code>date</code> or <code>date-array</code>, <code>mean</code> is the string representation of a date with the format specified in <a href="http://tools.ietf.org/html/rfc3339">IETF RFC3339</a>: yyyy-mm-ddTHH:mm:ss.SSSZ.</p>
function M.FieldStats(_count, _missing, _max, _sum, _min, _sumOfSquares, _stddev, _mean, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FieldStats")
	local t = { 
		["count"] = _count,
		["missing"] = _missing,
		["max"] = _max,
		["sum"] = _sum,
		["min"] = _min,
		["sumOfSquares"] = _sumOfSquares,
		["stddev"] = _stddev,
		["mean"] = _mean,
	}
	asserts.AssertFieldStats(t)
	return t
end

keys.DocumentServiceException = { ["status"] = true, ["message"] = true, nil }

function asserts.AssertDocumentServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentServiceException to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentServiceException[k], "DocumentServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentServiceException
-- <p>Information about any problems encountered while processing an upload request.</p>
-- @param _status [String] <p>The return status of a document upload request, <code>error</code> or <code>success</code>.</p>
-- @param _message [String] <p>The description of the errors returned by the document service.</p>
function M.DocumentServiceException(_status, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentServiceException")
	local t = { 
		["status"] = _status,
		["message"] = _message,
	}
	asserts.AssertDocumentServiceException(t)
	return t
end

keys.BucketInfo = { ["buckets"] = true, nil }

function asserts.AssertBucketInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BucketInfo to be of type 'table'")
	if struct["buckets"] then asserts.AssertBucketList(struct["buckets"]) end
	for k,_ in pairs(struct) do
		assert(keys.BucketInfo[k], "BucketInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BucketInfo
-- <p>A container for the calculated facet values and counts.</p>
-- @param _buckets [BucketList] <p>A list of the calculated facet values and counts.</p>
function M.BucketInfo(_buckets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BucketInfo")
	local t = { 
		["buckets"] = _buckets,
	}
	asserts.AssertBucketInfo(t)
	return t
end

keys.Hit = { ["fields"] = true, ["highlights"] = true, ["id"] = true, ["exprs"] = true, nil }

function asserts.AssertHit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Hit to be of type 'table'")
	if struct["fields"] then asserts.AssertFields(struct["fields"]) end
	if struct["highlights"] then asserts.AssertHighlights(struct["highlights"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["exprs"] then asserts.AssertExprs(struct["exprs"]) end
	for k,_ in pairs(struct) do
		assert(keys.Hit[k], "Hit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Hit
-- <p>Information about a document that matches the search request.</p>
-- @param _fields [Fields] <p>The fields returned from a document that matches the search request.</p>
-- @param _highlights [Highlights] <p>The highlights returned from a document that matches the search request.</p>
-- @param _id [String] <p>The document ID of a document that matches the search request.</p>
-- @param _exprs [Exprs] <p>The expressions returned from a document that matches the search request.</p>
function M.Hit(_fields, _highlights, _id, _exprs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Hit")
	local t = { 
		["fields"] = _fields,
		["highlights"] = _highlights,
		["id"] = _id,
		["exprs"] = _exprs,
	}
	asserts.AssertHit(t)
	return t
end

keys.UploadDocumentsResponse = { ["status"] = true, ["warnings"] = true, ["adds"] = true, ["deletes"] = true, nil }

function asserts.AssertUploadDocumentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadDocumentsResponse to be of type 'table'")
	if struct["status"] then asserts.AssertString(struct["status"]) end
	if struct["warnings"] then asserts.AssertDocumentServiceWarnings(struct["warnings"]) end
	if struct["adds"] then asserts.AssertAdds(struct["adds"]) end
	if struct["deletes"] then asserts.AssertDeletes(struct["deletes"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadDocumentsResponse[k], "UploadDocumentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadDocumentsResponse
-- <p>Contains the response to an <code>UploadDocuments</code> request.</p>
-- @param _status [String] <p>The status of an <code>UploadDocumentsRequest</code>.</p>
-- @param _warnings [DocumentServiceWarnings] <p>Any warnings returned by the document service about the documents being uploaded.</p>
-- @param _adds [Adds] <p>The number of documents that were added to the search domain.</p>
-- @param _deletes [Deletes] <p>The number of documents that were deleted from the search domain.</p>
function M.UploadDocumentsResponse(_status, _warnings, _adds, _deletes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadDocumentsResponse")
	local t = { 
		["status"] = _status,
		["warnings"] = _warnings,
		["adds"] = _adds,
		["deletes"] = _deletes,
	}
	asserts.AssertUploadDocumentsResponse(t)
	return t
end

keys.SearchStatus = { ["timems"] = true, ["rid"] = true, nil }

function asserts.AssertSearchStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchStatus to be of type 'table'")
	if struct["timems"] then asserts.AssertLong(struct["timems"]) end
	if struct["rid"] then asserts.AssertString(struct["rid"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchStatus[k], "SearchStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchStatus
-- <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
-- @param _timems [Long] <p>How long it took to process the request, in milliseconds.</p>
-- @param _rid [String] <p>The encrypted resource ID for the request.</p>
function M.SearchStatus(_timems, _rid, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchStatus")
	local t = { 
		["timems"] = _timems,
		["rid"] = _rid,
	}
	asserts.AssertSearchStatus(t)
	return t
end

keys.SuggestResponse = { ["status"] = true, ["suggest"] = true, nil }

function asserts.AssertSuggestResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestResponse to be of type 'table'")
	if struct["status"] then asserts.AssertSuggestStatus(struct["status"]) end
	if struct["suggest"] then asserts.AssertSuggestModel(struct["suggest"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuggestResponse[k], "SuggestResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestResponse
-- <p>Contains the response to a <code>Suggest</code> request.</p>
-- @param _status [SuggestStatus] <p>The status of a <code>SuggestRequest</code>. Contains the resource ID (<code>rid</code>) and how long it took to process the request (<code>timems</code>).</p>
-- @param _suggest [SuggestModel] <p>Container for the matching search suggestion information.</p>
function M.SuggestResponse(_status, _suggest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestResponse")
	local t = { 
		["status"] = _status,
		["suggest"] = _suggest,
	}
	asserts.AssertSuggestResponse(t)
	return t
end

keys.UploadDocumentsRequest = { ["documents"] = true, ["contentType"] = true, nil }

function asserts.AssertUploadDocumentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadDocumentsRequest to be of type 'table'")
	assert(struct["documents"], "Expected key documents to exist in table")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	if struct["documents"] then asserts.AssertBlob(struct["documents"]) end
	if struct["contentType"] then asserts.AssertContentType(struct["contentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadDocumentsRequest[k], "UploadDocumentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadDocumentsRequest
-- <p>Container for the parameters to the <code>UploadDocuments</code> request.</p>
-- @param _documents [Blob] <p>A batch of documents formatted in JSON or HTML.</p>
-- @param _contentType [ContentType] <p>The format of the batch you are uploading. Amazon CloudSearch supports two document batch formats:</p> <ul> <li>application/json</li> <li>application/xml</li> </ul>
-- Required parameter: documents
-- Required parameter: contentType
function M.UploadDocumentsRequest(_documents, _contentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadDocumentsRequest")
	local t = { 
		["documents"] = _documents,
		["contentType"] = _contentType,
	}
	asserts.AssertUploadDocumentsRequest(t)
	return t
end

keys.SearchException = { ["message"] = true, nil }

function asserts.AssertSearchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchException[k], "SearchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchException
-- <p>Information about any problems encountered while processing a search request.</p>
-- @param _message [String] <p>A description of the error returned by the search service.</p>
function M.SearchException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSearchException(t)
	return t
end

keys.Hits = { ["cursor"] = true, ["found"] = true, ["hit"] = true, ["start"] = true, nil }

function asserts.AssertHits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Hits to be of type 'table'")
	if struct["cursor"] then asserts.AssertString(struct["cursor"]) end
	if struct["found"] then asserts.AssertLong(struct["found"]) end
	if struct["hit"] then asserts.AssertHitList(struct["hit"]) end
	if struct["start"] then asserts.AssertLong(struct["start"]) end
	for k,_ in pairs(struct) do
		assert(keys.Hits[k], "Hits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Hits
-- <p>The collection of documents that match the search request.</p>
-- @param _cursor [String] <p>A cursor that can be used to retrieve the next set of matching documents when you want to page through a large result set.</p>
-- @param _found [Long] <p>The total number of documents that match the search request.</p>
-- @param _hit [HitList] <p>A document that matches the search request.</p>
-- @param _start [Long] <p>The index of the first matching document.</p>
function M.Hits(_cursor, _found, _hit, _start, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Hits")
	local t = { 
		["cursor"] = _cursor,
		["found"] = _found,
		["hit"] = _hit,
		["start"] = _start,
	}
	asserts.AssertHits(t)
	return t
end

keys.SuggestStatus = { ["timems"] = true, ["rid"] = true, nil }

function asserts.AssertSuggestStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestStatus to be of type 'table'")
	if struct["timems"] then asserts.AssertLong(struct["timems"]) end
	if struct["rid"] then asserts.AssertString(struct["rid"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuggestStatus[k], "SuggestStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestStatus
-- <p>Contains the resource id (<code>rid</code>) and the time it took to process the request (<code>timems</code>).</p>
-- @param _timems [Long] <p>How long it took to process the request, in milliseconds.</p>
-- @param _rid [String] <p>The encrypted resource ID for the request.</p>
function M.SuggestStatus(_timems, _rid, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestStatus")
	local t = { 
		["timems"] = _timems,
		["rid"] = _rid,
	}
	asserts.AssertSuggestStatus(t)
	return t
end

keys.Bucket = { ["count"] = true, ["value"] = true, nil }

function asserts.AssertBucket(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Bucket to be of type 'table'")
	if struct["count"] then asserts.AssertLong(struct["count"]) end
	if struct["value"] then asserts.AssertString(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Bucket[k], "Bucket contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Bucket
-- <p>A container for facet information. </p>
-- @param _count [Long] <p>The number of hits that contain the facet value in the specified facet field.</p>
-- @param _value [String] <p>The facet value being counted.</p>
function M.Bucket(_count, _value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Bucket")
	local t = { 
		["count"] = _count,
		["value"] = _value,
	}
	asserts.AssertBucket(t)
	return t
end

keys.SearchResponse = { ["status"] = true, ["hits"] = true, ["stats"] = true, ["facets"] = true, nil }

function asserts.AssertSearchResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchResponse to be of type 'table'")
	if struct["status"] then asserts.AssertSearchStatus(struct["status"]) end
	if struct["hits"] then asserts.AssertHits(struct["hits"]) end
	if struct["stats"] then asserts.AssertStats(struct["stats"]) end
	if struct["facets"] then asserts.AssertFacets(struct["facets"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchResponse[k], "SearchResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchResponse
-- <p>The result of a <code>Search</code> request. Contains the documents that match the specified search criteria and any requested fields, highlights, and facet information.</p>
-- @param _status [SearchStatus] <p>The status information returned for the search request.</p>
-- @param _hits [Hits] <p>The documents that match the search criteria.</p>
-- @param _stats [Stats] <p>The requested field statistics information.</p>
-- @param _facets [Facets] <p>The requested facet information.</p>
function M.SearchResponse(_status, _hits, _stats, _facets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchResponse")
	local t = { 
		["status"] = _status,
		["hits"] = _hits,
		["stats"] = _stats,
		["facets"] = _facets,
	}
	asserts.AssertSearchResponse(t)
	return t
end

keys.DocumentServiceWarning = { ["message"] = true, nil }

function asserts.AssertDocumentServiceWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentServiceWarning to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentServiceWarning[k], "DocumentServiceWarning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentServiceWarning
-- <p>A warning returned by the document service when an issue is discovered while processing an upload request.</p>
-- @param _message [String] <p>The description for a warning returned by the document service.</p>
function M.DocumentServiceWarning(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentServiceWarning")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDocumentServiceWarning(t)
	return t
end

keys.SuggestRequest = { ["query"] = true, ["suggester"] = true, ["size"] = true, nil }

function asserts.AssertSuggestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestRequest to be of type 'table'")
	assert(struct["query"], "Expected key query to exist in table")
	assert(struct["suggester"], "Expected key suggester to exist in table")
	if struct["query"] then asserts.AssertQuery(struct["query"]) end
	if struct["suggester"] then asserts.AssertSuggester(struct["suggester"]) end
	if struct["size"] then asserts.AssertSuggestionsSize(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuggestRequest[k], "SuggestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestRequest
-- <p>Container for the parameters to the <code>Suggest</code> request.</p>
-- @param _query [Query] <p>Specifies the string for which you want to get suggestions.</p>
-- @param _suggester [Suggester] <p>Specifies the name of the suggester to use to find suggested matches.</p>
-- @param _size [SuggestionsSize] <p>Specifies the maximum number of suggestions to return. </p>
-- Required parameter: query
-- Required parameter: suggester
function M.SuggestRequest(_query, _suggester, _size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestRequest")
	local t = { 
		["query"] = _query,
		["suggester"] = _suggester,
		["size"] = _size,
	}
	asserts.AssertSuggestRequest(t)
	return t
end

keys.SearchRequest = { ["sort"] = true, ["facet"] = true, ["stats"] = true, ["partial"] = true, ["filterQuery"] = true, ["expr"] = true, ["return"] = true, ["cursor"] = true, ["start"] = true, ["queryOptions"] = true, ["query"] = true, ["highlight"] = true, ["queryParser"] = true, ["size"] = true, nil }

function asserts.AssertSearchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchRequest to be of type 'table'")
	assert(struct["query"], "Expected key query to exist in table")
	if struct["sort"] then asserts.AssertSort(struct["sort"]) end
	if struct["facet"] then asserts.AssertFacet(struct["facet"]) end
	if struct["stats"] then asserts.AssertStat(struct["stats"]) end
	if struct["partial"] then asserts.AssertPartial(struct["partial"]) end
	if struct["filterQuery"] then asserts.AssertFilterQuery(struct["filterQuery"]) end
	if struct["expr"] then asserts.AssertExpr(struct["expr"]) end
	if struct["return"] then asserts.AssertReturn(struct["return"]) end
	if struct["cursor"] then asserts.AssertCursor(struct["cursor"]) end
	if struct["start"] then asserts.AssertStart(struct["start"]) end
	if struct["queryOptions"] then asserts.AssertQueryOptions(struct["queryOptions"]) end
	if struct["query"] then asserts.AssertQuery(struct["query"]) end
	if struct["highlight"] then asserts.AssertHighlight(struct["highlight"]) end
	if struct["queryParser"] then asserts.AssertQueryParser(struct["queryParser"]) end
	if struct["size"] then asserts.AssertSize(struct["size"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchRequest[k], "SearchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchRequest
-- <p>Container for the parameters to the <code>Search</code> request.</p>
-- @param _sort [Sort] <p>Specifies the fields or custom expressions to use to sort the search results. Multiple fields or expressions are specified as a comma-separated list. You must specify the sort direction (<code>asc</code> or <code>desc</code>) for each field; for example, <code>year desc,title asc</code>. To use a field to sort results, the field must be sort-enabled in the domain configuration. Array type fields cannot be used for sorting. If no <code>sort</code> parameter is specified, results are sorted by their default relevance scores in descending order: <code>_score desc</code>. You can also sort by document ID (<code>_id asc</code>) and version (<code>_version desc</code>).</p> <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/sorting-results.html">Sorting Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _facet [Facet] <p>Specifies one or more fields for which to get facet information, and options that control how the facet information is returned. Each specified field must be facet-enabled in the domain configuration. The fields and options are specified in JSON using the form <code>{"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}</code>.</p> <p>You can specify the following faceting options:</p> <ul> <li> <p><code>buckets</code> specifies an array of the facet values or ranges to count. Ranges are specified using the same syntax that you use to search for a range of values. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-ranges.html"> Searching for a Range of Values</a> in the <i>Amazon CloudSearch Developer Guide</i>. Buckets are returned in the order they are specified in the request. The <code>sort</code> and <code>size</code> options are not valid if you specify <code>buckets</code>.</p> </li> <li> <p><code>size</code> specifies the maximum number of facets to include in the results. By default, Amazon CloudSearch returns counts for the top 10. The <code>size</code> parameter is only valid when you specify the <code>sort</code> option; it cannot be used in conjunction with <code>buckets</code>.</p> </li> <li> <p><code>sort</code> specifies how you want to sort the facets in the results: <code>bucket</code> or <code>count</code>. Specify <code>bucket</code> to sort alphabetically or numerically by facet value (in ascending order). Specify <code>count</code> to sort by the facet counts computed for each facet value (in descending order). To retrieve facet counts for particular values or ranges of values, use the <code>buckets</code> option instead of <code>sort</code>. </p> </li> </ul> <p>If no facet options are specified, facet counts are computed for all field values, the facets are sorted by facet count, and the top 10 facets are returned in the results.</p> <p>To count particular buckets of values, use the <code>buckets</code> option. For example, the following request uses the <code>buckets</code> option to calculate and return facet counts by decade.</p> <p><code> {"year":{"buckets":["[1970,1979]","[1980,1989]","[1990,1999]","[2000,2009]","[2010,}"]}} </code></p> <p>To sort facets by facet count, use the <code>count</code> option. For example, the following request sets the <code>sort</code> option to <code>count</code> to sort the facet values by facet count, with the facet values that have the most matching documents listed first. Setting the <code>size</code> option to 3 returns only the top three facet values.</p> <p><code> {"year":{"sort":"count","size":3}} </code></p> <p>To sort the facets by value, use the <code>bucket</code> option. For example, the following request sets the <code>sort</code> option to <code>bucket</code> to sort the facet values numerically by year, with earliest year listed first. </p> <p><code> {"year":{"sort":"bucket"}} </code></p> <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/faceting.html">Getting and Using Facet Information</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _stats [Stat] <p>Specifies one or more fields for which to get statistics information. Each specified field must be facet-enabled in the domain configuration. The fields are specified in JSON using the form:</p> <code>{"FIELD-A":{},"FIELD-B":{}}</code> <p>There are currently no options supported for statistics.</p>
-- @param _partial [Partial] <p>Enables partial results to be returned if one or more index partitions are unavailable. When your search index is partitioned across multiple search instances, by default Amazon CloudSearch only returns results if every partition can be queried. This means that the failure of a single search instance can result in 5xx (internal server) errors. When you enable partial results, Amazon CloudSearch returns whatever results are available and includes the percentage of documents searched in the search results (percent-searched). This enables you to more gracefully degrade your users' search experience. For example, rather than displaying no results, you could display the partial results and a message indicating that the results might be incomplete due to a temporary system outage.</p>
-- @param _filterQuery [FilterQuery] <p>Specifies a structured query that filters the results of a search without affecting how the results are scored and sorted. You use <code>filterQuery</code> in conjunction with the <code>query</code> parameter to filter the documents that match the constraints specified in the <code>query</code> parameter. Specifying a filter controls only which matching documents are included in the results, it has no effect on how they are scored and sorted. The <code>filterQuery</code> parameter supports the full structured query syntax. </p> <p>For more information about using filters, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/filtering-results.html">Filtering Matching Documents</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _expr [Expr] <p>Defines one or more numeric expressions that can be used to sort results or specify search or filter criteria. You can also specify expressions as return fields. </p> <p>You specify the expressions in JSON using the form <code>{"EXPRESSIONNAME":"EXPRESSION"}</code>. You can define and use multiple expressions in a search request. For example:</p> <p><code> {"expression1":"_score*rating", "expression2":"(1/rank)*year"} </code> </p> <p>For information about the variables, operators, and functions you can use in expressions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html#writing-expressions">Writing Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _return [Return] <p>Specifies the field and expression values to include in the response. Multiple fields or expressions are specified as a comma-separated list. By default, a search response includes all return enabled fields (<code>_all_fields</code>). To return only the document IDs for the matching documents, specify <code>_no_fields</code>. To retrieve the relevance score calculated for each document, specify <code>_score</code>. </p>
-- @param _cursor [Cursor] <p>Retrieves a cursor value you can use to page through large result sets. Use the <code>size</code> parameter to control the number of hits to include in each response. You can specify either the <code>cursor</code> or <code>start</code> parameter in a request; they are mutually exclusive. To get the first cursor, set the cursor value to <code>initial</code>. In subsequent requests, specify the cursor value returned in the hits section of the response. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html">Paginating Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _start [Start] <p>Specifies the offset of the first search hit you want to return. Note that the result set is zero-based; the first result is at index 0. You can specify either the <code>start</code> or <code>cursor</code> parameter in a request, they are mutually exclusive. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html">Paginating Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _queryOptions [QueryOptions] <p>Configures options for the query parser specified in the <code>queryParser</code> parameter. You specify the options in JSON using the following form <code>{"OPTION1":"VALUE1","OPTION2":VALUE2"..."OPTIONN":"VALUEN"}.</code></p> <p>The options you can configure vary according to which parser you use:</p> <ul> <li><code>defaultOperator</code>: The default operator used to combine individual terms in the search string. For example: <code>defaultOperator: 'or'</code>. For the <code>dismax</code> parser, you specify a percentage that represents the percentage of terms in the search string (rounded down) that must match, rather than a default operator. A value of <code>0%</code> is the equivalent to OR, and a value of <code>100%</code> is equivalent to AND. The percentage must be specified as a value in the range 0-100 followed by the percent (%) symbol. For example, <code>defaultOperator: 50%</code>. Valid values: <code>and</code>, <code>or</code>, a percentage in the range 0%-100% (<code>dismax</code>). Default: <code>and</code> (<code>simple</code>, <code>structured</code>, <code>lucene</code>) or <code>100</code> (<code>dismax</code>). Valid for: <code>simple</code>, <code>structured</code>, <code>lucene</code>, and <code>dismax</code>.</li> <li><code>fields</code>: An array of the fields to search when no fields are specified in a search. If no fields are specified in a search and this option is not specified, all text and text-array fields are searched. You can specify a weight for each field to control the relative importance of each field when Amazon CloudSearch calculates relevance scores. To specify a field weight, append a caret (<code>^</code>) symbol and the weight to the field name. For example, to boost the importance of the <code>title</code> field over the <code>description</code> field you could specify: <code>"fields":["title^5","description"]</code>. Valid values: The name of any configured field and an optional numeric value greater than zero. Default: All <code>text</code> and <code>text-array</code> fields. Valid for: <code>simple</code>, <code>structured</code>, <code>lucene</code>, and <code>dismax</code>.</li> <li><code>operators</code>: An array of the operators or special characters you want to disable for the simple query parser. If you disable the <code>and</code>, <code>or</code>, or <code>not</code> operators, the corresponding operators (<code>+</code>, <code>|</code>, <code>-</code>) have no special meaning and are dropped from the search string. Similarly, disabling <code>prefix</code> disables the wildcard operator (<code>*</code>) and disabling <code>phrase</code> disables the ability to search for phrases by enclosing phrases in double quotes. Disabling precedence disables the ability to control order of precedence using parentheses. Disabling <code>near</code> disables the ability to use the ~ operator to perform a sloppy phrase search. Disabling the <code>fuzzy</code> operator disables the ability to use the ~ operator to perform a fuzzy search. <code>escape</code> disables the ability to use a backslash (<code>\</code>) to escape special characters within the search string. Disabling whitespace is an advanced option that prevents the parser from tokenizing on whitespace, which can be useful for Vietnamese. (It prevents Vietnamese words from being split incorrectly.) For example, you could disable all operators other than the phrase operator to support just simple term and phrase queries: <code>"operators":["and","not","or", "prefix"]</code>. Valid values: <code>and</code>, <code>escape</code>, <code>fuzzy</code>, <code>near</code>, <code>not</code>, <code>or</code>, <code>phrase</code>, <code>precedence</code>, <code>prefix</code>, <code>whitespace</code>. Default: All operators and special characters are enabled. Valid for: <code>simple</code>.</li> <li><code>phraseFields</code>: An array of the <code>text</code> or <code>text-array</code> fields you want to use for phrase searches. When the terms in the search string appear in close proximity within a field, the field scores higher. You can specify a weight for each field to boost that score. The <code>phraseSlop</code> option controls how much the matches can deviate from the search string and still be boosted. To specify a field weight, append a caret (<code>^</code>) symbol and the weight to the field name. For example, to boost phrase matches in the <code>title</code> field over the <code>abstract</code> field, you could specify: <code>"phraseFields":["title^3", "plot"]</code> Valid values: The name of any <code>text</code> or <code>text-array</code> field and an optional numeric value greater than zero. Default: No fields. If you don't specify any fields with <code>phraseFields</code>, proximity scoring is disabled even if <code>phraseSlop</code> is specified. Valid for: <code>dismax</code>.</li> <li><code>phraseSlop</code>: An integer value that specifies how much matches can deviate from the search phrase and still be boosted according to the weights specified in the <code>phraseFields</code> option; for example, <code>phraseSlop: 2</code>. You must also specify <code>phraseFields</code> to enable proximity scoring. Valid values: positive integers. Default: 0. Valid for: <code>dismax</code>.</li> <li><code>explicitPhraseSlop</code>: An integer value that specifies how much a match can deviate from the search phrase when the phrase is enclosed in double quotes in the search string. (Phrases that exceed this proximity distance are not considered a match.) For example, to specify a slop of three for dismax phrase queries, you would specify <code>"explicitPhraseSlop":3</code>. Valid values: positive integers. Default: 0. Valid for: <code>dismax</code>.</li> <li><code>tieBreaker</code>: When a term in the search string is found in a document's field, a score is calculated for that field based on how common the word is in that field compared to other documents. If the term occurs in multiple fields within a document, by default only the highest scoring field contributes to the document's overall score. You can specify a <code>tieBreaker</code> value to enable the matches in lower-scoring fields to contribute to the document's score. That way, if two documents have the same max field score for a particular term, the score for the document that has matches in more fields will be higher. The formula for calculating the score with a tieBreaker is <code>(max field score) + (tieBreaker) * (sum of the scores for the rest of the matching fields)</code>. Set <code>tieBreaker</code> to 0 to disregard all but the highest scoring field (pure max): <code>"tieBreaker":0</code>. Set to 1 to sum the scores from all fields (pure sum): <code>"tieBreaker":1</code>. Valid values: 0.0 to 1.0. Default: 0.0. Valid for: <code>dismax</code>. </li> </ul>
-- @param _query [Query] <p>Specifies the search criteria for the request. How you specify the search criteria depends on the query parser used for the request and the parser options specified in the <code>queryOptions</code> parameter. By default, the <code>simple</code> query parser is used to process requests. To use the <code>structured</code>, <code>lucene</code>, or <code>dismax</code> query parser, you must also specify the <code>queryParser</code> parameter. </p> <p>For more information about specifying search criteria, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
-- @param _highlight [Highlight] <p>Retrieves highlights for matches in the specified <code>text</code> or <code>text-array</code> fields. Each specified field must be highlight enabled in the domain configuration. The fields and options are specified in JSON using the form <code>{"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}</code>.</p> <p>You can specify the following highlight options:</p> <ul> <li> <code>format</code>: specifies the format of the data in the text field: <code>text</code> or <code>html</code>. When data is returned as HTML, all non-alphanumeric characters are encoded. The default is <code>html</code>. </li> <li> <code>max_phrases</code>: specifies the maximum number of occurrences of the search term(s) you want to highlight. By default, the first occurrence is highlighted. </li> <li> <code>pre_tag</code>: specifies the string to prepend to an occurrence of a search term. The default for HTML highlights is <code>&amp;lt;em&amp;gt;</code>. The default for text highlights is <code>*</code>. </li> <li> <code>post_tag</code>: specifies the string to append to an occurrence of a search term. The default for HTML highlights is <code>&amp;lt;/em&amp;gt;</code>. The default for text highlights is <code>*</code>. </li> </ul> <p>If no highlight options are specified for a field, the returned field text is treated as HTML and the first match is highlighted with emphasis tags: <code>&amp;lt;em&gt;search-term&amp;lt;/em&amp;gt;</code>.</p> <p>For example, the following request retrieves highlights for the <code>actors</code> and <code>title</code> fields.</p> <p> <code>{ "actors": {}, "title": {"format": "text","max_phrases": 2,"pre_tag": "<b>","post_tag": "</b>"} }</code></p>
-- @param _queryParser [QueryParser] <p>Specifies which query parser to use to process the request. If <code>queryParser</code> is not specified, Amazon CloudSearch uses the <code>simple</code> query parser. </p> <p>Amazon CloudSearch supports four query parsers:</p> <ul> <li> <code>simple</code>: perform simple searches of <code>text</code> and <code>text-array</code> fields. By default, the <code>simple</code> query parser searches all <code>text</code> and <code>text-array</code> fields. You can specify which fields to search by with the <code>queryOptions</code> parameter. If you prefix a search term with a plus sign (+) documents must contain the term to be considered a match. (This is the default, unless you configure the default operator with the <code>queryOptions</code> parameter.) You can use the <code>-</code> (NOT), <code>|</code> (OR), and <code>*</code> (wildcard) operators to exclude particular terms, find results that match any of the specified terms, or search for a prefix. To search for a phrase rather than individual terms, enclose the phrase in double quotes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-text.html">Searching for Text</a> in the <i>Amazon CloudSearch Developer Guide</i>. </li> <li> <code>structured</code>: perform advanced searches by combining multiple expressions to define the search criteria. You can also search within particular fields, search for values and ranges of values, and use advanced options such as term boosting, <code>matchall</code>, and <code>near</code>. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-compound-queries.html">Constructing Compound Queries</a> in the <i>Amazon CloudSearch Developer Guide</i>. </li> <li> <code>lucene</code>: search using the Apache Lucene query parser syntax. For more information, see <a href="http://lucene.apache.org/core/4_6_0/queryparser/org/apache/lucene/queryparser/classic/package-summary.html#package_description">Apache Lucene Query Parser Syntax</a>. </li> <li> <code>dismax</code>: search using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser. For more information, see <a href="http://wiki.apache.org/solr/DisMaxQParserPlugin#Query_Syntax">DisMax Query Parser Syntax</a>. </li> </ul>
-- @param _size [Size] <p>Specifies the maximum number of search hits to include in the response. </p>
-- Required parameter: query
function M.SearchRequest(_sort, _facet, _stats, _partial, _filterQuery, _expr, _return, _cursor, _start, _queryOptions, _query, _highlight, _queryParser, _size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchRequest")
	local t = { 
		["sort"] = _sort,
		["facet"] = _facet,
		["stats"] = _stats,
		["partial"] = _partial,
		["filterQuery"] = _filterQuery,
		["expr"] = _expr,
		["return"] = _return,
		["cursor"] = _cursor,
		["start"] = _start,
		["queryOptions"] = _queryOptions,
		["query"] = _query,
		["highlight"] = _highlight,
		["queryParser"] = _queryParser,
		["size"] = _size,
	}
	asserts.AssertSearchRequest(t)
	return t
end

keys.SuggestionMatch = { ["score"] = true, ["id"] = true, ["suggestion"] = true, nil }

function asserts.AssertSuggestionMatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestionMatch to be of type 'table'")
	if struct["score"] then asserts.AssertLong(struct["score"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["suggestion"] then asserts.AssertString(struct["suggestion"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuggestionMatch[k], "SuggestionMatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestionMatch
-- <p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>
-- @param _score [Long] <p>The relevance score of a suggested match.</p>
-- @param _id [String] <p>The document ID of the suggested document.</p>
-- @param _suggestion [String] <p>The string that matches the query string specified in the <code>SuggestRequest</code>. </p>
function M.SuggestionMatch(_score, _id, _suggestion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestionMatch")
	local t = { 
		["score"] = _score,
		["id"] = _id,
		["suggestion"] = _suggestion,
	}
	asserts.AssertSuggestionMatch(t)
	return t
end

keys.SuggestModel = { ["query"] = true, ["suggestions"] = true, ["found"] = true, nil }

function asserts.AssertSuggestModel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SuggestModel to be of type 'table'")
	if struct["query"] then asserts.AssertString(struct["query"]) end
	if struct["suggestions"] then asserts.AssertSuggestions(struct["suggestions"]) end
	if struct["found"] then asserts.AssertLong(struct["found"]) end
	for k,_ in pairs(struct) do
		assert(keys.SuggestModel[k], "SuggestModel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SuggestModel
-- <p>Container for the suggestion information returned in a <code>SuggestResponse</code>.</p>
-- @param _query [String] <p>The query string specified in the suggest request.</p>
-- @param _suggestions [Suggestions] <p>The documents that match the query string.</p>
-- @param _found [Long] <p>The number of documents that were found to match the query string.</p>
function M.SuggestModel(_query, _suggestions, _found, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SuggestModel")
	local t = { 
		["query"] = _query,
		["suggestions"] = _suggestions,
		["found"] = _found,
	}
	asserts.AssertSuggestModel(t)
	return t
end

function asserts.AssertExpr(str)
	assert(str)
	assert(type(str) == "string", "Expected Expr to be of type 'string'")
end

--  
function M.Expr(str)
	asserts.AssertExpr(str)
	return str
end

function asserts.AssertSort(str)
	assert(str)
	assert(type(str) == "string", "Expected Sort to be of type 'string'")
end

--  
function M.Sort(str)
	asserts.AssertSort(str)
	return str
end

function asserts.AssertFilterQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterQuery to be of type 'string'")
end

--  
function M.FilterQuery(str)
	asserts.AssertFilterQuery(str)
	return str
end

function asserts.AssertStat(str)
	assert(str)
	assert(type(str) == "string", "Expected Stat to be of type 'string'")
end

--  
function M.Stat(str)
	asserts.AssertStat(str)
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

function asserts.AssertReturn(str)
	assert(str)
	assert(type(str) == "string", "Expected Return to be of type 'string'")
end

--  
function M.Return(str)
	asserts.AssertReturn(str)
	return str
end

function asserts.AssertCursor(str)
	assert(str)
	assert(type(str) == "string", "Expected Cursor to be of type 'string'")
end

--  
function M.Cursor(str)
	asserts.AssertCursor(str)
	return str
end

function asserts.AssertQueryOptions(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryOptions to be of type 'string'")
end

--  
function M.QueryOptions(str)
	asserts.AssertQueryOptions(str)
	return str
end

function asserts.AssertSuggester(str)
	assert(str)
	assert(type(str) == "string", "Expected Suggester to be of type 'string'")
end

--  
function M.Suggester(str)
	asserts.AssertSuggester(str)
	return str
end

function asserts.AssertHighlight(str)
	assert(str)
	assert(type(str) == "string", "Expected Highlight to be of type 'string'")
end

--  
function M.Highlight(str)
	asserts.AssertHighlight(str)
	return str
end

function asserts.AssertFacet(str)
	assert(str)
	assert(type(str) == "string", "Expected Facet to be of type 'string'")
end

--  
function M.Facet(str)
	asserts.AssertFacet(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected Query to be of type 'string'")
end

--  
function M.Query(str)
	asserts.AssertQuery(str)
	return str
end

function asserts.AssertQueryParser(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryParser to be of type 'string'")
end

--  
function M.QueryParser(str)
	asserts.AssertQueryParser(str)
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

function asserts.AssertAdds(long)
	assert(long)
	assert(type(long) == "number", "Expected Adds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Adds(long)
	asserts.AssertAdds(long)
	return long
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertStart(long)
	assert(long)
	assert(type(long) == "number", "Expected Start to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Start(long)
	asserts.AssertStart(long)
	return long
end

function asserts.AssertDeletes(long)
	assert(long)
	assert(type(long) == "number", "Expected Deletes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Deletes(long)
	asserts.AssertDeletes(long)
	return long
end

function asserts.AssertSuggestionsSize(long)
	assert(long)
	assert(type(long) == "number", "Expected SuggestionsSize to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.SuggestionsSize(long)
	asserts.AssertSuggestionsSize(long)
	return long
end

function asserts.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	asserts.AssertSize(long)
	return long
end

function asserts.AssertPartial(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Partial to be of type 'boolean'")
end

function M.Partial(boolean)
	asserts.AssertPartial(boolean)
	return boolean
end

function asserts.AssertHighlights(map)
	assert(map)
	assert(type(map) == "table", "Expected Highlights to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.Highlights(map)
	asserts.AssertHighlights(map)
	return map
end

function asserts.AssertStats(map)
	assert(map)
	assert(type(map) == "table", "Expected Stats to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertFieldStats(v)
	end
end

function M.Stats(map)
	asserts.AssertStats(map)
	return map
end

function asserts.AssertFields(map)
	assert(map)
	assert(type(map) == "table", "Expected Fields to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertFieldValue(v)
	end
end

function M.Fields(map)
	asserts.AssertFields(map)
	return map
end

function asserts.AssertFacets(map)
	assert(map)
	assert(type(map) == "table", "Expected Facets to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertBucketInfo(v)
	end
end

function M.Facets(map)
	asserts.AssertFacets(map)
	return map
end

function asserts.AssertExprs(map)
	assert(map)
	assert(type(map) == "table", "Expected Exprs to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.Exprs(map)
	asserts.AssertExprs(map)
	return map
end

function asserts.AssertBlob(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	asserts.AssertBlob(blob)
	return blob
end

function asserts.AssertDocumentServiceWarnings(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentServiceWarnings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentServiceWarning(v)
	end
end

--  
-- List of DocumentServiceWarning objects
function M.DocumentServiceWarnings(list)
	asserts.AssertDocumentServiceWarnings(list)
	return list
end

function asserts.AssertFieldValue(list)
	assert(list)
	assert(type(list) == "table", "Expected FieldValue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.FieldValue(list)
	asserts.AssertFieldValue(list)
	return list
end

function asserts.AssertHitList(list)
	assert(list)
	assert(type(list) == "table", "Expected HitList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHit(v)
	end
end

--  
-- List of Hit objects
function M.HitList(list)
	asserts.AssertHitList(list)
	return list
end

function asserts.AssertSuggestions(list)
	assert(list)
	assert(type(list) == "table", "Expected Suggestions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSuggestionMatch(v)
	end
end

--  
-- List of SuggestionMatch objects
function M.Suggestions(list)
	asserts.AssertSuggestions(list)
	return list
end

function asserts.AssertBucketList(list)
	assert(list)
	assert(type(list) == "table", "Expected BucketList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBucket(v)
	end
end

--  
-- List of Bucket objects
function M.BucketList(list)
	asserts.AssertBucketList(list)
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
			return "cloudsearchdomain.amazonaws.com"
		end
	end
	local ss = { "cloudsearchdomain" }
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
--- Suggest
-- @param SuggestRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SuggestAsync(SuggestRequest, cb)
	assert(SuggestRequest, "You must provide a SuggestRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Suggest",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-01-01/suggest?format=sdk&pretty=true", SuggestRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Search
-- @param SearchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SearchAsync(SearchRequest, cb)
	assert(SearchRequest, "You must provide a SearchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Search",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-01-01/search?format=sdk&pretty=true", SearchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadDocuments
-- @param UploadDocumentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadDocumentsAsync(UploadDocumentsRequest, cb)
	assert(UploadDocumentsRequest, "You must provide a UploadDocumentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadDocuments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-01-01/documents/batch?format=sdk", UploadDocumentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
