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
    float2 _540 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _502, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _549 = _450.xxx;
    float2 _554 = _502 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _560 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _554, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _569 = _453.xxx;
    float3 _577 = normalize(mul(normalize((mad(float4(_560, sqrt(clamp(1.0f - dot(_560, _560), 0.0f, 1.0f)), 1.0f).xyz, _569, mad(float4(_540, sqrt(clamp(1.0f - dot(_540, _540), 0.0f, 1.0f)), 1.0f).xyz, _549, mad(float4(_508, sqrt(clamp(1.0f - dot(_508, _508), 0.0f, 1.0f)), 1.0f).xyz, _517, float4(_523, sqrt(clamp(1.0f - dot(_523, _523), 0.0f, 1.0f)), 1.0f).xyz * _532))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_390, cross(_387, _390), _387), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _578 = _577 * 1.0f;
    float4 _613 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _618 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _625 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _631 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _554, View_View_MaterialTextureMipBias);
    float3 _642 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _554, View_View_MaterialTextureMipBias).xyz, _569, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _502, View_View_MaterialTextureMipBias).xyz, _549, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _502, View_View_MaterialTextureMipBias).xyz, _517, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _502, View_View_MaterialTextureMipBias).xyz * _532))), 0.0f.xxx, 1.0f.xxx);
    float _646 = mad(clamp(mad(_631.y, _453, mad(_625.y, _450, mad(_613.y, _444, _618.y * _447))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _647 = clamp(mad(_631.x, _453, mad(_625.x, _450, mad(_613.x, _444, _618.x * _447))), 0.0f, 1.0f);
    uint _648 = in_var_PRIMITIVE_ID * 43u;
    float3 _692 = 0.0f.xxx;
    float _693 = 0.0f;
    float _694 = 0.0f;
    float _695 = 0.0f;
    float3 _696 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_648].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _664 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _668 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _664, 0.0f);
        float4 _671 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _664, 0.0f);
        float4 _674 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _664, 0.0f);
        float _684 = _674.w;
        _692 = normalize((_578 * _671.w) + ((_671.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _693 = mad(_646, _684, _674.z);
        _694 = mad(0.5f, _684, _674.y);
        _695 = _674.x;
        _696 = (_642 * _668.w) + _668.xyz;
    }
    else
    {
        _692 = _578;
        _693 = _646;
        _694 = 0.5f;
        _695 = 0.0f;
        _696 = _642;
    }
    uint _699 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_648].x);
    float _707 = _412.w;
    float3 _720 = ((_696 - (_696 * _695)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _727 = (lerp((0.07999999821186065673828125f * _694).xxx, _696, _695.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _728 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _733 = 0.0f.xxx;
    if (_728)
    {
        _733 = _720 + (_727 * 0.449999988079071044921875f);
    }
    else
    {
        _733 = _720;
    }
    bool3 _734 = _728.xxx;
    float3 _735 = float3(_734.x ? 0.0f.xxx.x : _727.x, _734.y ? 0.0f.xxx.y : _727.y, _734.z ? 0.0f.xxx.z : _727.z);
    float3 _781 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _744 = float4(_692, 1.0f);
        float4 _757 = _744.xyzz * _744.yzzx;
        _781 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _744), dot(View_SkyIrradianceEnvironmentMap[1u], _744), dot(View_SkyIrradianceEnvironmentMap[2u], _744)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _757), dot(View_SkyIrradianceEnvironmentMap[4u], _757), dot(View_SkyIrradianceEnvironmentMap[5u], _757))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_692.x, _692.x, -(_692.y * _692.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _781 = 0.0f.xxx;
    }
    float2 _787 = mad(_412.xy / _707.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _897 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _798 = int2(trunc(_787 * View_View_BufferSizeAndInvSize.xy));
        int _799 = _798.x;
        int _800 = _798.y;
        float4 _804 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_799, _800, 0).xy, 0));
        float _805 = _804.x;
        float _815 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _896 = 0.0f.xx;
        if ((abs((mad(_805, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_805, View_View_InvDeviceZToWorldZTransform.z, _815))) - _707) / _707) > 0.00999999977648258209228515625f)
        {
            float2 _828 = _787 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _832 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_799 - 1, _800, 0).xy, 0));
            float _833 = _832.x;
            float _839 = abs((mad(_833, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_833, View_View_InvDeviceZToWorldZTransform.z, _815))) - _707);
            bool _840 = _839 < 100000000.0f;
            bool2 _841 = _840.xx;
            float2 _842 = float2(_841.x ? _828.x : _787.x, _841.y ? _828.y : _787.y);
            float _843 = _840 ? _839 : 100000000.0f;
            float2 _846 = _787 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _850 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_799, _800 + 1, 0).xy, 0));
            float _851 = _850.x;
            float _857 = abs((mad(_851, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_851, View_View_InvDeviceZToWorldZTransform.z, _815))) - _707);
            bool _858 = _857 < _843;
            bool2 _859 = _858.xx;
            float2 _860 = float2(_859.x ? _846.x : _842.x, _859.y ? _846.y : _842.y);
            float _861 = _858 ? _857 : _843;
            float2 _863 = _787 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _867 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_799 + 1, _800, 0).xy, 0));
            float _868 = _867.x;
            float _874 = abs((mad(_868, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_868, View_View_InvDeviceZToWorldZTransform.z, _815))) - _707);
            bool _875 = _874 < _861;
            bool2 _876 = _875.xx;
            float2 _877 = float2(_876.x ? _863.x : _860.x, _876.y ? _863.y : _860.y);
            float2 _881 = _787 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _885 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_799, _800 - 1, 0).xy, 0));
            float _886 = _885.x;
            bool2 _894 = (abs((mad(_886, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_886, View_View_InvDeviceZToWorldZTransform.z, _815))) - _707) < (_875 ? _874 : _861)).xx;
            _896 = float2(_894.x ? _881.x : _877.x, _894.y ? _881.y : _877.y);
        }
        else
        {
            _896 = _787;
        }
        _897 = _896;
    }
    else
    {
        _897 = _787;
    }
    uint _903_dummy_parameter;
    uint2 _903 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _903_dummy_parameter);
    float _921 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_897 * float2(float(_903.x), float(_903.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_699 & 256u) != 0u), float((_699 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _930 = _647.xxx;
    uint2 _962 = uint2(_405 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _990 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _990 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_897 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _990 = 1.0f.xxxx;
    }
    float4 _991 = _990 * _990;
    uint _994 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_648].x);
    uint _1007 = (uint((_994 & 2048u) != 0u) | (uint((_994 & 4096u) != 0u) << 1u)) | (uint((_994 & 8192u) != 0u) << 2u);
    float4 _1299 = 0.0f.xxxx;
    float4 _1300 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1033 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1048 = dot(float4(float(_1033 & 1u), float((_1033 & 2u) >> 1u), float((_1033 & 4u) >> 2u), float((_1033 & 8u) >> 3u)), _991);
        bool _1050 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1051 = _1050 ? 1.0f : _1048;
        float _1064 = 0.0f;
        float _1065 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1058 = clamp(mad(_707, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1060 = lerp(_1050 ? _1048 : 1.0f, 1.0f, _1058 * _1058);
            _1064 = min(_1060, _1051) * _1051;
            _1065 = _1060 * _1051;
        }
        else
        {
            _1064 = 1.0f;
            _1065 = 1.0f;
        }
        float3 _1281 = 0.0f.xxx;
        float3 _1282 = 0.0f.xxx;
        [branch]
        if ((_1065 + _1064) > 0.0f)
        {
            float _1072 = max(_693, View_View_MinRoughness);
            float _1073 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1076 = rsqrt(_1073);
            float3 _1077 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1076;
            float _1078 = dot(_692, _1077);
            float _1096 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1085 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1073 + 1.0f)), 0.0f, 1.0f));
                float _1095 = 0.0f;
                if (_1078 < _1085)
                {
                    float _1091 = _1085 + max(_1078, -_1085);
                    _1095 = (_1091 * _1091) / (4.0f * _1085);
                }
                else
                {
                    _1095 = _1078;
                }
                _1096 = _1095;
            }
            else
            {
                _1096 = _1078;
            }
            float _1097 = clamp(_1096, 0.0f, 1.0f);
            float _1098 = max(_1072, View_View_MinRoughness);
            float _1103 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1076) * mad(-_1098, _1098, 1.0f), 0.0f, 1.0f);
            float _1105 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1076, 0.0f, 1.0f);
            float3 _1274 = 0.0f.xxx;
            float3 _1275 = 0.0f.xxx;
            [branch]
            if (_1097 > 0.0f)
            {
                float _1116 = dot(_692, _437);
                float _1117 = dot(_437, _1077);
                float _1119 = rsqrt(mad(2.0f, _1117, 2.0f));
                bool _1125 = _1103 > 0.0f;
                float _1204 = 0.0f;
                float _1205 = 0.0f;
                if (_1125)
                {
                    float _1130 = sqrt(mad(-_1103, _1103, 1.0f));
                    float _1131 = 2.0f * _1078;
                    float _1132 = -_1117;
                    float _1133 = mad(_1131, _1116, _1132);
                    float _1202 = 0.0f;
                    float _1203 = 0.0f;
                    if (_1133 >= _1130)
                    {
                        _1202 = 1.0f;
                        _1203 = abs(_1116);
                    }
                    else
                    {
                        float _1138 = -_1133;
                        float _1141 = _1103 * rsqrt(mad(_1138, _1133, 1.0f));
                        float _1142 = mad(_1138, _1078, _1116);
                        float _1146 = mad(_1138, _1117, mad(2.0f * _1116, _1116, -1.0f));
                        float _1157 = _1141 * sqrt(clamp(mad(_1131 * _1116, _1117, mad(_1132, _1117, mad(-_1116, _1116, mad(-_1078, _1078, 1.0f)))), 0.0f, 1.0f));
                        float _1159 = (_1157 * 2.0f) * _1116;
                        float _1160 = mad(_1078, _1130, _1116);
                        float _1161 = mad(_1141, _1142, _1160);
                        float _1163 = mad(_1141, _1146, mad(_1117, _1130, 1.0f));
                        float _1164 = _1157 * _1163;
                        float _1165 = _1161 * _1163;
                        float _1170 = _1165 * mad(-0.5f, _1164, (0.25f * _1159) * _1161);
                        float _1180 = mad(_1161, mad(_1160, _1163 * _1163, _1165 * mad(-0.5f, mad(_1117, _1130, _1163), -0.5f)), mad(_1164, _1164, (_1159 * _1161) * mad(_1159, _1161, _1164 * (-2.0f))));
                        float _1184 = (2.0f * _1170) / mad(_1180, _1180, _1170 * _1170);
                        float _1185 = _1184 * _1180;
                        float _1187 = mad(-_1184, _1170, 1.0f);
                        float _1193 = mad(_1117, _1130, mad(_1187, _1141 * _1146, _1185 * _1159));
                        float _1195 = rsqrt(mad(2.0f, _1193, 2.0f));
                        _1202 = clamp((mad(_1078, _1130, mad(_1187, _1141 * _1142, _1185 * _1157)) + _1116) * _1195, 0.0f, 1.0f);
                        _1203 = clamp(mad(_1195, _1193, _1195), 0.0f, 1.0f);
                    }
                    _1204 = _1202;
                    _1205 = _1203;
                }
                else
                {
                    _1204 = clamp((_1078 + _1116) * _1119, 0.0f, 1.0f);
                    _1205 = clamp(mad(_1119, _1117, _1119), 0.0f, 1.0f);
                }
                float _1208 = clamp(abs(_1116) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1210 = 1.0f.xxx * _1097;
                float3 _1272 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1272 = 0.0f.xxx;
                }
                else
                {
                    float _1217 = _1072 * _1072;
                    float _1227 = 0.0f;
                    if (_1105 > 0.0f)
                    {
                        _1227 = clamp(mad(_1217, _1217, (_1105 * _1105) / mad(_1205, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1227 = _1217 * _1217;
                    }
                    float _1241 = 0.0f;
                    if (_1125)
                    {
                        _1241 = _1227 / (_1227 + (((0.25f * _1103) * mad(3.0f, asfloat(532487669 + (asint(_1227) >> 1)), _1103)) / (_1205 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1241 = 1.0f;
                    }
                    float _1244 = mad(mad(_1204, _1227, -_1204), _1204, 1.0f);
                    float _1249 = sqrt(_1227);
                    float _1250 = 1.0f - _1249;
                    float _1256 = 1.0f - _1205;
                    float _1257 = _1256 * _1256;
                    float _1258 = _1257 * _1257;
                    _1272 = _1210 * (((clamp(50.0f * _735.y, 0.0f, 1.0f) * (_1258 * _1256)).xxx + (_735 * mad(-_1258, _1256, 1.0f))) * (((_1227 / ((3.1415927410125732421875f * _1244) * _1244)) * _1241) * (0.5f / mad(_1097, mad(_1208, _1250, _1249), _1208 * mad(_1097, _1250, _1249)))));
                }
                _1274 = ((_733 * 0.3183098733425140380859375f) * _1210) * 1.0f;
                _1275 = _1272;
            }
            else
            {
                _1274 = 0.0f.xxx;
                _1275 = 0.0f.xxx;
            }
            float3 _1278 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1065;
            _1281 = mad(_1274 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1278, 0.0f.xxx);
            _1282 = (_1275 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1278;
        }
        else
        {
            _1281 = 0.0f.xxx;
            _1282 = 0.0f.xxx;
        }
        float4 _1286 = float4(_1281, 0.0f);
        float4 _1290 = float4(_1282, 0.0f);
        float4 _1297 = 0.0f.xxxx;
        float4 _1298 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _1007) != 0u)
        {
            _1297 = float4(_1286.x, _1286.y, _1286.z, _1286.w);
            _1298 = float4(_1290.x, _1290.y, _1290.z, _1290.w);
        }
        else
        {
            _1297 = 0.0f.xxxx;
            _1298 = 0.0f.xxxx;
        }
        _1299 = _1297;
        _1300 = _1298;
    }
    else
    {
        _1299 = 0.0f.xxxx;
        _1300 = 0.0f.xxxx;
    }
    uint _1301 = ((((min(uint(max(0.0f, log2(mad(_328, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _962.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _962.x) * 2u;
    uint _1311 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1301 + 1u] & 1073741823u;
    uint _1314 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1301] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1316 = 0.0f.xxxx;
    float4 _1319 = 0.0f.xxxx;
    _1316 = _1299;
    _1319 = _1300;
    float4 _1317 = 0.0f.xxxx;
    float4 _1320 = 0.0f.xxxx;
    [loop]
    for (uint _1321 = 0u; _1321 < _1314; _1316 = _1317, _1319 = _1320, _1321++)
    {
        uint _1330 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1311 + _1321).x * 6u;
        uint _1333 = _1330 + 1u;
        uint _1336 = _1330 + 2u;
        uint _1339 = _1330 + 3u;
        uint _1342 = _1330 + 4u;
        uint _1346 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1336].w);
        uint _1352 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].y);
        uint _1368 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1339].z);
        float2 _1370 = spvUnpackHalf2x16(_1368 & 65535u);
        float _1371 = _1370.x;
        float2 _1374 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1339].w));
        float _1375 = _1374.x;
        bool _1380 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].w == 0.0f;
        uint _1382 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1342].w);
        uint _1395 = _1346 >> 4u;
        float3 _1411 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1330].xyz - _421;
        float _1412 = dot(_1411, _1411);
        float _1429 = 0.0f;
        if (_1380)
        {
            float _1424 = _1412 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1330].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1330].w);
            float _1427 = clamp(mad(-_1424, _1424, 1.0f), 0.0f, 1.0f);
            _1429 = _1427 * _1427;
        }
        else
        {
            float3 _1418 = _1411 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1330].w;
            _1429 = pow(1.0f - clamp(dot(_1418, _1418), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].w);
        }
        float _1440 = 0.0f;
        if (((_1346 >> 16u) & 3u) == 2u)
        {
            float _1437 = clamp((dot(_1411 * rsqrt(_1412), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1336].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1339].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1339].y, 0.0f, 1.0f);
            _1440 = _1429 * (_1437 * _1437);
        }
        else
        {
            _1440 = _1429;
        }
        float3 _1737 = 0.0f.xxx;
        float3 _1738 = 0.0f.xxx;
        [branch]
        if (_1440 > 0.0f)
        {
            float _1448 = 0.0f;
            [branch]
            if (uint(int((_1346 & 255u) != 0u)) != 0u)
            {
                _1448 = dot(float4(float(_1395 & 1u), float((_1395 & 2u) >> 1u), float((_1395 & 4u) >> 2u), float((_1395 & 8u) >> 3u)), _991);
            }
            else
            {
                _1448 = 1.0f;
            }
            float3 _1735 = 0.0f.xxx;
            float3 _1736 = 0.0f.xxx;
            [branch]
            if ((_1448 + _1448) > 0.0f)
            {
                float3 _1454 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1342].xyz * (0.5f * _1375);
                float3 _1455 = _1411 - _1454;
                float3 _1456 = _1411 + _1454;
                float _1459 = max(_693, View_View_MinRoughness);
                bool _1460 = _1375 > 0.0f;
                float _1485 = 0.0f;
                float _1486 = 0.0f;
                float _1487 = 0.0f;
                [branch]
                if (_1460)
                {
                    float _1472 = rsqrt(dot(_1455, _1455));
                    float _1473 = rsqrt(dot(_1456, _1456));
                    float _1474 = _1472 * _1473;
                    float _1476 = dot(_1455, _1456) * _1474;
                    _1485 = _1476;
                    _1486 = 0.5f * mad(dot(_692, _1455), _1472, dot(_692, _1456) * _1473);
                    _1487 = _1474 / mad(_1472, _1473, mad(_1476, 0.5f, 0.5f));
                }
                else
                {
                    float _1464 = dot(_1455, _1455);
                    _1485 = 1.0f;
                    _1486 = dot(_692, _1455 * rsqrt(_1464));
                    _1487 = 1.0f / (_1464 + 1.0f);
                }
                float _1505 = 0.0f;
                if (_1371 > 0.0f)
                {
                    float _1494 = sqrt(clamp((_1371 * _1371) * _1487, 0.0f, 1.0f));
                    float _1504 = 0.0f;
                    if (_1486 < _1494)
                    {
                        float _1500 = _1494 + max(_1486, -_1494);
                        _1504 = (_1500 * _1500) / (4.0f * _1494);
                    }
                    else
                    {
                        _1504 = _1486;
                    }
                    _1505 = _1504;
                }
                else
                {
                    _1505 = _1486;
                }
                float _1506 = clamp(_1505, 0.0f, 1.0f);
                float3 _1524 = 0.0f.xxx;
                if (_1460)
                {
                    float3 _1511 = reflect(-_437, _692);
                    float3 _1512 = _1456 - _1455;
                    float _1513 = dot(_1511, _1512);
                    _1524 = _1455 + (_1512 * clamp(dot(_1455, (_1511 * _1513) - _1512) / mad(_1375, _1375, -(_1513 * _1513)), 0.0f, 1.0f));
                }
                else
                {
                    _1524 = _1455;
                }
                float _1526 = rsqrt(dot(_1524, _1524));
                float3 _1527 = _1524 * _1526;
                float _1528 = max(_1459, View_View_MinRoughness);
                float _1533 = clamp((_1371 * _1526) * mad(-_1528, _1528, 1.0f), 0.0f, 1.0f);
                float _1535 = clamp(spvUnpackHalf2x16(_1368 >> 16u).x * _1526, 0.0f, 1.0f);
                float3 _1728 = 0.0f.xxx;
                float3 _1729 = 0.0f.xxx;
                [branch]
                if (_1506 > 0.0f)
                {
                    float _1546 = dot(_692, _1527);
                    float _1547 = dot(_692, _437);
                    float _1548 = dot(_437, _1527);
                    float _1550 = rsqrt(mad(2.0f, _1548, 2.0f));
                    bool _1556 = _1533 > 0.0f;
                    float _1635 = 0.0f;
                    float _1636 = 0.0f;
                    if (_1556)
                    {
                        float _1561 = sqrt(mad(-_1533, _1533, 1.0f));
                        float _1562 = 2.0f * _1546;
                        float _1563 = -_1548;
                        float _1564 = mad(_1562, _1547, _1563);
                        float _1633 = 0.0f;
                        float _1634 = 0.0f;
                        if (_1564 >= _1561)
                        {
                            _1633 = 1.0f;
                            _1634 = abs(_1547);
                        }
                        else
                        {
                            float _1569 = -_1564;
                            float _1572 = _1533 * rsqrt(mad(_1569, _1564, 1.0f));
                            float _1573 = mad(_1569, _1546, _1547);
                            float _1577 = mad(_1569, _1548, mad(2.0f * _1547, _1547, -1.0f));
                            float _1588 = _1572 * sqrt(clamp(mad(_1562 * _1547, _1548, mad(_1563, _1548, mad(-_1547, _1547, mad(-_1546, _1546, 1.0f)))), 0.0f, 1.0f));
                            float _1590 = (_1588 * 2.0f) * _1547;
                            float _1591 = mad(_1546, _1561, _1547);
                            float _1592 = mad(_1572, _1573, _1591);
                            float _1594 = mad(_1572, _1577, mad(_1548, _1561, 1.0f));
                            float _1595 = _1588 * _1594;
                            float _1596 = _1592 * _1594;
                            float _1601 = _1596 * mad(-0.5f, _1595, (0.25f * _1590) * _1592);
                            float _1611 = mad(_1592, mad(_1591, _1594 * _1594, _1596 * mad(-0.5f, mad(_1548, _1561, _1594), -0.5f)), mad(_1595, _1595, (_1590 * _1592) * mad(_1590, _1592, _1595 * (-2.0f))));
                            float _1615 = (2.0f * _1601) / mad(_1611, _1611, _1601 * _1601);
                            float _1616 = _1615 * _1611;
                            float _1618 = mad(-_1615, _1601, 1.0f);
                            float _1624 = mad(_1548, _1561, mad(_1618, _1572 * _1577, _1616 * _1590));
                            float _1626 = rsqrt(mad(2.0f, _1624, 2.0f));
                            _1633 = clamp((mad(_1546, _1561, mad(_1618, _1572 * _1573, _1616 * _1588)) + _1547) * _1626, 0.0f, 1.0f);
                            _1634 = clamp(mad(_1626, _1624, _1626), 0.0f, 1.0f);
                        }
                        _1635 = _1633;
                        _1636 = _1634;
                    }
                    else
                    {
                        _1635 = clamp((_1546 + _1547) * _1550, 0.0f, 1.0f);
                        _1636 = clamp(mad(_1550, _1548, _1550), 0.0f, 1.0f);
                    }
                    float _1639 = clamp(abs(_1547) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1642 = 1.0f.xxx * ((_1380 ? _1487 : 1.0f) * _1506);
                    float3 _1726 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1375, _1371), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1726 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1649 = _1459 * _1459;
                        float _1659 = 0.0f;
                        if (_1535 > 0.0f)
                        {
                            _1659 = clamp(mad(_1649, _1649, (_1535 * _1535) / mad(_1636, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1659 = _1649 * _1649;
                        }
                        float _1673 = 0.0f;
                        float _1674 = 0.0f;
                        if (_1556)
                        {
                            float _1671 = _1659 + (((0.25f * _1533) * mad(3.0f, asfloat(532487669 + (asint(_1659) >> 1)), _1533)) / (_1636 + 0.001000000047497451305389404296875f));
                            _1673 = _1659 / _1671;
                            _1674 = _1671;
                        }
                        else
                        {
                            _1673 = 1.0f;
                            _1674 = _1659;
                        }
                        float _1695 = 0.0f;
                        if (_1485 < 1.0f)
                        {
                            float _1681 = sqrt((1.00010001659393310546875f - _1485) / (1.0f + _1485));
                            _1695 = _1673 * sqrt(_1674 / (_1674 + (((0.25f * _1681) * mad(3.0f, asfloat(532487669 + (asint(_1674) >> 1)), _1681)) / (_1636 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1695 = _1673;
                        }
                        float _1698 = mad(mad(_1635, _1659, -_1635), _1635, 1.0f);
                        float _1703 = sqrt(_1659);
                        float _1704 = 1.0f - _1703;
                        float _1710 = 1.0f - _1636;
                        float _1711 = _1710 * _1710;
                        float _1712 = _1711 * _1711;
                        _1726 = _1642 * (((clamp(50.0f * _735.y, 0.0f, 1.0f) * (_1712 * _1710)).xxx + (_735 * mad(-_1712, _1710, 1.0f))) * (((_1659 / ((3.1415927410125732421875f * _1698) * _1698)) * _1695) * (0.5f / mad(_1506, mad(_1639, _1704, _1703), _1639 * mad(_1506, _1704, _1703)))));
                    }
                    _1728 = ((_733 * 0.3183098733425140380859375f) * _1642) * 1.0f;
                    _1729 = _1726;
                }
                else
                {
                    _1728 = 0.0f.xxx;
                    _1729 = 0.0f.xxx;
                }
                float3 _1732 = ((float3(float((_1352 >> 0u) & 1023u), float((_1352 >> 10u) & 1023u), float((_1352 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1333].x) * _1440) * _1448;
                _1735 = mad(_1728 * (float((_1382 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1732, 0.0f.xxx);
                _1736 = (_1729 * (float(_1382 & 1023u) * 0.000977517105638980865478515625f)) * _1732;
            }
            else
            {
                _1735 = 0.0f.xxx;
                _1736 = 0.0f.xxx;
            }
            _1737 = _1735;
            _1738 = _1736;
        }
        else
        {
            _1737 = 0.0f.xxx;
            _1738 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1346 >> 8u) & 7u) & _1007) != 0u)
        {
            _1317 = _1316 + float4(_1737, 0.0f);
            _1320 = _1319 + float4(_1738, 0.0f);
        }
        else
        {
            _1317 = _1316;
            _1320 = _1319;
        }
    }
    bool4 _1756 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1766 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_648].w) & 65535u);
    float3 _1770 = (_692 * (2.0f * dot(_437, _692))) - _437;
    float _1777 = mad(-1.2000000476837158203125f, log2(max(_693, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1791 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1770, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1766].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1777);
    float _1795 = 1.0f - _1791.w;
    float3 _1822 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1822 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1770, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1777).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1822 = 0.0f.xxx;
    }
    float4 _1828 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _693) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1829 = _1828.x;
    float2 _1838 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1829 * _1829, exp2((-9.27999973297119140625f) * clamp(dot(_692, _437), 0.0f, 1.0f))), _1829, _1828.y)) + _1828.zw;
    bool _1865 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2289 = 0.0f.xxxx;
    if (_1865)
    {
        uint2 _1877 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1879 = normalize(_421 - View_View_TranslatedWorldCameraOrigin);
        uint _1880 = _1877.x;
        uint4 _1884 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1880, _1877.y, 0u), 0u));
        uint _1885 = _1884.x;
        float4 _1887 = 0.0f.xxxx;
        _1887 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1888 = 0.0f.xxxx;
        for (int _1890 = 0; uint(_1890) < _1885; _1887 = _1888, _1890++)
        {
            uint _1901 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1880, _1877.y, uint(1 + _1890)), 0u)).x * 3u;
            float4 _1903 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1901);
            float4 _1905 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1901 + 1u);
            float4 _1907 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1901 + 2u);
            float3 _1908 = _1903.xyz;
            float _1909 = _1903.w;
            float _1910 = 1.0f / _1909;
            uint _1912 = asuint(_1905.x);
            float2 _1918 = float2(spvUnpackHalf2x16(_1912).x, spvUnpackHalf2x16(_1912 >> 16u).x);
            float3 _1919 = float3(_1918.x, _1918.y, _299.z);
            uint _1921 = asuint(_1905.y);
            _1919.z = spvUnpackHalf2x16(_1921).x;
            float3 _1928 = 0.0f.xxx;
            _1928.x = spvUnpackHalf2x16(_1921 >> 16u).x;
            uint _1930 = asuint(_1905.z);
            float2 _1936 = float2(spvUnpackHalf2x16(_1930).x, spvUnpackHalf2x16(_1930 >> 16u).x);
            float3 _1937 = float3(_1928.x, _1936.x, _1936.y);
            float3x3 _1942 = float3x3(_1919 * _1910, _1937 * _1910, cross(_1919, _1937) * _1910);
            uint _1944 = asuint(_1907.x);
            float2 _1947 = spvUnpackHalf2x16((_1944 >> 17u) & 32752u);
            float _1948 = _1947.x;
            float2 _1951 = spvUnpackHalf2x16((_1944 >> 6u) & 32752u);
            float _1952 = _1951.x;
            float2 _1955 = spvUnpackHalf2x16((_1944 << 5u) & 32736u);
            float _1956 = _1955.x;
            uint _1958 = asuint(_1907.y);
            float3 _1976 = 0.0f.xxx;
            if (_1958 > 0u)
            {
                _1976 = float3(spvUnpackHalf2x16((_1958 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1958 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1958 << 5u) & 32736u).x);
            }
            else
            {
                _1976 = 0.0f.xxx;
            }
            uint _1978 = asuint(_1907.z);
            float _1993 = float((_1978 >> 24u) & 255u);
            float _1994 = _1993 * 0.0039215688593685626983642578125f;
            float3 _2001 = mul(View_View_TranslatedWorldCameraOrigin - _1908, _1942);
            float3 _2003 = normalize(mul(_1879, _1942));
            float _2005 = dot(_2003, _2003);
            float _2006 = dot(_2003, _2001);
            float _2007 = 2.0f * _2006;
            float _2012 = mad(_2007, _2007, -((4.0f * _2005) * mad(-1.0f, 1.0f, dot(_2001, _2001))));
            float2 _2024 = 0.0f.xx;
            [flatten]
            if (_2012 >= 0.0f)
            {
                _2024 = ((_2006 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2012))) / (2.0f * _2005).xx;
            }
            else
            {
                _2024 = (-1.0f).xx;
            }
            float3 _2030 = mul(_421 - _1908, _1942) - _2001;
            float2 _2034 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1910, _2024), sqrt(dot(_2030, _2030)).xx);
            float _2184 = 0.0f;
            float3 _2185 = 0.0f.xxx;
            if (any(bool2(_2034.x > 0.0f.xx.x, _2034.y > 0.0f.xx.y)))
            {
                float2 _2055 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2045 = dot(_1879, View_View_ViewForward);
                    _2055 = max(_2034, ((View_View_VolumetricFogMaxDistance * ((_2045 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2045) : 0.0f)) * _1910).xx);
                }
                else
                {
                    _2055 = _2034;
                }
                float _2060 = max(0.0f, abs(_2055.y - _2055.x));
                float _2182 = 0.0f;
                float3 _2183 = 0.0f.xxx;
                if (_2060 > 0.0f)
                {
                    float3 _2065 = _2001 + (_2003 * _2055.x);
                    float _2101 = 0.0f;
                    if (_1948 > 0.0f)
                    {
                        float _2069 = dot(_2003, _2065);
                        float _2070 = dot(_2065, _2065);
                        float _2071 = _2070 - 1.0f;
                        float _2073 = mad(_2069, _2069, 1.0f - _2070);
                        float _2100 = 0.0f;
                        if (_2073 >= 0.0f)
                        {
                            float _2077 = sqrt(_2073);
                            float _2078 = -_2069;
                            float _2081 = max(_2078 - _2077, 0.0f);
                            float _2083 = min(max(_2078 + _2077, 0.0f), _2060);
                            float _2084 = _2081 * _2081;
                            float _2085 = _2083 * _2083;
                            _2100 = max(0.0f, (_1948 * ((-mad(_2085 * _2083, 0.3333333432674407958984375f, mad(_2071, _2083, _2069 * _2085))) - (-mad(_2084 * _2081, 0.3333333432674407958984375f, mad(_2071, _2081, _2069 * _2084))))) * 0.75f);
                        }
                        else
                        {
                            _2100 = 0.0f;
                        }
                        _2101 = _2100;
                    }
                    else
                    {
                        _2101 = 0.0f;
                    }
                    float _2126 = 0.0f;
                    if (_1952 > 0.0f)
                    {
                        float _2107 = _2003.z;
                        float _2113 = (abs(_2107) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2107 >= 0.0f) ? 1.0f : (-1.0f))) : _2107;
                        float _2116 = max(-80.0f, (_2065.z - _1907.w) * _1956);
                        _2126 = (_1952 / (_1956 * _2113)) * (exp(-_2116) - exp(-mad(_2113 * _2060, _1956, _2116)));
                    }
                    else
                    {
                        _2126 = 0.0f;
                    }
                    float _2137 = exp((log(mad(exp(-_2101) - 1.0f, 1.0f - exp(-_2126), 1.0f)) * _1909) * 0.00999999977648258209228515625f);
                    float _2141 = _1993 * (-0.0039215688593685626983642578125f);
                    float _2148 = mad(_1993 * (-0.007843137718737125396728515625f), dot(_1879, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2141, _2141, 1.0f));
                    float3 _2153 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1994, _2141, 1.0f) / ((12.56637096405029296875f * _2148) * sqrt(_2148)));
                    float3 _2179 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2164 = float4(_1879 * _2141, 1.0f);
                        _2179 = _2153 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2164), dot(View_SkyIrradianceEnvironmentMap[1u], _2164), dot(View_SkyIrradianceEnvironmentMap[2u], _2164)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2179 = _2153;
                    }
                    _2182 = _2137;
                    _2183 = mad(_2179, float4(float((_1978 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1978 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1978 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1994).xyz, _1976) * (1.0f - _2137);
                }
                else
                {
                    _2182 = 1.0f;
                    _2183 = 0.0f.xxx;
                }
                _2184 = _2182;
                _2185 = _2183;
            }
            else
            {
                _2184 = 1.0f;
                _2185 = 0.0f.xxx;
            }
            _1888 = float4((_1887.xyz * _2184) + float4(_2185, _2184).xyz, _1887.w * _2184);
        }
        float _2205 = _1887.w * in_var_TEXCOORD7.w;
        float4 _2213 = float4(_93, 1.0f);
        precise float4 _97 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _98 = _2213 + _97;
        precise float4 _99 = _98 - _2213;
        precise float4 _100 = _98 - _99;
        precise float4 _101 = _2213 - _100;
        precise float4 _102 = _97 - _99;
        precise float4 _103 = _101 + _102;
        float4 _2224 = mul(_98 + (float4(_96, 0.0f) + _103), View_View_RelativeWorldToClip);
        float _2225 = _2224.w;
        float4 _2288 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2288 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2271 = 0.0f.xxxx;
            float _2272 = 0.0f;
            if (_1865)
            {
                float4 _2267 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2224.xy / _2225.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2225, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2269 = _2267.xyz * View_View_OneOverPreExposure;
                _2271 = float4(_2269.x, _2269.y, _2269.z, _2267.w);
                _2272 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2271 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2272 = 0.0f;
            }
            float4 _2277 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2271, clamp((_707 - _2272) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2280 = _2277.w;
            _2288 = float4(_2277.xyz + (float4(_1887.xyz + (in_var_TEXCOORD7.xyz * _1887.w), _2205).xyz * _2280), _2280 * _2205);
            break;
        } while(false);
        _2289 = _2288;
    }
    else
    {
        _2289 = in_var_TEXCOORD7;
    }
    float3 _2296 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2365 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _104 = Scene_GPUScene_GPUScenePrimitiveSceneData[_648 + 18u].xyz * 2097152.0f;
        precise float3 _105 = _104 + Scene_GPUScene_GPUScenePrimitiveSceneData[_648 + 19u].xyz;
        precise float3 _106 = _105 - _104;
        precise float3 _107 = Scene_GPUScene_GPUScenePrimitiveSceneData[_648 + 19u].xyz - _106;
        uint _2322 = _648 + 32u;
        precise float3 _108 = _93 - _105;
        precise float3 _109 = _96 - _107;
        precise float3 _110 = _108 + _109;
        float3 _2327 = abs(_110);
        float3 _2328 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_648 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_648 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_648 + 27u].w) + 1.0f.xxx;
        float3 _2364 = 0.0f.xxx;
        if (any(bool3(_2327.x > _2328.x, _2327.y > _2328.y, _2327.z > _2328.z)))
        {
            float3 _2360 = frac(dot(frac(frac(_93 * 1.52587890625e-05f.xxx) + frac(_96 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2364 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2360.x > 0.5f.xxx.x, _2360.y > 0.5f.xxx.y, _2360.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2350 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2322].x > 0.0f)
            {
                float3 _2338 = abs(_421 - in_var_TEXCOORD9);
                _2350 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2338.x, max(_2338.y, _2338.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2322].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2350 = _2296;
            }
            _2364 = _2350;
        }
        _2365 = _2364;
    }
    else
    {
        _2365 = _2296;
    }
    float3 _2367 = mad((_781 * _921) * _733, max(_930, ((((((_696 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _647) + ((_696 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _647) + ((_696 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _647), lerp(mad((((float4(_1791.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1766].x, _1795).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1822 * _1795)).xyz * ((_735 * _1838.x) + (clamp(50.0f * _735.y, 0.0f, 1.0f) * _1838.y).xxx)) * _921, max(_930, ((((((_735 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _647) + ((_735 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _647) + ((_735 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _647), float4(_1756.x ? 0.0f.xxxx.x : _1316.x, _1756.y ? 0.0f.xxxx.y : _1316.y, _1756.z ? 0.0f.xxxx.z : _1316.z, _1756.w ? 0.0f.xxxx.w : _1316.w).xyz + float4(_1756.x ? 0.0f.xxxx.x : _1319.x, _1756.y ? 0.0f.xxxx.y : _1319.y, _1756.z ? 0.0f.xxxx.z : _1319.z, _1756.w ? 0.0f.xxxx.w : _1319.w).xyz), _733 + (_735 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2365;
    float4 _2375 = float4((_2367 * _2289.w) + _2289.xyz, 0.0f);
    _2375.w = 0.0f;
    float4 _2379 = _2375 * View_View_PreExposure;
    float3 _2384 = min(_2379.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2384.x, _2384.y, _2384.z, _2379.w);
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
