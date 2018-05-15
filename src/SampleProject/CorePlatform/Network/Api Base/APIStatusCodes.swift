//
//  APIStatusCodes.swift
//  SampleProject
//
//  Created by Hasnain on 3/20/18.
//  Copyright © 2018 Hasnain Haider. All rights reserved.
//
import Foundation
public enum ErrorTypes : Error {
    case NilError
    case InvalidStatusCodeError
}

public enum HttpStatusCode: Int{
    case Http100_Continue = 100
    case Http101_SwitchingProtocols = 101
    case Http102_Processing = 102
  
    /**
     The request has succeeded. The information returned with the response is dependent on the method used in the request, for example:
     
     - GET an entity corresponding to the requested resource is sent in the response;
     - HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
     - POST an entity describing or containing the result of the action;
     - TRACE an entity containing the request message as received by the end server.
     
     Wikipedia
     Standard response for successful HTTP requests. The actual response will depend on the request method used. In a GET request, the response will contain an entity corresponding to the requested resource. In a POST request the response will contain an entity describing or containing the result of the action.
     
     * General status code. Most common code used to indicate success.
     **/
    case Http200_OK = 200
    
    /**
     The request has been fulfilled and resulted in a new resource being created. The newly created resource can be referenced by the URI(s) returned in the entity of the response, with the most specific URI for the resource given by a Location header field. The response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. The entity format is specified by the media type given in the Content-Type header field. The origin server MUST create the resource before returning the 201 status code. If the action cannot be carried out immediately, the server SHOULD respond with 202 (Accepted) response instead.
     
     A 201 response MAY contain an ETag response header field indicating the current value of the entity tag for the requested variant just created, see section 14.19.
     
     Wikipedia
     The request has been fulfilled and resulted in a new resource being created.
     
     * Successful creation occurred (via either POST or PUT). Set the Location header to contain a link to the newly-created resource (on POST). Response body content may or may not be present.
     **/
    case Http201_Created = 201
    case Http202_Accepted = 202
    case Http203_NonAuthoritativeInformation = 203
    
    /**
     The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation. The response MAY include new or updated metainformation in the form of entity-headers, which if present SHOULD be associated with the requested variant.
     
     If the client is a user agent, it SHOULD NOT change its document view from that which caused the request to be sent. This response is primarily intended to allow input for actions to take place without causing a change to the user agent's active document view, although any new or updated metainformation SHOULD be applied to the document currently in the user agent's active view.
     
     The 204 response MUST NOT include a message-body, and thus is always terminated by the first empty line after the header fields.
     
     Wikipedia
     The server successfully processed the request, but is not returning any content.
     
     * Status when wrapped responses (e.g. JSEND) are not used and nothing is in the body (e.g. DELETE).
     **/
    case Http204_NoContent = 204
    case Http205_ResetContent = 205
    case Http206_PartialContent = 206
    case Http207_MultiStatus = 207
    case Http208_AlreadyReported = 208
    case Http209_IMUsed = 209
    
    case Http300_MultipleChoices = 300
    case Http301_MovedPermanently = 301
    case Http302_Found = 302
    case Http303_SeeOther = 303
    /**
     If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields.
     
     The response MUST include the following header fields:
     
     - Date, unless its omission is required by section 14.18.1
     
     If a clockless origin server obeys these rules, and proxies and clients add their own Date to any response received without one (as already specified by [RFC 2068], section 14.19), caches will operate correctly.
     
     - ETag and/or Content-Location, if the header would have been sent in a 200 response to the same request
     - Expires, Cache-Control, and/or Vary, if the field-value might differ from that sent in any previous response for the same variant
     
     If the conditional GET used a strong cache validator (see section 13.3.3), the response SHOULD NOT include other entity-headers. Otherwise (i.e., the conditional GET used a weak validator), the response MUST NOT include other entity-headers; this prevents inconsistencies between cached entity-bodies and updated headers.
     
     If a 304 response indicates an entity not currently cached, then the cache MUST disregard the response and repeat the request without the conditional.
     
     If a cache uses a received 304 response to update a cache entry, the cache MUST update the entry to reflect any new field values given in the response.
     
     Wikipedia
     Indicates the resource has not been modified since last requested. Typically, the HTTP client provides a header like the If-Modified-Since header to provide a time against which to compare. Using this saves bandwidth and reprocessing on both the server and client, as only the header data must be sent and received in comparison to the entirety of the page being re-processed by the server, then sent again using more bandwidth of the server and client.
     
     * Used for conditional GET calls to reduce band-width usage. If used, must set the Date, Content-Location, ETag headers to what they would have been on a regular GET call. There must be no body on the response.
     **/
    case Http304_NotModified = 304
    case Http305_UseProxy = 305
    case Http306_SwitchProxy = 306
    case Http307_TemporaryRedirect = 307
    case Http308_PermanentRedirect = 308
    
    /**
     The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
     
     Wikipedia
     The request cannot be fulfilled due to bad syntax.
     
     * General error when fulfilling the request would cause an invalid state. Domain validation errors, missing data, etc. are some examples.
     **/
    case Http400_BadRequest = 400
    /**
     The request requires user authentication. The response MUST include a WWW-Authenticate header field (section 14.47) containing a challenge applicable to the requested resource. The client MAY repeat the request with a suitable Authorization header field (section 14.8). If the request already included Authorization credentials, then the 401 response indicates that authorization has been refused for those credentials. If the 401 response contains the same challenge as the prior response, and the user agent has already attempted authentication at least once, then the user SHOULD be presented the entity that was given in the response, since that entity might include relevant diagnostic information. HTTP access authentication is explained in "HTTP Authentication: Basic and Digest Access Authentication".
     
     Wikipedia
     Similar to 403 Forbidden, but specifically for use when authentication is possible but has failed or not yet been provided. The response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource. See Basic access authentication and Digest access authentication.
     
     * Error code response for missing or invalid authentication token.
     **/
    case Http401_Unauthorized = 401
    case Http402_PaymentRequired = 402
    
    /**
     The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated. If the request method was not HEAD and the server wishes to make public why the request has not been fulfilled, it SHOULD describe the reason for the refusal in the entity. If the server does not wish to make this information available to the client, the status code 404 (Not Found) can be used instead.
     
     Wikipedia
     The request was a legal request, but the server is refusing to respond to it. Unlike a 401 Unauthorized response, authenticating will make no difference.
     
     * Error code for user not authorized to perform the operation or the resource is unavailable for some reason (e.g. time constraints, etc.).
     **/
    case Http403_Forbidden = 403
    
    /**
     The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent. The 410 (Gone) status code SHOULD be used if the server knows, through some internally configurable mechanism, that an old resource is permanently unavailable and has no forwarding address. This status code is commonly used when the server does not wish to reveal exactly why the request has been refused, or when no other response is applicable.
     
     Wikipedia
     The requested resource could not be found but may be available again in the future. Subsequent requests by the client are permissible.
     
     * Used when the requested resource is not found, whether it doesn't exist or if there was a 401 or 403 that, for security reasons, the service wants to mask.
     **/
    case Http404_NotFound = 404
    case Http405_MethodNotAllowed = 405
    case Http406_NotAcceptable = 406
    case Http407_ProxyAuthenticationRequired = 407
    case Http408_RequestTimeout = 408
    /**
     The request could not be completed due to a conflict with the current state of the resource. This code is only allowed in situations where it is expected that the user might be able to resolve the conflict and resubmit the request. The response body SHOULD include enough information for the user to recognize the source of the conflict. Ideally, the response entity would include enough information for the user or user agent to fix the problem; however, that might not be possible and is not required.
     
     Conflicts are most likely to occur in response to a PUT request. For example, if versioning were being used and the entity being PUT included changes to a resource which conflict with those made by an earlier (third-party) request, the server might use the 409 response to indicate that it can't complete the request. In this case, the response entity would likely contain a list of the differences between the two versions in a format defined by the response Content-Type.
     
     Wikipedia
     Indicates that the request could not be processed because of conflict in the request, such as an edit conflict.
     
     * Whenever a resource conflict would be caused by fulfilling the request. Duplicate entries and deleting root objects when cascade-delete is not supported are a couple of examples.
     **/
    case Http409_Conflict = 409
    case Http410_Gone = 410
    case Http411_LengthRequired = 411
    case Http412_PreconditionFailed = 412
    case Http413_RequestEntityTooLarge = 413
    case Http414_RequestURITooLong = 414
    case Http415_UnsupportedMediaType = 415
    case Http416_RequestedRangeNotSatisfiable = 416
    case Http417_ExpectationFailed = 417
    case Http418_IamATeapot = 418
    case Http419_AuthenticationTimeout = 419
    case Http420_MethodFailureSpringFramework_OR_EnhanceYourCalmTwitter = 420
    case Http422_UnprocessableEntity = 422
    case Http423_Locked = 423
    case Http424_FailedDependency_OR_MethodFailureWebDaw = 424
    case Http425_UnorderedCollection = 425
    case Http426_UpgradeRequired = 426
    case Http428_PreconditionRequired = 428
    case Http429_TooManyRequests = 429
    case Http431_RequestHeaderFieldsTooLarge = 431
    case Http444_NoResponseNginx = 444
    case Http449_RetryWithMicrosoft = 449
    case Http450_BlockedByWindowsParentalControls = 450
    case Http451_RedirectMicrosoft_OR_UnavailableForLegalReasons = 451
    case Http494_RequestHeaderTooLargeNginx = 494
    case Http495_CertErrorNginx = 495
    case Http496_NoCertNginx = 496
    case Http497_HTTPToHTTPSNginx = 497
    case Http499_ClientClosedRequestNginx = 499
    
    /**
     The server encountered an unexpected condition which prevented it from fulfilling the request.
     
     Wikipedia
     A generic error message, given when no more specific message is suitable.
     
     * The general catch-all error when the server-side throws an exception.
     **/
    case Http500_InternalServerError = 500
    case Http501_NotImplemented = 501
    case Http502_BadGateway = 502
    case Http503_ServiceUnavailable = 503
    case Http504_GatewayTimeout = 504
    case Http505_HTTPVersionNotSupported = 505
    case Http506_VariantAlsoNegotiates = 506
    case Http507_InsufficientStorage = 507
    case Http508_LoopDetected = 508
    case Http509_BandwidthLimitExceeded = 509
    case Http510_NotExtended = 510
    case Http511_NetworkAuthenticationRequired = 511
    case Http522_ConnectionTimedOut = 522
    case Http598_NetworkReadTimeoutErrorUnknown = 598
    case Http599_NetworkConnectTimeoutErrorUnknown = 599
    
    
    
}
