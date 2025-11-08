#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _299 = 0.0f;
static float _302 = 0.0f;
static float3 _303 = 0.0f.xxx;

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
    float _332 = 1.0f / gl_FragCoord.w;
    float4 _378 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _382 = mad(float2(_378.zw), 2.0f.xx, (-1.0f).xx);
    float _386 = sqrt(max(1.0f - dot(_382, _382), 0.0f));
    float _387 = _382.x;
    float3 _389 = float3(_387, _382.y, _386);
    float3 _392 = normalize(float3(_386, 0.0f, -_387));
    float2 _407 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _414 = float4(mad(_407, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _302, 1.0f) * _332;
    float4 _419 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _423 = _419.xyz / _419.w.xxx;
    float3 _424 = _423 - View_View_RelativePreViewTranslationTO;
    precise float3 _96 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _424);
    precise float3 _99 = _424 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _96);
    bool _426 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _427 = -View_View_ViewForward;
    float3 _429 = normalize(-_423);
    float3 _439 = float3(_426 ? _427.x : _429.x, _426 ? _427.y : _429.y, _426 ? _427.z : _429.z);
    float4 _443 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _446 = dot(_443, Material_Material_PreshaderBuffer[0]);
    float _449 = dot(_443, Material_Material_PreshaderBuffer[1]);
    float _452 = dot(_443, Material_Material_PreshaderBuffer[2]);
    float _455 = dot(_443, Material_Material_PreshaderBuffer[3]);
    float4 _458 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _461 = dot(_458, Material_Material_PreshaderBuffer[4]);
    float2 _464 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float4 _472 = Material_Texture2D_2.Sample(View_MaterialTextureBilinearWrapedSampler, _464 * Material_Material_PreshaderBuffer[5].x.xx);
    float _476 = _472.x * Material_Material_PreshaderBuffer[5].y;
    float4 _488 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(mad(floor(_476) + Material_Material_PreshaderBuffer[5].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _492 = Material_Material_PreshaderBuffer[5].w.xx;
    float2 _493 = mad(_488.xy, _492, _464);
    float2 _495 = mad(_488.zw, _492, _464);
    float2 _497 = ddy(_464);
    float2 _498 = ddx(_464);
    float2 _510 = lerp(_493, _495, clamp(round(mad(0.5f, (Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _495, _498, _497) - Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _493, _498, _497)).x, frac(_476))), 0.0f, 1.0f).xx);
    float2 _516 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _510, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _525 = _446.xxx;
    float2 _531 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _510, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _540 = _449.xxx;
    float2 _548 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _510, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _557 = _452.xxx;
    float2 _562 = _510 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _568 = mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _562, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _577 = _455.xxx;
    float2 _584 = mad(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _510, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _593 = _461.xxx;
    float3 _601 = normalize(mul(normalize((mad(float4(_584, sqrt(clamp(1.0f - dot(_584, _584), 0.0f, 1.0f)), 1.0f).xyz, _593, mad(float4(_568, sqrt(clamp(1.0f - dot(_568, _568), 0.0f, 1.0f)), 1.0f).xyz, _577, mad(float4(_548, sqrt(clamp(1.0f - dot(_548, _548), 0.0f, 1.0f)), 1.0f).xyz, _557, mad(float4(_516, sqrt(clamp(1.0f - dot(_516, _516), 0.0f, 1.0f)), 1.0f).xyz, _525, float4(_531, sqrt(clamp(1.0f - dot(_531, _531), 0.0f, 1.0f)), 1.0f).xyz * _540)))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_392, cross(_389, _392), _389), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _602 = _601 * 1.0f;
    float4 _637 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _510, View_View_MaterialTextureMipBias);
    float4 _643 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _510, View_View_MaterialTextureMipBias);
    float4 _648 = Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, _510, View_View_MaterialTextureMipBias);
    float4 _655 = Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, _510, View_View_MaterialTextureMipBias);
    float4 _661 = Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _562, View_View_MaterialTextureMipBias);
    float4 _667 = Material_Texture2D_19.SampleBias(Material_Texture2D_19Sampler, _510, View_View_MaterialTextureMipBias);
    float3 _683 = clamp(mad(_637.xyz, _593, mad(Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _562, View_View_MaterialTextureMipBias).xyz, _577, mad(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _510, View_View_MaterialTextureMipBias).xyz, _557, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _510, View_View_MaterialTextureMipBias).xyz, _525, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _510, View_View_MaterialTextureMipBias).xyz * _540)))), 0.0f.xxx, 1.0f.xxx);
    float _687 = mad(clamp(mad(_667.y * Material_Material_PreshaderBuffer[7].w, _461, mad(_661.y, _455, mad(_655.y, _452, mad(_643.y, _446, _648.y * _449)))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _688 = clamp(mad(_667.x, _461, mad(_661.x, _455, mad(_655.x, _452, mad(_643.x, _446, _648.x * _449)))), 0.0f, 1.0f);
    uint _689 = in_var_PRIMITIVE_ID * 43u;
    float3 _733 = 0.0f.xxx;
    float _734 = 0.0f;
    float _735 = 0.0f;
    float _736 = 0.0f;
    float3 _737 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_689].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _705 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _709 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _705, 0.0f);
        float4 _712 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _705, 0.0f);
        float4 _715 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _705, 0.0f);
        float _725 = _715.w;
        _733 = normalize((_602 * _712.w) + ((_712.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _734 = mad(_687, _725, _715.z);
        _735 = mad(0.5f, _725, _715.y);
        _736 = _715.x;
        _737 = (_683 * _709.w) + _709.xyz;
    }
    else
    {
        _733 = _602;
        _734 = _687;
        _735 = 0.5f;
        _736 = 0.0f;
        _737 = _683;
    }
    uint _740 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_689].x);
    float _748 = _414.w;
    float3 _761 = ((_737 - (_737 * _736)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _768 = (lerp((0.07999999821186065673828125f * _735).xxx, _737, _736.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _769 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _774 = 0.0f.xxx;
    if (_769)
    {
        _774 = _761 + (_768 * 0.449999988079071044921875f);
    }
    else
    {
        _774 = _761;
    }
    bool3 _775 = _769.xxx;
    float3 _776 = float3(_775.x ? 0.0f.xxx.x : _768.x, _775.y ? 0.0f.xxx.y : _768.y, _775.z ? 0.0f.xxx.z : _768.z);
    float2 _782 = mad(_414.xy / _748.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _892 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _793 = int2(trunc(_782 * View_View_BufferSizeAndInvSize.xy));
        int _794 = _793.x;
        int _795 = _793.y;
        float4 _799 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794, _795, 0).xy, 0));
        float _800 = _799.x;
        float _810 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _891 = 0.0f.xx;
        if ((abs((mad(_800, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_800, View_View_InvDeviceZToWorldZTransform.z, _810))) - _748) / _748) > 0.00999999977648258209228515625f)
        {
            float2 _823 = _782 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _827 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794 - 1, _795, 0).xy, 0));
            float _828 = _827.x;
            float _834 = abs((mad(_828, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_828, View_View_InvDeviceZToWorldZTransform.z, _810))) - _748);
            bool _835 = _834 < 100000000.0f;
            bool2 _836 = _835.xx;
            float2 _837 = float2(_836.x ? _823.x : _782.x, _836.y ? _823.y : _782.y);
            float _838 = _835 ? _834 : 100000000.0f;
            float2 _841 = _782 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _845 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794, _795 + 1, 0).xy, 0));
            float _846 = _845.x;
            float _852 = abs((mad(_846, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_846, View_View_InvDeviceZToWorldZTransform.z, _810))) - _748);
            bool _853 = _852 < _838;
            bool2 _854 = _853.xx;
            float2 _855 = float2(_854.x ? _841.x : _837.x, _854.y ? _841.y : _837.y);
            float _856 = _853 ? _852 : _838;
            float2 _858 = _782 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _862 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794 + 1, _795, 0).xy, 0));
            float _863 = _862.x;
            float _869 = abs((mad(_863, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_863, View_View_InvDeviceZToWorldZTransform.z, _810))) - _748);
            bool _870 = _869 < _856;
            bool2 _871 = _870.xx;
            float2 _872 = float2(_871.x ? _858.x : _855.x, _871.y ? _858.y : _855.y);
            float2 _876 = _782 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _880 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794, _795 - 1, 0).xy, 0));
            float _881 = _880.x;
            bool2 _889 = (abs((mad(_881, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_881, View_View_InvDeviceZToWorldZTransform.z, _810))) - _748) < (_870 ? _869 : _856)).xx;
            _891 = float2(_889.x ? _876.x : _872.x, _889.y ? _876.y : _872.y);
        }
        else
        {
            _891 = _782;
        }
        _892 = _891;
    }
    else
    {
        _892 = _782;
    }
    uint _898_dummy_parameter;
    uint2 _898 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _898_dummy_parameter);
    uint2 _942 = uint2(_407 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _970 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _970 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_892 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _970 = 1.0f.xxxx;
    }
    float4 _971 = _970 * _970;
    uint _974 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_689].x);
    uint _987 = (uint((_974 & 2048u) != 0u) | (uint((_974 & 4096u) != 0u) << 1u)) | (uint((_974 & 8192u) != 0u) << 2u);
    float4 _1279 = 0.0f.xxxx;
    float4 _1280 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1013 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1028 = dot(float4(float(_1013 & 1u), float((_1013 & 2u) >> 1u), float((_1013 & 4u) >> 2u), float((_1013 & 8u) >> 3u)), _971);
        bool _1030 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1031 = _1030 ? 1.0f : _1028;
        float _1044 = 0.0f;
        float _1045 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1038 = clamp(mad(_748, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1040 = lerp(_1030 ? _1028 : 1.0f, 1.0f, _1038 * _1038);
            _1044 = min(_1040, _1031) * _1031;
            _1045 = _1040 * _1031;
        }
        else
        {
            _1044 = 1.0f;
            _1045 = 1.0f;
        }
        float3 _1261 = 0.0f.xxx;
        float3 _1262 = 0.0f.xxx;
        [branch]
        if ((_1045 + _1044) > 0.0f)
        {
            float _1052 = max(_734, View_View_MinRoughness);
            float _1053 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1056 = rsqrt(_1053);
            float3 _1057 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1056;
            float _1058 = dot(_733, _1057);
            float _1076 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1065 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1053 + 1.0f)), 0.0f, 1.0f));
                float _1075 = 0.0f;
                if (_1058 < _1065)
                {
                    float _1071 = _1065 + max(_1058, -_1065);
                    _1075 = (_1071 * _1071) / (4.0f * _1065);
                }
                else
                {
                    _1075 = _1058;
                }
                _1076 = _1075;
            }
            else
            {
                _1076 = _1058;
            }
            float _1077 = clamp(_1076, 0.0f, 1.0f);
            float _1078 = max(_1052, View_View_MinRoughness);
            float _1083 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1056) * mad(-_1078, _1078, 1.0f), 0.0f, 1.0f);
            float _1085 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1056, 0.0f, 1.0f);
            float3 _1254 = 0.0f.xxx;
            float3 _1255 = 0.0f.xxx;
            [branch]
            if (_1077 > 0.0f)
            {
                float _1096 = dot(_733, _439);
                float _1097 = dot(_439, _1057);
                float _1099 = rsqrt(mad(2.0f, _1097, 2.0f));
                bool _1105 = _1083 > 0.0f;
                float _1184 = 0.0f;
                float _1185 = 0.0f;
                if (_1105)
                {
                    float _1110 = sqrt(mad(-_1083, _1083, 1.0f));
                    float _1111 = 2.0f * _1058;
                    float _1112 = -_1097;
                    float _1113 = mad(_1111, _1096, _1112);
                    float _1182 = 0.0f;
                    float _1183 = 0.0f;
                    if (_1113 >= _1110)
                    {
                        _1182 = 1.0f;
                        _1183 = abs(_1096);
                    }
                    else
                    {
                        float _1118 = -_1113;
                        float _1121 = _1083 * rsqrt(mad(_1118, _1113, 1.0f));
                        float _1122 = mad(_1118, _1058, _1096);
                        float _1126 = mad(_1118, _1097, mad(2.0f * _1096, _1096, -1.0f));
                        float _1137 = _1121 * sqrt(clamp(mad(_1111 * _1096, _1097, mad(_1112, _1097, mad(-_1096, _1096, mad(-_1058, _1058, 1.0f)))), 0.0f, 1.0f));
                        float _1139 = (_1137 * 2.0f) * _1096;
                        float _1140 = mad(_1058, _1110, _1096);
                        float _1141 = mad(_1121, _1122, _1140);
                        float _1143 = mad(_1121, _1126, mad(_1097, _1110, 1.0f));
                        float _1144 = _1137 * _1143;
                        float _1145 = _1141 * _1143;
                        float _1150 = _1145 * mad(-0.5f, _1144, (0.25f * _1139) * _1141);
                        float _1160 = mad(_1141, mad(_1140, _1143 * _1143, _1145 * mad(-0.5f, mad(_1097, _1110, _1143), -0.5f)), mad(_1144, _1144, (_1139 * _1141) * mad(_1139, _1141, _1144 * (-2.0f))));
                        float _1164 = (2.0f * _1150) / mad(_1160, _1160, _1150 * _1150);
                        float _1165 = _1164 * _1160;
                        float _1167 = mad(-_1164, _1150, 1.0f);
                        float _1173 = mad(_1097, _1110, mad(_1167, _1121 * _1126, _1165 * _1139));
                        float _1175 = rsqrt(mad(2.0f, _1173, 2.0f));
                        _1182 = clamp((mad(_1058, _1110, mad(_1167, _1121 * _1122, _1165 * _1137)) + _1096) * _1175, 0.0f, 1.0f);
                        _1183 = clamp(mad(_1175, _1173, _1175), 0.0f, 1.0f);
                    }
                    _1184 = _1182;
                    _1185 = _1183;
                }
                else
                {
                    _1184 = clamp((_1058 + _1096) * _1099, 0.0f, 1.0f);
                    _1185 = clamp(mad(_1099, _1097, _1099), 0.0f, 1.0f);
                }
                float _1188 = clamp(abs(_1096) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1190 = 1.0f.xxx * _1077;
                float3 _1252 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1252 = 0.0f.xxx;
                }
                else
                {
                    float _1197 = _1052 * _1052;
                    float _1207 = 0.0f;
                    if (_1085 > 0.0f)
                    {
                        _1207 = clamp(mad(_1197, _1197, (_1085 * _1085) / mad(_1185, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1207 = _1197 * _1197;
                    }
                    float _1221 = 0.0f;
                    if (_1105)
                    {
                        _1221 = _1207 / (_1207 + (((0.25f * _1083) * mad(3.0f, asfloat(532487669 + (asint(_1207) >> 1)), _1083)) / (_1185 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1221 = 1.0f;
                    }
                    float _1224 = mad(mad(_1184, _1207, -_1184), _1184, 1.0f);
                    float _1229 = sqrt(_1207);
                    float _1230 = 1.0f - _1229;
                    float _1236 = 1.0f - _1185;
                    float _1237 = _1236 * _1236;
                    float _1238 = _1237 * _1237;
                    _1252 = _1190 * (((clamp(50.0f * _776.y, 0.0f, 1.0f) * (_1238 * _1236)).xxx + (_776 * mad(-_1238, _1236, 1.0f))) * (((_1207 / ((3.1415927410125732421875f * _1224) * _1224)) * _1221) * (0.5f / mad(_1077, mad(_1188, _1230, _1229), _1188 * mad(_1077, _1230, _1229)))));
                }
                _1254 = ((_774 * 0.3183098733425140380859375f) * _1190) * 1.0f;
                _1255 = _1252;
            }
            else
            {
                _1254 = 0.0f.xxx;
                _1255 = 0.0f.xxx;
            }
            float3 _1258 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1045;
            _1261 = mad(_1254 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1258, 0.0f.xxx);
            _1262 = (_1255 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1258;
        }
        else
        {
            _1261 = 0.0f.xxx;
            _1262 = 0.0f.xxx;
        }
        float4 _1266 = float4(_1261, 0.0f);
        float4 _1270 = float4(_1262, 0.0f);
        float4 _1277 = 0.0f.xxxx;
        float4 _1278 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _987) != 0u)
        {
            _1277 = float4(_1266.x, _1266.y, _1266.z, _1266.w);
            _1278 = float4(_1270.x, _1270.y, _1270.z, _1270.w);
        }
        else
        {
            _1277 = 0.0f.xxxx;
            _1278 = 0.0f.xxxx;
        }
        _1279 = _1277;
        _1280 = _1278;
    }
    else
    {
        _1279 = 0.0f.xxxx;
        _1280 = 0.0f.xxxx;
    }
    uint _1281 = ((((min(uint(max(0.0f, log2(mad(_332, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _942.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _942.x) * 2u;
    uint _1291 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1281 + 1u] & 1073741823u;
    uint _1294 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1281] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1296 = 0.0f.xxxx;
    float4 _1299 = 0.0f.xxxx;
    _1296 = _1279;
    _1299 = _1280;
    float4 _1297 = 0.0f.xxxx;
    float4 _1300 = 0.0f.xxxx;
    [loop]
    for (uint _1301 = 0u; _1301 < _1294; _1296 = _1297, _1299 = _1300, _1301++)
    {
        uint _1310 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1291 + _1301).x * 6u;
        uint _1313 = _1310 + 1u;
        uint _1316 = _1310 + 2u;
        uint _1319 = _1310 + 3u;
        uint _1322 = _1310 + 4u;
        uint _1326 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1316].w);
        uint _1332 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1313].y);
        uint _1348 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].z);
        float2 _1350 = spvUnpackHalf2x16(_1348 & 65535u);
        float _1351 = _1350.x;
        float2 _1354 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].w));
        float _1355 = _1354.x;
        bool _1360 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1313].w == 0.0f;
        uint _1362 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].w);
        uint _1375 = _1326 >> 4u;
        float3 _1391 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1310].xyz - _423;
        float _1392 = dot(_1391, _1391);
        float _1409 = 0.0f;
        if (_1360)
        {
            float _1404 = _1392 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1310].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1310].w);
            float _1407 = clamp(mad(-_1404, _1404, 1.0f), 0.0f, 1.0f);
            _1409 = _1407 * _1407;
        }
        else
        {
            float3 _1398 = _1391 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1310].w;
            _1409 = pow(1.0f - clamp(dot(_1398, _1398), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1313].w);
        }
        float _1420 = 0.0f;
        if (((_1326 >> 16u) & 3u) == 2u)
        {
            float _1417 = clamp((dot(_1391 * rsqrt(_1392), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1316].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].y, 0.0f, 1.0f);
            _1420 = _1409 * (_1417 * _1417);
        }
        else
        {
            _1420 = _1409;
        }
        float3 _1717 = 0.0f.xxx;
        float3 _1718 = 0.0f.xxx;
        [branch]
        if (_1420 > 0.0f)
        {
            float _1428 = 0.0f;
            [branch]
            if (uint(int((_1326 & 255u) != 0u)) != 0u)
            {
                _1428 = dot(float4(float(_1375 & 1u), float((_1375 & 2u) >> 1u), float((_1375 & 4u) >> 2u), float((_1375 & 8u) >> 3u)), _971);
            }
            else
            {
                _1428 = 1.0f;
            }
            float3 _1715 = 0.0f.xxx;
            float3 _1716 = 0.0f.xxx;
            [branch]
            if ((_1428 + _1428) > 0.0f)
            {
                float3 _1434 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].xyz * (0.5f * _1355);
                float3 _1435 = _1391 - _1434;
                float3 _1436 = _1391 + _1434;
                float _1439 = max(_734, View_View_MinRoughness);
                bool _1440 = _1355 > 0.0f;
                float _1465 = 0.0f;
                float _1466 = 0.0f;
                float _1467 = 0.0f;
                [branch]
                if (_1440)
                {
                    float _1452 = rsqrt(dot(_1435, _1435));
                    float _1453 = rsqrt(dot(_1436, _1436));
                    float _1454 = _1452 * _1453;
                    float _1456 = dot(_1435, _1436) * _1454;
                    _1465 = _1456;
                    _1466 = 0.5f * mad(dot(_733, _1435), _1452, dot(_733, _1436) * _1453);
                    _1467 = _1454 / mad(_1452, _1453, mad(_1456, 0.5f, 0.5f));
                }
                else
                {
                    float _1444 = dot(_1435, _1435);
                    _1465 = 1.0f;
                    _1466 = dot(_733, _1435 * rsqrt(_1444));
                    _1467 = 1.0f / (_1444 + 1.0f);
                }
                float _1485 = 0.0f;
                if (_1351 > 0.0f)
                {
                    float _1474 = sqrt(clamp((_1351 * _1351) * _1467, 0.0f, 1.0f));
                    float _1484 = 0.0f;
                    if (_1466 < _1474)
                    {
                        float _1480 = _1474 + max(_1466, -_1474);
                        _1484 = (_1480 * _1480) / (4.0f * _1474);
                    }
                    else
                    {
                        _1484 = _1466;
                    }
                    _1485 = _1484;
                }
                else
                {
                    _1485 = _1466;
                }
                float _1486 = clamp(_1485, 0.0f, 1.0f);
                float3 _1504 = 0.0f.xxx;
                if (_1440)
                {
                    float3 _1491 = reflect(-_439, _733);
                    float3 _1492 = _1436 - _1435;
                    float _1493 = dot(_1491, _1492);
                    _1504 = _1435 + (_1492 * clamp(dot(_1435, (_1491 * _1493) - _1492) / mad(_1355, _1355, -(_1493 * _1493)), 0.0f, 1.0f));
                }
                else
                {
                    _1504 = _1435;
                }
                float _1506 = rsqrt(dot(_1504, _1504));
                float3 _1507 = _1504 * _1506;
                float _1508 = max(_1439, View_View_MinRoughness);
                float _1513 = clamp((_1351 * _1506) * mad(-_1508, _1508, 1.0f), 0.0f, 1.0f);
                float _1515 = clamp(spvUnpackHalf2x16(_1348 >> 16u).x * _1506, 0.0f, 1.0f);
                float3 _1708 = 0.0f.xxx;
                float3 _1709 = 0.0f.xxx;
                [branch]
                if (_1486 > 0.0f)
                {
                    float _1526 = dot(_733, _1507);
                    float _1527 = dot(_733, _439);
                    float _1528 = dot(_439, _1507);
                    float _1530 = rsqrt(mad(2.0f, _1528, 2.0f));
                    bool _1536 = _1513 > 0.0f;
                    float _1615 = 0.0f;
                    float _1616 = 0.0f;
                    if (_1536)
                    {
                        float _1541 = sqrt(mad(-_1513, _1513, 1.0f));
                        float _1542 = 2.0f * _1526;
                        float _1543 = -_1528;
                        float _1544 = mad(_1542, _1527, _1543);
                        float _1613 = 0.0f;
                        float _1614 = 0.0f;
                        if (_1544 >= _1541)
                        {
                            _1613 = 1.0f;
                            _1614 = abs(_1527);
                        }
                        else
                        {
                            float _1549 = -_1544;
                            float _1552 = _1513 * rsqrt(mad(_1549, _1544, 1.0f));
                            float _1553 = mad(_1549, _1526, _1527);
                            float _1557 = mad(_1549, _1528, mad(2.0f * _1527, _1527, -1.0f));
                            float _1568 = _1552 * sqrt(clamp(mad(_1542 * _1527, _1528, mad(_1543, _1528, mad(-_1527, _1527, mad(-_1526, _1526, 1.0f)))), 0.0f, 1.0f));
                            float _1570 = (_1568 * 2.0f) * _1527;
                            float _1571 = mad(_1526, _1541, _1527);
                            float _1572 = mad(_1552, _1553, _1571);
                            float _1574 = mad(_1552, _1557, mad(_1528, _1541, 1.0f));
                            float _1575 = _1568 * _1574;
                            float _1576 = _1572 * _1574;
                            float _1581 = _1576 * mad(-0.5f, _1575, (0.25f * _1570) * _1572);
                            float _1591 = mad(_1572, mad(_1571, _1574 * _1574, _1576 * mad(-0.5f, mad(_1528, _1541, _1574), -0.5f)), mad(_1575, _1575, (_1570 * _1572) * mad(_1570, _1572, _1575 * (-2.0f))));
                            float _1595 = (2.0f * _1581) / mad(_1591, _1591, _1581 * _1581);
                            float _1596 = _1595 * _1591;
                            float _1598 = mad(-_1595, _1581, 1.0f);
                            float _1604 = mad(_1528, _1541, mad(_1598, _1552 * _1557, _1596 * _1570));
                            float _1606 = rsqrt(mad(2.0f, _1604, 2.0f));
                            _1613 = clamp((mad(_1526, _1541, mad(_1598, _1552 * _1553, _1596 * _1568)) + _1527) * _1606, 0.0f, 1.0f);
                            _1614 = clamp(mad(_1606, _1604, _1606), 0.0f, 1.0f);
                        }
                        _1615 = _1613;
                        _1616 = _1614;
                    }
                    else
                    {
                        _1615 = clamp((_1526 + _1527) * _1530, 0.0f, 1.0f);
                        _1616 = clamp(mad(_1530, _1528, _1530), 0.0f, 1.0f);
                    }
                    float _1619 = clamp(abs(_1527) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1622 = 1.0f.xxx * ((_1360 ? _1467 : 1.0f) * _1486);
                    float3 _1706 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1355, _1351), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1706 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1629 = _1439 * _1439;
                        float _1639 = 0.0f;
                        if (_1515 > 0.0f)
                        {
                            _1639 = clamp(mad(_1629, _1629, (_1515 * _1515) / mad(_1616, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1639 = _1629 * _1629;
                        }
                        float _1653 = 0.0f;
                        float _1654 = 0.0f;
                        if (_1536)
                        {
                            float _1651 = _1639 + (((0.25f * _1513) * mad(3.0f, asfloat(532487669 + (asint(_1639) >> 1)), _1513)) / (_1616 + 0.001000000047497451305389404296875f));
                            _1653 = _1639 / _1651;
                            _1654 = _1651;
                        }
                        else
                        {
                            _1653 = 1.0f;
                            _1654 = _1639;
                        }
                        float _1675 = 0.0f;
                        if (_1465 < 1.0f)
                        {
                            float _1661 = sqrt((1.00010001659393310546875f - _1465) / (1.0f + _1465));
                            _1675 = _1653 * sqrt(_1654 / (_1654 + (((0.25f * _1661) * mad(3.0f, asfloat(532487669 + (asint(_1654) >> 1)), _1661)) / (_1616 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1675 = _1653;
                        }
                        float _1678 = mad(mad(_1615, _1639, -_1615), _1615, 1.0f);
                        float _1683 = sqrt(_1639);
                        float _1684 = 1.0f - _1683;
                        float _1690 = 1.0f - _1616;
                        float _1691 = _1690 * _1690;
                        float _1692 = _1691 * _1691;
                        _1706 = _1622 * (((clamp(50.0f * _776.y, 0.0f, 1.0f) * (_1692 * _1690)).xxx + (_776 * mad(-_1692, _1690, 1.0f))) * (((_1639 / ((3.1415927410125732421875f * _1678) * _1678)) * _1675) * (0.5f / mad(_1486, mad(_1619, _1684, _1683), _1619 * mad(_1486, _1684, _1683)))));
                    }
                    _1708 = ((_774 * 0.3183098733425140380859375f) * _1622) * 1.0f;
                    _1709 = _1706;
                }
                else
                {
                    _1708 = 0.0f.xxx;
                    _1709 = 0.0f.xxx;
                }
                float3 _1712 = ((float3(float((_1332 >> 0u) & 1023u), float((_1332 >> 10u) & 1023u), float((_1332 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1313].x) * _1420) * _1428;
                _1715 = mad(_1708 * (float((_1362 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1712, 0.0f.xxx);
                _1716 = (_1709 * (float(_1362 & 1023u) * 0.000977517105638980865478515625f)) * _1712;
            }
            else
            {
                _1715 = 0.0f.xxx;
                _1716 = 0.0f.xxx;
            }
            _1717 = _1715;
            _1718 = _1716;
        }
        else
        {
            _1717 = 0.0f.xxx;
            _1718 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1326 >> 8u) & 7u) & _987) != 0u)
        {
            _1297 = _1296 + float4(_1717, 0.0f);
            _1300 = _1299 + float4(_1718, 0.0f);
        }
        else
        {
            _1297 = _1296;
            _1300 = _1299;
        }
    }
    bool4 _1736 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1746 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_689].w) & 65535u);
    float4 _1784 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _734) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1785 = _1784.x;
    float2 _1794 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1785 * _1785, exp2((-9.27999973297119140625f) * clamp(dot(_733, _439), 0.0f, 1.0f))), _1785, _1784.y)) + _1784.zw;
    float3 _1819 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_733 * (2.0f * dot(_439, _733))) - _439, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1746].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_734, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1746].x, _299).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_776 * _1794.x) + (clamp(50.0f * _776.y, 0.0f, 1.0f) * _1794.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_892 * float2(float(_898.x), float(_898.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_740 & 256u) != 0u), float((_740 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_688.xxx, ((((((_776 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _688) + ((_776 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _688) + ((_776 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _688), float4(_1736.x ? 0.0f.xxxx.x : _1296.x, _1736.y ? 0.0f.xxxx.y : _1296.y, _1736.z ? 0.0f.xxxx.z : _1296.z, _1736.w ? 0.0f.xxxx.w : _1296.w).xyz + float4(_1736.x ? 0.0f.xxxx.x : _1299.x, _1736.y ? 0.0f.xxxx.y : _1299.y, _1736.z ? 0.0f.xxxx.z : _1299.z, _1736.w ? 0.0f.xxxx.w : _1299.w).xyz);
    bool _1822 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2248 = 0.0f.xxxx;
    if (_1822)
    {
        uint2 _1834 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1836 = normalize(_423 - View_View_TranslatedWorldCameraOrigin);
        uint _1837 = _1834.x;
        uint4 _1841 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1837, _1834.y, 0u), 0u));
        uint _1842 = _1841.x;
        float4 _1844 = 0.0f.xxxx;
        _1844 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1845 = 0.0f.xxxx;
        for (int _1847 = 0; uint(_1847) < _1842; _1844 = _1845, _1847++)
        {
            uint _1858 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1837, _1834.y, uint(1 + _1847)), 0u)).x * 3u;
            float4 _1860 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1858);
            float4 _1862 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1858 + 1u);
            float4 _1864 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1858 + 2u);
            float3 _1865 = _1860.xyz;
            float _1866 = _1860.w;
            float _1867 = 1.0f / _1866;
            uint _1869 = asuint(_1862.x);
            float2 _1875 = float2(spvUnpackHalf2x16(_1869).x, spvUnpackHalf2x16(_1869 >> 16u).x);
            float3 _1876 = float3(_1875.x, _1875.y, _303.z);
            uint _1878 = asuint(_1862.y);
            _1876.z = spvUnpackHalf2x16(_1878).x;
            float3 _1885 = 0.0f.xxx;
            _1885.x = spvUnpackHalf2x16(_1878 >> 16u).x;
            uint _1887 = asuint(_1862.z);
            float2 _1893 = float2(spvUnpackHalf2x16(_1887).x, spvUnpackHalf2x16(_1887 >> 16u).x);
            float3 _1894 = float3(_1885.x, _1893.x, _1893.y);
            float3x3 _1899 = float3x3(_1876 * _1867, _1894 * _1867, cross(_1876, _1894) * _1867);
            uint _1901 = asuint(_1864.x);
            float2 _1904 = spvUnpackHalf2x16((_1901 >> 17u) & 32752u);
            float _1905 = _1904.x;
            float2 _1908 = spvUnpackHalf2x16((_1901 >> 6u) & 32752u);
            float _1909 = _1908.x;
            float2 _1912 = spvUnpackHalf2x16((_1901 << 5u) & 32736u);
            float _1913 = _1912.x;
            uint _1915 = asuint(_1864.y);
            float3 _1933 = 0.0f.xxx;
            if (_1915 > 0u)
            {
                _1933 = float3(spvUnpackHalf2x16((_1915 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1915 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1915 << 5u) & 32736u).x);
            }
            else
            {
                _1933 = 0.0f.xxx;
            }
            uint _1935 = asuint(_1864.z);
            float _1950 = float((_1935 >> 24u) & 255u);
            float _1951 = _1950 * 0.0039215688593685626983642578125f;
            float3 _1958 = mul(View_View_TranslatedWorldCameraOrigin - _1865, _1899);
            float3 _1960 = normalize(mul(_1836, _1899));
            float _1962 = dot(_1960, _1960);
            float _1963 = dot(_1960, _1958);
            float _1964 = 2.0f * _1963;
            float _1969 = mad(_1964, _1964, -((4.0f * _1962) * mad(-1.0f, 1.0f, dot(_1958, _1958))));
            float2 _1981 = 0.0f.xx;
            [flatten]
            if (_1969 >= 0.0f)
            {
                _1981 = ((_1963 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1969))) / (2.0f * _1962).xx;
            }
            else
            {
                _1981 = (-1.0f).xx;
            }
            float3 _1987 = mul(_423 - _1865, _1899) - _1958;
            float2 _1991 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1867, _1981), sqrt(dot(_1987, _1987)).xx);
            float _2143 = 0.0f;
            float3 _2144 = 0.0f.xxx;
            if (any(bool2(_1991.x > 0.0f.xx.x, _1991.y > 0.0f.xx.y)))
            {
                float2 _2012 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2002 = dot(_1836, View_View_ViewForward);
                    _2012 = max(_1991, ((View_View_VolumetricFogMaxDistance * ((_2002 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2002) : 0.0f)) * _1867).xx);
                }
                else
                {
                    _2012 = _1991;
                }
                float _2017 = max(0.0f, abs(_2012.y - _2012.x));
                float _2141 = 0.0f;
                float3 _2142 = 0.0f.xxx;
                if (_2017 > 0.0f)
                {
                    float3 _2022 = _1958 + (_1960 * _2012.x);
                    float _2058 = 0.0f;
                    if (_1905 > 0.0f)
                    {
                        float _2026 = dot(_1960, _2022);
                        float _2027 = dot(_2022, _2022);
                        float _2028 = _2027 - 1.0f;
                        float _2030 = mad(_2026, _2026, 1.0f - _2027);
                        float _2057 = 0.0f;
                        if (_2030 >= 0.0f)
                        {
                            float _2034 = sqrt(_2030);
                            float _2035 = -_2026;
                            float _2038 = max(_2035 - _2034, 0.0f);
                            float _2040 = min(max(_2035 + _2034, 0.0f), _2017);
                            float _2041 = _2038 * _2038;
                            float _2042 = _2040 * _2040;
                            _2057 = max(0.0f, (_1905 * ((-mad(_2042 * _2040, 0.3333333432674407958984375f, mad(_2028, _2040, _2026 * _2042))) - (-mad(_2041 * _2038, 0.3333333432674407958984375f, mad(_2028, _2038, _2026 * _2041))))) * 0.75f);
                        }
                        else
                        {
                            _2057 = 0.0f;
                        }
                        _2058 = _2057;
                    }
                    else
                    {
                        _2058 = 0.0f;
                    }
                    float _2083 = 0.0f;
                    if (_1909 > 0.0f)
                    {
                        float _2064 = _1960.z;
                        float _2070 = (abs(_2064) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2064 >= 0.0f) ? 1.0f : (-1.0f))) : _2064;
                        float _2073 = max(-80.0f, (_2022.z - _1864.w) * _1913);
                        _2083 = (_1909 / (_1913 * _2070)) * (exp(-_2073) - exp(-mad(_2070 * _2017, _1913, _2073)));
                    }
                    else
                    {
                        _2083 = 0.0f;
                    }
                    float _2094 = exp((log(mad(exp(-_2058) - 1.0f, 1.0f - exp(-_2083), 1.0f)) * _1866) * 0.00999999977648258209228515625f);
                    float _2098 = _1950 * (-0.0039215688593685626983642578125f);
                    float _2105 = mad(_1950 * (-0.007843137718737125396728515625f), dot(_1836, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2098, _2098, 1.0f));
                    float3 _2110 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1951, _2098, 1.0f) / ((12.56637096405029296875f * _2105) * sqrt(_2105)));
                    float3 _2138 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2123 = float4(_1836 * _2098, 1.0f);
                        _2138 = _2110 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2123), dot(View_SkyIrradianceEnvironmentMap[1u], _2123), dot(View_SkyIrradianceEnvironmentMap[2u], _2123)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2138 = _2110;
                    }
                    _2141 = _2094;
                    _2142 = mad(_2138, float4(float((_1935 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1935 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1935 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1951).xyz, _1933) * (1.0f - _2094);
                }
                else
                {
                    _2141 = 1.0f;
                    _2142 = 0.0f.xxx;
                }
                _2143 = _2141;
                _2144 = _2142;
            }
            else
            {
                _2143 = 1.0f;
                _2144 = 0.0f.xxx;
            }
            _1845 = float4((_1844.xyz * _2143) + float4(_2144, _2143).xyz, _1844.w * _2143);
        }
        float _2164 = _1844.w * in_var_TEXCOORD7.w;
        float4 _2172 = float4(_96, 1.0f);
        precise float4 _100 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _101 = _2172 + _100;
        precise float4 _102 = _101 - _2172;
        precise float4 _103 = _101 - _102;
        precise float4 _104 = _2172 - _103;
        precise float4 _105 = _100 - _102;
        precise float4 _106 = _104 + _105;
        float4 _2183 = mul(_101 + (float4(_99, 0.0f) + _106), View_View_RelativeWorldToClip);
        float _2184 = _2183.w;
        float4 _2247 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2247 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2230 = 0.0f.xxxx;
            float _2231 = 0.0f;
            if (_1822)
            {
                float4 _2226 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2183.xy / _2184.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2184, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2228 = _2226.xyz * View_View_OneOverPreExposure;
                _2230 = float4(_2228.x, _2228.y, _2228.z, _2226.w);
                _2231 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2230 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2231 = 0.0f;
            }
            float4 _2236 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2230, clamp((_748 - _2231) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2239 = _2236.w;
            _2247 = float4(_2236.xyz + (float4(_1844.xyz + (in_var_TEXCOORD7.xyz * _1844.w), _2164).xyz * _2239), _2239 * _2164);
            break;
        } while(false);
        _2248 = _2247;
    }
    else
    {
        _2248 = in_var_TEXCOORD7;
    }
    float3 _2255 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].y.xxx), 0.0f.xxx);
    float3 _2324 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _107 = Scene_GPUScene_GPUScenePrimitiveSceneData[_689 + 18u].xyz * 2097152.0f;
        precise float3 _108 = _107 + Scene_GPUScene_GPUScenePrimitiveSceneData[_689 + 19u].xyz;
        precise float3 _109 = _108 - _107;
        precise float3 _110 = Scene_GPUScene_GPUScenePrimitiveSceneData[_689 + 19u].xyz - _109;
        uint _2281 = _689 + 32u;
        precise float3 _111 = _96 - _108;
        precise float3 _112 = _99 - _110;
        precise float3 _113 = _111 + _112;
        float3 _2286 = abs(_113);
        float3 _2287 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_689 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_689 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_689 + 27u].w) + 1.0f.xxx;
        float3 _2323 = 0.0f.xxx;
        if (any(bool3(_2286.x > _2287.x, _2286.y > _2287.y, _2286.z > _2287.z)))
        {
            float3 _2319 = frac(dot(frac(frac(_96 * 1.52587890625e-05f.xxx) + frac(_99 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2323 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2319.x > 0.5f.xxx.x, _2319.y > 0.5f.xxx.y, _2319.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2309 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2281].x > 0.0f)
            {
                float3 _2297 = abs(_423 - in_var_TEXCOORD9);
                _2309 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2297.x, max(_2297.y, _2297.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2281].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2309 = _2255;
            }
            _2323 = _2309;
        }
        _2324 = _2323;
    }
    else
    {
        _2324 = _2255;
    }
    float4 _2333 = float4(((lerp(_1819, _774 + (_776 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2324) * _2248.w) + _2248.xyz, 0.0f);
    _2333.w = 0.0f;
    float4 _2337 = _2333 * View_View_PreExposure;
    float3 _2342 = min(_2337.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2342.x, _2342.y, _2342.z, _2337.w);
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
