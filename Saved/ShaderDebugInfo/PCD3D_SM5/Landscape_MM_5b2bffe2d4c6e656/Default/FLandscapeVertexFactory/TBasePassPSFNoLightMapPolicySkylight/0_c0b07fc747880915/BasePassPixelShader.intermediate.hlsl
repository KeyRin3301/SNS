#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _298 = 0.0f;
static float3 _299 = 0.0f.xxx;

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
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
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
Texture2D<float4> Material_Texture2D_13;
SamplerState Material_Texture2D_13Sampler;
Texture2D<float4> Material_Texture2D_14;
SamplerState Material_Texture2D_14Sampler;
Texture2D<float4> Material_Texture2D_15;
SamplerState Material_Texture2D_15Sampler;

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
    float _328 = 1.0f / gl_FragCoord.w;
    float4 _376 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _380 = mad(float2(_376.zw), 2.0f.xx, (-1.0f).xx);
    float _384 = sqrt(max(1.0f - dot(_380, _380), 0.0f));
    float _385 = _380.x;
    float3 _387 = float3(_385, _380.y, _384);
    float3 _390 = normalize(float3(_384, 0.0f, -_385));
    float2 _405 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _412 = float4(mad(_405, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _298, 1.0f) * _328;
    float4 _417 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _421 = _417.xyz / _417.w.xxx;
    float3 _422 = _421 - View_View_RelativePreViewTranslationTO;
    precise float3 _93 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _422);
    precise float3 _96 = _422 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _93);
    bool _424 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _425 = -View_View_ViewForward;
    float3 _427 = normalize(-_421);
    float3 _437 = float3(_424 ? _425.x : _427.x, _424 ? _425.y : _427.y, _424 ? _425.z : _427.z);
    float4 _441 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _444 = dot(_441, Material_Material_PreshaderBuffer[0]);
    float _447 = dot(_441, Material_Material_PreshaderBuffer[1]);
    float _450 = dot(_441, Material_Material_PreshaderBuffer[2]);
    float _453 = dot(_441, Material_Material_PreshaderBuffer[3]);
    float2 _456 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _468 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _456 * Material_Material_PreshaderBuffer[4].x.xx).x * Material_Material_PreshaderBuffer[4].y;
    float4 _480 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_468) + Material_Material_PreshaderBuffer[4].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _484 = Material_Material_PreshaderBuffer[4].w.xx;
    float2 _485 = mad(_480.xy, _484, _456);
    float2 _487 = mad(_480.zw, _484, _456);
    float2 _489 = ddy(_456);
    float2 _490 = ddx(_456);
    float2 _502 = lerp(_485, _487, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _487, _490, _489) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _485, _490, _489)).x, frac(_468))), 0.0f, 1.0f).xx);
    float2 _508 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _502, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _517 = _444.xxx;
    float2 _523 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _502, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _532 = _447.xxx;
    float2 _538 = _502 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _544 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _538, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _553 = _450.xxx;
    float2 _560 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _502, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _569 = _453.xxx;
    float3 _577 = normalize(mul(normalize((mad(float4(_560, sqrt(clamp(1.0f - dot(_560, _560), 0.0f, 1.0f)), 1.0f).xyz, _569, mad(float4(_544, sqrt(clamp(1.0f - dot(_544, _544), 0.0f, 1.0f)), 1.0f).xyz, _553, mad(float4(_508, sqrt(clamp(1.0f - dot(_508, _508), 0.0f, 1.0f)), 1.0f).xyz, _517, float4(_523, sqrt(clamp(1.0f - dot(_523, _523), 0.0f, 1.0f)), 1.0f).xyz * _532))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_390, cross(_387, _390), _387), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _578 = _577 * 1.0f;
    float4 _613 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _618 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _625 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _538, View_View_MaterialTextureMipBias);
    float4 _631 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _502, View_View_MaterialTextureMipBias);
    float3 _645 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _502, View_View_MaterialTextureMipBias).xyz, _569, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _538, View_View_MaterialTextureMipBias).xyz, _553, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _502, View_View_MaterialTextureMipBias).xyz, _517, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _502, View_View_MaterialTextureMipBias).xyz * _532))), 0.0f.xxx, 1.0f.xxx);
    float _649 = mad(clamp(mad(_631.y * Material_Material_PreshaderBuffer[6].w, _453, mad(_625.y, _450, mad(_613.y, _444, _618.y * _447))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _650 = clamp(mad(_631.x, _453, mad(_625.x, _450, mad(_613.x, _444, _618.x * _447))), 0.0f, 1.0f);
    uint _651 = in_var_PRIMITIVE_ID * 43u;
    float3 _695 = 0.0f.xxx;
    float _696 = 0.0f;
    float _697 = 0.0f;
    float _698 = 0.0f;
    float3 _699 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_651].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _667 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _671 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _667, 0.0f);
        float4 _674 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _667, 0.0f);
        float4 _677 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _667, 0.0f);
        float _687 = _677.w;
        _695 = normalize((_578 * _674.w) + ((_674.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _696 = mad(_649, _687, _677.z);
        _697 = mad(0.5f, _687, _677.y);
        _698 = _677.x;
        _699 = (_645 * _671.w) + _671.xyz;
    }
    else
    {
        _695 = _578;
        _696 = _649;
        _697 = 0.5f;
        _698 = 0.0f;
        _699 = _645;
    }
    uint _702 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_651].x);
    float _710 = _412.w;
    float3 _723 = ((_699 - (_699 * _698)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _730 = (lerp((0.07999999821186065673828125f * _697).xxx, _699, _698.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _731 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _736 = 0.0f.xxx;
    if (_731)
    {
        _736 = _723 + (_730 * 0.449999988079071044921875f);
    }
    else
    {
        _736 = _723;
    }
    bool3 _737 = _731.xxx;
    float3 _738 = float3(_737.x ? 0.0f.xxx.x : _730.x, _737.y ? 0.0f.xxx.y : _730.y, _737.z ? 0.0f.xxx.z : _730.z);
    float3 _784 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _747 = float4(_695, 1.0f);
        float4 _760 = _747.xyzz * _747.yzzx;
        _784 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _747), dot(View_SkyIrradianceEnvironmentMap[1u], _747), dot(View_SkyIrradianceEnvironmentMap[2u], _747)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _760), dot(View_SkyIrradianceEnvironmentMap[4u], _760), dot(View_SkyIrradianceEnvironmentMap[5u], _760))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_695.x, _695.x, -(_695.y * _695.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _784 = 0.0f.xxx;
    }
    float2 _790 = mad(_412.xy / _710.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _900 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _801 = int2(trunc(_790 * View_View_BufferSizeAndInvSize.xy));
        int _802 = _801.x;
        int _803 = _801.y;
        float4 _807 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_802, _803, 0).xy, 0));
        float _808 = _807.x;
        float _818 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _899 = 0.0f.xx;
        if ((abs((mad(_808, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_808, View_View_InvDeviceZToWorldZTransform.z, _818))) - _710) / _710) > 0.00999999977648258209228515625f)
        {
            float2 _831 = _790 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _835 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_802 - 1, _803, 0).xy, 0));
            float _836 = _835.x;
            float _842 = abs((mad(_836, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_836, View_View_InvDeviceZToWorldZTransform.z, _818))) - _710);
            bool _843 = _842 < 100000000.0f;
            bool2 _844 = _843.xx;
            float2 _845 = float2(_844.x ? _831.x : _790.x, _844.y ? _831.y : _790.y);
            float _846 = _843 ? _842 : 100000000.0f;
            float2 _849 = _790 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _853 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_802, _803 + 1, 0).xy, 0));
            float _854 = _853.x;
            float _860 = abs((mad(_854, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_854, View_View_InvDeviceZToWorldZTransform.z, _818))) - _710);
            bool _861 = _860 < _846;
            bool2 _862 = _861.xx;
            float2 _863 = float2(_862.x ? _849.x : _845.x, _862.y ? _849.y : _845.y);
            float _864 = _861 ? _860 : _846;
            float2 _866 = _790 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _870 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_802 + 1, _803, 0).xy, 0));
            float _871 = _870.x;
            float _877 = abs((mad(_871, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_871, View_View_InvDeviceZToWorldZTransform.z, _818))) - _710);
            bool _878 = _877 < _864;
            bool2 _879 = _878.xx;
            float2 _880 = float2(_879.x ? _866.x : _863.x, _879.y ? _866.y : _863.y);
            float2 _884 = _790 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _888 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_802, _803 - 1, 0).xy, 0));
            float _889 = _888.x;
            bool2 _897 = (abs((mad(_889, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_889, View_View_InvDeviceZToWorldZTransform.z, _818))) - _710) < (_878 ? _877 : _864)).xx;
            _899 = float2(_897.x ? _884.x : _880.x, _897.y ? _884.y : _880.y);
        }
        else
        {
            _899 = _790;
        }
        _900 = _899;
    }
    else
    {
        _900 = _790;
    }
    uint _906_dummy_parameter;
    uint2 _906 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _906_dummy_parameter);
    float _924 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_900 * float2(float(_906.x), float(_906.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_702 & 256u) != 0u), float((_702 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _933 = _650.xxx;
    uint2 _965 = uint2(_405 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _993 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _993 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_900 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _993 = 1.0f.xxxx;
    }
    float4 _994 = _993 * _993;
    uint _997 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_651].x);
    uint _1010 = (uint((_997 & 2048u) != 0u) | (uint((_997 & 4096u) != 0u) << 1u)) | (uint((_997 & 8192u) != 0u) << 2u);
    float4 _1302 = 0.0f.xxxx;
    float4 _1303 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1036 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1051 = dot(float4(float(_1036 & 1u), float((_1036 & 2u) >> 1u), float((_1036 & 4u) >> 2u), float((_1036 & 8u) >> 3u)), _994);
        bool _1053 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1054 = _1053 ? 1.0f : _1051;
        float _1067 = 0.0f;
        float _1068 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1061 = clamp(mad(_710, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1063 = lerp(_1053 ? _1051 : 1.0f, 1.0f, _1061 * _1061);
            _1067 = min(_1063, _1054) * _1054;
            _1068 = _1063 * _1054;
        }
        else
        {
            _1067 = 1.0f;
            _1068 = 1.0f;
        }
        float3 _1284 = 0.0f.xxx;
        float3 _1285 = 0.0f.xxx;
        [branch]
        if ((_1068 + _1067) > 0.0f)
        {
            float _1075 = max(_696, View_View_MinRoughness);
            float _1076 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1079 = rsqrt(_1076);
            float3 _1080 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1079;
            float _1081 = dot(_695, _1080);
            float _1099 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1088 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1076 + 1.0f)), 0.0f, 1.0f));
                float _1098 = 0.0f;
                if (_1081 < _1088)
                {
                    float _1094 = _1088 + max(_1081, -_1088);
                    _1098 = (_1094 * _1094) / (4.0f * _1088);
                }
                else
                {
                    _1098 = _1081;
                }
                _1099 = _1098;
            }
            else
            {
                _1099 = _1081;
            }
            float _1100 = clamp(_1099, 0.0f, 1.0f);
            float _1101 = max(_1075, View_View_MinRoughness);
            float _1106 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1079) * mad(-_1101, _1101, 1.0f), 0.0f, 1.0f);
            float _1108 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1079, 0.0f, 1.0f);
            float3 _1277 = 0.0f.xxx;
            float3 _1278 = 0.0f.xxx;
            [branch]
            if (_1100 > 0.0f)
            {
                float _1119 = dot(_695, _437);
                float _1120 = dot(_437, _1080);
                float _1122 = rsqrt(mad(2.0f, _1120, 2.0f));
                bool _1128 = _1106 > 0.0f;
                float _1207 = 0.0f;
                float _1208 = 0.0f;
                if (_1128)
                {
                    float _1133 = sqrt(mad(-_1106, _1106, 1.0f));
                    float _1134 = 2.0f * _1081;
                    float _1135 = -_1120;
                    float _1136 = mad(_1134, _1119, _1135);
                    float _1205 = 0.0f;
                    float _1206 = 0.0f;
                    if (_1136 >= _1133)
                    {
                        _1205 = 1.0f;
                        _1206 = abs(_1119);
                    }
                    else
                    {
                        float _1141 = -_1136;
                        float _1144 = _1106 * rsqrt(mad(_1141, _1136, 1.0f));
                        float _1145 = mad(_1141, _1081, _1119);
                        float _1149 = mad(_1141, _1120, mad(2.0f * _1119, _1119, -1.0f));
                        float _1160 = _1144 * sqrt(clamp(mad(_1134 * _1119, _1120, mad(_1135, _1120, mad(-_1119, _1119, mad(-_1081, _1081, 1.0f)))), 0.0f, 1.0f));
                        float _1162 = (_1160 * 2.0f) * _1119;
                        float _1163 = mad(_1081, _1133, _1119);
                        float _1164 = mad(_1144, _1145, _1163);
                        float _1166 = mad(_1144, _1149, mad(_1120, _1133, 1.0f));
                        float _1167 = _1160 * _1166;
                        float _1168 = _1164 * _1166;
                        float _1173 = _1168 * mad(-0.5f, _1167, (0.25f * _1162) * _1164);
                        float _1183 = mad(_1164, mad(_1163, _1166 * _1166, _1168 * mad(-0.5f, mad(_1120, _1133, _1166), -0.5f)), mad(_1167, _1167, (_1162 * _1164) * mad(_1162, _1164, _1167 * (-2.0f))));
                        float _1187 = (2.0f * _1173) / mad(_1183, _1183, _1173 * _1173);
                        float _1188 = _1187 * _1183;
                        float _1190 = mad(-_1187, _1173, 1.0f);
                        float _1196 = mad(_1120, _1133, mad(_1190, _1144 * _1149, _1188 * _1162));
                        float _1198 = rsqrt(mad(2.0f, _1196, 2.0f));
                        _1205 = clamp((mad(_1081, _1133, mad(_1190, _1144 * _1145, _1188 * _1160)) + _1119) * _1198, 0.0f, 1.0f);
                        _1206 = clamp(mad(_1198, _1196, _1198), 0.0f, 1.0f);
                    }
                    _1207 = _1205;
                    _1208 = _1206;
                }
                else
                {
                    _1207 = clamp((_1081 + _1119) * _1122, 0.0f, 1.0f);
                    _1208 = clamp(mad(_1122, _1120, _1122), 0.0f, 1.0f);
                }
                float _1211 = clamp(abs(_1119) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1213 = 1.0f.xxx * _1100;
                float3 _1275 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1275 = 0.0f.xxx;
                }
                else
                {
                    float _1220 = _1075 * _1075;
                    float _1230 = 0.0f;
                    if (_1108 > 0.0f)
                    {
                        _1230 = clamp(mad(_1220, _1220, (_1108 * _1108) / mad(_1208, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1230 = _1220 * _1220;
                    }
                    float _1244 = 0.0f;
                    if (_1128)
                    {
                        _1244 = _1230 / (_1230 + (((0.25f * _1106) * mad(3.0f, asfloat(532487669 + (asint(_1230) >> 1)), _1106)) / (_1208 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1244 = 1.0f;
                    }
                    float _1247 = mad(mad(_1207, _1230, -_1207), _1207, 1.0f);
                    float _1252 = sqrt(_1230);
                    float _1253 = 1.0f - _1252;
                    float _1259 = 1.0f - _1208;
                    float _1260 = _1259 * _1259;
                    float _1261 = _1260 * _1260;
                    _1275 = _1213 * (((clamp(50.0f * _738.y, 0.0f, 1.0f) * (_1261 * _1259)).xxx + (_738 * mad(-_1261, _1259, 1.0f))) * (((_1230 / ((3.1415927410125732421875f * _1247) * _1247)) * _1244) * (0.5f / mad(_1100, mad(_1211, _1253, _1252), _1211 * mad(_1100, _1253, _1252)))));
                }
                _1277 = ((_736 * 0.3183098733425140380859375f) * _1213) * 1.0f;
                _1278 = _1275;
            }
            else
            {
                _1277 = 0.0f.xxx;
                _1278 = 0.0f.xxx;
            }
            float3 _1281 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1068;
            _1284 = mad(_1277 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1281, 0.0f.xxx);
            _1285 = (_1278 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1281;
        }
        else
        {
            _1284 = 0.0f.xxx;
            _1285 = 0.0f.xxx;
        }
        float4 _1289 = float4(_1284, 0.0f);
        float4 _1293 = float4(_1285, 0.0f);
        float4 _1300 = 0.0f.xxxx;
        float4 _1301 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _1010) != 0u)
        {
            _1300 = float4(_1289.x, _1289.y, _1289.z, _1289.w);
            _1301 = float4(_1293.x, _1293.y, _1293.z, _1293.w);
        }
        else
        {
            _1300 = 0.0f.xxxx;
            _1301 = 0.0f.xxxx;
        }
        _1302 = _1300;
        _1303 = _1301;
    }
    else
    {
        _1302 = 0.0f.xxxx;
        _1303 = 0.0f.xxxx;
    }
    uint _1304 = ((((min(uint(max(0.0f, log2(mad(_328, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _965.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _965.x) * 2u;
    uint _1314 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1304 + 1u] & 1073741823u;
    uint _1317 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1304] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1319 = 0.0f.xxxx;
    float4 _1322 = 0.0f.xxxx;
    _1319 = _1302;
    _1322 = _1303;
    float4 _1320 = 0.0f.xxxx;
    float4 _1323 = 0.0f.xxxx;
    [loop]
    for (uint _1324 = 0u; _1324 < _1317; _1319 = _1320, _1322 = _1323, _1324++)
    {
        uint _1333 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1314 + _1324).x * 6u;
        uint _1336 = _1333 + 1u;
        uint _1339 = _1333 + 2u;
        uint _1342 = _1333 + 3u;
        uint _1345 = _1333 + 4u;
        uint _1349 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1339].w);
        uint _1355 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1336].y);
        uint _1371 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1342].z);
        float2 _1373 = spvUnpackHalf2x16(_1371 & 65535u);
        float _1374 = _1373.x;
        float2 _1377 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1342].w));
        float _1378 = _1377.x;
        bool _1383 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1336].w == 0.0f;
        uint _1385 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1345].w);
        uint _1398 = _1349 >> 4u;
        float3 _1414 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].xyz - _421;
        float _1415 = dot(_1414, _1414);
        float _1432 = 0.0f;
        if (_1383)
        {
            float _1427 = _1415 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].w);
            float _1430 = clamp(mad(-_1427, _1427, 1.0f), 0.0f, 1.0f);
            _1432 = _1430 * _1430;
        }
        else
        {
            float3 _1421 = _1414 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].w;
            _1432 = pow(1.0f - clamp(dot(_1421, _1421), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1336].w);
        }
        float _1443 = 0.0f;
        if (((_1349 >> 16u) & 3u) == 2u)
        {
            float _1440 = clamp((dot(_1414 * rsqrt(_1415), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1339].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1342].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1342].y, 0.0f, 1.0f);
            _1443 = _1432 * (_1440 * _1440);
        }
        else
        {
            _1443 = _1432;
        }
        float3 _1740 = 0.0f.xxx;
        float3 _1741 = 0.0f.xxx;
        [branch]
        if (_1443 > 0.0f)
        {
            float _1451 = 0.0f;
            [branch]
            if (uint(int((_1349 & 255u) != 0u)) != 0u)
            {
                _1451 = dot(float4(float(_1398 & 1u), float((_1398 & 2u) >> 1u), float((_1398 & 4u) >> 2u), float((_1398 & 8u) >> 3u)), _994);
            }
            else
            {
                _1451 = 1.0f;
            }
            float3 _1738 = 0.0f.xxx;
            float3 _1739 = 0.0f.xxx;
            [branch]
            if ((_1451 + _1451) > 0.0f)
            {
                float3 _1457 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1345].xyz * (0.5f * _1378);
                float3 _1458 = _1414 - _1457;
                float3 _1459 = _1414 + _1457;
                float _1462 = max(_696, View_View_MinRoughness);
                bool _1463 = _1378 > 0.0f;
                float _1488 = 0.0f;
                float _1489 = 0.0f;
                float _1490 = 0.0f;
                [branch]
                if (_1463)
                {
                    float _1475 = rsqrt(dot(_1458, _1458));
                    float _1476 = rsqrt(dot(_1459, _1459));
                    float _1477 = _1475 * _1476;
                    float _1479 = dot(_1458, _1459) * _1477;
                    _1488 = _1479;
                    _1489 = 0.5f * mad(dot(_695, _1458), _1475, dot(_695, _1459) * _1476);
                    _1490 = _1477 / mad(_1475, _1476, mad(_1479, 0.5f, 0.5f));
                }
                else
                {
                    float _1467 = dot(_1458, _1458);
                    _1488 = 1.0f;
                    _1489 = dot(_695, _1458 * rsqrt(_1467));
                    _1490 = 1.0f / (_1467 + 1.0f);
                }
                float _1508 = 0.0f;
                if (_1374 > 0.0f)
                {
                    float _1497 = sqrt(clamp((_1374 * _1374) * _1490, 0.0f, 1.0f));
                    float _1507 = 0.0f;
                    if (_1489 < _1497)
                    {
                        float _1503 = _1497 + max(_1489, -_1497);
                        _1507 = (_1503 * _1503) / (4.0f * _1497);
                    }
                    else
                    {
                        _1507 = _1489;
                    }
                    _1508 = _1507;
                }
                else
                {
                    _1508 = _1489;
                }
                float _1509 = clamp(_1508, 0.0f, 1.0f);
                float3 _1527 = 0.0f.xxx;
                if (_1463)
                {
                    float3 _1514 = reflect(-_437, _695);
                    float3 _1515 = _1459 - _1458;
                    float _1516 = dot(_1514, _1515);
                    _1527 = _1458 + (_1515 * clamp(dot(_1458, (_1514 * _1516) - _1515) / mad(_1378, _1378, -(_1516 * _1516)), 0.0f, 1.0f));
                }
                else
                {
                    _1527 = _1458;
                }
                float _1529 = rsqrt(dot(_1527, _1527));
                float3 _1530 = _1527 * _1529;
                float _1531 = max(_1462, View_View_MinRoughness);
                float _1536 = clamp((_1374 * _1529) * mad(-_1531, _1531, 1.0f), 0.0f, 1.0f);
                float _1538 = clamp(spvUnpackHalf2x16(_1371 >> 16u).x * _1529, 0.0f, 1.0f);
                float3 _1731 = 0.0f.xxx;
                float3 _1732 = 0.0f.xxx;
                [branch]
                if (_1509 > 0.0f)
                {
                    float _1549 = dot(_695, _1530);
                    float _1550 = dot(_695, _437);
                    float _1551 = dot(_437, _1530);
                    float _1553 = rsqrt(mad(2.0f, _1551, 2.0f));
                    bool _1559 = _1536 > 0.0f;
                    float _1638 = 0.0f;
                    float _1639 = 0.0f;
                    if (_1559)
                    {
                        float _1564 = sqrt(mad(-_1536, _1536, 1.0f));
                        float _1565 = 2.0f * _1549;
                        float _1566 = -_1551;
                        float _1567 = mad(_1565, _1550, _1566);
                        float _1636 = 0.0f;
                        float _1637 = 0.0f;
                        if (_1567 >= _1564)
                        {
                            _1636 = 1.0f;
                            _1637 = abs(_1550);
                        }
                        else
                        {
                            float _1572 = -_1567;
                            float _1575 = _1536 * rsqrt(mad(_1572, _1567, 1.0f));
                            float _1576 = mad(_1572, _1549, _1550);
                            float _1580 = mad(_1572, _1551, mad(2.0f * _1550, _1550, -1.0f));
                            float _1591 = _1575 * sqrt(clamp(mad(_1565 * _1550, _1551, mad(_1566, _1551, mad(-_1550, _1550, mad(-_1549, _1549, 1.0f)))), 0.0f, 1.0f));
                            float _1593 = (_1591 * 2.0f) * _1550;
                            float _1594 = mad(_1549, _1564, _1550);
                            float _1595 = mad(_1575, _1576, _1594);
                            float _1597 = mad(_1575, _1580, mad(_1551, _1564, 1.0f));
                            float _1598 = _1591 * _1597;
                            float _1599 = _1595 * _1597;
                            float _1604 = _1599 * mad(-0.5f, _1598, (0.25f * _1593) * _1595);
                            float _1614 = mad(_1595, mad(_1594, _1597 * _1597, _1599 * mad(-0.5f, mad(_1551, _1564, _1597), -0.5f)), mad(_1598, _1598, (_1593 * _1595) * mad(_1593, _1595, _1598 * (-2.0f))));
                            float _1618 = (2.0f * _1604) / mad(_1614, _1614, _1604 * _1604);
                            float _1619 = _1618 * _1614;
                            float _1621 = mad(-_1618, _1604, 1.0f);
                            float _1627 = mad(_1551, _1564, mad(_1621, _1575 * _1580, _1619 * _1593));
                            float _1629 = rsqrt(mad(2.0f, _1627, 2.0f));
                            _1636 = clamp((mad(_1549, _1564, mad(_1621, _1575 * _1576, _1619 * _1591)) + _1550) * _1629, 0.0f, 1.0f);
                            _1637 = clamp(mad(_1629, _1627, _1629), 0.0f, 1.0f);
                        }
                        _1638 = _1636;
                        _1639 = _1637;
                    }
                    else
                    {
                        _1638 = clamp((_1549 + _1550) * _1553, 0.0f, 1.0f);
                        _1639 = clamp(mad(_1553, _1551, _1553), 0.0f, 1.0f);
                    }
                    float _1642 = clamp(abs(_1550) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1645 = 1.0f.xxx * ((_1383 ? _1490 : 1.0f) * _1509);
                    float3 _1729 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1378, _1374), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1729 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1652 = _1462 * _1462;
                        float _1662 = 0.0f;
                        if (_1538 > 0.0f)
                        {
                            _1662 = clamp(mad(_1652, _1652, (_1538 * _1538) / mad(_1639, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1662 = _1652 * _1652;
                        }
                        float _1676 = 0.0f;
                        float _1677 = 0.0f;
                        if (_1559)
                        {
                            float _1674 = _1662 + (((0.25f * _1536) * mad(3.0f, asfloat(532487669 + (asint(_1662) >> 1)), _1536)) / (_1639 + 0.001000000047497451305389404296875f));
                            _1676 = _1662 / _1674;
                            _1677 = _1674;
                        }
                        else
                        {
                            _1676 = 1.0f;
                            _1677 = _1662;
                        }
                        float _1698 = 0.0f;
                        if (_1488 < 1.0f)
                        {
                            float _1684 = sqrt((1.00010001659393310546875f - _1488) / (1.0f + _1488));
                            _1698 = _1676 * sqrt(_1677 / (_1677 + (((0.25f * _1684) * mad(3.0f, asfloat(532487669 + (asint(_1677) >> 1)), _1684)) / (_1639 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1698 = _1676;
                        }
                        float _1701 = mad(mad(_1638, _1662, -_1638), _1638, 1.0f);
                        float _1706 = sqrt(_1662);
                        float _1707 = 1.0f - _1706;
                        float _1713 = 1.0f - _1639;
                        float _1714 = _1713 * _1713;
                        float _1715 = _1714 * _1714;
                        _1729 = _1645 * (((clamp(50.0f * _738.y, 0.0f, 1.0f) * (_1715 * _1713)).xxx + (_738 * mad(-_1715, _1713, 1.0f))) * (((_1662 / ((3.1415927410125732421875f * _1701) * _1701)) * _1698) * (0.5f / mad(_1509, mad(_1642, _1707, _1706), _1642 * mad(_1509, _1707, _1706)))));
                    }
                    _1731 = ((_736 * 0.3183098733425140380859375f) * _1645) * 1.0f;
                    _1732 = _1729;
                }
                else
                {
                    _1731 = 0.0f.xxx;
                    _1732 = 0.0f.xxx;
                }
                float3 _1735 = ((float3(float((_1355 >> 0u) & 1023u), float((_1355 >> 10u) & 1023u), float((_1355 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1336].x) * _1443) * _1451;
                _1738 = mad(_1731 * (float((_1385 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1735, 0.0f.xxx);
                _1739 = (_1732 * (float(_1385 & 1023u) * 0.000977517105638980865478515625f)) * _1735;
            }
            else
            {
                _1738 = 0.0f.xxx;
                _1739 = 0.0f.xxx;
            }
            _1740 = _1738;
            _1741 = _1739;
        }
        else
        {
            _1740 = 0.0f.xxx;
            _1741 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1349 >> 8u) & 7u) & _1010) != 0u)
        {
            _1320 = _1319 + float4(_1740, 0.0f);
            _1323 = _1322 + float4(_1741, 0.0f);
        }
        else
        {
            _1320 = _1319;
            _1323 = _1322;
        }
    }
    bool4 _1759 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1769 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_651].w) & 65535u);
    float3 _1773 = (_695 * (2.0f * dot(_437, _695))) - _437;
    float _1780 = mad(-1.2000000476837158203125f, log2(max(_696, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1794 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1773, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1769].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1780);
    float _1798 = 1.0f - _1794.w;
    float3 _1825 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1825 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1773, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1780).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1825 = 0.0f.xxx;
    }
    float4 _1831 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _696) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1832 = _1831.x;
    float2 _1841 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1832 * _1832, exp2((-9.27999973297119140625f) * clamp(dot(_695, _437), 0.0f, 1.0f))), _1832, _1831.y)) + _1831.zw;
    bool _1868 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2292 = 0.0f.xxxx;
    if (_1868)
    {
        uint2 _1880 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1882 = normalize(_421 - View_View_TranslatedWorldCameraOrigin);
        uint _1883 = _1880.x;
        uint4 _1887 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1883, _1880.y, 0u), 0u));
        uint _1888 = _1887.x;
        float4 _1890 = 0.0f.xxxx;
        _1890 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1891 = 0.0f.xxxx;
        for (int _1893 = 0; uint(_1893) < _1888; _1890 = _1891, _1893++)
        {
            uint _1904 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1883, _1880.y, uint(1 + _1893)), 0u)).x * 3u;
            float4 _1906 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1904);
            float4 _1908 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1904 + 1u);
            float4 _1910 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1904 + 2u);
            float3 _1911 = _1906.xyz;
            float _1912 = _1906.w;
            float _1913 = 1.0f / _1912;
            uint _1915 = asuint(_1908.x);
            float2 _1921 = float2(spvUnpackHalf2x16(_1915).x, spvUnpackHalf2x16(_1915 >> 16u).x);
            float3 _1922 = float3(_1921.x, _1921.y, _299.z);
            uint _1924 = asuint(_1908.y);
            _1922.z = spvUnpackHalf2x16(_1924).x;
            float3 _1931 = 0.0f.xxx;
            _1931.x = spvUnpackHalf2x16(_1924 >> 16u).x;
            uint _1933 = asuint(_1908.z);
            float2 _1939 = float2(spvUnpackHalf2x16(_1933).x, spvUnpackHalf2x16(_1933 >> 16u).x);
            float3 _1940 = float3(_1931.x, _1939.x, _1939.y);
            float3x3 _1945 = float3x3(_1922 * _1913, _1940 * _1913, cross(_1922, _1940) * _1913);
            uint _1947 = asuint(_1910.x);
            float2 _1950 = spvUnpackHalf2x16((_1947 >> 17u) & 32752u);
            float _1951 = _1950.x;
            float2 _1954 = spvUnpackHalf2x16((_1947 >> 6u) & 32752u);
            float _1955 = _1954.x;
            float2 _1958 = spvUnpackHalf2x16((_1947 << 5u) & 32736u);
            float _1959 = _1958.x;
            uint _1961 = asuint(_1910.y);
            float3 _1979 = 0.0f.xxx;
            if (_1961 > 0u)
            {
                _1979 = float3(spvUnpackHalf2x16((_1961 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1961 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1961 << 5u) & 32736u).x);
            }
            else
            {
                _1979 = 0.0f.xxx;
            }
            uint _1981 = asuint(_1910.z);
            float _1996 = float((_1981 >> 24u) & 255u);
            float _1997 = _1996 * 0.0039215688593685626983642578125f;
            float3 _2004 = mul(View_View_TranslatedWorldCameraOrigin - _1911, _1945);
            float3 _2006 = normalize(mul(_1882, _1945));
            float _2008 = dot(_2006, _2006);
            float _2009 = dot(_2006, _2004);
            float _2010 = 2.0f * _2009;
            float _2015 = mad(_2010, _2010, -((4.0f * _2008) * mad(-1.0f, 1.0f, dot(_2004, _2004))));
            float2 _2027 = 0.0f.xx;
            [flatten]
            if (_2015 >= 0.0f)
            {
                _2027 = ((_2009 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2015))) / (2.0f * _2008).xx;
            }
            else
            {
                _2027 = (-1.0f).xx;
            }
            float3 _2033 = mul(_421 - _1911, _1945) - _2004;
            float2 _2037 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1913, _2027), sqrt(dot(_2033, _2033)).xx);
            float _2187 = 0.0f;
            float3 _2188 = 0.0f.xxx;
            if (any(bool2(_2037.x > 0.0f.xx.x, _2037.y > 0.0f.xx.y)))
            {
                float2 _2058 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2048 = dot(_1882, View_View_ViewForward);
                    _2058 = max(_2037, ((View_View_VolumetricFogMaxDistance * ((_2048 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2048) : 0.0f)) * _1913).xx);
                }
                else
                {
                    _2058 = _2037;
                }
                float _2063 = max(0.0f, abs(_2058.y - _2058.x));
                float _2185 = 0.0f;
                float3 _2186 = 0.0f.xxx;
                if (_2063 > 0.0f)
                {
                    float3 _2068 = _2004 + (_2006 * _2058.x);
                    float _2104 = 0.0f;
                    if (_1951 > 0.0f)
                    {
                        float _2072 = dot(_2006, _2068);
                        float _2073 = dot(_2068, _2068);
                        float _2074 = _2073 - 1.0f;
                        float _2076 = mad(_2072, _2072, 1.0f - _2073);
                        float _2103 = 0.0f;
                        if (_2076 >= 0.0f)
                        {
                            float _2080 = sqrt(_2076);
                            float _2081 = -_2072;
                            float _2084 = max(_2081 - _2080, 0.0f);
                            float _2086 = min(max(_2081 + _2080, 0.0f), _2063);
                            float _2087 = _2084 * _2084;
                            float _2088 = _2086 * _2086;
                            _2103 = max(0.0f, (_1951 * ((-mad(_2088 * _2086, 0.3333333432674407958984375f, mad(_2074, _2086, _2072 * _2088))) - (-mad(_2087 * _2084, 0.3333333432674407958984375f, mad(_2074, _2084, _2072 * _2087))))) * 0.75f);
                        }
                        else
                        {
                            _2103 = 0.0f;
                        }
                        _2104 = _2103;
                    }
                    else
                    {
                        _2104 = 0.0f;
                    }
                    float _2129 = 0.0f;
                    if (_1955 > 0.0f)
                    {
                        float _2110 = _2006.z;
                        float _2116 = (abs(_2110) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2110 >= 0.0f) ? 1.0f : (-1.0f))) : _2110;
                        float _2119 = max(-80.0f, (_2068.z - _1910.w) * _1959);
                        _2129 = (_1955 / (_1959 * _2116)) * (exp(-_2119) - exp(-mad(_2116 * _2063, _1959, _2119)));
                    }
                    else
                    {
                        _2129 = 0.0f;
                    }
                    float _2140 = exp((log(mad(exp(-_2104) - 1.0f, 1.0f - exp(-_2129), 1.0f)) * _1912) * 0.00999999977648258209228515625f);
                    float _2144 = _1996 * (-0.0039215688593685626983642578125f);
                    float _2151 = mad(_1996 * (-0.007843137718737125396728515625f), dot(_1882, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2144, _2144, 1.0f));
                    float3 _2156 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1997, _2144, 1.0f) / ((12.56637096405029296875f * _2151) * sqrt(_2151)));
                    float3 _2182 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2167 = float4(_1882 * _2144, 1.0f);
                        _2182 = _2156 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2167), dot(View_SkyIrradianceEnvironmentMap[1u], _2167), dot(View_SkyIrradianceEnvironmentMap[2u], _2167)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2182 = _2156;
                    }
                    _2185 = _2140;
                    _2186 = mad(_2182, float4(float((_1981 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1981 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1981 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1997).xyz, _1979) * (1.0f - _2140);
                }
                else
                {
                    _2185 = 1.0f;
                    _2186 = 0.0f.xxx;
                }
                _2187 = _2185;
                _2188 = _2186;
            }
            else
            {
                _2187 = 1.0f;
                _2188 = 0.0f.xxx;
            }
            _1891 = float4((_1890.xyz * _2187) + float4(_2188, _2187).xyz, _1890.w * _2187);
        }
        float _2208 = _1890.w * in_var_TEXCOORD7.w;
        float4 _2216 = float4(_93, 1.0f);
        precise float4 _97 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _98 = _2216 + _97;
        precise float4 _99 = _98 - _2216;
        precise float4 _100 = _98 - _99;
        precise float4 _101 = _2216 - _100;
        precise float4 _102 = _97 - _99;
        precise float4 _103 = _101 + _102;
        float4 _2227 = mul(_98 + (float4(_96, 0.0f) + _103), View_View_RelativeWorldToClip);
        float _2228 = _2227.w;
        float4 _2291 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2291 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2274 = 0.0f.xxxx;
            float _2275 = 0.0f;
            if (_1868)
            {
                float4 _2270 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2227.xy / _2228.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2228, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2272 = _2270.xyz * View_View_OneOverPreExposure;
                _2274 = float4(_2272.x, _2272.y, _2272.z, _2270.w);
                _2275 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2274 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2275 = 0.0f;
            }
            float4 _2280 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2274, clamp((_710 - _2275) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2283 = _2280.w;
            _2291 = float4(_2280.xyz + (float4(_1890.xyz + (in_var_TEXCOORD7.xyz * _1890.w), _2208).xyz * _2283), _2283 * _2208);
            break;
        } while(false);
        _2292 = _2291;
    }
    else
    {
        _2292 = in_var_TEXCOORD7;
    }
    float3 _2299 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2368 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _104 = Scene_GPUScene_GPUScenePrimitiveSceneData[_651 + 18u].xyz * 2097152.0f;
        precise float3 _105 = _104 + Scene_GPUScene_GPUScenePrimitiveSceneData[_651 + 19u].xyz;
        precise float3 _106 = _105 - _104;
        precise float3 _107 = Scene_GPUScene_GPUScenePrimitiveSceneData[_651 + 19u].xyz - _106;
        uint _2325 = _651 + 32u;
        precise float3 _108 = _93 - _105;
        precise float3 _109 = _96 - _107;
        precise float3 _110 = _108 + _109;
        float3 _2330 = abs(_110);
        float3 _2331 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_651 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_651 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_651 + 27u].w) + 1.0f.xxx;
        float3 _2367 = 0.0f.xxx;
        if (any(bool3(_2330.x > _2331.x, _2330.y > _2331.y, _2330.z > _2331.z)))
        {
            float3 _2363 = frac(dot(frac(frac(_93 * 1.52587890625e-05f.xxx) + frac(_96 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2367 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2363.x > 0.5f.xxx.x, _2363.y > 0.5f.xxx.y, _2363.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2353 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2325].x > 0.0f)
            {
                float3 _2341 = abs(_421 - in_var_TEXCOORD9);
                _2353 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2341.x, max(_2341.y, _2341.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2325].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2353 = _2299;
            }
            _2367 = _2353;
        }
        _2368 = _2367;
    }
    else
    {
        _2368 = _2299;
    }
    float3 _2370 = mad((_784 * _924) * _736, max(_933, ((((((_699 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _650) + ((_699 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _650) + ((_699 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _650), lerp(mad((((float4(_1794.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1769].x, _1798).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1825 * _1798)).xyz * ((_738 * _1841.x) + (clamp(50.0f * _738.y, 0.0f, 1.0f) * _1841.y).xxx)) * _924, max(_933, ((((((_738 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _650) + ((_738 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _650) + ((_738 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _650), float4(_1759.x ? 0.0f.xxxx.x : _1319.x, _1759.y ? 0.0f.xxxx.y : _1319.y, _1759.z ? 0.0f.xxxx.z : _1319.z, _1759.w ? 0.0f.xxxx.w : _1319.w).xyz + float4(_1759.x ? 0.0f.xxxx.x : _1322.x, _1759.y ? 0.0f.xxxx.y : _1322.y, _1759.z ? 0.0f.xxxx.z : _1322.z, _1759.w ? 0.0f.xxxx.w : _1322.w).xyz), _736 + (_738 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2368;
    float4 _2378 = float4((_2370 * _2292.w) + _2292.xyz, 0.0f);
    _2378.w = 0.0f;
    float4 _2382 = _2378 * View_View_PreExposure;
    float3 _2387 = min(_2382.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2387.x, _2387.y, _2387.z, _2382.w);
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
