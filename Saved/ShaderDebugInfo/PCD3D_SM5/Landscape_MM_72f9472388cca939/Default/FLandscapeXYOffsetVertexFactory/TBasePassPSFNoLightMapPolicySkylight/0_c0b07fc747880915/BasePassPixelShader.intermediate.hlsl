#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _306 = 0.0f;
static float3 _307 = 0.0f.xxx;

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
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
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
    float4 Material_Material_PreshaderBuffer[8] : packoffset(c0);
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
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
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
Texture2D<float4> Material_Texture2D_13;
SamplerState Material_Texture2D_13Sampler;
Texture2D<float4> Material_Texture2D_14;
SamplerState Material_Texture2D_14Sampler;
Texture2D<float4> Material_Texture2D_15;
SamplerState Material_Texture2D_15Sampler;
Texture2D<float4> Material_Texture2D_16;
SamplerState Material_Texture2D_16Sampler;
Texture2D<float4> Material_Texture2D_17;
SamplerState Material_Texture2D_17Sampler;
Texture2D<float4> Material_Texture2D_18;
SamplerState Material_Texture2D_18Sampler;
Texture2D<float4> Material_Texture2D_19;
SamplerState Material_Texture2D_19Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static uint in_var_PRIMITIVE_ID;
static float4 in_var_TEXCOORD7;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
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
    float _336 = 1.0f / gl_FragCoord.w;
    float4 _384 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _388 = mad(float2(_384.zw), 2.0f.xx, (-1.0f).xx);
    float _392 = sqrt(max(1.0f - dot(_388, _388), 0.0f));
    float _393 = _388.x;
    float3 _395 = float3(_393, _388.y, _392);
    float3 _398 = normalize(float3(_392, 0.0f, -_393));
    float2 _413 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _420 = float4(mad(_413, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _306, 1.0f) * _336;
    float4 _425 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _429 = _425.xyz / _425.w.xxx;
    float3 _430 = _429 - View_View_RelativePreViewTranslationTO;
    precise float3 _100 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _430);
    precise float3 _103 = _430 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _100);
    bool _432 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _433 = -View_View_ViewForward;
    float3 _435 = normalize(-_429);
    float3 _445 = float3(_432 ? _433.x : _435.x, _432 ? _433.y : _435.y, _432 ? _433.z : _435.z);
    float4 _449 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _452 = dot(_449, Material_Material_PreshaderBuffer[0]);
    float _455 = dot(_449, Material_Material_PreshaderBuffer[1]);
    float _458 = dot(_449, Material_Material_PreshaderBuffer[2]);
    float _461 = dot(_449, Material_Material_PreshaderBuffer[3]);
    float4 _464 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _467 = dot(_464, Material_Material_PreshaderBuffer[4]);
    float2 _470 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float4 _478 = Material_Texture2D_2.Sample(View_MaterialTextureBilinearWrapedSampler, _470 * Material_Material_PreshaderBuffer[5].x.xx);
    float _482 = _478.x * Material_Material_PreshaderBuffer[5].y;
    float4 _494 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(mad(floor(_482) + Material_Material_PreshaderBuffer[5].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _498 = Material_Material_PreshaderBuffer[5].w.xx;
    float2 _499 = mad(_494.xy, _498, _470);
    float2 _501 = mad(_494.zw, _498, _470);
    float2 _503 = ddy(_470);
    float2 _504 = ddx(_470);
    float2 _516 = lerp(_499, _501, clamp(round(mad(0.5f, (Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _501, _504, _503) - Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _499, _504, _503)).x, frac(_482))), 0.0f, 1.0f).xx);
    float2 _522 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _516, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _531 = _452.xxx;
    float2 _537 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _516, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _546 = _455.xxx;
    float2 _554 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _516, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _563 = _458.xxx;
    float2 _568 = _516 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _574 = mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _568, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _583 = _461.xxx;
    float2 _590 = mad(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _516, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _599 = _467.xxx;
    float3 _607 = normalize(mul(normalize((mad(float4(_590, sqrt(clamp(1.0f - dot(_590, _590), 0.0f, 1.0f)), 1.0f).xyz, _599, mad(float4(_574, sqrt(clamp(1.0f - dot(_574, _574), 0.0f, 1.0f)), 1.0f).xyz, _583, mad(float4(_554, sqrt(clamp(1.0f - dot(_554, _554), 0.0f, 1.0f)), 1.0f).xyz, _563, mad(float4(_522, sqrt(clamp(1.0f - dot(_522, _522), 0.0f, 1.0f)), 1.0f).xyz, _531, float4(_537, sqrt(clamp(1.0f - dot(_537, _537), 0.0f, 1.0f)), 1.0f).xyz * _546)))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_398, cross(_395, _398), _395), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _608 = _607 * 1.0f;
    float4 _643 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _516, View_View_MaterialTextureMipBias);
    float4 _649 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _516, View_View_MaterialTextureMipBias);
    float4 _654 = Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, _516, View_View_MaterialTextureMipBias);
    float4 _661 = Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, _516, View_View_MaterialTextureMipBias);
    float4 _667 = Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _568, View_View_MaterialTextureMipBias);
    float4 _673 = Material_Texture2D_19.SampleBias(Material_Texture2D_19Sampler, _516, View_View_MaterialTextureMipBias);
    float3 _689 = clamp(mad(_643.xyz, _599, mad(Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _568, View_View_MaterialTextureMipBias).xyz, _583, mad(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _516, View_View_MaterialTextureMipBias).xyz, _563, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _516, View_View_MaterialTextureMipBias).xyz, _531, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _516, View_View_MaterialTextureMipBias).xyz * _546)))), 0.0f.xxx, 1.0f.xxx);
    float _693 = mad(clamp(mad(_673.y * Material_Material_PreshaderBuffer[7].w, _467, mad(_667.y, _461, mad(_661.y, _458, mad(_649.y, _452, _654.y * _455)))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _694 = clamp(mad(_673.x, _467, mad(_667.x, _461, mad(_661.x, _458, mad(_649.x, _452, _654.x * _455)))), 0.0f, 1.0f);
    uint _695 = in_var_PRIMITIVE_ID * 43u;
    float3 _739 = 0.0f.xxx;
    float _740 = 0.0f;
    float _741 = 0.0f;
    float _742 = 0.0f;
    float3 _743 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_695].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _711 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _715 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _711, 0.0f);
        float4 _718 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _711, 0.0f);
        float4 _721 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _711, 0.0f);
        float _731 = _721.w;
        _739 = normalize((_608 * _718.w) + ((_718.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _740 = mad(_693, _731, _721.z);
        _741 = mad(0.5f, _731, _721.y);
        _742 = _721.x;
        _743 = (_689 * _715.w) + _715.xyz;
    }
    else
    {
        _739 = _608;
        _740 = _693;
        _741 = 0.5f;
        _742 = 0.0f;
        _743 = _689;
    }
    uint _746 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_695].x);
    float _754 = _420.w;
    float3 _767 = ((_743 - (_743 * _742)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _774 = (lerp((0.07999999821186065673828125f * _741).xxx, _743, _742.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _775 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _780 = 0.0f.xxx;
    if (_775)
    {
        _780 = _767 + (_774 * 0.449999988079071044921875f);
    }
    else
    {
        _780 = _767;
    }
    bool3 _781 = _775.xxx;
    float3 _782 = float3(_781.x ? 0.0f.xxx.x : _774.x, _781.y ? 0.0f.xxx.y : _774.y, _781.z ? 0.0f.xxx.z : _774.z);
    float3 _828 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _791 = float4(_739, 1.0f);
        float4 _804 = _791.xyzz * _791.yzzx;
        _828 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _791), dot(View_SkyIrradianceEnvironmentMap[1u], _791), dot(View_SkyIrradianceEnvironmentMap[2u], _791)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _804), dot(View_SkyIrradianceEnvironmentMap[4u], _804), dot(View_SkyIrradianceEnvironmentMap[5u], _804))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_739.x, _739.x, -(_739.y * _739.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _828 = 0.0f.xxx;
    }
    float2 _834 = mad(_420.xy / _754.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _944 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _845 = int2(trunc(_834 * View_View_BufferSizeAndInvSize.xy));
        int _846 = _845.x;
        int _847 = _845.y;
        float4 _851 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_846, _847, 0).xy, 0));
        float _852 = _851.x;
        float _862 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _943 = 0.0f.xx;
        if ((abs((mad(_852, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_852, View_View_InvDeviceZToWorldZTransform.z, _862))) - _754) / _754) > 0.00999999977648258209228515625f)
        {
            float2 _875 = _834 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _879 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_846 - 1, _847, 0).xy, 0));
            float _880 = _879.x;
            float _886 = abs((mad(_880, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_880, View_View_InvDeviceZToWorldZTransform.z, _862))) - _754);
            bool _887 = _886 < 100000000.0f;
            bool2 _888 = _887.xx;
            float2 _889 = float2(_888.x ? _875.x : _834.x, _888.y ? _875.y : _834.y);
            float _890 = _887 ? _886 : 100000000.0f;
            float2 _893 = _834 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _897 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_846, _847 + 1, 0).xy, 0));
            float _898 = _897.x;
            float _904 = abs((mad(_898, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_898, View_View_InvDeviceZToWorldZTransform.z, _862))) - _754);
            bool _905 = _904 < _890;
            bool2 _906 = _905.xx;
            float2 _907 = float2(_906.x ? _893.x : _889.x, _906.y ? _893.y : _889.y);
            float _908 = _905 ? _904 : _890;
            float2 _910 = _834 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _914 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_846 + 1, _847, 0).xy, 0));
            float _915 = _914.x;
            float _921 = abs((mad(_915, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_915, View_View_InvDeviceZToWorldZTransform.z, _862))) - _754);
            bool _922 = _921 < _908;
            bool2 _923 = _922.xx;
            float2 _924 = float2(_923.x ? _910.x : _907.x, _923.y ? _910.y : _907.y);
            float2 _928 = _834 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _932 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_846, _847 - 1, 0).xy, 0));
            float _933 = _932.x;
            bool2 _941 = (abs((mad(_933, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_933, View_View_InvDeviceZToWorldZTransform.z, _862))) - _754) < (_922 ? _921 : _908)).xx;
            _943 = float2(_941.x ? _928.x : _924.x, _941.y ? _928.y : _924.y);
        }
        else
        {
            _943 = _834;
        }
        _944 = _943;
    }
    else
    {
        _944 = _834;
    }
    uint _950_dummy_parameter;
    uint2 _950 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _950_dummy_parameter);
    float _968 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_944 * float2(float(_950.x), float(_950.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_746 & 256u) != 0u), float((_746 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _977 = _694.xxx;
    uint2 _1009 = uint2(_413 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _1037 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1037 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_944 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1037 = 1.0f.xxxx;
    }
    float4 _1038 = _1037 * _1037;
    uint _1041 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_695].x);
    uint _1054 = (uint((_1041 & 2048u) != 0u) | (uint((_1041 & 4096u) != 0u) << 1u)) | (uint((_1041 & 8192u) != 0u) << 2u);
    float4 _1346 = 0.0f.xxxx;
    float4 _1347 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1080 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1095 = dot(float4(float(_1080 & 1u), float((_1080 & 2u) >> 1u), float((_1080 & 4u) >> 2u), float((_1080 & 8u) >> 3u)), _1038);
        bool _1097 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1098 = _1097 ? 1.0f : _1095;
        float _1111 = 0.0f;
        float _1112 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1105 = clamp(mad(_754, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1107 = lerp(_1097 ? _1095 : 1.0f, 1.0f, _1105 * _1105);
            _1111 = min(_1107, _1098) * _1098;
            _1112 = _1107 * _1098;
        }
        else
        {
            _1111 = 1.0f;
            _1112 = 1.0f;
        }
        float3 _1328 = 0.0f.xxx;
        float3 _1329 = 0.0f.xxx;
        [branch]
        if ((_1112 + _1111) > 0.0f)
        {
            float _1119 = max(_740, View_View_MinRoughness);
            float _1120 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1123 = rsqrt(_1120);
            float3 _1124 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1123;
            float _1125 = dot(_739, _1124);
            float _1143 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1132 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1120 + 1.0f)), 0.0f, 1.0f));
                float _1142 = 0.0f;
                if (_1125 < _1132)
                {
                    float _1138 = _1132 + max(_1125, -_1132);
                    _1142 = (_1138 * _1138) / (4.0f * _1132);
                }
                else
                {
                    _1142 = _1125;
                }
                _1143 = _1142;
            }
            else
            {
                _1143 = _1125;
            }
            float _1144 = clamp(_1143, 0.0f, 1.0f);
            float _1145 = max(_1119, View_View_MinRoughness);
            float _1150 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1123) * mad(-_1145, _1145, 1.0f), 0.0f, 1.0f);
            float _1152 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1123, 0.0f, 1.0f);
            float3 _1321 = 0.0f.xxx;
            float3 _1322 = 0.0f.xxx;
            [branch]
            if (_1144 > 0.0f)
            {
                float _1163 = dot(_739, _445);
                float _1164 = dot(_445, _1124);
                float _1166 = rsqrt(mad(2.0f, _1164, 2.0f));
                bool _1172 = _1150 > 0.0f;
                float _1251 = 0.0f;
                float _1252 = 0.0f;
                if (_1172)
                {
                    float _1177 = sqrt(mad(-_1150, _1150, 1.0f));
                    float _1178 = 2.0f * _1125;
                    float _1179 = -_1164;
                    float _1180 = mad(_1178, _1163, _1179);
                    float _1249 = 0.0f;
                    float _1250 = 0.0f;
                    if (_1180 >= _1177)
                    {
                        _1249 = 1.0f;
                        _1250 = abs(_1163);
                    }
                    else
                    {
                        float _1185 = -_1180;
                        float _1188 = _1150 * rsqrt(mad(_1185, _1180, 1.0f));
                        float _1189 = mad(_1185, _1125, _1163);
                        float _1193 = mad(_1185, _1164, mad(2.0f * _1163, _1163, -1.0f));
                        float _1204 = _1188 * sqrt(clamp(mad(_1178 * _1163, _1164, mad(_1179, _1164, mad(-_1163, _1163, mad(-_1125, _1125, 1.0f)))), 0.0f, 1.0f));
                        float _1206 = (_1204 * 2.0f) * _1163;
                        float _1207 = mad(_1125, _1177, _1163);
                        float _1208 = mad(_1188, _1189, _1207);
                        float _1210 = mad(_1188, _1193, mad(_1164, _1177, 1.0f));
                        float _1211 = _1204 * _1210;
                        float _1212 = _1208 * _1210;
                        float _1217 = _1212 * mad(-0.5f, _1211, (0.25f * _1206) * _1208);
                        float _1227 = mad(_1208, mad(_1207, _1210 * _1210, _1212 * mad(-0.5f, mad(_1164, _1177, _1210), -0.5f)), mad(_1211, _1211, (_1206 * _1208) * mad(_1206, _1208, _1211 * (-2.0f))));
                        float _1231 = (2.0f * _1217) / mad(_1227, _1227, _1217 * _1217);
                        float _1232 = _1231 * _1227;
                        float _1234 = mad(-_1231, _1217, 1.0f);
                        float _1240 = mad(_1164, _1177, mad(_1234, _1188 * _1193, _1232 * _1206));
                        float _1242 = rsqrt(mad(2.0f, _1240, 2.0f));
                        _1249 = clamp((mad(_1125, _1177, mad(_1234, _1188 * _1189, _1232 * _1204)) + _1163) * _1242, 0.0f, 1.0f);
                        _1250 = clamp(mad(_1242, _1240, _1242), 0.0f, 1.0f);
                    }
                    _1251 = _1249;
                    _1252 = _1250;
                }
                else
                {
                    _1251 = clamp((_1125 + _1163) * _1166, 0.0f, 1.0f);
                    _1252 = clamp(mad(_1166, _1164, _1166), 0.0f, 1.0f);
                }
                float _1255 = clamp(abs(_1163) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1257 = 1.0f.xxx * _1144;
                float3 _1319 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1319 = 0.0f.xxx;
                }
                else
                {
                    float _1264 = _1119 * _1119;
                    float _1274 = 0.0f;
                    if (_1152 > 0.0f)
                    {
                        _1274 = clamp(mad(_1264, _1264, (_1152 * _1152) / mad(_1252, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1274 = _1264 * _1264;
                    }
                    float _1288 = 0.0f;
                    if (_1172)
                    {
                        _1288 = _1274 / (_1274 + (((0.25f * _1150) * mad(3.0f, asfloat(532487669 + (asint(_1274) >> 1)), _1150)) / (_1252 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1288 = 1.0f;
                    }
                    float _1291 = mad(mad(_1251, _1274, -_1251), _1251, 1.0f);
                    float _1296 = sqrt(_1274);
                    float _1297 = 1.0f - _1296;
                    float _1303 = 1.0f - _1252;
                    float _1304 = _1303 * _1303;
                    float _1305 = _1304 * _1304;
                    _1319 = _1257 * (((clamp(50.0f * _782.y, 0.0f, 1.0f) * (_1305 * _1303)).xxx + (_782 * mad(-_1305, _1303, 1.0f))) * (((_1274 / ((3.1415927410125732421875f * _1291) * _1291)) * _1288) * (0.5f / mad(_1144, mad(_1255, _1297, _1296), _1255 * mad(_1144, _1297, _1296)))));
                }
                _1321 = ((_780 * 0.3183098733425140380859375f) * _1257) * 1.0f;
                _1322 = _1319;
            }
            else
            {
                _1321 = 0.0f.xxx;
                _1322 = 0.0f.xxx;
            }
            float3 _1325 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1112;
            _1328 = mad(_1321 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1325, 0.0f.xxx);
            _1329 = (_1322 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1325;
        }
        else
        {
            _1328 = 0.0f.xxx;
            _1329 = 0.0f.xxx;
        }
        float4 _1333 = float4(_1328, 0.0f);
        float4 _1337 = float4(_1329, 0.0f);
        float4 _1344 = 0.0f.xxxx;
        float4 _1345 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _1054) != 0u)
        {
            _1344 = float4(_1333.x, _1333.y, _1333.z, _1333.w);
            _1345 = float4(_1337.x, _1337.y, _1337.z, _1337.w);
        }
        else
        {
            _1344 = 0.0f.xxxx;
            _1345 = 0.0f.xxxx;
        }
        _1346 = _1344;
        _1347 = _1345;
    }
    else
    {
        _1346 = 0.0f.xxxx;
        _1347 = 0.0f.xxxx;
    }
    uint _1348 = ((((min(uint(max(0.0f, log2(mad(_336, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _1009.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _1009.x) * 2u;
    uint _1358 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1348 + 1u] & 1073741823u;
    uint _1361 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1348] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1363 = 0.0f.xxxx;
    float4 _1366 = 0.0f.xxxx;
    _1363 = _1346;
    _1366 = _1347;
    float4 _1364 = 0.0f.xxxx;
    float4 _1367 = 0.0f.xxxx;
    [loop]
    for (uint _1368 = 0u; _1368 < _1361; _1363 = _1364, _1366 = _1367, _1368++)
    {
        uint _1377 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1358 + _1368).x * 6u;
        uint _1380 = _1377 + 1u;
        uint _1383 = _1377 + 2u;
        uint _1386 = _1377 + 3u;
        uint _1389 = _1377 + 4u;
        uint _1393 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1383].w);
        uint _1399 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1380].y);
        uint _1415 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1386].z);
        float2 _1417 = spvUnpackHalf2x16(_1415 & 65535u);
        float _1418 = _1417.x;
        float2 _1421 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1386].w));
        float _1422 = _1421.x;
        bool _1427 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1380].w == 0.0f;
        uint _1429 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1389].w);
        uint _1442 = _1393 >> 4u;
        float3 _1458 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1377].xyz - _429;
        float _1459 = dot(_1458, _1458);
        float _1476 = 0.0f;
        if (_1427)
        {
            float _1471 = _1459 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1377].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1377].w);
            float _1474 = clamp(mad(-_1471, _1471, 1.0f), 0.0f, 1.0f);
            _1476 = _1474 * _1474;
        }
        else
        {
            float3 _1465 = _1458 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1377].w;
            _1476 = pow(1.0f - clamp(dot(_1465, _1465), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1380].w);
        }
        float _1487 = 0.0f;
        if (((_1393 >> 16u) & 3u) == 2u)
        {
            float _1484 = clamp((dot(_1458 * rsqrt(_1459), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1383].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1386].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1386].y, 0.0f, 1.0f);
            _1487 = _1476 * (_1484 * _1484);
        }
        else
        {
            _1487 = _1476;
        }
        float3 _1784 = 0.0f.xxx;
        float3 _1785 = 0.0f.xxx;
        [branch]
        if (_1487 > 0.0f)
        {
            float _1495 = 0.0f;
            [branch]
            if (uint(int((_1393 & 255u) != 0u)) != 0u)
            {
                _1495 = dot(float4(float(_1442 & 1u), float((_1442 & 2u) >> 1u), float((_1442 & 4u) >> 2u), float((_1442 & 8u) >> 3u)), _1038);
            }
            else
            {
                _1495 = 1.0f;
            }
            float3 _1782 = 0.0f.xxx;
            float3 _1783 = 0.0f.xxx;
            [branch]
            if ((_1495 + _1495) > 0.0f)
            {
                float3 _1501 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1389].xyz * (0.5f * _1422);
                float3 _1502 = _1458 - _1501;
                float3 _1503 = _1458 + _1501;
                float _1506 = max(_740, View_View_MinRoughness);
                bool _1507 = _1422 > 0.0f;
                float _1532 = 0.0f;
                float _1533 = 0.0f;
                float _1534 = 0.0f;
                [branch]
                if (_1507)
                {
                    float _1519 = rsqrt(dot(_1502, _1502));
                    float _1520 = rsqrt(dot(_1503, _1503));
                    float _1521 = _1519 * _1520;
                    float _1523 = dot(_1502, _1503) * _1521;
                    _1532 = _1523;
                    _1533 = 0.5f * mad(dot(_739, _1502), _1519, dot(_739, _1503) * _1520);
                    _1534 = _1521 / mad(_1519, _1520, mad(_1523, 0.5f, 0.5f));
                }
                else
                {
                    float _1511 = dot(_1502, _1502);
                    _1532 = 1.0f;
                    _1533 = dot(_739, _1502 * rsqrt(_1511));
                    _1534 = 1.0f / (_1511 + 1.0f);
                }
                float _1552 = 0.0f;
                if (_1418 > 0.0f)
                {
                    float _1541 = sqrt(clamp((_1418 * _1418) * _1534, 0.0f, 1.0f));
                    float _1551 = 0.0f;
                    if (_1533 < _1541)
                    {
                        float _1547 = _1541 + max(_1533, -_1541);
                        _1551 = (_1547 * _1547) / (4.0f * _1541);
                    }
                    else
                    {
                        _1551 = _1533;
                    }
                    _1552 = _1551;
                }
                else
                {
                    _1552 = _1533;
                }
                float _1553 = clamp(_1552, 0.0f, 1.0f);
                float3 _1571 = 0.0f.xxx;
                if (_1507)
                {
                    float3 _1558 = reflect(-_445, _739);
                    float3 _1559 = _1503 - _1502;
                    float _1560 = dot(_1558, _1559);
                    _1571 = _1502 + (_1559 * clamp(dot(_1502, (_1558 * _1560) - _1559) / mad(_1422, _1422, -(_1560 * _1560)), 0.0f, 1.0f));
                }
                else
                {
                    _1571 = _1502;
                }
                float _1573 = rsqrt(dot(_1571, _1571));
                float3 _1574 = _1571 * _1573;
                float _1575 = max(_1506, View_View_MinRoughness);
                float _1580 = clamp((_1418 * _1573) * mad(-_1575, _1575, 1.0f), 0.0f, 1.0f);
                float _1582 = clamp(spvUnpackHalf2x16(_1415 >> 16u).x * _1573, 0.0f, 1.0f);
                float3 _1775 = 0.0f.xxx;
                float3 _1776 = 0.0f.xxx;
                [branch]
                if (_1553 > 0.0f)
                {
                    float _1593 = dot(_739, _1574);
                    float _1594 = dot(_739, _445);
                    float _1595 = dot(_445, _1574);
                    float _1597 = rsqrt(mad(2.0f, _1595, 2.0f));
                    bool _1603 = _1580 > 0.0f;
                    float _1682 = 0.0f;
                    float _1683 = 0.0f;
                    if (_1603)
                    {
                        float _1608 = sqrt(mad(-_1580, _1580, 1.0f));
                        float _1609 = 2.0f * _1593;
                        float _1610 = -_1595;
                        float _1611 = mad(_1609, _1594, _1610);
                        float _1680 = 0.0f;
                        float _1681 = 0.0f;
                        if (_1611 >= _1608)
                        {
                            _1680 = 1.0f;
                            _1681 = abs(_1594);
                        }
                        else
                        {
                            float _1616 = -_1611;
                            float _1619 = _1580 * rsqrt(mad(_1616, _1611, 1.0f));
                            float _1620 = mad(_1616, _1593, _1594);
                            float _1624 = mad(_1616, _1595, mad(2.0f * _1594, _1594, -1.0f));
                            float _1635 = _1619 * sqrt(clamp(mad(_1609 * _1594, _1595, mad(_1610, _1595, mad(-_1594, _1594, mad(-_1593, _1593, 1.0f)))), 0.0f, 1.0f));
                            float _1637 = (_1635 * 2.0f) * _1594;
                            float _1638 = mad(_1593, _1608, _1594);
                            float _1639 = mad(_1619, _1620, _1638);
                            float _1641 = mad(_1619, _1624, mad(_1595, _1608, 1.0f));
                            float _1642 = _1635 * _1641;
                            float _1643 = _1639 * _1641;
                            float _1648 = _1643 * mad(-0.5f, _1642, (0.25f * _1637) * _1639);
                            float _1658 = mad(_1639, mad(_1638, _1641 * _1641, _1643 * mad(-0.5f, mad(_1595, _1608, _1641), -0.5f)), mad(_1642, _1642, (_1637 * _1639) * mad(_1637, _1639, _1642 * (-2.0f))));
                            float _1662 = (2.0f * _1648) / mad(_1658, _1658, _1648 * _1648);
                            float _1663 = _1662 * _1658;
                            float _1665 = mad(-_1662, _1648, 1.0f);
                            float _1671 = mad(_1595, _1608, mad(_1665, _1619 * _1624, _1663 * _1637));
                            float _1673 = rsqrt(mad(2.0f, _1671, 2.0f));
                            _1680 = clamp((mad(_1593, _1608, mad(_1665, _1619 * _1620, _1663 * _1635)) + _1594) * _1673, 0.0f, 1.0f);
                            _1681 = clamp(mad(_1673, _1671, _1673), 0.0f, 1.0f);
                        }
                        _1682 = _1680;
                        _1683 = _1681;
                    }
                    else
                    {
                        _1682 = clamp((_1593 + _1594) * _1597, 0.0f, 1.0f);
                        _1683 = clamp(mad(_1597, _1595, _1597), 0.0f, 1.0f);
                    }
                    float _1686 = clamp(abs(_1594) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1689 = 1.0f.xxx * ((_1427 ? _1534 : 1.0f) * _1553);
                    float3 _1773 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1422, _1418), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1773 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1696 = _1506 * _1506;
                        float _1706 = 0.0f;
                        if (_1582 > 0.0f)
                        {
                            _1706 = clamp(mad(_1696, _1696, (_1582 * _1582) / mad(_1683, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1706 = _1696 * _1696;
                        }
                        float _1720 = 0.0f;
                        float _1721 = 0.0f;
                        if (_1603)
                        {
                            float _1718 = _1706 + (((0.25f * _1580) * mad(3.0f, asfloat(532487669 + (asint(_1706) >> 1)), _1580)) / (_1683 + 0.001000000047497451305389404296875f));
                            _1720 = _1706 / _1718;
                            _1721 = _1718;
                        }
                        else
                        {
                            _1720 = 1.0f;
                            _1721 = _1706;
                        }
                        float _1742 = 0.0f;
                        if (_1532 < 1.0f)
                        {
                            float _1728 = sqrt((1.00010001659393310546875f - _1532) / (1.0f + _1532));
                            _1742 = _1720 * sqrt(_1721 / (_1721 + (((0.25f * _1728) * mad(3.0f, asfloat(532487669 + (asint(_1721) >> 1)), _1728)) / (_1683 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1742 = _1720;
                        }
                        float _1745 = mad(mad(_1682, _1706, -_1682), _1682, 1.0f);
                        float _1750 = sqrt(_1706);
                        float _1751 = 1.0f - _1750;
                        float _1757 = 1.0f - _1683;
                        float _1758 = _1757 * _1757;
                        float _1759 = _1758 * _1758;
                        _1773 = _1689 * (((clamp(50.0f * _782.y, 0.0f, 1.0f) * (_1759 * _1757)).xxx + (_782 * mad(-_1759, _1757, 1.0f))) * (((_1706 / ((3.1415927410125732421875f * _1745) * _1745)) * _1742) * (0.5f / mad(_1553, mad(_1686, _1751, _1750), _1686 * mad(_1553, _1751, _1750)))));
                    }
                    _1775 = ((_780 * 0.3183098733425140380859375f) * _1689) * 1.0f;
                    _1776 = _1773;
                }
                else
                {
                    _1775 = 0.0f.xxx;
                    _1776 = 0.0f.xxx;
                }
                float3 _1779 = ((float3(float((_1399 >> 0u) & 1023u), float((_1399 >> 10u) & 1023u), float((_1399 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1380].x) * _1487) * _1495;
                _1782 = mad(_1775 * (float((_1429 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1779, 0.0f.xxx);
                _1783 = (_1776 * (float(_1429 & 1023u) * 0.000977517105638980865478515625f)) * _1779;
            }
            else
            {
                _1782 = 0.0f.xxx;
                _1783 = 0.0f.xxx;
            }
            _1784 = _1782;
            _1785 = _1783;
        }
        else
        {
            _1784 = 0.0f.xxx;
            _1785 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1393 >> 8u) & 7u) & _1054) != 0u)
        {
            _1364 = _1363 + float4(_1784, 0.0f);
            _1367 = _1366 + float4(_1785, 0.0f);
        }
        else
        {
            _1364 = _1363;
            _1367 = _1366;
        }
    }
    bool4 _1803 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1813 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_695].w) & 65535u);
    float3 _1817 = (_739 * (2.0f * dot(_445, _739))) - _445;
    float _1824 = mad(-1.2000000476837158203125f, log2(max(_740, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1838 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1817, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1813].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1824);
    float _1842 = 1.0f - _1838.w;
    float3 _1869 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1869 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1817, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1824).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1869 = 0.0f.xxx;
    }
    float4 _1875 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _740) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1876 = _1875.x;
    float2 _1885 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1876 * _1876, exp2((-9.27999973297119140625f) * clamp(dot(_739, _445), 0.0f, 1.0f))), _1876, _1875.y)) + _1875.zw;
    bool _1912 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2336 = 0.0f.xxxx;
    if (_1912)
    {
        uint2 _1924 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1926 = normalize(_429 - View_View_TranslatedWorldCameraOrigin);
        uint _1927 = _1924.x;
        uint4 _1931 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1927, _1924.y, 0u), 0u));
        uint _1932 = _1931.x;
        float4 _1934 = 0.0f.xxxx;
        _1934 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1935 = 0.0f.xxxx;
        for (int _1937 = 0; uint(_1937) < _1932; _1934 = _1935, _1937++)
        {
            uint _1948 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1927, _1924.y, uint(1 + _1937)), 0u)).x * 3u;
            float4 _1950 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1948);
            float4 _1952 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1948 + 1u);
            float4 _1954 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1948 + 2u);
            float3 _1955 = _1950.xyz;
            float _1956 = _1950.w;
            float _1957 = 1.0f / _1956;
            uint _1959 = asuint(_1952.x);
            float2 _1965 = float2(spvUnpackHalf2x16(_1959).x, spvUnpackHalf2x16(_1959 >> 16u).x);
            float3 _1966 = float3(_1965.x, _1965.y, _307.z);
            uint _1968 = asuint(_1952.y);
            _1966.z = spvUnpackHalf2x16(_1968).x;
            float3 _1975 = 0.0f.xxx;
            _1975.x = spvUnpackHalf2x16(_1968 >> 16u).x;
            uint _1977 = asuint(_1952.z);
            float2 _1983 = float2(spvUnpackHalf2x16(_1977).x, spvUnpackHalf2x16(_1977 >> 16u).x);
            float3 _1984 = float3(_1975.x, _1983.x, _1983.y);
            float3x3 _1989 = float3x3(_1966 * _1957, _1984 * _1957, cross(_1966, _1984) * _1957);
            uint _1991 = asuint(_1954.x);
            float2 _1994 = spvUnpackHalf2x16((_1991 >> 17u) & 32752u);
            float _1995 = _1994.x;
            float2 _1998 = spvUnpackHalf2x16((_1991 >> 6u) & 32752u);
            float _1999 = _1998.x;
            float2 _2002 = spvUnpackHalf2x16((_1991 << 5u) & 32736u);
            float _2003 = _2002.x;
            uint _2005 = asuint(_1954.y);
            float3 _2023 = 0.0f.xxx;
            if (_2005 > 0u)
            {
                _2023 = float3(spvUnpackHalf2x16((_2005 >> 17u) & 32752u).x, spvUnpackHalf2x16((_2005 >> 6u) & 32752u).x, spvUnpackHalf2x16((_2005 << 5u) & 32736u).x);
            }
            else
            {
                _2023 = 0.0f.xxx;
            }
            uint _2025 = asuint(_1954.z);
            float _2040 = float((_2025 >> 24u) & 255u);
            float _2041 = _2040 * 0.0039215688593685626983642578125f;
            float3 _2048 = mul(View_View_TranslatedWorldCameraOrigin - _1955, _1989);
            float3 _2050 = normalize(mul(_1926, _1989));
            float _2052 = dot(_2050, _2050);
            float _2053 = dot(_2050, _2048);
            float _2054 = 2.0f * _2053;
            float _2059 = mad(_2054, _2054, -((4.0f * _2052) * mad(-1.0f, 1.0f, dot(_2048, _2048))));
            float2 _2071 = 0.0f.xx;
            [flatten]
            if (_2059 >= 0.0f)
            {
                _2071 = ((_2053 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2059))) / (2.0f * _2052).xx;
            }
            else
            {
                _2071 = (-1.0f).xx;
            }
            float3 _2077 = mul(_429 - _1955, _1989) - _2048;
            float2 _2081 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1957, _2071), sqrt(dot(_2077, _2077)).xx);
            float _2231 = 0.0f;
            float3 _2232 = 0.0f.xxx;
            if (any(bool2(_2081.x > 0.0f.xx.x, _2081.y > 0.0f.xx.y)))
            {
                float2 _2102 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2092 = dot(_1926, View_View_ViewForward);
                    _2102 = max(_2081, ((View_View_VolumetricFogMaxDistance * ((_2092 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2092) : 0.0f)) * _1957).xx);
                }
                else
                {
                    _2102 = _2081;
                }
                float _2107 = max(0.0f, abs(_2102.y - _2102.x));
                float _2229 = 0.0f;
                float3 _2230 = 0.0f.xxx;
                if (_2107 > 0.0f)
                {
                    float3 _2112 = _2048 + (_2050 * _2102.x);
                    float _2148 = 0.0f;
                    if (_1995 > 0.0f)
                    {
                        float _2116 = dot(_2050, _2112);
                        float _2117 = dot(_2112, _2112);
                        float _2118 = _2117 - 1.0f;
                        float _2120 = mad(_2116, _2116, 1.0f - _2117);
                        float _2147 = 0.0f;
                        if (_2120 >= 0.0f)
                        {
                            float _2124 = sqrt(_2120);
                            float _2125 = -_2116;
                            float _2128 = max(_2125 - _2124, 0.0f);
                            float _2130 = min(max(_2125 + _2124, 0.0f), _2107);
                            float _2131 = _2128 * _2128;
                            float _2132 = _2130 * _2130;
                            _2147 = max(0.0f, (_1995 * ((-mad(_2132 * _2130, 0.3333333432674407958984375f, mad(_2118, _2130, _2116 * _2132))) - (-mad(_2131 * _2128, 0.3333333432674407958984375f, mad(_2118, _2128, _2116 * _2131))))) * 0.75f);
                        }
                        else
                        {
                            _2147 = 0.0f;
                        }
                        _2148 = _2147;
                    }
                    else
                    {
                        _2148 = 0.0f;
                    }
                    float _2173 = 0.0f;
                    if (_1999 > 0.0f)
                    {
                        float _2154 = _2050.z;
                        float _2160 = (abs(_2154) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2154 >= 0.0f) ? 1.0f : (-1.0f))) : _2154;
                        float _2163 = max(-80.0f, (_2112.z - _1954.w) * _2003);
                        _2173 = (_1999 / (_2003 * _2160)) * (exp(-_2163) - exp(-mad(_2160 * _2107, _2003, _2163)));
                    }
                    else
                    {
                        _2173 = 0.0f;
                    }
                    float _2184 = exp((log(mad(exp(-_2148) - 1.0f, 1.0f - exp(-_2173), 1.0f)) * _1956) * 0.00999999977648258209228515625f);
                    float _2188 = _2040 * (-0.0039215688593685626983642578125f);
                    float _2195 = mad(_2040 * (-0.007843137718737125396728515625f), dot(_1926, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2188, _2188, 1.0f));
                    float3 _2200 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_2041, _2188, 1.0f) / ((12.56637096405029296875f * _2195) * sqrt(_2195)));
                    float3 _2226 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2211 = float4(_1926 * _2188, 1.0f);
                        _2226 = _2200 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2211), dot(View_SkyIrradianceEnvironmentMap[1u], _2211), dot(View_SkyIrradianceEnvironmentMap[2u], _2211)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2226 = _2200;
                    }
                    _2229 = _2184;
                    _2230 = mad(_2226, float4(float((_2025 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_2025 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_2025 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _2041).xyz, _2023) * (1.0f - _2184);
                }
                else
                {
                    _2229 = 1.0f;
                    _2230 = 0.0f.xxx;
                }
                _2231 = _2229;
                _2232 = _2230;
            }
            else
            {
                _2231 = 1.0f;
                _2232 = 0.0f.xxx;
            }
            _1935 = float4((_1934.xyz * _2231) + float4(_2232, _2231).xyz, _1934.w * _2231);
        }
        float _2252 = _1934.w * in_var_TEXCOORD7.w;
        float4 _2260 = float4(_100, 1.0f);
        precise float4 _104 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _105 = _2260 + _104;
        precise float4 _106 = _105 - _2260;
        precise float4 _107 = _105 - _106;
        precise float4 _108 = _2260 - _107;
        precise float4 _109 = _104 - _106;
        precise float4 _110 = _108 + _109;
        float4 _2271 = mul(_105 + (float4(_103, 0.0f) + _110), View_View_RelativeWorldToClip);
        float _2272 = _2271.w;
        float4 _2335 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2335 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2318 = 0.0f.xxxx;
            float _2319 = 0.0f;
            if (_1912)
            {
                float4 _2314 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2271.xy / _2272.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2272, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2316 = _2314.xyz * View_View_OneOverPreExposure;
                _2318 = float4(_2316.x, _2316.y, _2316.z, _2314.w);
                _2319 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2318 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2319 = 0.0f;
            }
            float4 _2324 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2318, clamp((_754 - _2319) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2327 = _2324.w;
            _2335 = float4(_2324.xyz + (float4(_1934.xyz + (in_var_TEXCOORD7.xyz * _1934.w), _2252).xyz * _2327), _2327 * _2252);
            break;
        } while(false);
        _2336 = _2335;
    }
    else
    {
        _2336 = in_var_TEXCOORD7;
    }
    float3 _2343 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].y.xxx), 0.0f.xxx);
    float3 _2412 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _111 = Scene_GPUScene_GPUScenePrimitiveSceneData[_695 + 18u].xyz * 2097152.0f;
        precise float3 _112 = _111 + Scene_GPUScene_GPUScenePrimitiveSceneData[_695 + 19u].xyz;
        precise float3 _113 = _112 - _111;
        precise float3 _114 = Scene_GPUScene_GPUScenePrimitiveSceneData[_695 + 19u].xyz - _113;
        uint _2369 = _695 + 32u;
        precise float3 _115 = _100 - _112;
        precise float3 _116 = _103 - _114;
        precise float3 _117 = _115 + _116;
        float3 _2374 = abs(_117);
        float3 _2375 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_695 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_695 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_695 + 27u].w) + 1.0f.xxx;
        float3 _2411 = 0.0f.xxx;
        if (any(bool3(_2374.x > _2375.x, _2374.y > _2375.y, _2374.z > _2375.z)))
        {
            float3 _2407 = frac(dot(frac(frac(_100 * 1.52587890625e-05f.xxx) + frac(_103 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2411 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2407.x > 0.5f.xxx.x, _2407.y > 0.5f.xxx.y, _2407.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2397 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2369].x > 0.0f)
            {
                float3 _2385 = abs(_429 - in_var_TEXCOORD9);
                _2397 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2385.x, max(_2385.y, _2385.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2369].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2397 = _2343;
            }
            _2411 = _2397;
        }
        _2412 = _2411;
    }
    else
    {
        _2412 = _2343;
    }
    float3 _2414 = mad((_828 * _968) * _780, max(_977, ((((((_743 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _694) + ((_743 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _694) + ((_743 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _694), lerp(mad((((float4(_1838.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1813].x, _1842).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1869 * _1842)).xyz * ((_782 * _1885.x) + (clamp(50.0f * _782.y, 0.0f, 1.0f) * _1885.y).xxx)) * _968, max(_977, ((((((_782 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _694) + ((_782 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _694) + ((_782 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _694), float4(_1803.x ? 0.0f.xxxx.x : _1363.x, _1803.y ? 0.0f.xxxx.y : _1363.y, _1803.z ? 0.0f.xxxx.z : _1363.z, _1803.w ? 0.0f.xxxx.w : _1363.w).xyz + float4(_1803.x ? 0.0f.xxxx.x : _1366.x, _1803.y ? 0.0f.xxxx.y : _1366.y, _1803.z ? 0.0f.xxxx.z : _1366.z, _1803.w ? 0.0f.xxxx.w : _1366.w).xyz), _780 + (_782 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2412;
    float4 _2422 = float4((_2414 * _2336.w) + _2336.xyz, 0.0f);
    _2422.w = 0.0f;
    float4 _2426 = _2422 * View_View_PreExposure;
    float3 _2431 = min(_2426.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2431.x, _2431.y, _2431.z, _2426.w);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD7 = stage_input.in_var_TEXCOORD7;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    return stage_output;
}
