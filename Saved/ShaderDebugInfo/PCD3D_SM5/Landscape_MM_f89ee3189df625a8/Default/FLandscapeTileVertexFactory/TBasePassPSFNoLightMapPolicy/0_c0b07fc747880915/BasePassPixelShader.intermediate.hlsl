#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _295 = 0.0f;
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
    float OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog : packoffset(c121);
    float OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance : packoffset(c121.y);
    uint2 OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution : packoffset(c138.z);
    uint OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize : packoffset(c139.y);
    uint OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog : packoffset(c139.w);
    float OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance : packoffset(c140);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor : packoffset(c142);
    float3 OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection : packoffset(c143);
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
    float _330 = 1.0f / gl_FragCoord.w;
    float4 _376 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _380 = mad(float2(_376.zw), 2.0f.xx, (-1.0f).xx);
    float _384 = sqrt(max(1.0f - dot(_380, _380), 0.0f));
    float _385 = _380.x;
    float3 _387 = float3(_385, _380.y, _384);
    float3 _390 = normalize(float3(_384, 0.0f, -_385));
    float2 _405 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _412 = float4(mad(_405, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _298, 1.0f) * _330;
    float4 _417 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _421 = _417.xyz / _417.w.xxx;
    float3 _422 = _421 - View_View_RelativePreViewTranslationTO;
    precise float3 _96 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _422);
    precise float3 _99 = _422 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _96);
    bool _424 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _425 = -View_View_ViewForward;
    float3 _427 = normalize(-_421);
    float3 _437 = float3(_424 ? _425.x : _427.x, _424 ? _425.y : _427.y, _424 ? _425.z : _427.z);
    float _444 = dot(Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy), Material_Material_PreshaderBuffer[0]);
    float4 _447 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _450 = dot(_447, Material_Material_PreshaderBuffer[1]);
    float _453 = dot(_447, Material_Material_PreshaderBuffer[2]);
    float _456 = dot(_447, Material_Material_PreshaderBuffer[3]);
    float _459 = dot(_447, Material_Material_PreshaderBuffer[4]);
    float2 _462 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float4 _470 = Material_Texture2D_2.Sample(View_MaterialTextureBilinearWrapedSampler, _462 * Material_Material_PreshaderBuffer[5].x.xx);
    float _474 = _470.x * Material_Material_PreshaderBuffer[5].y;
    float4 _486 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(mad(floor(_474) + Material_Material_PreshaderBuffer[5].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _490 = Material_Material_PreshaderBuffer[5].w.xx;
    float2 _491 = mad(_486.xy, _490, _462);
    float2 _493 = mad(_486.zw, _490, _462);
    float2 _495 = ddy(_462);
    float2 _496 = ddx(_462);
    float2 _508 = lerp(_491, _493, clamp(round(mad(0.5f, (Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _493, _496, _495) - Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _491, _496, _495)).x, frac(_474))), 0.0f, 1.0f).xx);
    float2 _514 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _508, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _523 = _444.xxx;
    float2 _529 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _508, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _538 = _450.xxx;
    float2 _546 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _508, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _555 = _453.xxx;
    float2 _560 = _508 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _566 = mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _560, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _575 = _456.xxx;
    float2 _582 = mad(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _508, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _591 = _459.xxx;
    float3 _599 = normalize(mul(normalize((mad(float4(_582, sqrt(clamp(1.0f - dot(_582, _582), 0.0f, 1.0f)), 1.0f).xyz, _591, mad(float4(_566, sqrt(clamp(1.0f - dot(_566, _566), 0.0f, 1.0f)), 1.0f).xyz, _575, mad(float4(_546, sqrt(clamp(1.0f - dot(_546, _546), 0.0f, 1.0f)), 1.0f).xyz, _555, mad(float4(_514, sqrt(clamp(1.0f - dot(_514, _514), 0.0f, 1.0f)), 1.0f).xyz, _523, float4(_529, sqrt(clamp(1.0f - dot(_529, _529), 0.0f, 1.0f)), 1.0f).xyz * _538)))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_390, cross(_387, _390), _387), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _600 = _599 * 1.0f;
    float4 _635 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _508, View_View_MaterialTextureMipBias);
    float4 _641 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _508, View_View_MaterialTextureMipBias);
    float4 _646 = Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, _508, View_View_MaterialTextureMipBias);
    float4 _653 = Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, _508, View_View_MaterialTextureMipBias);
    float4 _659 = Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _560, View_View_MaterialTextureMipBias);
    float4 _665 = Material_Texture2D_19.SampleBias(Material_Texture2D_19Sampler, _508, View_View_MaterialTextureMipBias);
    float3 _681 = clamp(mad(_635.xyz, _591, mad(Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _560, View_View_MaterialTextureMipBias).xyz, _575, mad(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _508, View_View_MaterialTextureMipBias).xyz, _555, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _508, View_View_MaterialTextureMipBias).xyz, _523, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _508, View_View_MaterialTextureMipBias).xyz * _538)))), 0.0f.xxx, 1.0f.xxx);
    float _685 = mad(clamp(mad(_665.y * Material_Material_PreshaderBuffer[7].w, _459, mad(_659.y, _456, mad(_653.y, _453, mad(_641.y, _444, _646.y * _450)))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _686 = clamp(mad(_665.x, _459, mad(_659.x, _456, mad(_653.x, _453, mad(_641.x, _444, _646.x * _450)))), 0.0f, 1.0f);
    float3 _728 = 0.0f.xxx;
    float _729 = 0.0f;
    float _730 = 0.0f;
    float _731 = 0.0f;
    float3 _732 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _700 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _704 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _700, 0.0f);
        float4 _707 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _700, 0.0f);
        float4 _710 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _700, 0.0f);
        float _720 = _710.w;
        _728 = normalize((_600 * _707.w) + ((_707.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _729 = mad(_685, _720, _710.z);
        _730 = mad(0.5f, _720, _710.y);
        _731 = _710.x;
        _732 = (_681 * _704.w) + _704.xyz;
    }
    else
    {
        _728 = _600;
        _729 = _685;
        _730 = 0.5f;
        _731 = 0.0f;
        _732 = _681;
    }
    float _740 = _412.w;
    float3 _753 = ((_732 - (_732 * _731)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _760 = (lerp((0.07999999821186065673828125f * _730).xxx, _732, _731.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _761 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _766 = 0.0f.xxx;
    if (_761)
    {
        _766 = _753 + (_760 * 0.449999988079071044921875f);
    }
    else
    {
        _766 = _753;
    }
    bool3 _767 = _761.xxx;
    float3 _768 = float3(_767.x ? 0.0f.xxx.x : _760.x, _767.y ? 0.0f.xxx.y : _760.y, _767.z ? 0.0f.xxx.z : _760.z);
    float2 _774 = mad(_412.xy / _740.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _884 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _785 = int2(trunc(_774 * View_View_BufferSizeAndInvSize.xy));
        int _786 = _785.x;
        int _787 = _785.y;
        float4 _791 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_786, _787, 0).xy, 0));
        float _792 = _791.x;
        float _802 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _883 = 0.0f.xx;
        if ((abs((mad(_792, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_792, View_View_InvDeviceZToWorldZTransform.z, _802))) - _740) / _740) > 0.00999999977648258209228515625f)
        {
            float2 _815 = _774 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _819 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_786 - 1, _787, 0).xy, 0));
            float _820 = _819.x;
            float _826 = abs((mad(_820, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_820, View_View_InvDeviceZToWorldZTransform.z, _802))) - _740);
            bool _827 = _826 < 100000000.0f;
            bool2 _828 = _827.xx;
            float2 _829 = float2(_828.x ? _815.x : _774.x, _828.y ? _815.y : _774.y);
            float _830 = _827 ? _826 : 100000000.0f;
            float2 _833 = _774 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _837 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_786, _787 + 1, 0).xy, 0));
            float _838 = _837.x;
            float _844 = abs((mad(_838, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_838, View_View_InvDeviceZToWorldZTransform.z, _802))) - _740);
            bool _845 = _844 < _830;
            bool2 _846 = _845.xx;
            float2 _847 = float2(_846.x ? _833.x : _829.x, _846.y ? _833.y : _829.y);
            float _848 = _845 ? _844 : _830;
            float2 _850 = _774 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _854 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_786 + 1, _787, 0).xy, 0));
            float _855 = _854.x;
            float _861 = abs((mad(_855, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_855, View_View_InvDeviceZToWorldZTransform.z, _802))) - _740);
            bool _862 = _861 < _848;
            bool2 _863 = _862.xx;
            float2 _864 = float2(_863.x ? _850.x : _847.x, _863.y ? _850.y : _847.y);
            float2 _868 = _774 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _872 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_786, _787 - 1, 0).xy, 0));
            float _873 = _872.x;
            bool2 _881 = (abs((mad(_873, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_873, View_View_InvDeviceZToWorldZTransform.z, _802))) - _740) < (_862 ? _861 : _848)).xx;
            _883 = float2(_881.x ? _868.x : _864.x, _881.y ? _868.y : _864.y);
        }
        else
        {
            _883 = _774;
        }
        _884 = _883;
    }
    else
    {
        _884 = _774;
    }
    uint _890_dummy_parameter;
    uint2 _890 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _890_dummy_parameter);
    uint2 _934 = uint2(_405 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _962 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _962 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_884 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _962 = 1.0f.xxxx;
    }
    float4 _963 = _962 * _962;
    uint _976 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1268 = 0.0f.xxxx;
    float4 _1269 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1002 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1017 = dot(float4(float(_1002 & 1u), float((_1002 & 2u) >> 1u), float((_1002 & 4u) >> 2u), float((_1002 & 8u) >> 3u)), _963);
        bool _1019 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1020 = _1019 ? 1.0f : _1017;
        float _1033 = 0.0f;
        float _1034 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1027 = clamp(mad(_740, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1029 = lerp(_1019 ? _1017 : 1.0f, 1.0f, _1027 * _1027);
            _1033 = min(_1029, _1020) * _1020;
            _1034 = _1029 * _1020;
        }
        else
        {
            _1033 = 1.0f;
            _1034 = 1.0f;
        }
        float3 _1250 = 0.0f.xxx;
        float3 _1251 = 0.0f.xxx;
        [branch]
        if ((_1034 + _1033) > 0.0f)
        {
            float _1041 = max(_729, View_View_MinRoughness);
            float _1042 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1045 = rsqrt(_1042);
            float3 _1046 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1045;
            float _1047 = dot(_728, _1046);
            float _1065 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1054 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1042 + 1.0f)), 0.0f, 1.0f));
                float _1064 = 0.0f;
                if (_1047 < _1054)
                {
                    float _1060 = _1054 + max(_1047, -_1054);
                    _1064 = (_1060 * _1060) / (4.0f * _1054);
                }
                else
                {
                    _1064 = _1047;
                }
                _1065 = _1064;
            }
            else
            {
                _1065 = _1047;
            }
            float _1066 = clamp(_1065, 0.0f, 1.0f);
            float _1067 = max(_1041, View_View_MinRoughness);
            float _1072 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1045) * mad(-_1067, _1067, 1.0f), 0.0f, 1.0f);
            float _1074 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1045, 0.0f, 1.0f);
            float3 _1243 = 0.0f.xxx;
            float3 _1244 = 0.0f.xxx;
            [branch]
            if (_1066 > 0.0f)
            {
                float _1085 = dot(_728, _437);
                float _1086 = dot(_437, _1046);
                float _1088 = rsqrt(mad(2.0f, _1086, 2.0f));
                bool _1094 = _1072 > 0.0f;
                float _1173 = 0.0f;
                float _1174 = 0.0f;
                if (_1094)
                {
                    float _1099 = sqrt(mad(-_1072, _1072, 1.0f));
                    float _1100 = 2.0f * _1047;
                    float _1101 = -_1086;
                    float _1102 = mad(_1100, _1085, _1101);
                    float _1171 = 0.0f;
                    float _1172 = 0.0f;
                    if (_1102 >= _1099)
                    {
                        _1171 = 1.0f;
                        _1172 = abs(_1085);
                    }
                    else
                    {
                        float _1107 = -_1102;
                        float _1110 = _1072 * rsqrt(mad(_1107, _1102, 1.0f));
                        float _1111 = mad(_1107, _1047, _1085);
                        float _1115 = mad(_1107, _1086, mad(2.0f * _1085, _1085, -1.0f));
                        float _1126 = _1110 * sqrt(clamp(mad(_1100 * _1085, _1086, mad(_1101, _1086, mad(-_1085, _1085, mad(-_1047, _1047, 1.0f)))), 0.0f, 1.0f));
                        float _1128 = (_1126 * 2.0f) * _1085;
                        float _1129 = mad(_1047, _1099, _1085);
                        float _1130 = mad(_1110, _1111, _1129);
                        float _1132 = mad(_1110, _1115, mad(_1086, _1099, 1.0f));
                        float _1133 = _1126 * _1132;
                        float _1134 = _1130 * _1132;
                        float _1139 = _1134 * mad(-0.5f, _1133, (0.25f * _1128) * _1130);
                        float _1149 = mad(_1130, mad(_1129, _1132 * _1132, _1134 * mad(-0.5f, mad(_1086, _1099, _1132), -0.5f)), mad(_1133, _1133, (_1128 * _1130) * mad(_1128, _1130, _1133 * (-2.0f))));
                        float _1153 = (2.0f * _1139) / mad(_1149, _1149, _1139 * _1139);
                        float _1154 = _1153 * _1149;
                        float _1156 = mad(-_1153, _1139, 1.0f);
                        float _1162 = mad(_1086, _1099, mad(_1156, _1110 * _1115, _1154 * _1128));
                        float _1164 = rsqrt(mad(2.0f, _1162, 2.0f));
                        _1171 = clamp((mad(_1047, _1099, mad(_1156, _1110 * _1111, _1154 * _1126)) + _1085) * _1164, 0.0f, 1.0f);
                        _1172 = clamp(mad(_1164, _1162, _1164), 0.0f, 1.0f);
                    }
                    _1173 = _1171;
                    _1174 = _1172;
                }
                else
                {
                    _1173 = clamp((_1047 + _1085) * _1088, 0.0f, 1.0f);
                    _1174 = clamp(mad(_1088, _1086, _1088), 0.0f, 1.0f);
                }
                float _1177 = clamp(abs(_1085) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1179 = 1.0f.xxx * _1066;
                float3 _1241 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1241 = 0.0f.xxx;
                }
                else
                {
                    float _1186 = _1041 * _1041;
                    float _1196 = 0.0f;
                    if (_1074 > 0.0f)
                    {
                        _1196 = clamp(mad(_1186, _1186, (_1074 * _1074) / mad(_1174, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1196 = _1186 * _1186;
                    }
                    float _1210 = 0.0f;
                    if (_1094)
                    {
                        _1210 = _1196 / (_1196 + (((0.25f * _1072) * mad(3.0f, asfloat(532487669 + (asint(_1196) >> 1)), _1072)) / (_1174 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1210 = 1.0f;
                    }
                    float _1213 = mad(mad(_1173, _1196, -_1173), _1173, 1.0f);
                    float _1218 = sqrt(_1196);
                    float _1219 = 1.0f - _1218;
                    float _1225 = 1.0f - _1174;
                    float _1226 = _1225 * _1225;
                    float _1227 = _1226 * _1226;
                    _1241 = _1179 * (((clamp(50.0f * _768.y, 0.0f, 1.0f) * (_1227 * _1225)).xxx + (_768 * mad(-_1227, _1225, 1.0f))) * (((_1196 / ((3.1415927410125732421875f * _1213) * _1213)) * _1210) * (0.5f / mad(_1066, mad(_1177, _1219, _1218), _1177 * mad(_1066, _1219, _1218)))));
                }
                _1243 = ((_766 * 0.3183098733425140380859375f) * _1179) * 1.0f;
                _1244 = _1241;
            }
            else
            {
                _1243 = 0.0f.xxx;
                _1244 = 0.0f.xxx;
            }
            float3 _1247 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1034;
            _1250 = mad(_1243 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1247, 0.0f.xxx);
            _1251 = (_1244 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1247;
        }
        else
        {
            _1250 = 0.0f.xxx;
            _1251 = 0.0f.xxx;
        }
        float4 _1255 = float4(_1250, 0.0f);
        float4 _1259 = float4(_1251, 0.0f);
        float4 _1266 = 0.0f.xxxx;
        float4 _1267 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _976) != 0u)
        {
            _1266 = float4(_1255.x, _1255.y, _1255.z, _1255.w);
            _1267 = float4(_1259.x, _1259.y, _1259.z, _1259.w);
        }
        else
        {
            _1266 = 0.0f.xxxx;
            _1267 = 0.0f.xxxx;
        }
        _1268 = _1266;
        _1269 = _1267;
    }
    else
    {
        _1268 = 0.0f.xxxx;
        _1269 = 0.0f.xxxx;
    }
    uint _1270 = ((((min(uint(max(0.0f, log2(mad(_330, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _934.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _934.x) * 2u;
    uint _1280 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1270 + 1u] & 1073741823u;
    uint _1283 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1270] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1285 = 0.0f.xxxx;
    float4 _1288 = 0.0f.xxxx;
    _1285 = _1268;
    _1288 = _1269;
    float4 _1286 = 0.0f.xxxx;
    float4 _1289 = 0.0f.xxxx;
    [loop]
    for (uint _1290 = 0u; _1290 < _1283; _1285 = _1286, _1288 = _1289, _1290++)
    {
        uint _1299 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1280 + _1290).x * 6u;
        uint _1302 = _1299 + 1u;
        uint _1305 = _1299 + 2u;
        uint _1308 = _1299 + 3u;
        uint _1311 = _1299 + 4u;
        uint _1315 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1305].w);
        uint _1321 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].y);
        uint _1337 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1308].z);
        float2 _1339 = spvUnpackHalf2x16(_1337 & 65535u);
        float _1340 = _1339.x;
        float2 _1343 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1308].w));
        float _1344 = _1343.x;
        bool _1349 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].w == 0.0f;
        uint _1351 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1311].w);
        uint _1364 = _1315 >> 4u;
        float3 _1380 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].xyz - _421;
        float _1381 = dot(_1380, _1380);
        float _1398 = 0.0f;
        if (_1349)
        {
            float _1393 = _1381 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].w);
            float _1396 = clamp(mad(-_1393, _1393, 1.0f), 0.0f, 1.0f);
            _1398 = _1396 * _1396;
        }
        else
        {
            float3 _1387 = _1380 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].w;
            _1398 = pow(1.0f - clamp(dot(_1387, _1387), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].w);
        }
        float _1409 = 0.0f;
        if (((_1315 >> 16u) & 3u) == 2u)
        {
            float _1406 = clamp((dot(_1380 * rsqrt(_1381), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1305].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1308].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1308].y, 0.0f, 1.0f);
            _1409 = _1398 * (_1406 * _1406);
        }
        else
        {
            _1409 = _1398;
        }
        float3 _1706 = 0.0f.xxx;
        float3 _1707 = 0.0f.xxx;
        [branch]
        if (_1409 > 0.0f)
        {
            float _1417 = 0.0f;
            [branch]
            if (uint(int((_1315 & 255u) != 0u)) != 0u)
            {
                _1417 = dot(float4(float(_1364 & 1u), float((_1364 & 2u) >> 1u), float((_1364 & 4u) >> 2u), float((_1364 & 8u) >> 3u)), _963);
            }
            else
            {
                _1417 = 1.0f;
            }
            float3 _1704 = 0.0f.xxx;
            float3 _1705 = 0.0f.xxx;
            [branch]
            if ((_1417 + _1417) > 0.0f)
            {
                float3 _1423 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1311].xyz * (0.5f * _1344);
                float3 _1424 = _1380 - _1423;
                float3 _1425 = _1380 + _1423;
                float _1428 = max(_729, View_View_MinRoughness);
                bool _1429 = _1344 > 0.0f;
                float _1454 = 0.0f;
                float _1455 = 0.0f;
                float _1456 = 0.0f;
                [branch]
                if (_1429)
                {
                    float _1441 = rsqrt(dot(_1424, _1424));
                    float _1442 = rsqrt(dot(_1425, _1425));
                    float _1443 = _1441 * _1442;
                    float _1445 = dot(_1424, _1425) * _1443;
                    _1454 = _1445;
                    _1455 = 0.5f * mad(dot(_728, _1424), _1441, dot(_728, _1425) * _1442);
                    _1456 = _1443 / mad(_1441, _1442, mad(_1445, 0.5f, 0.5f));
                }
                else
                {
                    float _1433 = dot(_1424, _1424);
                    _1454 = 1.0f;
                    _1455 = dot(_728, _1424 * rsqrt(_1433));
                    _1456 = 1.0f / (_1433 + 1.0f);
                }
                float _1474 = 0.0f;
                if (_1340 > 0.0f)
                {
                    float _1463 = sqrt(clamp((_1340 * _1340) * _1456, 0.0f, 1.0f));
                    float _1473 = 0.0f;
                    if (_1455 < _1463)
                    {
                        float _1469 = _1463 + max(_1455, -_1463);
                        _1473 = (_1469 * _1469) / (4.0f * _1463);
                    }
                    else
                    {
                        _1473 = _1455;
                    }
                    _1474 = _1473;
                }
                else
                {
                    _1474 = _1455;
                }
                float _1475 = clamp(_1474, 0.0f, 1.0f);
                float3 _1493 = 0.0f.xxx;
                if (_1429)
                {
                    float3 _1480 = reflect(-_437, _728);
                    float3 _1481 = _1425 - _1424;
                    float _1482 = dot(_1480, _1481);
                    _1493 = _1424 + (_1481 * clamp(dot(_1424, (_1480 * _1482) - _1481) / mad(_1344, _1344, -(_1482 * _1482)), 0.0f, 1.0f));
                }
                else
                {
                    _1493 = _1424;
                }
                float _1495 = rsqrt(dot(_1493, _1493));
                float3 _1496 = _1493 * _1495;
                float _1497 = max(_1428, View_View_MinRoughness);
                float _1502 = clamp((_1340 * _1495) * mad(-_1497, _1497, 1.0f), 0.0f, 1.0f);
                float _1504 = clamp(spvUnpackHalf2x16(_1337 >> 16u).x * _1495, 0.0f, 1.0f);
                float3 _1697 = 0.0f.xxx;
                float3 _1698 = 0.0f.xxx;
                [branch]
                if (_1475 > 0.0f)
                {
                    float _1515 = dot(_728, _1496);
                    float _1516 = dot(_728, _437);
                    float _1517 = dot(_437, _1496);
                    float _1519 = rsqrt(mad(2.0f, _1517, 2.0f));
                    bool _1525 = _1502 > 0.0f;
                    float _1604 = 0.0f;
                    float _1605 = 0.0f;
                    if (_1525)
                    {
                        float _1530 = sqrt(mad(-_1502, _1502, 1.0f));
                        float _1531 = 2.0f * _1515;
                        float _1532 = -_1517;
                        float _1533 = mad(_1531, _1516, _1532);
                        float _1602 = 0.0f;
                        float _1603 = 0.0f;
                        if (_1533 >= _1530)
                        {
                            _1602 = 1.0f;
                            _1603 = abs(_1516);
                        }
                        else
                        {
                            float _1538 = -_1533;
                            float _1541 = _1502 * rsqrt(mad(_1538, _1533, 1.0f));
                            float _1542 = mad(_1538, _1515, _1516);
                            float _1546 = mad(_1538, _1517, mad(2.0f * _1516, _1516, -1.0f));
                            float _1557 = _1541 * sqrt(clamp(mad(_1531 * _1516, _1517, mad(_1532, _1517, mad(-_1516, _1516, mad(-_1515, _1515, 1.0f)))), 0.0f, 1.0f));
                            float _1559 = (_1557 * 2.0f) * _1516;
                            float _1560 = mad(_1515, _1530, _1516);
                            float _1561 = mad(_1541, _1542, _1560);
                            float _1563 = mad(_1541, _1546, mad(_1517, _1530, 1.0f));
                            float _1564 = _1557 * _1563;
                            float _1565 = _1561 * _1563;
                            float _1570 = _1565 * mad(-0.5f, _1564, (0.25f * _1559) * _1561);
                            float _1580 = mad(_1561, mad(_1560, _1563 * _1563, _1565 * mad(-0.5f, mad(_1517, _1530, _1563), -0.5f)), mad(_1564, _1564, (_1559 * _1561) * mad(_1559, _1561, _1564 * (-2.0f))));
                            float _1584 = (2.0f * _1570) / mad(_1580, _1580, _1570 * _1570);
                            float _1585 = _1584 * _1580;
                            float _1587 = mad(-_1584, _1570, 1.0f);
                            float _1593 = mad(_1517, _1530, mad(_1587, _1541 * _1546, _1585 * _1559));
                            float _1595 = rsqrt(mad(2.0f, _1593, 2.0f));
                            _1602 = clamp((mad(_1515, _1530, mad(_1587, _1541 * _1542, _1585 * _1557)) + _1516) * _1595, 0.0f, 1.0f);
                            _1603 = clamp(mad(_1595, _1593, _1595), 0.0f, 1.0f);
                        }
                        _1604 = _1602;
                        _1605 = _1603;
                    }
                    else
                    {
                        _1604 = clamp((_1515 + _1516) * _1519, 0.0f, 1.0f);
                        _1605 = clamp(mad(_1519, _1517, _1519), 0.0f, 1.0f);
                    }
                    float _1608 = clamp(abs(_1516) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1611 = 1.0f.xxx * ((_1349 ? _1456 : 1.0f) * _1475);
                    float3 _1695 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1344, _1340), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1695 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1618 = _1428 * _1428;
                        float _1628 = 0.0f;
                        if (_1504 > 0.0f)
                        {
                            _1628 = clamp(mad(_1618, _1618, (_1504 * _1504) / mad(_1605, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1628 = _1618 * _1618;
                        }
                        float _1642 = 0.0f;
                        float _1643 = 0.0f;
                        if (_1525)
                        {
                            float _1640 = _1628 + (((0.25f * _1502) * mad(3.0f, asfloat(532487669 + (asint(_1628) >> 1)), _1502)) / (_1605 + 0.001000000047497451305389404296875f));
                            _1642 = _1628 / _1640;
                            _1643 = _1640;
                        }
                        else
                        {
                            _1642 = 1.0f;
                            _1643 = _1628;
                        }
                        float _1664 = 0.0f;
                        if (_1454 < 1.0f)
                        {
                            float _1650 = sqrt((1.00010001659393310546875f - _1454) / (1.0f + _1454));
                            _1664 = _1642 * sqrt(_1643 / (_1643 + (((0.25f * _1650) * mad(3.0f, asfloat(532487669 + (asint(_1643) >> 1)), _1650)) / (_1605 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1664 = _1642;
                        }
                        float _1667 = mad(mad(_1604, _1628, -_1604), _1604, 1.0f);
                        float _1672 = sqrt(_1628);
                        float _1673 = 1.0f - _1672;
                        float _1679 = 1.0f - _1605;
                        float _1680 = _1679 * _1679;
                        float _1681 = _1680 * _1680;
                        _1695 = _1611 * (((clamp(50.0f * _768.y, 0.0f, 1.0f) * (_1681 * _1679)).xxx + (_768 * mad(-_1681, _1679, 1.0f))) * (((_1628 / ((3.1415927410125732421875f * _1667) * _1667)) * _1664) * (0.5f / mad(_1475, mad(_1608, _1673, _1672), _1608 * mad(_1475, _1673, _1672)))));
                    }
                    _1697 = ((_766 * 0.3183098733425140380859375f) * _1611) * 1.0f;
                    _1698 = _1695;
                }
                else
                {
                    _1697 = 0.0f.xxx;
                    _1698 = 0.0f.xxx;
                }
                float3 _1701 = ((float3(float((_1321 >> 0u) & 1023u), float((_1321 >> 10u) & 1023u), float((_1321 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].x) * _1409) * _1417;
                _1704 = mad(_1697 * (float((_1351 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1701, 0.0f.xxx);
                _1705 = (_1698 * (float(_1351 & 1023u) * 0.000977517105638980865478515625f)) * _1701;
            }
            else
            {
                _1704 = 0.0f.xxx;
                _1705 = 0.0f.xxx;
            }
            _1706 = _1704;
            _1707 = _1705;
        }
        else
        {
            _1706 = 0.0f.xxx;
            _1707 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1315 >> 8u) & 7u) & _976) != 0u)
        {
            _1286 = _1285 + float4(_1706, 0.0f);
            _1289 = _1288 + float4(_1707, 0.0f);
        }
        else
        {
            _1286 = _1285;
            _1289 = _1288;
        }
    }
    bool4 _1725 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1734 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1772 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _729) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1773 = _1772.x;
    float2 _1782 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1773 * _1773, exp2((-9.27999973297119140625f) * clamp(dot(_728, _437), 0.0f, 1.0f))), _1773, _1772.y)) + _1772.zw;
    float3 _1807 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_728 * (2.0f * dot(_437, _728))) - _437, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1734].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_729, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1734].x, _295).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_768 * _1782.x) + (clamp(50.0f * _768.y, 0.0f, 1.0f) * _1782.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_884 * float2(float(_890.x), float(_890.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_686.xxx, ((((((_768 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _686) + ((_768 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _686) + ((_768 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _686), float4(_1725.x ? 0.0f.xxxx.x : _1285.x, _1725.y ? 0.0f.xxxx.y : _1285.y, _1725.z ? 0.0f.xxxx.z : _1285.z, _1725.w ? 0.0f.xxxx.w : _1285.w).xyz + float4(_1725.x ? 0.0f.xxxx.x : _1288.x, _1725.y ? 0.0f.xxxx.y : _1288.y, _1725.z ? 0.0f.xxxx.z : _1288.z, _1725.w ? 0.0f.xxxx.w : _1288.w).xyz);
    bool _1810 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2236 = 0.0f.xxxx;
    if (_1810)
    {
        uint2 _1822 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1824 = normalize(_421 - View_View_TranslatedWorldCameraOrigin);
        uint _1825 = _1822.x;
        uint4 _1829 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1825, _1822.y, 0u), 0u));
        uint _1830 = _1829.x;
        float4 _1832 = 0.0f.xxxx;
        _1832 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1833 = 0.0f.xxxx;
        for (int _1835 = 0; uint(_1835) < _1830; _1832 = _1833, _1835++)
        {
            uint _1846 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1825, _1822.y, uint(1 + _1835)), 0u)).x * 3u;
            float4 _1848 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1846);
            float4 _1850 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1846 + 1u);
            float4 _1852 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1846 + 2u);
            float3 _1853 = _1848.xyz;
            float _1854 = _1848.w;
            float _1855 = 1.0f / _1854;
            uint _1857 = asuint(_1850.x);
            float2 _1863 = float2(spvUnpackHalf2x16(_1857).x, spvUnpackHalf2x16(_1857 >> 16u).x);
            float3 _1864 = float3(_1863.x, _1863.y, _299.z);
            uint _1866 = asuint(_1850.y);
            _1864.z = spvUnpackHalf2x16(_1866).x;
            float3 _1873 = 0.0f.xxx;
            _1873.x = spvUnpackHalf2x16(_1866 >> 16u).x;
            uint _1875 = asuint(_1850.z);
            float2 _1881 = float2(spvUnpackHalf2x16(_1875).x, spvUnpackHalf2x16(_1875 >> 16u).x);
            float3 _1882 = float3(_1873.x, _1881.x, _1881.y);
            float3x3 _1887 = float3x3(_1864 * _1855, _1882 * _1855, cross(_1864, _1882) * _1855);
            uint _1889 = asuint(_1852.x);
            float2 _1892 = spvUnpackHalf2x16((_1889 >> 17u) & 32752u);
            float _1893 = _1892.x;
            float2 _1896 = spvUnpackHalf2x16((_1889 >> 6u) & 32752u);
            float _1897 = _1896.x;
            float2 _1900 = spvUnpackHalf2x16((_1889 << 5u) & 32736u);
            float _1901 = _1900.x;
            uint _1903 = asuint(_1852.y);
            float3 _1921 = 0.0f.xxx;
            if (_1903 > 0u)
            {
                _1921 = float3(spvUnpackHalf2x16((_1903 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1903 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1903 << 5u) & 32736u).x);
            }
            else
            {
                _1921 = 0.0f.xxx;
            }
            uint _1923 = asuint(_1852.z);
            float _1938 = float((_1923 >> 24u) & 255u);
            float _1939 = _1938 * 0.0039215688593685626983642578125f;
            float3 _1946 = mul(View_View_TranslatedWorldCameraOrigin - _1853, _1887);
            float3 _1948 = normalize(mul(_1824, _1887));
            float _1950 = dot(_1948, _1948);
            float _1951 = dot(_1948, _1946);
            float _1952 = 2.0f * _1951;
            float _1957 = mad(_1952, _1952, -((4.0f * _1950) * mad(-1.0f, 1.0f, dot(_1946, _1946))));
            float2 _1969 = 0.0f.xx;
            [flatten]
            if (_1957 >= 0.0f)
            {
                _1969 = ((_1951 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1957))) / (2.0f * _1950).xx;
            }
            else
            {
                _1969 = (-1.0f).xx;
            }
            float3 _1975 = mul(_421 - _1853, _1887) - _1946;
            float2 _1979 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1855, _1969), sqrt(dot(_1975, _1975)).xx);
            float _2131 = 0.0f;
            float3 _2132 = 0.0f.xxx;
            if (any(bool2(_1979.x > 0.0f.xx.x, _1979.y > 0.0f.xx.y)))
            {
                float2 _2000 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1990 = dot(_1824, View_View_ViewForward);
                    _2000 = max(_1979, ((View_View_VolumetricFogMaxDistance * ((_1990 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1990) : 0.0f)) * _1855).xx);
                }
                else
                {
                    _2000 = _1979;
                }
                float _2005 = max(0.0f, abs(_2000.y - _2000.x));
                float _2129 = 0.0f;
                float3 _2130 = 0.0f.xxx;
                if (_2005 > 0.0f)
                {
                    float3 _2010 = _1946 + (_1948 * _2000.x);
                    float _2046 = 0.0f;
                    if (_1893 > 0.0f)
                    {
                        float _2014 = dot(_1948, _2010);
                        float _2015 = dot(_2010, _2010);
                        float _2016 = _2015 - 1.0f;
                        float _2018 = mad(_2014, _2014, 1.0f - _2015);
                        float _2045 = 0.0f;
                        if (_2018 >= 0.0f)
                        {
                            float _2022 = sqrt(_2018);
                            float _2023 = -_2014;
                            float _2026 = max(_2023 - _2022, 0.0f);
                            float _2028 = min(max(_2023 + _2022, 0.0f), _2005);
                            float _2029 = _2026 * _2026;
                            float _2030 = _2028 * _2028;
                            _2045 = max(0.0f, (_1893 * ((-mad(_2030 * _2028, 0.3333333432674407958984375f, mad(_2016, _2028, _2014 * _2030))) - (-mad(_2029 * _2026, 0.3333333432674407958984375f, mad(_2016, _2026, _2014 * _2029))))) * 0.75f);
                        }
                        else
                        {
                            _2045 = 0.0f;
                        }
                        _2046 = _2045;
                    }
                    else
                    {
                        _2046 = 0.0f;
                    }
                    float _2071 = 0.0f;
                    if (_1897 > 0.0f)
                    {
                        float _2052 = _1948.z;
                        float _2058 = (abs(_2052) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2052 >= 0.0f) ? 1.0f : (-1.0f))) : _2052;
                        float _2061 = max(-80.0f, (_2010.z - _1852.w) * _1901);
                        _2071 = (_1897 / (_1901 * _2058)) * (exp(-_2061) - exp(-mad(_2058 * _2005, _1901, _2061)));
                    }
                    else
                    {
                        _2071 = 0.0f;
                    }
                    float _2082 = exp((log(mad(exp(-_2046) - 1.0f, 1.0f - exp(-_2071), 1.0f)) * _1854) * 0.00999999977648258209228515625f);
                    float _2086 = _1938 * (-0.0039215688593685626983642578125f);
                    float _2093 = mad(_1938 * (-0.007843137718737125396728515625f), dot(_1824, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2086, _2086, 1.0f));
                    float3 _2098 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1939, _2086, 1.0f) / ((12.56637096405029296875f * _2093) * sqrt(_2093)));
                    float3 _2126 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2111 = float4(_1824 * _2086, 1.0f);
                        _2126 = _2098 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2111), dot(View_SkyIrradianceEnvironmentMap[1u], _2111), dot(View_SkyIrradianceEnvironmentMap[2u], _2111)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2126 = _2098;
                    }
                    _2129 = _2082;
                    _2130 = mad(_2126, float4(float((_1923 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1923 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1923 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1939).xyz, _1921) * (1.0f - _2082);
                }
                else
                {
                    _2129 = 1.0f;
                    _2130 = 0.0f.xxx;
                }
                _2131 = _2129;
                _2132 = _2130;
            }
            else
            {
                _2131 = 1.0f;
                _2132 = 0.0f.xxx;
            }
            _1833 = float4((_1832.xyz * _2131) + float4(_2132, _2131).xyz, _1832.w * _2131);
        }
        float _2152 = _1832.w * in_var_TEXCOORD7.w;
        float4 _2160 = float4(_96, 1.0f);
        precise float4 _100 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _101 = _2160 + _100;
        precise float4 _102 = _101 - _2160;
        precise float4 _103 = _101 - _102;
        precise float4 _104 = _2160 - _103;
        precise float4 _105 = _100 - _102;
        precise float4 _106 = _104 + _105;
        float4 _2171 = mul(_101 + (float4(_99, 0.0f) + _106), View_View_RelativeWorldToClip);
        float _2172 = _2171.w;
        float4 _2235 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2235 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2218 = 0.0f.xxxx;
            float _2219 = 0.0f;
            if (_1810)
            {
                float4 _2214 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2171.xy / _2172.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2172, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2216 = _2214.xyz * View_View_OneOverPreExposure;
                _2218 = float4(_2216.x, _2216.y, _2216.z, _2214.w);
                _2219 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2218 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2219 = 0.0f;
            }
            float4 _2224 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2218, clamp((_740 - _2219) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2227 = _2224.w;
            _2235 = float4(_2224.xyz + (float4(_1832.xyz + (in_var_TEXCOORD7.xyz * _1832.w), _2152).xyz * _2227), _2227 * _2152);
            break;
        } while(false);
        _2236 = _2235;
    }
    else
    {
        _2236 = in_var_TEXCOORD7;
    }
    float3 _2243 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].y.xxx), 0.0f.xxx);
    float3 _2301 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _107 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _108 = _107 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _109 = _108 - _107;
        precise float3 _110 = Primitive_Primitive_ObjectWorldPositionLow - _109;
        precise float3 _111 = _96 - _108;
        precise float3 _112 = _99 - _110;
        precise float3 _113 = _111 + _112;
        float3 _2263 = abs(_113);
        float3 _2264 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2300 = 0.0f.xxx;
        if (any(bool3(_2263.x > _2264.x, _2263.y > _2264.y, _2263.z > _2264.z)))
        {
            float3 _2296 = frac(dot(frac(frac(_96 * 1.52587890625e-05f.xxx) + frac(_99 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2300 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2296.x > 0.5f.xxx.x, _2296.y > 0.5f.xxx.y, _2296.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2286 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2274 = abs(_421 - in_var_TEXCOORD9);
                _2286 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2274.x, max(_2274.y, _2274.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2286 = _2243;
            }
            _2300 = _2286;
        }
        _2301 = _2300;
    }
    else
    {
        _2301 = _2243;
    }
    float4 _2310 = float4(((lerp(_1807, _766 + (_768 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2301) * _2236.w) + _2236.xyz, 0.0f);
    _2310.w = 0.0f;
    float4 _2314 = _2310 * View_View_PreExposure;
    float3 _2319 = min(_2314.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2319.x, _2319.y, _2319.z, _2314.w);
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
