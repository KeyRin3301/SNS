#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _286 = 0.0f;
static float3 _287 = 0.0f.xxx;

cbuffer View
{
    row_major float4x4 View_View_RelativeWorldToClip : packoffset(c4);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewOriginHigh : packoffset(c72);
    float3 View_View_ViewForward : packoffset(c73);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c78);
    float4 View_View_ScreenPositionScaleBias : packoffset(c79);
    float3 View_View_TranslatedWorldCameraOrigin : packoffset(c81);
    float3 View_View_ViewTilePosition : packoffset(c121);
    float3 View_View_RelativePreViewTranslationTO : packoffset(c124);
    float4 View_View_ViewRectMin : packoffset(c147);
    float4 View_View_ViewSizeAndInvSize : packoffset(c148);
    float4 View_View_LightProbeSizeRatioAndInvSizeRatio : packoffset(c150);
    float4 View_View_BufferSizeAndInvSize : packoffset(c151);
    int View_View_NumSceneColorMSAASamples : packoffset(c155);
    float View_View_PreExposure : packoffset(c155.z);
    float View_View_OneOverPreExposure : packoffset(c155.w);
    float4 View_View_DiffuseOverrideParameter : packoffset(c156);
    float4 View_View_SpecularOverrideParameter : packoffset(c157);
    float4 View_View_NormalOverrideParameter : packoffset(c158);
    float2 View_View_RoughnessOverrideParameter : packoffset(c159);
    float View_View_OutOfBoundsMask : packoffset(c160);
    float View_View_MaterialTextureMipBias : packoffset(c163.y);
    float View_View_UnlitViewmodeMask : packoffset(c166);
    float3 View_View_PrecomputedIndirectSpecularColorScale : packoffset(c180);
    float View_View_RenderingReflectionCaptureMask : packoffset(c203.w);
    float4 View_View_SkyLightColor : packoffset(c207);
    float View_View_SkyLightVolumetricScatteringIntensity : packoffset(c208);
    float View_View_ReflectionCubemapMaxMip : packoffset(c217.z);
    float View_View_ShowDecalsMask : packoffset(c217.w);
    float View_View_IndirectCapsuleSelfShadowingIntensity : packoffset(c218.y);
    float3 View_View_VolumetricFogInvGridSize : packoffset(c251);
    float3 View_View_VolumetricFogGridZParams : packoffset(c252);
    float2 View_View_VolumetricFogScreenToResourceUV : packoffset(c257);
    float2 View_View_VolumetricFogUVMax : packoffset(c257.z);
    float View_View_VolumetricFogMaxDistance : packoffset(c258);
    float View_View_MinRoughness : packoffset(c271.y);
    float View_View_MaterialMaxEmissiveValue : packoffset(c318);
    int4 View_View_EnvironmentComponentsFlags : packoffset(c319);
};

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
cbuffer Primitive
{
    uint Primitive_Primitive_Flags : packoffset(c0);
    int Primitive_Primitive_SingleCaptureIndex : packoffset(c0.w);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c22.w);
    float4 Primitive_Primitive_ObjectWorldPositionHighAndRadius : packoffset(c23);
    float3 Primitive_Primitive_ObjectWorldPositionLow : packoffset(c24);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c31.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c32.w);
    float Primitive_Primitive_MaxWPOExtent : packoffset(c38.w);
};

cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights : packoffset(c0);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight : packoffset(c0.z);
    int3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize : packoffset(c1);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell : packoffset(c1.w);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift : packoffset(c2);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams : packoffset(c3);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection : packoffset(c4);
    float OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius : packoffset(c4.w);
    float OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius : packoffset(c5);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor : packoffset(c6);
    float OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale : packoffset(c7);
    float OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale : packoffset(c7.y);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask : packoffset(c7.z);
    float2 OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD : packoffset(c8);
    uint OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag : packoffset(c38);
    float4 OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters : packoffset(c86);
    float OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c121);
    float OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance : packoffset(c121.y);
    uint2 OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution : packoffset(c138.z);
    uint OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize : packoffset(c139.y);
    uint OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog : packoffset(c139.w);
    float OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance : packoffset(c140);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor : packoffset(c142);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection : packoffset(c143);
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c147);
    int OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask : packoffset(c152);
};

StructuredBuffer<float4> OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer;
StructuredBuffer<uint> OpaqueBasePass_Shared_Forward_NumCulledLightsGrid;
cbuffer ReflectionCaptureSM5
{
    float4 ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[341] : packoffset(c682);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[5] : packoffset(c0);
};

SamplerState View_MaterialTextureBilinearWrapedSampler;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Buffer<uint4> OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit;
TextureCube<float4> OpaqueBasePass_Shared_Reflection_SkyLightCubemap;
SamplerState OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler;
TextureCubeArray<float4> OpaqueBasePass_Shared_Reflection_ReflectionCubemap;
SamplerState OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler;
Texture3D<float4> OpaqueBasePass_Shared_Fog_IntegratedLightScattering;
Buffer<float4> OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances;
Texture2DArray<uint4> OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture2D<float4> OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture;
Texture2D<float4> OpaqueBasePass_IndirectOcclusionTexture;
Texture2D<float4> OpaqueBasePass_ResolvedSceneDepthTexture;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
SamplerState Material_Texture2D_12Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static float4 in_var_TEXCOORD7;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    float4 in_var_TEXCOORD7 : TEXCOORD7;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
};

uint2 spvTextureSize(Texture2D<float4> Tex, uint Level, out uint Param)
{
    uint2 ret;
    Tex.GetDimensions(Level, ret.x, ret.y, Param);
    return ret;
}

uint spvPackHalf2x16(float2 value)
{
    uint2 Packed = f32tof16(value);
    return Packed.x | (Packed.y << 16);
}

float2 spvUnpackHalf2x16(uint value)
{
    return f16tof32(uint2(value & 0xffff, value >> 16));
}

void frag_main()
{
    float _318 = 1.0f / gl_FragCoord.w;
    float4 _366 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _370 = mad(float2(_366.zw), 2.0f.xx, (-1.0f).xx);
    float _374 = sqrt(max(1.0f - dot(_370, _370), 0.0f));
    float _375 = _370.x;
    float3 _377 = float3(_375, _370.y, _374);
    float3 _380 = normalize(float3(_374, 0.0f, -_375));
    float2 _395 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _402 = float4(mad(_395, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _286, 1.0f) * _318;
    float4 _407 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _411 = _407.xyz / _407.w.xxx;
    float3 _412 = _411 - View_View_RelativePreViewTranslationTO;
    precise float3 _87 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _412);
    precise float3 _90 = _412 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _87);
    bool _414 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _415 = -View_View_ViewForward;
    float3 _417 = normalize(-_411);
    float3 _427 = float3(_414 ? _415.x : _417.x, _414 ? _415.y : _417.y, _414 ? _415.z : _417.z);
    float4 _431 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _434 = dot(_431, Material_Material_PreshaderBuffer[0]);
    float _437 = dot(_431, Material_Material_PreshaderBuffer[1]);
    float _440 = dot(_431, Material_Material_PreshaderBuffer[2]);
    float2 _443 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float4 _451 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _443 * Material_Material_PreshaderBuffer[3].x.xx);
    float _455 = _451.x * Material_Material_PreshaderBuffer[3].y;
    float4 _467 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_455) + Material_Material_PreshaderBuffer[3].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _471 = Material_Material_PreshaderBuffer[3].w.xx;
    float2 _472 = mad(_467.xy, _471, _443);
    float2 _474 = mad(_467.zw, _471, _443);
    float2 _476 = ddy(_443);
    float2 _477 = ddx(_443);
    float2 _489 = lerp(_472, _474, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _474, _477, _476) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _472, _477, _476)).x, frac(_455))), 0.0f, 1.0f).xx);
    float2 _495 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _489, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _504 = _434.xxx;
    float2 _510 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _489, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _519 = _437.xxx;
    float2 _527 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _489, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _536 = _440.xxx;
    float3 _545 = normalize(mul(normalize((mad(float4(_527, sqrt(clamp(1.0f - dot(_527, _527), 0.0f, 1.0f)), 1.0f).xyz, _536, mad(float4(_495, sqrt(clamp(1.0f - dot(_495, _495), 0.0f, 1.0f)), 1.0f).xyz, _504, float4(_510, sqrt(clamp(1.0f - dot(_510, _510), 0.0f, 1.0f)), 1.0f).xyz * _519)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_380, cross(_377, _380), _377), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _556 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _489, View_View_MaterialTextureMipBias);
    float4 _561 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _489, View_View_MaterialTextureMipBias);
    float4 _568 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _489, View_View_MaterialTextureMipBias);
    float4 _574 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _489, View_View_MaterialTextureMipBias);
    float4 _579 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _489, View_View_MaterialTextureMipBias);
    float4 _586 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _489, View_View_MaterialTextureMipBias);
    float3 _595 = clamp(mad(_568.xyz, _536, mad(_556.xyz, _504, _561.xyz * _519)), 0.0f.xxx, 1.0f.xxx);
    float _599 = mad(clamp(mad(_586.y, _440, mad(_574.y, _434, _579.y * _437)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _600 = clamp(mad(_586.x, _440, mad(_574.x, _434, _579.x * _437)), 0.0f, 1.0f);
    float3 _642 = 0.0f.xxx;
    float _643 = 0.0f;
    float _644 = 0.0f;
    float _645 = 0.0f;
    float3 _646 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _614 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _618 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _614, 0.0f);
        float4 _621 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _614, 0.0f);
        float4 _624 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _614, 0.0f);
        float _634 = _624.w;
        _642 = normalize((_545 * _621.w) + ((_621.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _643 = mad(_599, _634, _624.z);
        _644 = mad(0.5f, _634, _624.y);
        _645 = _624.x;
        _646 = (_595 * _618.w) + _618.xyz;
    }
    else
    {
        _642 = _545;
        _643 = _599;
        _644 = 0.5f;
        _645 = 0.0f;
        _646 = _595;
    }
    float _654 = _402.w;
    float3 _667 = ((_646 - (_646 * _645)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _674 = (lerp((0.07999999821186065673828125f * _644).xxx, _646, _645.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _675 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _680 = 0.0f.xxx;
    if (_675)
    {
        _680 = _667 + (_674 * 0.449999988079071044921875f);
    }
    else
    {
        _680 = _667;
    }
    bool3 _681 = _675.xxx;
    float3 _682 = float3(_681.x ? 0.0f.xxx.x : _674.x, _681.y ? 0.0f.xxx.y : _674.y, _681.z ? 0.0f.xxx.z : _674.z);
    float3 _728 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _691 = float4(_642, 1.0f);
        float4 _704 = _691.xyzz * _691.yzzx;
        _728 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _691), dot(View_SkyIrradianceEnvironmentMap[1u], _691), dot(View_SkyIrradianceEnvironmentMap[2u], _691)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _704), dot(View_SkyIrradianceEnvironmentMap[4u], _704), dot(View_SkyIrradianceEnvironmentMap[5u], _704))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_642.x, _642.x, -(_642.y * _642.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _728 = 0.0f.xxx;
    }
    float2 _734 = mad(_402.xy / _654.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _844 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _745 = int2(trunc(_734 * View_View_BufferSizeAndInvSize.xy));
        int _746 = _745.x;
        int _747 = _745.y;
        float4 _751 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746, _747, 0).xy, 0));
        float _752 = _751.x;
        float _762 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _843 = 0.0f.xx;
        if ((abs((mad(_752, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_752, View_View_InvDeviceZToWorldZTransform.z, _762))) - _654) / _654) > 0.00999999977648258209228515625f)
        {
            float2 _775 = _734 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _779 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746 - 1, _747, 0).xy, 0));
            float _780 = _779.x;
            float _786 = abs((mad(_780, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_780, View_View_InvDeviceZToWorldZTransform.z, _762))) - _654);
            bool _787 = _786 < 100000000.0f;
            bool2 _788 = _787.xx;
            float2 _789 = float2(_788.x ? _775.x : _734.x, _788.y ? _775.y : _734.y);
            float _790 = _787 ? _786 : 100000000.0f;
            float2 _793 = _734 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _797 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746, _747 + 1, 0).xy, 0));
            float _798 = _797.x;
            float _804 = abs((mad(_798, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_798, View_View_InvDeviceZToWorldZTransform.z, _762))) - _654);
            bool _805 = _804 < _790;
            bool2 _806 = _805.xx;
            float2 _807 = float2(_806.x ? _793.x : _789.x, _806.y ? _793.y : _789.y);
            float _808 = _805 ? _804 : _790;
            float2 _810 = _734 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _814 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746 + 1, _747, 0).xy, 0));
            float _815 = _814.x;
            float _821 = abs((mad(_815, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_815, View_View_InvDeviceZToWorldZTransform.z, _762))) - _654);
            bool _822 = _821 < _808;
            bool2 _823 = _822.xx;
            float2 _824 = float2(_823.x ? _810.x : _807.x, _823.y ? _810.y : _807.y);
            float2 _828 = _734 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _832 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746, _747 - 1, 0).xy, 0));
            float _833 = _832.x;
            bool2 _841 = (abs((mad(_833, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_833, View_View_InvDeviceZToWorldZTransform.z, _762))) - _654) < (_822 ? _821 : _808)).xx;
            _843 = float2(_841.x ? _828.x : _824.x, _841.y ? _828.y : _824.y);
        }
        else
        {
            _843 = _734;
        }
        _844 = _843;
    }
    else
    {
        _844 = _734;
    }
    uint _850_dummy_parameter;
    uint2 _850 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _850_dummy_parameter);
    float _868 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_844 * float2(float(_850.x), float(_850.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _877 = _600.xxx;
    uint2 _909 = uint2(_395 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _937 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _937 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_844 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _937 = 1.0f.xxxx;
    }
    float4 _938 = _937 * _937;
    uint _951 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1243 = 0.0f.xxxx;
    float4 _1244 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _977 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _992 = dot(float4(float(_977 & 1u), float((_977 & 2u) >> 1u), float((_977 & 4u) >> 2u), float((_977 & 8u) >> 3u)), _938);
        bool _994 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _995 = _994 ? 1.0f : _992;
        float _1008 = 0.0f;
        float _1009 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1002 = clamp(mad(_654, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1004 = lerp(_994 ? _992 : 1.0f, 1.0f, _1002 * _1002);
            _1008 = min(_1004, _995) * _995;
            _1009 = _1004 * _995;
        }
        else
        {
            _1008 = 1.0f;
            _1009 = 1.0f;
        }
        float3 _1225 = 0.0f.xxx;
        float3 _1226 = 0.0f.xxx;
        [branch]
        if ((_1009 + _1008) > 0.0f)
        {
            float _1016 = max(_643, View_View_MinRoughness);
            float _1017 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1020 = rsqrt(_1017);
            float3 _1021 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1020;
            float _1022 = dot(_642, _1021);
            float _1040 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1029 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1017 + 1.0f)), 0.0f, 1.0f));
                float _1039 = 0.0f;
                if (_1022 < _1029)
                {
                    float _1035 = _1029 + max(_1022, -_1029);
                    _1039 = (_1035 * _1035) / (4.0f * _1029);
                }
                else
                {
                    _1039 = _1022;
                }
                _1040 = _1039;
            }
            else
            {
                _1040 = _1022;
            }
            float _1041 = clamp(_1040, 0.0f, 1.0f);
            float _1042 = max(_1016, View_View_MinRoughness);
            float _1047 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1020) * mad(-_1042, _1042, 1.0f), 0.0f, 1.0f);
            float _1049 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1020, 0.0f, 1.0f);
            float3 _1218 = 0.0f.xxx;
            float3 _1219 = 0.0f.xxx;
            [branch]
            if (_1041 > 0.0f)
            {
                float _1060 = dot(_642, _427);
                float _1061 = dot(_427, _1021);
                float _1063 = rsqrt(mad(2.0f, _1061, 2.0f));
                bool _1069 = _1047 > 0.0f;
                float _1148 = 0.0f;
                float _1149 = 0.0f;
                if (_1069)
                {
                    float _1074 = sqrt(mad(-_1047, _1047, 1.0f));
                    float _1075 = 2.0f * _1022;
                    float _1076 = -_1061;
                    float _1077 = mad(_1075, _1060, _1076);
                    float _1146 = 0.0f;
                    float _1147 = 0.0f;
                    if (_1077 >= _1074)
                    {
                        _1146 = 1.0f;
                        _1147 = abs(_1060);
                    }
                    else
                    {
                        float _1082 = -_1077;
                        float _1085 = _1047 * rsqrt(mad(_1082, _1077, 1.0f));
                        float _1086 = mad(_1082, _1022, _1060);
                        float _1090 = mad(_1082, _1061, mad(2.0f * _1060, _1060, -1.0f));
                        float _1101 = _1085 * sqrt(clamp(mad(_1075 * _1060, _1061, mad(_1076, _1061, mad(-_1060, _1060, mad(-_1022, _1022, 1.0f)))), 0.0f, 1.0f));
                        float _1103 = (_1101 * 2.0f) * _1060;
                        float _1104 = mad(_1022, _1074, _1060);
                        float _1105 = mad(_1085, _1086, _1104);
                        float _1107 = mad(_1085, _1090, mad(_1061, _1074, 1.0f));
                        float _1108 = _1101 * _1107;
                        float _1109 = _1105 * _1107;
                        float _1114 = _1109 * mad(-0.5f, _1108, (0.25f * _1103) * _1105);
                        float _1124 = mad(_1105, mad(_1104, _1107 * _1107, _1109 * mad(-0.5f, mad(_1061, _1074, _1107), -0.5f)), mad(_1108, _1108, (_1103 * _1105) * mad(_1103, _1105, _1108 * (-2.0f))));
                        float _1128 = (2.0f * _1114) / mad(_1124, _1124, _1114 * _1114);
                        float _1129 = _1128 * _1124;
                        float _1131 = mad(-_1128, _1114, 1.0f);
                        float _1137 = mad(_1061, _1074, mad(_1131, _1085 * _1090, _1129 * _1103));
                        float _1139 = rsqrt(mad(2.0f, _1137, 2.0f));
                        _1146 = clamp((mad(_1022, _1074, mad(_1131, _1085 * _1086, _1129 * _1101)) + _1060) * _1139, 0.0f, 1.0f);
                        _1147 = clamp(mad(_1139, _1137, _1139), 0.0f, 1.0f);
                    }
                    _1148 = _1146;
                    _1149 = _1147;
                }
                else
                {
                    _1148 = clamp((_1022 + _1060) * _1063, 0.0f, 1.0f);
                    _1149 = clamp(mad(_1063, _1061, _1063), 0.0f, 1.0f);
                }
                float _1152 = clamp(abs(_1060) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1154 = 1.0f.xxx * _1041;
                float3 _1216 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1216 = 0.0f.xxx;
                }
                else
                {
                    float _1161 = _1016 * _1016;
                    float _1171 = 0.0f;
                    if (_1049 > 0.0f)
                    {
                        _1171 = clamp(mad(_1161, _1161, (_1049 * _1049) / mad(_1149, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1171 = _1161 * _1161;
                    }
                    float _1185 = 0.0f;
                    if (_1069)
                    {
                        _1185 = _1171 / (_1171 + (((0.25f * _1047) * mad(3.0f, asfloat(532487669 + (asint(_1171) >> 1)), _1047)) / (_1149 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1185 = 1.0f;
                    }
                    float _1188 = mad(mad(_1148, _1171, -_1148), _1148, 1.0f);
                    float _1193 = sqrt(_1171);
                    float _1194 = 1.0f - _1193;
                    float _1200 = 1.0f - _1149;
                    float _1201 = _1200 * _1200;
                    float _1202 = _1201 * _1201;
                    _1216 = _1154 * (((clamp(50.0f * _682.y, 0.0f, 1.0f) * (_1202 * _1200)).xxx + (_682 * mad(-_1202, _1200, 1.0f))) * (((_1171 / ((3.1415927410125732421875f * _1188) * _1188)) * _1185) * (0.5f / mad(_1041, mad(_1152, _1194, _1193), _1152 * mad(_1041, _1194, _1193)))));
                }
                _1218 = ((_680 * 0.3183098733425140380859375f) * _1154) * 1.0f;
                _1219 = _1216;
            }
            else
            {
                _1218 = 0.0f.xxx;
                _1219 = 0.0f.xxx;
            }
            float3 _1222 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1009;
            _1225 = mad(_1218 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1222, 0.0f.xxx);
            _1226 = (_1219 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1222;
        }
        else
        {
            _1225 = 0.0f.xxx;
            _1226 = 0.0f.xxx;
        }
        float4 _1230 = float4(_1225, 0.0f);
        float4 _1234 = float4(_1226, 0.0f);
        float4 _1241 = 0.0f.xxxx;
        float4 _1242 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _951) != 0u)
        {
            _1241 = float4(_1230.x, _1230.y, _1230.z, _1230.w);
            _1242 = float4(_1234.x, _1234.y, _1234.z, _1234.w);
        }
        else
        {
            _1241 = 0.0f.xxxx;
            _1242 = 0.0f.xxxx;
        }
        _1243 = _1241;
        _1244 = _1242;
    }
    else
    {
        _1243 = 0.0f.xxxx;
        _1244 = 0.0f.xxxx;
    }
    uint _1245 = ((((min(uint(max(0.0f, log2(mad(_318, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _909.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _909.x) * 2u;
    uint _1255 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1245 + 1u] & 1073741823u;
    uint _1258 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1245] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1260 = 0.0f.xxxx;
    float4 _1263 = 0.0f.xxxx;
    _1260 = _1243;
    _1263 = _1244;
    float4 _1261 = 0.0f.xxxx;
    float4 _1264 = 0.0f.xxxx;
    [loop]
    for (uint _1265 = 0u; _1265 < _1258; _1260 = _1261, _1263 = _1264, _1265++)
    {
        uint _1274 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1255 + _1265).x * 6u;
        uint _1277 = _1274 + 1u;
        uint _1280 = _1274 + 2u;
        uint _1283 = _1274 + 3u;
        uint _1286 = _1274 + 4u;
        uint _1290 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1280].w);
        uint _1296 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1277].y);
        uint _1312 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1283].z);
        float2 _1314 = spvUnpackHalf2x16(_1312 & 65535u);
        float _1315 = _1314.x;
        float2 _1318 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1283].w));
        float _1319 = _1318.x;
        bool _1324 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1277].w == 0.0f;
        uint _1326 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1286].w);
        uint _1339 = _1290 >> 4u;
        float3 _1355 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1274].xyz - _411;
        float _1356 = dot(_1355, _1355);
        float _1373 = 0.0f;
        if (_1324)
        {
            float _1368 = _1356 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1274].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1274].w);
            float _1371 = clamp(mad(-_1368, _1368, 1.0f), 0.0f, 1.0f);
            _1373 = _1371 * _1371;
        }
        else
        {
            float3 _1362 = _1355 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1274].w;
            _1373 = pow(1.0f - clamp(dot(_1362, _1362), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1277].w);
        }
        float _1384 = 0.0f;
        if (((_1290 >> 16u) & 3u) == 2u)
        {
            float _1381 = clamp((dot(_1355 * rsqrt(_1356), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1280].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1283].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1283].y, 0.0f, 1.0f);
            _1384 = _1373 * (_1381 * _1381);
        }
        else
        {
            _1384 = _1373;
        }
        float3 _1681 = 0.0f.xxx;
        float3 _1682 = 0.0f.xxx;
        [branch]
        if (_1384 > 0.0f)
        {
            float _1392 = 0.0f;
            [branch]
            if (uint(int((_1290 & 255u) != 0u)) != 0u)
            {
                _1392 = dot(float4(float(_1339 & 1u), float((_1339 & 2u) >> 1u), float((_1339 & 4u) >> 2u), float((_1339 & 8u) >> 3u)), _938);
            }
            else
            {
                _1392 = 1.0f;
            }
            float3 _1679 = 0.0f.xxx;
            float3 _1680 = 0.0f.xxx;
            [branch]
            if ((_1392 + _1392) > 0.0f)
            {
                float3 _1398 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1286].xyz * (0.5f * _1319);
                float3 _1399 = _1355 - _1398;
                float3 _1400 = _1355 + _1398;
                float _1403 = max(_643, View_View_MinRoughness);
                bool _1404 = _1319 > 0.0f;
                float _1429 = 0.0f;
                float _1430 = 0.0f;
                float _1431 = 0.0f;
                [branch]
                if (_1404)
                {
                    float _1416 = rsqrt(dot(_1399, _1399));
                    float _1417 = rsqrt(dot(_1400, _1400));
                    float _1418 = _1416 * _1417;
                    float _1420 = dot(_1399, _1400) * _1418;
                    _1429 = _1420;
                    _1430 = 0.5f * mad(dot(_642, _1399), _1416, dot(_642, _1400) * _1417);
                    _1431 = _1418 / mad(_1416, _1417, mad(_1420, 0.5f, 0.5f));
                }
                else
                {
                    float _1408 = dot(_1399, _1399);
                    _1429 = 1.0f;
                    _1430 = dot(_642, _1399 * rsqrt(_1408));
                    _1431 = 1.0f / (_1408 + 1.0f);
                }
                float _1449 = 0.0f;
                if (_1315 > 0.0f)
                {
                    float _1438 = sqrt(clamp((_1315 * _1315) * _1431, 0.0f, 1.0f));
                    float _1448 = 0.0f;
                    if (_1430 < _1438)
                    {
                        float _1444 = _1438 + max(_1430, -_1438);
                        _1448 = (_1444 * _1444) / (4.0f * _1438);
                    }
                    else
                    {
                        _1448 = _1430;
                    }
                    _1449 = _1448;
                }
                else
                {
                    _1449 = _1430;
                }
                float _1450 = clamp(_1449, 0.0f, 1.0f);
                float3 _1468 = 0.0f.xxx;
                if (_1404)
                {
                    float3 _1455 = reflect(-_427, _642);
                    float3 _1456 = _1400 - _1399;
                    float _1457 = dot(_1455, _1456);
                    _1468 = _1399 + (_1456 * clamp(dot(_1399, (_1455 * _1457) - _1456) / mad(_1319, _1319, -(_1457 * _1457)), 0.0f, 1.0f));
                }
                else
                {
                    _1468 = _1399;
                }
                float _1470 = rsqrt(dot(_1468, _1468));
                float3 _1471 = _1468 * _1470;
                float _1472 = max(_1403, View_View_MinRoughness);
                float _1477 = clamp((_1315 * _1470) * mad(-_1472, _1472, 1.0f), 0.0f, 1.0f);
                float _1479 = clamp(spvUnpackHalf2x16(_1312 >> 16u).x * _1470, 0.0f, 1.0f);
                float3 _1672 = 0.0f.xxx;
                float3 _1673 = 0.0f.xxx;
                [branch]
                if (_1450 > 0.0f)
                {
                    float _1490 = dot(_642, _1471);
                    float _1491 = dot(_642, _427);
                    float _1492 = dot(_427, _1471);
                    float _1494 = rsqrt(mad(2.0f, _1492, 2.0f));
                    bool _1500 = _1477 > 0.0f;
                    float _1579 = 0.0f;
                    float _1580 = 0.0f;
                    if (_1500)
                    {
                        float _1505 = sqrt(mad(-_1477, _1477, 1.0f));
                        float _1506 = 2.0f * _1490;
                        float _1507 = -_1492;
                        float _1508 = mad(_1506, _1491, _1507);
                        float _1577 = 0.0f;
                        float _1578 = 0.0f;
                        if (_1508 >= _1505)
                        {
                            _1577 = 1.0f;
                            _1578 = abs(_1491);
                        }
                        else
                        {
                            float _1513 = -_1508;
                            float _1516 = _1477 * rsqrt(mad(_1513, _1508, 1.0f));
                            float _1517 = mad(_1513, _1490, _1491);
                            float _1521 = mad(_1513, _1492, mad(2.0f * _1491, _1491, -1.0f));
                            float _1532 = _1516 * sqrt(clamp(mad(_1506 * _1491, _1492, mad(_1507, _1492, mad(-_1491, _1491, mad(-_1490, _1490, 1.0f)))), 0.0f, 1.0f));
                            float _1534 = (_1532 * 2.0f) * _1491;
                            float _1535 = mad(_1490, _1505, _1491);
                            float _1536 = mad(_1516, _1517, _1535);
                            float _1538 = mad(_1516, _1521, mad(_1492, _1505, 1.0f));
                            float _1539 = _1532 * _1538;
                            float _1540 = _1536 * _1538;
                            float _1545 = _1540 * mad(-0.5f, _1539, (0.25f * _1534) * _1536);
                            float _1555 = mad(_1536, mad(_1535, _1538 * _1538, _1540 * mad(-0.5f, mad(_1492, _1505, _1538), -0.5f)), mad(_1539, _1539, (_1534 * _1536) * mad(_1534, _1536, _1539 * (-2.0f))));
                            float _1559 = (2.0f * _1545) / mad(_1555, _1555, _1545 * _1545);
                            float _1560 = _1559 * _1555;
                            float _1562 = mad(-_1559, _1545, 1.0f);
                            float _1568 = mad(_1492, _1505, mad(_1562, _1516 * _1521, _1560 * _1534));
                            float _1570 = rsqrt(mad(2.0f, _1568, 2.0f));
                            _1577 = clamp((mad(_1490, _1505, mad(_1562, _1516 * _1517, _1560 * _1532)) + _1491) * _1570, 0.0f, 1.0f);
                            _1578 = clamp(mad(_1570, _1568, _1570), 0.0f, 1.0f);
                        }
                        _1579 = _1577;
                        _1580 = _1578;
                    }
                    else
                    {
                        _1579 = clamp((_1490 + _1491) * _1494, 0.0f, 1.0f);
                        _1580 = clamp(mad(_1494, _1492, _1494), 0.0f, 1.0f);
                    }
                    float _1583 = clamp(abs(_1491) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1586 = 1.0f.xxx * ((_1324 ? _1431 : 1.0f) * _1450);
                    float3 _1670 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1319, _1315), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1670 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1593 = _1403 * _1403;
                        float _1603 = 0.0f;
                        if (_1479 > 0.0f)
                        {
                            _1603 = clamp(mad(_1593, _1593, (_1479 * _1479) / mad(_1580, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1603 = _1593 * _1593;
                        }
                        float _1617 = 0.0f;
                        float _1618 = 0.0f;
                        if (_1500)
                        {
                            float _1615 = _1603 + (((0.25f * _1477) * mad(3.0f, asfloat(532487669 + (asint(_1603) >> 1)), _1477)) / (_1580 + 0.001000000047497451305389404296875f));
                            _1617 = _1603 / _1615;
                            _1618 = _1615;
                        }
                        else
                        {
                            _1617 = 1.0f;
                            _1618 = _1603;
                        }
                        float _1639 = 0.0f;
                        if (_1429 < 1.0f)
                        {
                            float _1625 = sqrt((1.00010001659393310546875f - _1429) / (1.0f + _1429));
                            _1639 = _1617 * sqrt(_1618 / (_1618 + (((0.25f * _1625) * mad(3.0f, asfloat(532487669 + (asint(_1618) >> 1)), _1625)) / (_1580 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1639 = _1617;
                        }
                        float _1642 = mad(mad(_1579, _1603, -_1579), _1579, 1.0f);
                        float _1647 = sqrt(_1603);
                        float _1648 = 1.0f - _1647;
                        float _1654 = 1.0f - _1580;
                        float _1655 = _1654 * _1654;
                        float _1656 = _1655 * _1655;
                        _1670 = _1586 * (((clamp(50.0f * _682.y, 0.0f, 1.0f) * (_1656 * _1654)).xxx + (_682 * mad(-_1656, _1654, 1.0f))) * (((_1603 / ((3.1415927410125732421875f * _1642) * _1642)) * _1639) * (0.5f / mad(_1450, mad(_1583, _1648, _1647), _1583 * mad(_1450, _1648, _1647)))));
                    }
                    _1672 = ((_680 * 0.3183098733425140380859375f) * _1586) * 1.0f;
                    _1673 = _1670;
                }
                else
                {
                    _1672 = 0.0f.xxx;
                    _1673 = 0.0f.xxx;
                }
                float3 _1676 = ((float3(float((_1296 >> 0u) & 1023u), float((_1296 >> 10u) & 1023u), float((_1296 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1277].x) * _1384) * _1392;
                _1679 = mad(_1672 * (float((_1326 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1676, 0.0f.xxx);
                _1680 = (_1673 * (float(_1326 & 1023u) * 0.000977517105638980865478515625f)) * _1676;
            }
            else
            {
                _1679 = 0.0f.xxx;
                _1680 = 0.0f.xxx;
            }
            _1681 = _1679;
            _1682 = _1680;
        }
        else
        {
            _1681 = 0.0f.xxx;
            _1682 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1290 >> 8u) & 7u) & _951) != 0u)
        {
            _1261 = _1260 + float4(_1681, 0.0f);
            _1264 = _1263 + float4(_1682, 0.0f);
        }
        else
        {
            _1261 = _1260;
            _1264 = _1263;
        }
    }
    bool4 _1700 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1709 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1713 = (_642 * (2.0f * dot(_427, _642))) - _427;
    float _1720 = mad(-1.2000000476837158203125f, log2(max(_643, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1734 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1713, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1709].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1720);
    float _1738 = 1.0f - _1734.w;
    float3 _1765 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1765 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1713, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1720).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1765 = 0.0f.xxx;
    }
    float4 _1771 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _643) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1772 = _1771.x;
    float2 _1781 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1772 * _1772, exp2((-9.27999973297119140625f) * clamp(dot(_642, _427), 0.0f, 1.0f))), _1772, _1771.y)) + _1771.zw;
    bool _1808 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2232 = 0.0f.xxxx;
    if (_1808)
    {
        uint2 _1820 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1822 = normalize(_411 - View_View_TranslatedWorldCameraOrigin);
        uint _1823 = _1820.x;
        uint4 _1827 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1823, _1820.y, 0u), 0u));
        uint _1828 = _1827.x;
        float4 _1830 = 0.0f.xxxx;
        _1830 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1831 = 0.0f.xxxx;
        for (int _1833 = 0; uint(_1833) < _1828; _1830 = _1831, _1833++)
        {
            uint _1844 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1823, _1820.y, uint(1 + _1833)), 0u)).x * 3u;
            float4 _1846 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1844);
            float4 _1848 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1844 + 1u);
            float4 _1850 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1844 + 2u);
            float3 _1851 = _1846.xyz;
            float _1852 = _1846.w;
            float _1853 = 1.0f / _1852;
            uint _1855 = asuint(_1848.x);
            float2 _1861 = float2(spvUnpackHalf2x16(_1855).x, spvUnpackHalf2x16(_1855 >> 16u).x);
            float3 _1862 = float3(_1861.x, _1861.y, _287.z);
            uint _1864 = asuint(_1848.y);
            _1862.z = spvUnpackHalf2x16(_1864).x;
            float3 _1871 = 0.0f.xxx;
            _1871.x = spvUnpackHalf2x16(_1864 >> 16u).x;
            uint _1873 = asuint(_1848.z);
            float2 _1879 = float2(spvUnpackHalf2x16(_1873).x, spvUnpackHalf2x16(_1873 >> 16u).x);
            float3 _1880 = float3(_1871.x, _1879.x, _1879.y);
            float3x3 _1885 = float3x3(_1862 * _1853, _1880 * _1853, cross(_1862, _1880) * _1853);
            uint _1887 = asuint(_1850.x);
            float2 _1890 = spvUnpackHalf2x16((_1887 >> 17u) & 32752u);
            float _1891 = _1890.x;
            float2 _1894 = spvUnpackHalf2x16((_1887 >> 6u) & 32752u);
            float _1895 = _1894.x;
            float2 _1898 = spvUnpackHalf2x16((_1887 << 5u) & 32736u);
            float _1899 = _1898.x;
            uint _1901 = asuint(_1850.y);
            float3 _1919 = 0.0f.xxx;
            if (_1901 > 0u)
            {
                _1919 = float3(spvUnpackHalf2x16((_1901 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1901 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1901 << 5u) & 32736u).x);
            }
            else
            {
                _1919 = 0.0f.xxx;
            }
            uint _1921 = asuint(_1850.z);
            float _1936 = float((_1921 >> 24u) & 255u);
            float _1937 = _1936 * 0.0039215688593685626983642578125f;
            float3 _1944 = mul(View_View_TranslatedWorldCameraOrigin - _1851, _1885);
            float3 _1946 = normalize(mul(_1822, _1885));
            float _1948 = dot(_1946, _1946);
            float _1949 = dot(_1946, _1944);
            float _1950 = 2.0f * _1949;
            float _1955 = mad(_1950, _1950, -((4.0f * _1948) * mad(-1.0f, 1.0f, dot(_1944, _1944))));
            float2 _1967 = 0.0f.xx;
            [flatten]
            if (_1955 >= 0.0f)
            {
                _1967 = ((_1949 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1955))) / (2.0f * _1948).xx;
            }
            else
            {
                _1967 = (-1.0f).xx;
            }
            float3 _1973 = mul(_411 - _1851, _1885) - _1944;
            float2 _1977 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1853, _1967), sqrt(dot(_1973, _1973)).xx);
            float _2127 = 0.0f;
            float3 _2128 = 0.0f.xxx;
            if (any(bool2(_1977.x > 0.0f.xx.x, _1977.y > 0.0f.xx.y)))
            {
                float2 _1998 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1988 = dot(_1822, View_View_ViewForward);
                    _1998 = max(_1977, ((View_View_VolumetricFogMaxDistance * ((_1988 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1988) : 0.0f)) * _1853).xx);
                }
                else
                {
                    _1998 = _1977;
                }
                float _2003 = max(0.0f, abs(_1998.y - _1998.x));
                float _2125 = 0.0f;
                float3 _2126 = 0.0f.xxx;
                if (_2003 > 0.0f)
                {
                    float3 _2008 = _1944 + (_1946 * _1998.x);
                    float _2044 = 0.0f;
                    if (_1891 > 0.0f)
                    {
                        float _2012 = dot(_1946, _2008);
                        float _2013 = dot(_2008, _2008);
                        float _2014 = _2013 - 1.0f;
                        float _2016 = mad(_2012, _2012, 1.0f - _2013);
                        float _2043 = 0.0f;
                        if (_2016 >= 0.0f)
                        {
                            float _2020 = sqrt(_2016);
                            float _2021 = -_2012;
                            float _2024 = max(_2021 - _2020, 0.0f);
                            float _2026 = min(max(_2021 + _2020, 0.0f), _2003);
                            float _2027 = _2024 * _2024;
                            float _2028 = _2026 * _2026;
                            _2043 = max(0.0f, (_1891 * ((-mad(_2028 * _2026, 0.3333333432674407958984375f, mad(_2014, _2026, _2012 * _2028))) - (-mad(_2027 * _2024, 0.3333333432674407958984375f, mad(_2014, _2024, _2012 * _2027))))) * 0.75f);
                        }
                        else
                        {
                            _2043 = 0.0f;
                        }
                        _2044 = _2043;
                    }
                    else
                    {
                        _2044 = 0.0f;
                    }
                    float _2069 = 0.0f;
                    if (_1895 > 0.0f)
                    {
                        float _2050 = _1946.z;
                        float _2056 = (abs(_2050) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2050 >= 0.0f) ? 1.0f : (-1.0f))) : _2050;
                        float _2059 = max(-80.0f, (_2008.z - _1850.w) * _1899);
                        _2069 = (_1895 / (_1899 * _2056)) * (exp(-_2059) - exp(-mad(_2056 * _2003, _1899, _2059)));
                    }
                    else
                    {
                        _2069 = 0.0f;
                    }
                    float _2080 = exp((log(mad(exp(-_2044) - 1.0f, 1.0f - exp(-_2069), 1.0f)) * _1852) * 0.00999999977648258209228515625f);
                    float _2084 = _1936 * (-0.0039215688593685626983642578125f);
                    float _2091 = mad(_1936 * (-0.007843137718737125396728515625f), dot(_1822, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2084, _2084, 1.0f));
                    float3 _2096 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1937, _2084, 1.0f) / ((12.56637096405029296875f * _2091) * sqrt(_2091)));
                    float3 _2122 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2107 = float4(_1822 * _2084, 1.0f);
                        _2122 = _2096 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2107), dot(View_SkyIrradianceEnvironmentMap[1u], _2107), dot(View_SkyIrradianceEnvironmentMap[2u], _2107)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2122 = _2096;
                    }
                    _2125 = _2080;
                    _2126 = mad(_2122, float4(float((_1921 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1921 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1921 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1937).xyz, _1919) * (1.0f - _2080);
                }
                else
                {
                    _2125 = 1.0f;
                    _2126 = 0.0f.xxx;
                }
                _2127 = _2125;
                _2128 = _2126;
            }
            else
            {
                _2127 = 1.0f;
                _2128 = 0.0f.xxx;
            }
            _1831 = float4((_1830.xyz * _2127) + float4(_2128, _2127).xyz, _1830.w * _2127);
        }
        float _2148 = _1830.w * in_var_TEXCOORD7.w;
        float4 _2156 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2156 + _91;
        precise float4 _93 = _92 - _2156;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2156 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2167 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2168 = _2167.w;
        float4 _2231 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2231 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2214 = 0.0f.xxxx;
            float _2215 = 0.0f;
            if (_1808)
            {
                float4 _2210 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2167.xy / _2168.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2168, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2212 = _2210.xyz * View_View_OneOverPreExposure;
                _2214 = float4(_2212.x, _2212.y, _2212.z, _2210.w);
                _2215 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2214 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2215 = 0.0f;
            }
            float4 _2220 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2214, clamp((_654 - _2215) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2223 = _2220.w;
            _2231 = float4(_2220.xyz + (float4(_1830.xyz + (in_var_TEXCOORD7.xyz * _1830.w), _2148).xyz * _2223), _2223 * _2148);
            break;
        } while(false);
        _2232 = _2231;
    }
    else
    {
        _2232 = in_var_TEXCOORD7;
    }
    float3 _2239 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _2297 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _98 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _99 = _98 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _100 = _99 - _98;
        precise float3 _101 = Primitive_Primitive_ObjectWorldPositionLow - _100;
        precise float3 _102 = _87 - _99;
        precise float3 _103 = _90 - _101;
        precise float3 _104 = _102 + _103;
        float3 _2259 = abs(_104);
        float3 _2260 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2296 = 0.0f.xxx;
        if (any(bool3(_2259.x > _2260.x, _2259.y > _2260.y, _2259.z > _2260.z)))
        {
            float3 _2292 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2296 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2292.x > 0.5f.xxx.x, _2292.y > 0.5f.xxx.y, _2292.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2282 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2270 = abs(_411 - in_var_TEXCOORD9);
                _2282 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2270.x, max(_2270.y, _2270.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2282 = _2239;
            }
            _2296 = _2282;
        }
        _2297 = _2296;
    }
    else
    {
        _2297 = _2239;
    }
    float3 _2299 = mad((_728 * _868) * _680, max(_877, ((((((_646 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _600) + ((_646 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _600) + ((_646 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _600), lerp(mad((((float4(_1734.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1709].x, _1738).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1765 * _1738)).xyz * ((_682 * _1781.x) + (clamp(50.0f * _682.y, 0.0f, 1.0f) * _1781.y).xxx)) * _868, max(_877, ((((((_682 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _600) + ((_682 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _600) + ((_682 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _600), float4(_1700.x ? 0.0f.xxxx.x : _1260.x, _1700.y ? 0.0f.xxxx.y : _1260.y, _1700.z ? 0.0f.xxxx.z : _1260.z, _1700.w ? 0.0f.xxxx.w : _1260.w).xyz + float4(_1700.x ? 0.0f.xxxx.x : _1263.x, _1700.y ? 0.0f.xxxx.y : _1263.y, _1700.z ? 0.0f.xxxx.z : _1263.z, _1700.w ? 0.0f.xxxx.w : _1263.w).xyz), _680 + (_682 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2297;
    float4 _2307 = float4((_2299 * _2232.w) + _2232.xyz, 0.0f);
    _2307.w = 0.0f;
    float4 _2311 = _2307 * View_View_PreExposure;
    float3 _2316 = min(_2311.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2316.x, _2316.y, _2316.z, _2311.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
