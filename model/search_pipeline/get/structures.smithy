// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch

@input
structure GetSearchPipelines_Input {
}

@output
structure GetSearchPipelines_Output {
    @httpPayload
    content: SearchPipelineMap
}

@input
structure GetSearchPipeline_Input {
    @required
    @httpLabel
    pipeline: String,
}

@output
structure GetSearchPipeline_Output {
    @httpPayload
    content: SearchPipelineMap
}
