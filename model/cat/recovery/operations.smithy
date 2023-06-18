// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch
use opensearch.openapi#vendorExtensions

@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest/api-reference/cat/cat-plugins/"
)

@vendorExtensions(
    "x-operation-group": "cat.recovery",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_cat/recovery")
@documentation("Returns information about index shard recoveries, both on-going completed.")
operation CatRecovery {
    input: CatRecovery_Input,
    output: CatRecovery_Output
}

@vendorExtensions(
    "x-operation-group": "cat.recovery",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_cat/recovery/{index}")
@documentation("Returns information about index shard recoveries, both on-going completed.")
operation CatRecovery_WithIndex {
    input: CatRecovery_WithIndex_Input,
    output: CatRecovery_Output
}
