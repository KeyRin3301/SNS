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
    float2 _556 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _502, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _565 = _453.xxx;
    float3 _573 = normalize(mul(normalize((mad(float4(_556, sqrt(clamp(1.0f - dot(_556, _556), 0.0f, 1.0f)), 1.0f).xyz, _565, mad(float4(_540, sqrt(clamp(1.0f - dot(_540, _540), 0.0f, 1.0f)), 1.0f).xyz, _549, mad(float4(_508, sqrt(clamp(1.0f - dot(_508, _508), 0.0f, 1.0f)), 1.0f).xyz, _517, float4(_523, sqrt(clamp(1.0f - dot(_523, _523), 0.0f, 1.0f)), 1.0f).xyz * _532))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_390, cross(_387, _390), _387), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _574 = _573 * 1.0f;
    float4 _609 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _614 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _621 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _502, View_View_MaterialTextureMipBias);
    float4 _627 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _502, View_View_MaterialTextureMipBias);
    float3 _641 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _502, View_View_MaterialTextureMipBias).xyz, _565, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _502, View_View_MaterialTextureMipBias).xyz, _549, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _502, View_View_MaterialTextureMipBias).xyz, _517, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _502, View_View_MaterialTextureMipBias).xyz * _532))), 0.0f.xxx, 1.0f.xxx);
    float _645 = mad(clamp(mad(_627.y * Material_Material_PreshaderBuffer[6].x, _453, mad(_621.y, _450, mad(_609.y, _444, _614.y * _447))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _646 = clamp(mad(_627.x, _453, mad(_621.x, _450, mad(_609.x, _444, _614.x * _447))), 0.0f, 1.0f);
    uint _647 = in_var_PRIMITIVE_ID * 43u;
    float3 _691 = 0.0f.xxx;
    float _692 = 0.0f;
    float _693 = 0.0f;
    float _694 = 0.0f;
    float3 _695 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_647].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _663 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _667 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _663, 0.0f);
        float4 _670 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _663, 0.0f);
        float4 _673 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _663, 0.0f);
        float _683 = _673.w;
        _691 = normalize((_574 * _670.w) + ((_670.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _692 = mad(_645, _683, _673.z);
        _693 = mad(0.5f, _683, _673.y);
        _694 = _673.x;
        _695 = (_641 * _667.w) + _667.xyz;
    }
    else
    {
        _691 = _574;
        _692 = _645;
        _693 = 0.5f;
        _694 = 0.0f;
        _695 = _641;
    }
    uint _698 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_647].x);
    float _706 = _412.w;
    float3 _719 = ((_695 - (_695 * _694)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _726 = (lerp((0.07999999821186065673828125f * _693).xxx, _695, _694.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _727 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _732 = 0.0f.xxx;
    if (_727)
    {
        _732 = _719 + (_726 * 0.449999988079071044921875f);
    }
    else
    {
        _732 = _719;
    }
    bool3 _733 = _727.xxx;
    float3 _734 = float3(_733.x ? 0.0f.xxx.x : _726.x, _733.y ? 0.0f.xxx.y : _726.y, _733.z ? 0.0f.xxx.z : _726.z);
    float3 _780 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _743 = float4(_691, 1.0f);
        float4 _756 = _743.xyzz * _743.yzzx;
        _780 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _743), dot(View_SkyIrradianceEnvironmentMap[1u], _743), dot(View_SkyIrradianceEnvironmentMap[2u], _743)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _756), dot(View_SkyIrradianceEnvironmentMap[4u], _756), dot(View_SkyIrradianceEnvironmentMap[5u], _756))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_691.x, _691.x, -(_691.y * _691.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _780 = 0.0f.xxx;
    }
    float2 _786 = mad(_412.xy / _706.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _896 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _797 = int2(trunc(_786 * View_View_BufferSizeAndInvSize.xy));
        int _798 = _797.x;
        int _799 = _797.y;
        float4 _803 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_798, _799, 0).xy, 0));
        float _804 = _803.x;
        float _814 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _895 = 0.0f.xx;
        if ((abs((mad(_804, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_804, View_View_InvDeviceZToWorldZTransform.z, _814))) - _706) / _706) > 0.00999999977648258209228515625f)
        {
            float2 _827 = _786 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _831 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_798 - 1, _799, 0).xy, 0));
            float _832 = _831.x;
            float _838 = abs((mad(_832, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_832, View_View_InvDeviceZToWorldZTransform.z, _814))) - _706);
            bool _839 = _838 < 100000000.0f;
            bool2 _840 = _839.xx;
            float2 _841 = float2(_840.x ? _827.x : _786.x, _840.y ? _827.y : _786.y);
            float _842 = _839 ? _838 : 100000000.0f;
            float2 _845 = _786 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _849 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_798, _799 + 1, 0).xy, 0));
            float _850 = _849.x;
            float _856 = abs((mad(_850, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_850, View_View_InvDeviceZToWorldZTransform.z, _814))) - _706);
            bool _857 = _856 < _842;
            bool2 _858 = _857.xx;
            float2 _859 = float2(_858.x ? _845.x : _841.x, _858.y ? _845.y : _841.y);
            float _860 = _857 ? _856 : _842;
            float2 _862 = _786 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _866 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_798 + 1, _799, 0).xy, 0));
            float _867 = _866.x;
            float _873 = abs((mad(_867, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_867, View_View_InvDeviceZToWorldZTransform.z, _814))) - _706);
            bool _874 = _873 < _860;
            bool2 _875 = _874.xx;
            float2 _876 = float2(_875.x ? _862.x : _859.x, _875.y ? _862.y : _859.y);
            float2 _880 = _786 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _884 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_798, _799 - 1, 0).xy, 0));
            float _885 = _884.x;
            bool2 _893 = (abs((mad(_885, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_885, View_View_InvDeviceZToWorldZTransform.z, _814))) - _706) < (_874 ? _873 : _860)).xx;
            _895 = float2(_893.x ? _880.x : _876.x, _893.y ? _880.y : _876.y);
        }
        else
        {
            _895 = _786;
        }
        _896 = _895;
    }
    else
    {
        _896 = _786;
    }
    uint _902_dummy_parameter;
    uint2 _902 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _902_dummy_parameter);
    float _920 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_896 * float2(float(_902.x), float(_902.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_698 & 256u) != 0u), float((_698 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _929 = _646.xxx;
    uint2 _961 = uint2(_405 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _989 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _989 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_896 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _989 = 1.0f.xxxx;
    }
    float4 _990 = _989 * _989;
    uint _993 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_647].x);
    uint _1006 = (uint((_993 & 2048u) != 0u) | (uint((_993 & 4096u) != 0u) << 1u)) | (uint((_993 & 8192u) != 0u) << 2u);
    float4 _1298 = 0.0f.xxxx;
    float4 _1299 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1032 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1047 = dot(float4(float(_1032 & 1u), float((_1032 & 2u) >> 1u), float((_1032 & 4u) >> 2u), float((_1032 & 8u) >> 3u)), _990);
        bool _1049 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1050 = _1049 ? 1.0f : _1047;
        float _1063 = 0.0f;
        float _1064 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1057 = clamp(mad(_706, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1059 = lerp(_1049 ? _1047 : 1.0f, 1.0f, _1057 * _1057);
            _1063 = min(_1059, _1050) * _1050;
            _1064 = _1059 * _1050;
        }
        else
        {
            _1063 = 1.0f;
            _1064 = 1.0f;
        }
        float3 _1280 = 0.0f.xxx;
        float3 _1281 = 0.0f.xxx;
        [branch]
        if ((_1064 + _1063) > 0.0f)
        {
            float _1071 = max(_692, View_View_MinRoughness);
            float _1072 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1075 = rsqrt(_1072);
            float3 _1076 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1075;
            float _1077 = dot(_691, _1076);
            float _1095 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1084 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1072 + 1.0f)), 0.0f, 1.0f));
                float _1094 = 0.0f;
                if (_1077 < _1084)
                {
                    float _1090 = _1084 + max(_1077, -_1084);
                    _1094 = (_1090 * _1090) / (4.0f * _1084);
                }
                else
                {
                    _1094 = _1077;
                }
                _1095 = _1094;
            }
            else
            {
                _1095 = _1077;
            }
            float _1096 = clamp(_1095, 0.0f, 1.0f);
            float _1097 = max(_1071, View_View_MinRoughness);
            float _1102 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1075) * mad(-_1097, _1097, 1.0f), 0.0f, 1.0f);
            float _1104 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1075, 0.0f, 1.0f);
            float3 _1273 = 0.0f.xxx;
            float3 _1274 = 0.0f.xxx;
            [branch]
            if (_1096 > 0.0f)
            {
                float _1115 = dot(_691, _437);
                float _1116 = dot(_437, _1076);
                float _1118 = rsqrt(mad(2.0f, _1116, 2.0f));
                bool _1124 = _1102 > 0.0f;
                float _1203 = 0.0f;
                float _1204 = 0.0f;
                if (_1124)
                {
                    float _1129 = sqrt(mad(-_1102, _1102, 1.0f));
                    float _1130 = 2.0f * _1077;
                    float _1131 = -_1116;
                    float _1132 = mad(_1130, _1115, _1131);
                    float _1201 = 0.0f;
                    float _1202 = 0.0f;
                    if (_1132 >= _1129)
                    {
                        _1201 = 1.0f;
                        _1202 = abs(_1115);
                    }
                    else
                    {
                        float _1137 = -_1132;
                        float _1140 = _1102 * rsqrt(mad(_1137, _1132, 1.0f));
                        float _1141 = mad(_1137, _1077, _1115);
                        float _1145 = mad(_1137, _1116, mad(2.0f * _1115, _1115, -1.0f));
                        float _1156 = _1140 * sqrt(clamp(mad(_1130 * _1115, _1116, mad(_1131, _1116, mad(-_1115, _1115, mad(-_1077, _1077, 1.0f)))), 0.0f, 1.0f));
                        float _1158 = (_1156 * 2.0f) * _1115;
                        float _1159 = mad(_1077, _1129, _1115);
                        float _1160 = mad(_1140, _1141, _1159);
                        float _1162 = mad(_1140, _1145, mad(_1116, _1129, 1.0f));
                        float _1163 = _1156 * _1162;
                        float _1164 = _1160 * _1162;
                        float _1169 = _1164 * mad(-0.5f, _1163, (0.25f * _1158) * _1160);
                        float _1179 = mad(_1160, mad(_1159, _1162 * _1162, _1164 * mad(-0.5f, mad(_1116, _1129, _1162), -0.5f)), mad(_1163, _1163, (_1158 * _1160) * mad(_1158, _1160, _1163 * (-2.0f))));
                        float _1183 = (2.0f * _1169) / mad(_1179, _1179, _1169 * _1169);
                        float _1184 = _1183 * _1179;
                        float _1186 = mad(-_1183, _1169, 1.0f);
                        float _1192 = mad(_1116, _1129, mad(_1186, _1140 * _1145, _1184 * _1158));
                        float _1194 = rsqrt(mad(2.0f, _1192, 2.0f));
                        _1201 = clamp((mad(_1077, _1129, mad(_1186, _1140 * _1141, _1184 * _1156)) + _1115) * _1194, 0.0f, 1.0f);
                        _1202 = clamp(mad(_1194, _1192, _1194), 0.0f, 1.0f);
                    }
                    _1203 = _1201;
                    _1204 = _1202;
                }
                else
                {
                    _1203 = clamp((_1077 + _1115) * _1118, 0.0f, 1.0f);
                    _1204 = clamp(mad(_1118, _1116, _1118), 0.0f, 1.0f);
                }
                float _1207 = clamp(abs(_1115) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1209 = 1.0f.xxx * _1096;
                float3 _1271 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1271 = 0.0f.xxx;
                }
                else
                {
                    float _1216 = _1071 * _1071;
                    float _1226 = 0.0f;
                    if (_1104 > 0.0f)
                    {
                        _1226 = clamp(mad(_1216, _1216, (_1104 * _1104) / mad(_1204, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1226 = _1216 * _1216;
                    }
                    float _1240 = 0.0f;
                    if (_1124)
                    {
                        _1240 = _1226 / (_1226 + (((0.25f * _1102) * mad(3.0f, asfloat(532487669 + (asint(_1226) >> 1)), _1102)) / (_1204 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1240 = 1.0f;
                    }
                    float _1243 = mad(mad(_1203, _1226, -_1203), _1203, 1.0f);
                    float _1248 = sqrt(_1226);
                    float _1249 = 1.0f - _1248;
                    float _1255 = 1.0f - _1204;
                    float _1256 = _1255 * _1255;
                    float _1257 = _1256 * _1256;
                    _1271 = _1209 * (((clamp(50.0f * _734.y, 0.0f, 1.0f) * (_1257 * _1255)).xxx + (_734 * mad(-_1257, _1255, 1.0f))) * (((_1226 / ((3.1415927410125732421875f * _1243) * _1243)) * _1240) * (0.5f / mad(_1096, mad(_1207, _1249, _1248), _1207 * mad(_1096, _1249, _1248)))));
                }
                _1273 = ((_732 * 0.3183098733425140380859375f) * _1209) * 1.0f;
                _1274 = _1271;
            }
            else
            {
                _1273 = 0.0f.xxx;
                _1274 = 0.0f.xxx;
            }
            float3 _1277 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1064;
            _1280 = mad(_1273 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1277, 0.0f.xxx);
            _1281 = (_1274 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1277;
        }
        else
        {
            _1280 = 0.0f.xxx;
            _1281 = 0.0f.xxx;
        }
        float4 _1285 = float4(_1280, 0.0f);
        float4 _1289 = float4(_1281, 0.0f);
        float4 _1296 = 0.0f.xxxx;
        float4 _1297 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _1006) != 0u)
        {
            _1296 = float4(_1285.x, _1285.y, _1285.z, _1285.w);
            _1297 = float4(_1289.x, _1289.y, _1289.z, _1289.w);
        }
        else
        {
            _1296 = 0.0f.xxxx;
            _1297 = 0.0f.xxxx;
        }
        _1298 = _1296;
        _1299 = _1297;
    }
    else
    {
        _1298 = 0.0f.xxxx;
        _1299 = 0.0f.xxxx;
    }
    uint _1300 = ((((min(uint(max(0.0f, log2(mad(_328, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _961.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _961.x) * 2u;
    uint _1310 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1300 + 1u] & 1073741823u;
    uint _1313 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1300] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1315 = 0.0f.xxxx;
    float4 _1318 = 0.0f.xxxx;
    _1315 = _1298;
    _1318 = _1299;
    float4 _1316 = 0.0f.xxxx;
    float4 _1319 = 0.0f.xxxx;
    [loop]
    for (uint _1320 = 0u; _1320 < _1313; _1315 = _1316, _1318 = _1319, _1320++)
    {
        uint _1329 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1310 + _1320).x * 6u;
        uint _1332 = _1329 + 1u;
        uint _1335 = _1329 + 2u;
        uint _1338 = _1329 + 3u;
        uint _1341 = _1329 + 4u;
        uint _1345 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1335].w);
        uint _1351 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1332].y);
        uint _1367 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1338].z);
        float2 _1369 = spvUnpackHalf2x16(_1367 & 65535u);
        float _1370 = _1369.x;
        float2 _1373 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1338].w));
        float _1374 = _1373.x;
        bool _1379 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1332].w == 0.0f;
        uint _1381 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1341].w);
        uint _1394 = _1345 >> 4u;
        float3 _1410 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1329].xyz - _421;
        float _1411 = dot(_1410, _1410);
        float _1428 = 0.0f;
        if (_1379)
        {
            float _1423 = _1411 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1329].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1329].w);
            float _1426 = clamp(mad(-_1423, _1423, 1.0f), 0.0f, 1.0f);
            _1428 = _1426 * _1426;
        }
        else
        {
            float3 _1417 = _1410 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1329].w;
            _1428 = pow(1.0f - clamp(dot(_1417, _1417), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1332].w);
        }
        float _1439 = 0.0f;
        if (((_1345 >> 16u) & 3u) == 2u)
        {
            float _1436 = clamp((dot(_1410 * rsqrt(_1411), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1335].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1338].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1338].y, 0.0f, 1.0f);
            _1439 = _1428 * (_1436 * _1436);
        }
        else
        {
            _1439 = _1428;
        }
        float3 _1736 = 0.0f.xxx;
        float3 _1737 = 0.0f.xxx;
        [branch]
        if (_1439 > 0.0f)
        {
            float _1447 = 0.0f;
            [branch]
            if (uint(int((_1345 & 255u) != 0u)) != 0u)
            {
                _1447 = dot(float4(float(_1394 & 1u), float((_1394 & 2u) >> 1u), float((_1394 & 4u) >> 2u), float((_1394 & 8u) >> 3u)), _990);
            }
            else
            {
                _1447 = 1.0f;
            }
            float3 _1734 = 0.0f.xxx;
            float3 _1735 = 0.0f.xxx;
            [branch]
            if ((_1447 + _1447) > 0.0f)
            {
                float3 _1453 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1341].xyz * (0.5f * _1374);
                float3 _1454 = _1410 - _1453;
                float3 _1455 = _1410 + _1453;
                float _1458 = max(_692, View_View_MinRoughness);
                bool _1459 = _1374 > 0.0f;
                float _1484 = 0.0f;
                float _1485 = 0.0f;
                float _1486 = 0.0f;
                [branch]
                if (_1459)
                {
                    float _1471 = rsqrt(dot(_1454, _1454));
                    float _1472 = rsqrt(dot(_1455, _1455));
                    float _1473 = _1471 * _1472;
                    float _1475 = dot(_1454, _1455) * _1473;
                    _1484 = _1475;
                    _1485 = 0.5f * mad(dot(_691, _1454), _1471, dot(_691, _1455) * _1472);
                    _1486 = _1473 / mad(_1471, _1472, mad(_1475, 0.5f, 0.5f));
                }
                else
                {
                    float _1463 = dot(_1454, _1454);
                    _1484 = 1.0f;
                    _1485 = dot(_691, _1454 * rsqrt(_1463));
                    _1486 = 1.0f / (_1463 + 1.0f);
                }
                float _1504 = 0.0f;
                if (_1370 > 0.0f)
                {
                    float _1493 = sqrt(clamp((_1370 * _1370) * _1486, 0.0f, 1.0f));
                    float _1503 = 0.0f;
                    if (_1485 < _1493)
                    {
                        float _1499 = _1493 + max(_1485, -_1493);
                        _1503 = (_1499 * _1499) / (4.0f * _1493);
                    }
                    else
                    {
                        _1503 = _1485;
                    }
                    _1504 = _1503;
                }
                else
                {
                    _1504 = _1485;
                }
                float _1505 = clamp(_1504, 0.0f, 1.0f);
                float3 _1523 = 0.0f.xxx;
                if (_1459)
                {
                    float3 _1510 = reflect(-_437, _691);
                    float3 _1511 = _1455 - _1454;
                    float _1512 = dot(_1510, _1511);
                    _1523 = _1454 + (_1511 * clamp(dot(_1454, (_1510 * _1512) - _1511) / mad(_1374, _1374, -(_1512 * _1512)), 0.0f, 1.0f));
                }
                else
                {
                    _1523 = _1454;
                }
                float _1525 = rsqrt(dot(_1523, _1523));
                float3 _1526 = _1523 * _1525;
                float _1527 = max(_1458, View_View_MinRoughness);
                float _1532 = clamp((_1370 * _1525) * mad(-_1527, _1527, 1.0f), 0.0f, 1.0f);
                float _1534 = clamp(spvUnpackHalf2x16(_1367 >> 16u).x * _1525, 0.0f, 1.0f);
                float3 _1727 = 0.0f.xxx;
                float3 _1728 = 0.0f.xxx;
                [branch]
                if (_1505 > 0.0f)
                {
                    float _1545 = dot(_691, _1526);
                    float _1546 = dot(_691, _437);
                    float _1547 = dot(_437, _1526);
                    float _1549 = rsqrt(mad(2.0f, _1547, 2.0f));
                    bool _1555 = _1532 > 0.0f;
                    float _1634 = 0.0f;
                    float _1635 = 0.0f;
                    if (_1555)
                    {
                        float _1560 = sqrt(mad(-_1532, _1532, 1.0f));
                        float _1561 = 2.0f * _1545;
                        float _1562 = -_1547;
                        float _1563 = mad(_1561, _1546, _1562);
                        float _1632 = 0.0f;
                        float _1633 = 0.0f;
                        if (_1563 >= _1560)
                        {
                            _1632 = 1.0f;
                            _1633 = abs(_1546);
                        }
                        else
                        {
                            float _1568 = -_1563;
                            float _1571 = _1532 * rsqrt(mad(_1568, _1563, 1.0f));
                            float _1572 = mad(_1568, _1545, _1546);
                            float _1576 = mad(_1568, _1547, mad(2.0f * _1546, _1546, -1.0f));
                            float _1587 = _1571 * sqrt(clamp(mad(_1561 * _1546, _1547, mad(_1562, _1547, mad(-_1546, _1546, mad(-_1545, _1545, 1.0f)))), 0.0f, 1.0f));
                            float _1589 = (_1587 * 2.0f) * _1546;
                            float _1590 = mad(_1545, _1560, _1546);
                            float _1591 = mad(_1571, _1572, _1590);
                            float _1593 = mad(_1571, _1576, mad(_1547, _1560, 1.0f));
                            float _1594 = _1587 * _1593;
                            float _1595 = _1591 * _1593;
                            float _1600 = _1595 * mad(-0.5f, _1594, (0.25f * _1589) * _1591);
                            float _1610 = mad(_1591, mad(_1590, _1593 * _1593, _1595 * mad(-0.5f, mad(_1547, _1560, _1593), -0.5f)), mad(_1594, _1594, (_1589 * _1591) * mad(_1589, _1591, _1594 * (-2.0f))));
                            float _1614 = (2.0f * _1600) / mad(_1610, _1610, _1600 * _1600);
                            float _1615 = _1614 * _1610;
                            float _1617 = mad(-_1614, _1600, 1.0f);
                            float _1623 = mad(_1547, _1560, mad(_1617, _1571 * _1576, _1615 * _1589));
                            float _1625 = rsqrt(mad(2.0f, _1623, 2.0f));
                            _1632 = clamp((mad(_1545, _1560, mad(_1617, _1571 * _1572, _1615 * _1587)) + _1546) * _1625, 0.0f, 1.0f);
                            _1633 = clamp(mad(_1625, _1623, _1625), 0.0f, 1.0f);
                        }
                        _1634 = _1632;
                        _1635 = _1633;
                    }
                    else
                    {
                        _1634 = clamp((_1545 + _1546) * _1549, 0.0f, 1.0f);
                        _1635 = clamp(mad(_1549, _1547, _1549), 0.0f, 1.0f);
                    }
                    float _1638 = clamp(abs(_1546) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1641 = 1.0f.xxx * ((_1379 ? _1486 : 1.0f) * _1505);
                    float3 _1725 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1374, _1370), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1725 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1648 = _1458 * _1458;
                        float _1658 = 0.0f;
                        if (_1534 > 0.0f)
                        {
                            _1658 = clamp(mad(_1648, _1648, (_1534 * _1534) / mad(_1635, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1658 = _1648 * _1648;
                        }
                        float _1672 = 0.0f;
                        float _1673 = 0.0f;
                        if (_1555)
                        {
                            float _1670 = _1658 + (((0.25f * _1532) * mad(3.0f, asfloat(532487669 + (asint(_1658) >> 1)), _1532)) / (_1635 + 0.001000000047497451305389404296875f));
                            _1672 = _1658 / _1670;
                            _1673 = _1670;
                        }
                        else
                        {
                            _1672 = 1.0f;
                            _1673 = _1658;
                        }
                        float _1694 = 0.0f;
                        if (_1484 < 1.0f)
                        {
                            float _1680 = sqrt((1.00010001659393310546875f - _1484) / (1.0f + _1484));
                            _1694 = _1672 * sqrt(_1673 / (_1673 + (((0.25f * _1680) * mad(3.0f, asfloat(532487669 + (asint(_1673) >> 1)), _1680)) / (_1635 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1694 = _1672;
                        }
                        float _1697 = mad(mad(_1634, _1658, -_1634), _1634, 1.0f);
                        float _1702 = sqrt(_1658);
                        float _1703 = 1.0f - _1702;
                        float _1709 = 1.0f - _1635;
                        float _1710 = _1709 * _1709;
                        float _1711 = _1710 * _1710;
                        _1725 = _1641 * (((clamp(50.0f * _734.y, 0.0f, 1.0f) * (_1711 * _1709)).xxx + (_734 * mad(-_1711, _1709, 1.0f))) * (((_1658 / ((3.1415927410125732421875f * _1697) * _1697)) * _1694) * (0.5f / mad(_1505, mad(_1638, _1703, _1702), _1638 * mad(_1505, _1703, _1702)))));
                    }
                    _1727 = ((_732 * 0.3183098733425140380859375f) * _1641) * 1.0f;
                    _1728 = _1725;
                }
                else
                {
                    _1727 = 0.0f.xxx;
                    _1728 = 0.0f.xxx;
                }
                float3 _1731 = ((float3(float((_1351 >> 0u) & 1023u), float((_1351 >> 10u) & 1023u), float((_1351 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1332].x) * _1439) * _1447;
                _1734 = mad(_1727 * (float((_1381 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1731, 0.0f.xxx);
                _1735 = (_1728 * (float(_1381 & 1023u) * 0.000977517105638980865478515625f)) * _1731;
            }
            else
            {
                _1734 = 0.0f.xxx;
                _1735 = 0.0f.xxx;
            }
            _1736 = _1734;
            _1737 = _1735;
        }
        else
        {
            _1736 = 0.0f.xxx;
            _1737 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1345 >> 8u) & 7u) & _1006) != 0u)
        {
            _1316 = _1315 + float4(_1736, 0.0f);
            _1319 = _1318 + float4(_1737, 0.0f);
        }
        else
        {
            _1316 = _1315;
            _1319 = _1318;
        }
    }
    bool4 _1755 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1765 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_647].w) & 65535u);
    float3 _1769 = (_691 * (2.0f * dot(_437, _691))) - _437;
    float _1776 = mad(-1.2000000476837158203125f, log2(max(_692, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1790 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1769, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1765].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1776);
    float _1794 = 1.0f - _1790.w;
    float3 _1821 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1821 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1769, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1776).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1821 = 0.0f.xxx;
    }
    float4 _1827 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _692) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1828 = _1827.x;
    float2 _1837 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1828 * _1828, exp2((-9.27999973297119140625f) * clamp(dot(_691, _437), 0.0f, 1.0f))), _1828, _1827.y)) + _1827.zw;
    bool _1864 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2288 = 0.0f.xxxx;
    if (_1864)
    {
        uint2 _1876 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1878 = normalize(_421 - View_View_TranslatedWorldCameraOrigin);
        uint _1879 = _1876.x;
        uint4 _1883 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1879, _1876.y, 0u), 0u));
        uint _1884 = _1883.x;
        float4 _1886 = 0.0f.xxxx;
        _1886 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1887 = 0.0f.xxxx;
        for (int _1889 = 0; uint(_1889) < _1884; _1886 = _1887, _1889++)
        {
            uint _1900 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1879, _1876.y, uint(1 + _1889)), 0u)).x * 3u;
            float4 _1902 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1900);
            float4 _1904 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1900 + 1u);
            float4 _1906 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1900 + 2u);
            float3 _1907 = _1902.xyz;
            float _1908 = _1902.w;
            float _1909 = 1.0f / _1908;
            uint _1911 = asuint(_1904.x);
            float2 _1917 = float2(spvUnpackHalf2x16(_1911).x, spvUnpackHalf2x16(_1911 >> 16u).x);
            float3 _1918 = float3(_1917.x, _1917.y, _299.z);
            uint _1920 = asuint(_1904.y);
            _1918.z = spvUnpackHalf2x16(_1920).x;
            float3 _1927 = 0.0f.xxx;
            _1927.x = spvUnpackHalf2x16(_1920 >> 16u).x;
            uint _1929 = asuint(_1904.z);
            float2 _1935 = float2(spvUnpackHalf2x16(_1929).x, spvUnpackHalf2x16(_1929 >> 16u).x);
            float3 _1936 = float3(_1927.x, _1935.x, _1935.y);
            float3x3 _1941 = float3x3(_1918 * _1909, _1936 * _1909, cross(_1918, _1936) * _1909);
            uint _1943 = asuint(_1906.x);
            float2 _1946 = spvUnpackHalf2x16((_1943 >> 17u) & 32752u);
            float _1947 = _1946.x;
            float2 _1950 = spvUnpackHalf2x16((_1943 >> 6u) & 32752u);
            float _1951 = _1950.x;
            float2 _1954 = spvUnpackHalf2x16((_1943 << 5u) & 32736u);
            float _1955 = _1954.x;
            uint _1957 = asuint(_1906.y);
            float3 _1975 = 0.0f.xxx;
            if (_1957 > 0u)
            {
                _1975 = float3(spvUnpackHalf2x16((_1957 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1957 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1957 << 5u) & 32736u).x);
            }
            else
            {
                _1975 = 0.0f.xxx;
            }
            uint _1977 = asuint(_1906.z);
            float _1992 = float((_1977 >> 24u) & 255u);
            float _1993 = _1992 * 0.0039215688593685626983642578125f;
            float3 _2000 = mul(View_View_TranslatedWorldCameraOrigin - _1907, _1941);
            float3 _2002 = normalize(mul(_1878, _1941));
            float _2004 = dot(_2002, _2002);
            float _2005 = dot(_2002, _2000);
            float _2006 = 2.0f * _2005;
            float _2011 = mad(_2006, _2006, -((4.0f * _2004) * mad(-1.0f, 1.0f, dot(_2000, _2000))));
            float2 _2023 = 0.0f.xx;
            [flatten]
            if (_2011 >= 0.0f)
            {
                _2023 = ((_2005 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2011))) / (2.0f * _2004).xx;
            }
            else
            {
                _2023 = (-1.0f).xx;
            }
            float3 _2029 = mul(_421 - _1907, _1941) - _2000;
            float2 _2033 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1909, _2023), sqrt(dot(_2029, _2029)).xx);
            float _2183 = 0.0f;
            float3 _2184 = 0.0f.xxx;
            if (any(bool2(_2033.x > 0.0f.xx.x, _2033.y > 0.0f.xx.y)))
            {
                float2 _2054 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2044 = dot(_1878, View_View_ViewForward);
                    _2054 = max(_2033, ((View_View_VolumetricFogMaxDistance * ((_2044 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2044) : 0.0f)) * _1909).xx);
                }
                else
                {
                    _2054 = _2033;
                }
                float _2059 = max(0.0f, abs(_2054.y - _2054.x));
                float _2181 = 0.0f;
                float3 _2182 = 0.0f.xxx;
                if (_2059 > 0.0f)
                {
                    float3 _2064 = _2000 + (_2002 * _2054.x);
                    float _2100 = 0.0f;
                    if (_1947 > 0.0f)
                    {
                        float _2068 = dot(_2002, _2064);
                        float _2069 = dot(_2064, _2064);
                        float _2070 = _2069 - 1.0f;
                        float _2072 = mad(_2068, _2068, 1.0f - _2069);
                        float _2099 = 0.0f;
                        if (_2072 >= 0.0f)
                        {
                            float _2076 = sqrt(_2072);
                            float _2077 = -_2068;
                            float _2080 = max(_2077 - _2076, 0.0f);
                            float _2082 = min(max(_2077 + _2076, 0.0f), _2059);
                            float _2083 = _2080 * _2080;
                            float _2084 = _2082 * _2082;
                            _2099 = max(0.0f, (_1947 * ((-mad(_2084 * _2082, 0.3333333432674407958984375f, mad(_2070, _2082, _2068 * _2084))) - (-mad(_2083 * _2080, 0.3333333432674407958984375f, mad(_2070, _2080, _2068 * _2083))))) * 0.75f);
                        }
                        else
                        {
                            _2099 = 0.0f;
                        }
                        _2100 = _2099;
                    }
                    else
                    {
                        _2100 = 0.0f;
                    }
                    float _2125 = 0.0f;
                    if (_1951 > 0.0f)
                    {
                        float _2106 = _2002.z;
                        float _2112 = (abs(_2106) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2106 >= 0.0f) ? 1.0f : (-1.0f))) : _2106;
                        float _2115 = max(-80.0f, (_2064.z - _1906.w) * _1955);
                        _2125 = (_1951 / (_1955 * _2112)) * (exp(-_2115) - exp(-mad(_2112 * _2059, _1955, _2115)));
                    }
                    else
                    {
                        _2125 = 0.0f;
                    }
                    float _2136 = exp((log(mad(exp(-_2100) - 1.0f, 1.0f - exp(-_2125), 1.0f)) * _1908) * 0.00999999977648258209228515625f);
                    float _2140 = _1992 * (-0.0039215688593685626983642578125f);
                    float _2147 = mad(_1992 * (-0.007843137718737125396728515625f), dot(_1878, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2140, _2140, 1.0f));
                    float3 _2152 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1993, _2140, 1.0f) / ((12.56637096405029296875f * _2147) * sqrt(_2147)));
                    float3 _2178 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2163 = float4(_1878 * _2140, 1.0f);
                        _2178 = _2152 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2163), dot(View_SkyIrradianceEnvironmentMap[1u], _2163), dot(View_SkyIrradianceEnvironmentMap[2u], _2163)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2178 = _2152;
                    }
                    _2181 = _2136;
                    _2182 = mad(_2178, float4(float((_1977 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1977 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1977 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1993).xyz, _1975) * (1.0f - _2136);
                }
                else
                {
                    _2181 = 1.0f;
                    _2182 = 0.0f.xxx;
                }
                _2183 = _2181;
                _2184 = _2182;
            }
            else
            {
                _2183 = 1.0f;
                _2184 = 0.0f.xxx;
            }
            _1887 = float4((_1886.xyz * _2183) + float4(_2184, _2183).xyz, _1886.w * _2183);
        }
        float _2204 = _1886.w * in_var_TEXCOORD7.w;
        float4 _2212 = float4(_93, 1.0f);
        precise float4 _97 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _98 = _2212 + _97;
        precise float4 _99 = _98 - _2212;
        precise float4 _100 = _98 - _99;
        precise float4 _101 = _2212 - _100;
        precise float4 _102 = _97 - _99;
        precise float4 _103 = _101 + _102;
        float4 _2223 = mul(_98 + (float4(_96, 0.0f) + _103), View_View_RelativeWorldToClip);
        float _2224 = _2223.w;
        float4 _2287 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2287 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2270 = 0.0f.xxxx;
            float _2271 = 0.0f;
            if (_1864)
            {
                float4 _2266 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2223.xy / _2224.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2224, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2268 = _2266.xyz * View_View_OneOverPreExposure;
                _2270 = float4(_2268.x, _2268.y, _2268.z, _2266.w);
                _2271 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2270 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2271 = 0.0f;
            }
            float4 _2276 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2270, clamp((_706 - _2271) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2279 = _2276.w;
            _2287 = float4(_2276.xyz + (float4(_1886.xyz + (in_var_TEXCOORD7.xyz * _1886.w), _2204).xyz * _2279), _2279 * _2204);
            break;
        } while(false);
        _2288 = _2287;
    }
    else
    {
        _2288 = in_var_TEXCOORD7;
    }
    float3 _2295 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].yzw, Material_Material_PreshaderBuffer[5].x.xxx), 0.0f.xxx);
    float3 _2364 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _104 = Scene_GPUScene_GPUScenePrimitiveSceneData[_647 + 18u].xyz * 2097152.0f;
        precise float3 _105 = _104 + Scene_GPUScene_GPUScenePrimitiveSceneData[_647 + 19u].xyz;
        precise float3 _106 = _105 - _104;
        precise float3 _107 = Scene_GPUScene_GPUScenePrimitiveSceneData[_647 + 19u].xyz - _106;
        uint _2321 = _647 + 32u;
        precise float3 _108 = _93 - _105;
        precise float3 _109 = _96 - _107;
        precise float3 _110 = _108 + _109;
        float3 _2326 = abs(_110);
        float3 _2327 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_647 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_647 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_647 + 27u].w) + 1.0f.xxx;
        float3 _2363 = 0.0f.xxx;
        if (any(bool3(_2326.x > _2327.x, _2326.y > _2327.y, _2326.z > _2327.z)))
        {
            float3 _2359 = frac(dot(frac(frac(_93 * 1.52587890625e-05f.xxx) + frac(_96 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2363 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2359.x > 0.5f.xxx.x, _2359.y > 0.5f.xxx.y, _2359.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2349 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2321].x > 0.0f)
            {
                float3 _2337 = abs(_421 - in_var_TEXCOORD9);
                _2349 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2337.x, max(_2337.y, _2337.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2321].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2349 = _2295;
            }
            _2363 = _2349;
        }
        _2364 = _2363;
    }
    else
    {
        _2364 = _2295;
    }
    float3 _2366 = mad((_780 * _920) * _732, max(_929, ((((((_695 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _646) + ((_695 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _646) + ((_695 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _646), lerp(mad((((float4(_1790.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1765].x, _1794).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1821 * _1794)).xyz * ((_734 * _1837.x) + (clamp(50.0f * _734.y, 0.0f, 1.0f) * _1837.y).xxx)) * _920, max(_929, ((((((_734 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _646) + ((_734 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _646) + ((_734 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _646), float4(_1755.x ? 0.0f.xxxx.x : _1315.x, _1755.y ? 0.0f.xxxx.y : _1315.y, _1755.z ? 0.0f.xxxx.z : _1315.z, _1755.w ? 0.0f.xxxx.w : _1315.w).xyz + float4(_1755.x ? 0.0f.xxxx.x : _1318.x, _1755.y ? 0.0f.xxxx.y : _1318.y, _1755.z ? 0.0f.xxxx.z : _1318.z, _1755.w ? 0.0f.xxxx.w : _1318.w).xyz), _732 + (_734 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2364;
    float4 _2374 = float4((_2366 * _2288.w) + _2288.xyz, 0.0f);
    _2374.w = 0.0f;
    float4 _2378 = _2374 * View_View_PreExposure;
    float3 _2383 = min(_2378.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2383.x, _2383.y, _2383.z, _2378.w);
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
