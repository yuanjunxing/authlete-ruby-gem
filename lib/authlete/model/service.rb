# :nodoc:
#
# Copyright (C) 2014-2019 Authlete, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'set'


module Authlete
  module Model
    class Service < Authlete::Model::Hashable
      include Authlete::Utility
      # The duration of access tokens in seconds. (Integer)
      attr_accessor :accessTokenDuration
      alias_method  :access_token_duration,  :accessTokenDuration
      alias_method  :access_token_duration=, :accessTokenDuration=

      # The signature algorithm for access tokens. (String)
      attr_accessor :accessTokenSignAlg
      alias_method  :access_token_sign_alg,  :accessTokenSignAlg
      alias_method  :access_token_sign_alg=, :accessTokenSignAlg=

      # The key ID to identify a JWK used for signing access tokens. (String)
      attr_accessor :accessTokenSignatureKeyId
      alias_method  :access_token_signature_key_id,  :accessTokenSignatureKeyId
      alias_method  :access_token_signature_key_id=, :accessTokenSignatureKeyId=

      # The access token type. (String)
      attr_accessor :accessTokenType
      alias_method  :access_token_type,  :accessTokenType
      alias_method  :access_token_type=, :accessTokenType=

      # The allowable clock skew between the server and clients in seconds.
      # The clock skew is taken into consideration when time-related claims
      # in a JWT (e.g. +exp+, +iat+, +nbf+) are verified. (Integer)
      attr_accessor :allowableClockSkew
      alias_method  :allowable_clock_skew,  :allowableClockSkew
      alias_method  :allowable_clock_skew=, :allowableClockSkew=

      # The API key. (Integer)
      attr_accessor :apiKey
      alias_method  :api_key,  :apiKey
      alias_method  :api_key=, :apiKey=

      # The API secret. (String)
      attr_accessor :apiSecret
      alias_method  :api_secret,  :apiSecret
      alias_method  :api_secret=, :apiSecret=

      # The API key to access the authentication callback endpoint. (String)
      attr_accessor :authenticationCallbackApiKey
      alias_method  :authentication_callback_api_key,  :authenticationCallbackApiKey
      alias_method  :authentication_callback_api_key=, :authenticationCallbackApiKey=

      # The API secret to access the authentication callback endpoint. (String)
      attr_accessor :authenticationCallbackApiSecret
      alias_method  :authentication_callback_api_secret,  :authenticationCallbackApiSecret
      alias_method  :authentication_callback_api_secret=, :authenticationCallbackApiSecret=

      # The URI of the authentication callback endpoint. (String)
      attr_accessor :authenticationCallbackEndpoint
      alias_method  :authentication_callback_endpoint,  :authenticationCallbackEndpoint
      alias_method  :authentication_callback_endpoint=, :authenticationCallbackEndpoint=

      # The URI of the authorization endpoint. (String)
      attr_accessor :authorizationEndpoint
      alias_method  :authorization_endpoint,  :authorizationEndpoint
      alias_method  :authorization_endpoint=, :authorizationEndpoint=

      # The duration of access tokens in seconds; the value of +expires_in+
      # in access token responses. (Integer)
      attr_accessor :authorizationResponseDuration
      alias_method  :authorization_response_duration,  :authorizationResponseDuration
      alias_method  :authorization_response_duration=, :authorizationResponseDuration=

      # The key ID to identify a JWK used for signing authorization responses
      # using an asymmetric key. (String)
      attr_accessor :authorizationSignatureKeyId
      alias_method  :authorization_signature_key_id,  :authorizationSignatureKeyId
      alias_method  :authorization_signature_key_id=, :authorizationSignatureKeyId=

      # The URI of the backchannel authentication endpoint. (String)
      attr_accessor :backchannelAuthenticationEndpoint
      alias_method  :backchannel_authentication_endpoint,  :backchannelAuthenticationEndpoint
      alias_method  :backchannel_authentication_endpoint=, :backchannelAuthenticationEndpoint=

      # The duration of backchannel authentication request IDs in seconds.
      # (Integer)
      attr_accessor :backchannelAuthReqIdDuration
      alias_method  :backchannel_auth_req_id_duration,  :backchannelAuthReqIdDuration
      alias_method  :backchannel_auth_req_id_duration=, :backchannelAuthReqIdDuration=

      # The flag indicating whether the +binding_message+ request parameter
      # is always required whenever a backchannel authentication request is
      # judged as a request for Financial-grade API. (Boolean)
      attr_accessor :backchannelBindingMessageRequiredInFapi
      alias_method  :backchannel_binding_message_required_in_fapi,  :backchannelBindingMessageRequiredInFapi
      alias_method  :backchannel_binding_message_required_in_fapi=, :backchannelBindingMessageRequiredInFapi=

      # The minimum interval between polling requests in seconds. (Integer)
      attr_accessor :backchannelPollingInterval
      alias_method  :backchannel_polling_interval,  :backchannelPollingInterval
      alias_method  :backchannel_polling_interval=, :backchannelPollingInterval=

      # The flag which indicates whether the +user_code+ request parameter
      # is supported at the backchannel authentication endpoint. (Boolean)
      attr_accessor :backchannelUserCodeParameterSupported
      alias_method  :backchannel_user_code_parameter_supported,  :backchannelUserCodeParameterSupported
      alias_method  :backchannel_user_code_parameter_supported=, :backchannelUserCodeParameterSupported=

      # The flag which indicates whether the 'Client ID Alias' feature
      # is enabled or not. (Boolean)
      attr_accessor :clientIdAliasEnabled
      alias_method  :client_id_alias_enabled,  :clientIdAliasEnabled
      alias_method  :client_id_alias_enabled=, :clientIdAliasEnabled=

      # The number of client applications that one developer can create.
      # 0 means no limit. (Integer)
      attr_accessor :clientsPerDeveloper
      alias_method  :clients_per_developer,  :clientsPerDeveloper
      alias_method  :clients_per_developer=, :clientsPerDeveloper=

      # The timestamp at which the service was created. (Integer)
      attr_accessor :createdAt
      alias_method  :created_at,  :createdAt
      alias_method  :created_at=, :createdAt=

      # The description of this service. (String)
      attr_accessor :description

      # The API key to access the developer authentication callback endpoint. (String)
      attr_accessor :developerAuthenticationCallbackApiKey
      alias_method  :developer_authentication_callback_api_key,  :developerAuthenticationCallbackApiKey
      alias_method  :developer_authentication_callback_api_key=, :developerAuthenticationCallbackApiKey=

      # The API secret to access the developer authentication callback endpoint. (String)
      attr_accessor :developerAuthenticationCallbackApiSecret
      alias_method  :developer_authentication_callback_api_secret,  :developerAuthenticationCallbackApiSecret
      alias_method  :developer_authentication_callback_api_secret=, :developerAuthenticationCallbackApiSecret=

      # The URI of the developer authentication callback endpoint. (String)
      attr_accessor :developerAuthenticationCallbackEndpoint
      alias_method  :developer_authentication_callback_endpoint,  :developerAuthenticationCallbackEndpoint
      alias_method  :developer_authentication_callback_endpoint=, :developerAuthenticationCallbackEndpoint=

      # The list of SNS credentials for developer login. (SnsCredentials array)
      attr_accessor :developerSnsCredentials
      alias_method  :developer_sns_credentials,  :developerSnsCredentials
      alias_method  :developer_sns_credentials=, :developerSnsCredentials=

      # The URI of the device authorization endpoint. (String)
      attr_accessor :deviceAuthorizationEndpoint
      alias_method  :device_authorization_endpoint,  :deviceAuthorizationEndpoint
      alias_method  :device_authorization_endpoint=, :deviceAuthorizationEndpoint=

      # The duration of device verification codes (device_code) and
      # end-user verification codes (user_code) in seconds. (Integer)
      attr_accessor :deviceFlowCodeDuration
      alias_method  :device_flow_code_duration,  :deviceFlowCodeDuration
      alias_method  :device_flow_code_duration=, :deviceFlowCodeDuration=

      # The minimum interval between polling requests in Device Flow in seconds. (Integer)
      attr_accessor :deviceFlowPollingInterval
      alias_method  :device_flow_polling_interval,  :deviceFlowPollingInterval
      alias_method  :device_flow_polling_interval=, :deviceFlowPollingInterval=

      # The verification URI for Device Flow. (String)
      attr_accessor :deviceVerificationUri
      alias_method  :device_verification_uri,  :deviceVerificationUri
      alias_method  :device_verification_uri=, :deviceVerificationUri=

      # The verification URI for Device Flow with a placeholder for a user code. (String)
      attr_accessor :deviceVerificationUriComplete
      alias_method  :device_verification_uri_complete,  :deviceVerificationUriComplete
      alias_method  :device_verification_uri_complete=, :deviceVerificationUriComplete=

      # The flag to indicate whether the direct authorization endpoint
      # is enabled or not. The path of the endpoint is
      # <code>/api/auth/authorization/direct/{serviceApiKey}</code>.
      # (Boolean)
      attr_accessor :directAuthorizationEndpointEnabled
      alias_method  :direct_authorization_endpoint_enabled,  :directAuthorizationEndpointEnabled
      alias_method  :direct_authorization_endpoint_enabled=, :directAuthorizationEndpointEnabled=

      # The flag to indicate whether the direct introspection endpoint
      # is enabled or not. The path of the endpoint is
      # <code>/api/auth/introspection/direct/{serviceApiKey}</code>.
      # (Boolean)
      attr_accessor :directIntrospectionEndpointEnabled
      alias_method  :direct_introspection_endpoint_enabled,  :directIntrospectionEndpointEnabled
      alias_method  :direct_introspection_endpoint_enabled=, :directIntrospectionEndpointEnabled=

      # The flag to indicate whether the direct jwks endpoint
      # is enabled or not. The path of the endpoint is
      # <code>/api/service/jwks/get/direct/{serviceApiKey}</code>.
      # (Boolean)
      attr_accessor :directJwksEndpointEnabled
      alias_method  :direct_jwks_endpoint_enabled,  :directJwksEndpointEnabled
      alias_method  :direct_jwks_endpoint_enabled=, :directJwksEndpointEnabled=

      # The flag to indicate whether the direct revocation endpoint
      # is enabled or not. The path of the endpoint is
      # <code>/api/auth/revocation/direct/{serviceApiKey}</code>.
      # (Boolean)
      attr_accessor :directRevocationEndpointEnabled
      alias_method  :direct_revocation_endpoint_enabled,  :directRevocationEndpointEnabled
      alias_method  :direct_revocation_endpoint_enabled=, :directRevocationEndpointEnabled=

      # The flag to indicate whether the direct token endpoint
      # is enabled or not. The path of the endpoint is
      # <code>/api/auth/token/direct/{serviceApiKey}</code>.
      # (Boolean)
      attr_accessor :directTokenEndpointEnabled
      alias_method  :direct_token_endpoint_enabled,  :directTokenEndpointEnabled
      alias_method  :direct_token_endpoint_enabled=, :directTokenEndpointEnabled=

      # The flag to indicate whether the direct user info endpoint
      # is enabled or not. The path of the endpoint is
      # <code>/api/auth/userinfo/direct/{serviceApiKey}</code>.
      # (Boolean)
      attr_accessor :directUserInfoEndpointEnabled
      alias_method  :direct_user_info_endpoint_enabled,  :directUserInfoEndpointEnabled
      alias_method  :direct_user_info_endpoint_enabled=, :directUserInfoEndpointEnabled=

      # The flag to indicate whether the <code>error_description</code>
      # response parameter is omitted. (Boolean)
      attr_accessor :errorDescriptionOmitted
      alias_method  :error_description_omitted,  :errorDescriptionOmitted
      alias_method  :error_description_omitted=, :errorDescriptionOmitted=

      # The flag to indicate whether the <code>error_uri</code>
      # response parameter is omitted. (Boolean)
      attr_accessor :errorUriOmitted
      alias_method  :error_uri_omitted,  :errorUriOmitted
      alias_method  :error_uri_omitted=, :errorUriOmitted=

      # The duration of ID tokens in seconds. (Integer)
      attr_accessor :idTokenDuration
      alias_method  :id_token_duration,  :idTokenDuration
      alias_method  :id_token_duration=, :idTokenDuration=

      # The key ID to identify a JWK used for ID token signature using an
      # asymmetric key. (String)
      attr_accessor :idTokenSignatureKeyId
      alias_method  :id_token_signature_key_id,  :idTokenSignatureKeyId
      alias_method  :id_token_signature_key_id=, :idTokenSignatureKeyId=

      # The URI of the introspection endpoint. (String)
      attr_accessor :introspectionEndpoint
      alias_method  :introspection_endpoint,  :introspectionEndpoint
      alias_method  :introspection_endpoint=, :introspectionEndpoint=

      # The issuer identifier of this OpenID Provider. (String)
      attr_accessor :issuer

      # The JSON Web Key Set of this service. (String)
      attr_accessor :jwks

      # The URI of the service's JSON Web Key Set. (String)
      attr_accessor :jwksUri
      alias_method  :jwks_uri,  :jwksUri
      alias_method  :jwks_uri=, :jwksUri=

      # The metadata of the service. (Pair Array)
      attr_accessor :metadata

      # The timestamp at which the service was modified. (Integer)
      attr_accessor :modifiedAt
      alias_method  :modified_at,  :modifiedAt
      alias_method  :modified_at=, :modifiedAt=

      # The flag that indicates whether the service will validate the PKI certificate chain
      # for MTLS based authentication. (Boolean)
      attr_accessor :mutualTlsValidatePkiCertChain
      alias_method  :mutual_tls_validate_pki_cert_chain,  :mutualTlsValidatePkiCertChain
      alias_method  :mutual_tls_validate_pki_cert_chain=, :mutualTlsValidatePkiCertChain=

      # The service number. (Integer)
      attr_accessor :number

      # The flag to indicate whether the use of Proof Key for Code
      # Exchange (PKCE) is always required for authorization requests
      # Authorization Code Flow.
      # (Boolean)
      attr_accessor :pkceRequired
      alias_method  :pkce_required,  :pkceRequired
      alias_method  :pkce_required=, :pkceRequired=

      # The flag indicating whether S256 is required as the code challenge
      # method whenever PKCE is used. (Boolean)
      attr_accessor :pkceS256Required
      alias_method  :pkce_s256_required,  :pkceS256Required
      alias_method  :pkce_s256_required=, :pkceS256Required=

      # The URI of the service's policy page. (String)
      attr_accessor :policyUri
      alias_method  :policy_uri,  :policyUri
      alias_method  :policy_uri=, :policyUri=

      # The duration of refresh tokens in seconds. (Integer)
      attr_accessor :refreshTokenDuration
      alias_method  :refresh_token_duration,  :refreshTokenDuration
      alias_method  :refresh_token_duration=, :refreshTokenDuration=

      # The flag to indicate whether a refresh token remains unchanged
      # or gets renewed after its use.
      # (Boolean)
      attr_accessor :refreshTokenKept
      alias_method  :refresh_token_kept,  :refreshTokenKept
      alias_method  :refresh_token_kept=, :refreshTokenKept=

      # The URI of the registration endpoint. (String)
      attr_accessor :registrationEndpoint
      alias_method  :registration_endpoint,  :registrationEndpoint
      alias_method  :registration_endpoint=, :registrationEndpoint=

      # The URI of the token revocation endpoint. (String)
      attr_accessor :revocationEndpoint
      alias_method  :revocation_endpoint,  :revocationEndpoint
      alias_method  :revocation_endpoint=, :revocationEndpoint=

      # The URI of the service's documentation. (String)
      attr_accessor :serviceDocumentation
      alias_method  :service_documentation,  :serviceDocumentation
      alias_method  :service_documentation=, :serviceDocumentation=

      # The service name. (String)
      attr_accessor :serviceName
      alias_method  :service_name,  :serviceName
      alias_method  :service_name=, :serviceName=

      # The service owner number. (Integer)
      attr_accessor :serviceOwnerNumber
      alias_method  :service_owner_number,  :serviceOwnerNumber
      alias_method  :service_owner_number=, :serviceOwnerNumber=

      # The flag to indicate whether the number of access tokens
      # per subject (and per client) is at most one or can be more. (Boolean)
      attr_accessor :singleAccessTokenPerSubject
      alias_method  :single_access_token_per_subject,  :singleAccessTokenPerSubject
      alias_method  :single_access_token_per_subject=, :singleAccessTokenPerSubject=

      # The list of SNS credentials. (SnsCredentials array)
      attr_accessor :snsCredentials
      alias_method  :sns_credentials,  :snsCredentials
      alias_method  :sns_credentials=, :snsCredentials=

      # The list of supported ACRs. (String array)
      attr_accessor :supportedAcrs
      alias_method  :supported_acrs,  :supportedAcrs
      alias_method  :supported_acrs=, :supportedAcrs=

      # The list of supported claim locales. (String array)
      attr_accessor :supportedClaimLocales
      alias_method  :supported_claim_locales,  :supportedClaimLocales
      alias_method  :supported_claim_locales=, :supportedClaimLocales=

      # The list of supported claims. (String array)
      attr_accessor :supportedClaims
      alias_method  :supported_claims,  :supportedClaims
      alias_method  :supported_claims=, :supportedClaims=

      # The list of supported claim types. (String array)
      #
      # Valid values are "NORMAL", "AGGREGATED" and "DISTRIBUTED".
      attr_accessor :supportedClaimTypes
      alias_method  :supported_claim_types,  :supportedClaimTypes
      alias_method  :supported_claim_types=, :supportedClaimTypes=

      # The list of supported SNSes for developer login. (Sns array)
      attr_accessor :supportedDeveloperSnses
      alias_method  :supported_developer_snses,  :supportedDeveloperSnses
      alias_method  :supported_developer_snses=, :supportedDeveloperSnses=

      # The list of supported values of +display+ parameter. (String array)
      #
      # Valid values are "PAGE", "POPUP", "TOUCH" and "WAP".
      attr_accessor :supportedDisplays
      alias_method  :supported_displays,  :supportedDisplays
      alias_method  :supported_displays=, :supportedDisplays=

      # The list of supported grant types. (String array)
      #
      # Valid values are "AUTHORIZATION_CODE", "IMPLICIT", "PASSWORD",
      # "CLIENT_CREDENTIALS" and "REFRESH_TOKEN".
      attr_accessor :supportedGrantTypes
      alias_method  :supported_grant_types,  :supportedGrantTypes
      alias_method  :supported_grant_types=, :supportedGrantTypes=

      # The list of supported response types. (String array)
      #
      # Valid values are "NONE", "CODE", "TOKEN", "ID_TOKEN",
      # "CODE_TOKEN", "CODE_ID_TOKEN", "ID_TOKEN_TOKEN" and
      # "CODE_ID_TOKEN_TOKEN".
      attr_accessor :supportedResponseTypes
      alias_method  :supported_response_types,  :supportedResponseTypes
      alias_method  :supported_response_types=, :supportedResponseTypes=

      # The list of supported scopes. (Scope array)
      attr_accessor :supportedScopes
      alias_method  :supported_scopes,  :supportedScopes
      alias_method  :supported_scopes=, :supportedScopes=

      # The list of supported service profiles. (String array)
      attr_accessor :supportedServiceProfiles
      alias_method  :supported_service_profiles,  :supportedServiceProfiles
      alias_method  :supported_service_profiles=, :supportedServiceProfiles=

      # The list of supported SNSes. (Sns array)
      attr_accessor :supportedSnses
      alias_method  :supported_snses,  :supportedSnses
      alias_method  :supported_snses=, :supportedSnses=

      # The list of supported client authentication methods at the token endpoint. (String array)
      #
      # Valid values are "NONE", "CLIENT_SECRET_BASIC", "CLIENT_SECRET_POST",
      # "CLIENT_SECRET_JWT" and "PRIVATE_KEY_JWT".
      attr_accessor :supportedTokenAuthMethods
      alias_method  :supported_token_auth_methods,  :supportedTokenAuthMethods
      alias_method  :supported_token_auth_methods=, :supportedTokenAuthMethods=

      # The list of supported backchannel token delivery modes. (String array)
      # Valid values are "POLL", "PING" and "PUSH".
      attr_accessor :supportedBackchannelTokenDeliveryModes
      alias_method  :supported_backchannel_token_delivery_modes,  :supportedBackchannelTokenDeliveryModes
      alias_method  :supported_backchannel_token_delivery_modes=, :supportedBackchannelTokenDeliveryModes=

      # The list of supported UI locales. (String array)
      attr_accessor :supportedUiLocales
      alias_method  :supported_ui_locales,  :supportedUiLocales
      alias_method  :supported_ui_locales=, :supportedUiLocales=

      # The flag that indicates whether the service offers TLS client certificate
      # bound access tokens (Boolean)
      attr_accessor :tlsClientCertificateBoundAccessTokens
      alias_method  :tls_client_certificate_bound_access_tokens,  :tlsClientCertificateBoundAccessTokens
      alias_method  :tls_client_certificate_bound_access_tokens=, :tlsClientCertificateBoundAccessTokens=

      # The URI of the token endpoint. (String)
      attr_accessor :tokenEndpoint
      alias_method  :token_endpoint,  :tokenEndpoint
      alias_method  :token_endpoint=, :tokenEndpoint=

      # The URI of the service's "Terms Of Service" page. (String)
      attr_accessor :tosUri
      alias_method  :tos_uri,  :tosUri
      alias_method  :tos_uri=, :tosUri=

      # The list of trusted root certificates, used when the service validates client
      # certificate paths. (String array)
      attr_accessor :trustedRootCertificates
      alias_method  :trusted_root_certificates,  :trustedRootCertificates
      alias_method  :trusted_root_certificates=, :trustedRootCertificates=

      # The character set for user codes. (String)
      attr_accessor :userCodeCharset
      alias_method  :user_code_charset,  :userCodeCharset
      alias_method  :user_code_charset=, :userCodeCharset=

      # The length of user codes. (Integer)
      attr_accessor :userCodeLength
      alias_method  :user_code_length,  :userCodeLength
      alias_method  :user_code_length=, :userCodeLength=

      # The URI of user info endpoint. (String)
      attr_accessor :userInfoEndpoint
      alias_method  :user_info_endpoint,  :userInfoEndpoint
      alias_method  :user_info_endpoint=, :userInfoEndpoint=

      # The key ID to identify a JWK used for user info signature using an
      # asymmetric key. (String)
      attr_accessor :userInfoSignatureKeyId
      alias_method  :user_info_signature_key_id,  :userInfoSignatureKeyId
      alias_method  :user_info_signature_key_id=, :userInfoSignatureKeyId=

      # Flag of whether this service supports dynamic client registration.
      # (Boolean)
      attr_accessor :dynamicRegistrationSupported
      alias_method  :dynamic_registration_supported,  :dynamicRegistrationSupported
      alias_method  :dynamic_registration_supported=, :dynamicRegistrationSupported=

      # The base URI of the service's "Dynamic Client Registration Management"
      # endpoint. Client management URIs will be based on this by adding the
      # client ID as a path component. (String)
      attr_accessor :registrationManagementEndpoint
      alias_method  :registration_management_endpoint,  :registrationManagementEndpoint
      alias_method  :registration_management_endpoint=, :registrationManagementEndpoint=

      # The URI of request object endpoint. (String)
      attr_accessor :requestObjectEndpoint
      alias_method  :request_object_endpoint,  :requestObjectEndpoint
      alias_method  :request_object_endpoint=, :requestObjectEndpoint=

      # MTLS endpoint aliases. (NamedUri array)
      attr_accessor :mtlsEndpointAliases
      alias_method  :mtls_endpoint_aliases,  :mtlsEndpointAliases
      alias_method  :mtls_endpoint_aliases=, :mtlsEndpointAliases=

      # The URI of pushed authorization request endpoint. (String)
      attr_accessor :pushedAuthReqEndpoint
      alias_method  :pushed_auth_req_endpoint,  :pushedAuthReqEndpoint
      alias_method  :pushed_auth_req_endpoint=, :pushedAuthReqEndpoint=

      # Duration of pushed authorization requests. (Integer)
      attr_accessor :pushedAuthReqDuration
      alias_method  :pushed_auth_req_duration,  :pushedAuthReqDuration
      alias_method  :pushed_auth_req_duration=, :pushedAuthReqDuration=

      # Supported data types for +authorization_details+. (String array)
      attr_accessor :supportedAuthorizationDataTypes
      alias_method  :supported_authorization_data_types,  :supportedAuthorizationDataTypes
      alias_method  :supported_authorization_data_types=, :supportedAuthorizationDataTypes=

      # Trust frameworks supported by this service. (String array)
      # This corresponds to the +trust_frameworks_supported+ in OpenID Connect
      # for Identity Assurance 1.0.
      attr_accessor :supportedTrustFrameworks
      alias_method  :supported_trust_frameworks,  :supportedTrustFrameworks
      alias_method  :supported_trust_frameworks=, :supportedTrustFrameworks=

      # Evidence supported by this service. (String array)
      # This corresponds to the +evidence_supported+ in OpenID Connect for
      # Identity Assurance 1.0.
      attr_accessor :supportedEvidence
      alias_method  :supported_evidence,  :supportedEvidence
      alias_method  :supported_evidence=, :supportedEvidence=

      # Identity documents supported by this service. (String array)
      # This corresponds to the +id_documents_supported+ in OpenID Connect
      # for Identity Assurance 1.0.
      attr_accessor :supportedIdentityDocuments
      alias_method  :supported_identity_documents,  :supportedIdentityDocuments
      alias_method  :supported_identity_documents=, :supportedIdentityDocuments=

      # Verification methods supported by this service. (String array)
      # This corresponds to the +id_documents_verification_methods_supported+ in
      # OpenID Connect for Identity Assurance 1.0.
      attr_accessor :supportedVerificationMethods
      alias_method  :supported_verification_methods,  :supportedVerificationMethods
      alias_method  :supported_verification_methods=, :supportedVerificationMethods=

      # Verified claims supported by this service. (String array)
      # This corresponds to the +claims_in_verified_claims_supported+ in
      # OpenID Connect for Identity Assurance 1.0.
      attr_accessor :supportedVerifiedClaims
      alias_method  :supported_verified_claims,  :supportedVerifiedClaims
      alias_method  :supported_verified_claims=, :supportedVerifiedClaims=

      # Flag of whether this service allows token requests without client ID
      # from public clients or not. (Boolean)
      attr_accessor :missingClientIdAllowed
      alias_method  :missing_client_id_allowed,  :missingClientIdAllowed
      alias_method  :missing_client_id_allowed=, :missingClientIdAllowed=

      private

      # Integer attributes.
      INTEGER_ATTRIBUTES = ::Set.new([
        :accessTokenDuration, :allowableClockSkew, :apiKey, :authorizationResponseDuration,
        :backchannelAuthReqIdDuration, :backchannelPollingInterval, :clientsPerDeveloper,
        :createdAt, :deviceFlowCodeDuration, :deviceFlowPollingInterval,
        :idTokenDuration, :modifiedAt, :number, :refreshTokenDuration,
        :serviceOwnerNumber, :userCodeLength, :pushedAuthReqDuration
      ])

      # Boolean attributes.
      BOOLEAN_ATTRIBUTES = ::Set.new([
        :backchannelBindingMessageRequiredInFapi, :backchannelUserCodeParameterSupported,
        :clientIdAliasEnabled,
        :directAuthorizationEndpointEnabled, :directIntrospectionEndpointEnabled,
        :directJwksEndpointEnabled, :directRevocationEndpointEnabled, :directTokenEndpointEnabled,
        :directUserInfoEndpointEnabled, :errorDescriptionOmitted, :errorUriOmitted,
        :mutualTlsValidatePkiCertChain, :pkceRequired, :pkceS256Required, :refreshTokenKept,
        :singleAccessTokenPerSubject, :tlsClientCertificateBoundAccessTokens,
        :dynamicRegistrationSupported, :missingClientIdAllowed
      ])

      # String attributes.
      STRING_ATTRIBUTES = ::Set.new([
        :accessTokenSignAlg, :accessTokenSignatureKeyId, :accessTokenType,
        :apiSecret, :authenticationCallbackApiKey, :authenticationCallbackApiSecret,
        :authenticationCallbackEndpoint, :authorizationEndpoint, :authorizationSignatureKeyId,
        :backchannelAuthenticationEndpoint, :description, :developerAuthenticationCallbackApiKey,
        :developerAuthenticationCallbackApiSecret, :developerAuthenticationCallbackEndpoint,
        :deviceAuthorizationEndpoint, :deviceVerificationUri, :deviceVerificationUriComplete,
        :idTokenSignatureKeyId, :introspectionEndpoint, :issuer, :jwks, :jwksUri,
        :policyUri, :registrationEndpoint, :registrationManagementEndpoint,
        :requestObjectEndpoint, :revocationEndpoint, :serviceDocumentation, :serviceName,
        :tokenEndpoint, :tosUri, :userCodeCharset, :userInfoEndpoint, :userInfoSignatureKeyId,
        :pushedAuthReqEndpoint
      ])

      # String array attributes.
      STRING_ARRAY_ATTRIBUTES = ::Set.new([
        :supportedAcrs, :supportedBackchannelTokenDeliveryModes, :supportedClaimLocales,
        :supportedClaims, :supportedClaimTypes, :supportedDeveloperSnses,
        :supportedDisplays, :supportedGrantTypes, :supportedResponseTypes,
        :supportedServiceProfiles, :supportedSnses, :supportedTokenAuthMethods,
        :supportedUiLocales, :trustedRootCertificates, :supportedAuthorizationDataTypes,
        :supportedTrustFrameworks, :supportedEvidence, :supportedIdentityDocuments,
        :supportedVerificationMethods, :supportedVerifiedClaims
      ])

      # SNS credentials array attributes.
      SNS_CREDENTIALS_ARRAY_ATTRIBUTES = ::Set.new([
        :developerSnsCredentials, :snsCredentials
      ])

      # Mapping from snake cases to camel cases.
      SNAKE_TO_CAMEL = {
        :access_token_duration                        => :accessTokenDuration,
        :access_token_sign_alg                        => :accessTokenSignAlg,
        :access_token_signature_key_id                => :accessTokenSignatureKeyId,
        :access_token_type                            => :accessTokenType,
        :allowable_clock_skew                         => :allowableClockSkew,
        :api_key                                      => :apiKey,
        :api_secret                                   => :apiSecret,
        :authentication_callback_api_key              => :authenticationCallbackApiKey,
        :authentication_callback_api_secret           => :authenticationCallbackApiSecret,
        :authentication_callback_endpoint             => :authenticationCallbackEndpoint,
        :authorization_endpoint                       => :authorizationEndpoint,
        :authorization_response_duration              => :authorizationResponseDuration,
        :authorization_signature_key_id               => :authorizationSignatureKeyId,
        :backchannel_authentication_endpoint          => :backchannelAuthenticationEndpoint,
        :backchannel_binding_message_required_in_fapi => :backchannelBindingMessageRequiredInFapi,
        :backchannel_auth_req_id_duration             => :backchannelAuthReqIdDuration,
        :backchannel_polling_interval                 => :backchannelPollingInterval,
        :backchannel_user_code_parameter_supported    => :backchannelUserCodeParameterSupported,
        :developer_authentication_callback_api_key    => :developerAuthenticationCallbackApiKey,
        :developer_authentication_callback_api_secret => :developerAuthenticationCallbackApiSecret,
        :developer_authentication_callback_endpoint   => :developerAuthenticationCallbackEndpoint,
        :developer_sns_credentials                    => :developerSnsCredentials,
        :device_authorization_endpoint                => :deviceAuthorizationEndpoint,
        :device_flow_code_duration                    => :deviceFlowCodeDuration,
        :device_flow_polling_interval                 => :deviceFlowPollingInterval,
        :device_verification_uri                      => :deviceVerificationUri,
        :device_verification_uri_complete             => :deviceVerificationUriComplete,
        :client_id_alias_enabled                      => :clientIdAliasEnabled,
        :clients_per_developer                        => :clientsPerDeveloper,
        :created_at                                   => :createdAt,
        :direct_authorization_endpoint_enabled        => :directAuthorizationEndpointEnabled,
        :direct_introspection_endpoint_enabled        => :directIntrospectionEndpointEnabled,
        :direct_jwks_endpoint_enabled                 => :directJwksEndpointEnabled,
        :direct_revocation_endpoint_enabled           => :directRevocationEndpointEnabled,
        :direct_token_endpoint_enabled                => :directTokenEndpointEnabled,
        :direct_user_info_endpoint_enabled            => :directUserInfoEndpointEnabled,
        :dynamic_registration_supported               => :dynamicRegistrationSupported,
        :error_description_omitted                    => :errorDescriptionOmitted,
        :error_uri_omitted                            => :errorUriOmitted,
        :id_token_duration                            => :idTokenDuration,
        :id_token_signature_key_id                    => :idTokenSignatureKeyId,
        :introspection_endpoint                       => :introspectionEndpoint,
        :jwks_uri                                     => :jwksUri,
        :modified_at                                  => :modifiedAt,
        :mutual_tls_validate_pki_cert_chain           => :mutualTlsValidatePkiCertChain,
        :pkce_required                                => :pkceRequired,
        :pkce_s256_required                           => :pkceS256Required,
        :policy_uri                                   => :policyUri,
        :refresh_token_duration                       => :refreshTokenDuration,
        :refresh_token_kept                           => :refreshTokenKept,
        :registration_endpoint                        => :registrationEndpoint,
        :registration_management_endpoint             => :registrationManagementEndpoint,
        :revocation_endpoint                          => :revocationEndpoint,
        :request_object_endpoint                      => :requestObjectEndpoint,
        :service_documentation                        => :serviceDocumentation,
        :service_name                                 => :serviceName,
        :service_owner_number                         => :serviceOwnerNumber,
        :single_access_token_per_subject              => :singleAccessTokenPerSubject,
        :sns_credentials                              => :snsCredentials,
        :supported_acrs                               => :supportedAcrs,
        :supported_backchannel_token_delivery_modes   => :supportedBackchannelTokenDeliveryModes,
        :supported_claim_locales                      => :supportedClaimLocales,
        :supported_claims                             => :supportedClaims,
        :supported_claim_types                        => :supportedClaimTypes,
        :supported_developer_snses                    => :supportedDeveloperSnses,
        :supported_displays                           => :supportedDisplays,
        :supported_grant_types                        => :supportedGrantTypes,
        :supported_response_types                     => :supportedResponseTypes,
        :supported_scopes                             => :supportedScopes,
        :supported_service_profiles                   => :supportedServiceProfiles,
        :supported_snses                              => :supportedSnses,
        :supported_token_auth_methods                 => :supportedTokenAuthMethods,
        :supported_ui_locales                         => :supportedUiLocales,
        :tls_client_certificate_bound_access_tokens   => :tlsClientCertificateBoundAccessTokens,
        :token_endpoint                               => :tokenEndpoint,
        :tos_uri                                      => :tosUri,
        :trusted_root_certificates                    => :trustedRootCertificates,
        :user_code_charset                            => :userCodeCharset,
        :user_code_length                             => :userCodeLength,
        :user_info_endpoint                           => :userInfoEndpoint,
        :user_info_signature_key_id                   => :userInfoSignatureKeyId,
        :mtls_endpoint_aliases                        => :mtlsEndpointAliases,
        :pushed_auth_req_endpoint                     => :pushedAuthReqEndpoint,
        :pushed_auth_req_duration                     => :pushedAuthReqDuration,
        :supported_authorization_data_types           => :supportedAuthorizationDataTypes,
        :supported_trust_frameworks                   => :supportedTrustFrameworks,
        :supported_evidence                           => :supportedEvidence,
        :supported_identity_documents                 => :supportedIdentityDocuments,
        :supported_verification_methods               => :supportedVerificationMethods,
        :supported_verified_claims                    => :supportedVerifiedClaims,
        :missing_client_id_allowed                    => :missingClientIdAllowed
      }

      # The constructor
      def initialize(hash = nil)
        # Set default values to integer attributes.
        INTEGER_ATTRIBUTES.each do |attr|
          send("#{attr}=", 0)
        end

        # Set default values to boolean attributes.
        BOOLEAN_ATTRIBUTES.each do |attr|
          send("#{attr}=", false)
        end

        # Set default values to string attributes.
        STRING_ATTRIBUTES.each do |attr|
          send("#{attr}=", nil)
        end

        # Set default values to string array attributes.
        STRING_ARRAY_ATTRIBUTES.each do |attr|
          send("#{attr}=", nil)
        end

        # Set default values to sns credentials array attributes.
        SNS_CREDENTIALS_ARRAY_ATTRIBUTES.each do |attr|
          send("#{attr}=", nil)
        end

        # Set default values to special objects.
        @metadata            = nil
        @supportedScopes     = nil
        @mtlsEndpointAliases = nil

        # Set attribute values using the given hash.
        authlete_model_update(hash)
      end

      def authlete_model_convert_key(key)
        key = key.to_sym

        # Convert snakecase to camelcase, if necessary.
        if SNAKE_TO_CAMEL.has_key?(key)
          key = SNAKE_TO_CAMEL[key]
        end

        key
      end

      def authlete_model_simple_attribute?(key)
        INTEGER_ATTRIBUTES.include?(key) or
        BOOLEAN_ATTRIBUTES.include?(key) or
        STRING_ATTRIBUTES.include?(key) or
        STRING_ARRAY_ATTRIBUTES.include?(key)
      end

      def authlete_model_update(hash)
        return if hash.nil?

        hash.each do |key, value|
          key = authlete_model_convert_key(key)

          if authlete_model_simple_attribute?(key)
            send("#{key}=", value)
          elsif SNS_CREDENTIALS_ARRAY_ATTRIBUTES.include?(key)
            # Get an array consisting of "SnsCredentials" objects.
            parsed = get_parsed_array(value) do |element|
              Authlete::Model::SnsCredentials.parse(element)
            end

            send("#{key}=", parsed)
          elsif key == :metadata
            @metadata = get_parsed_array(value) do |element|
              Authlete::Model::Pair.parse(element)
            end
          elsif key == :supportedScopes
            @supportedScopes = get_parsed_array(value) do |element|
              Authlete::Model::Scope.parse(element)
            end
          elsif key == :mtlsEndpointAliases
            @mtlsEndpointAliases = get_parsed_array(value) do |element|
              Authlete::Model::NamedUri.parse(element)
            end
          end
        end

        self
      end

      public

      # Construct an instance from the given hash.
      #
      # If the given argument is nil or is not a Hash, nil is returned.
      # Otherwise, Service.new(hash) is returned.
      def self.parse(hash)
        if hash.nil? or (hash.kind_of?(Hash) == false)
          return nil
        end

        Service.new(hash)
      end

      # Convert this object into a hash.
      def to_hash
        hash = {}

        instance_variables.each do |var|
          key = var.to_s.delete("@").to_sym
          val = instance_variable_get(var)

          if authlete_model_simple_attribute?(key) or val.nil?
            hash[key] = val
          elsif key == :developerSnsCredentials or key == :snsCredentials or
                key == :supportedScopes or key == :metadata or key == :mtlsEndpointAliases
            hash[key] = val.map { |element| element.to_hash }
          end
        end

        hash
      end
    end
  end
end