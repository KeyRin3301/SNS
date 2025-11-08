#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _287 = 0.0f;
static float _290 = 0.0f;
static float3 _291 = 0.0f.xxx;

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
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
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
    float _322 = 1.0f / gl_FragCoord.w;
    float4 _368 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _372 = mad(float2(_368.zw), 2.0f.xx, (-1.0f).xx);
    float _376 = sqrt(max(1.0f - dot(_372, _372), 0.0f));
    float _377 = _372.x;
    float3 _379 = float3(_377, _372.y, _376);
    float3 _382 = normalize(float3(_376, 0.0f, -_377));
    float2 _397 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _404 = float4(mad(_397, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _290, 1.0f) * _322;
    float4 _409 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _413 = _409.xyz / _409.w.xxx;
    float3 _414 = _413 - View_View_RelativePreViewTranslationTO;
    precise float3 _89 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _414);
    precise float3 _92 = _414 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _89);
    bool _416 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _417 = -View_View_ViewForward;
    float3 _419 = normalize(-_413);
    float3 _429 = float3(_416 ? _417.x : _419.x, _416 ? _417.y : _419.y, _416 ? _417.z : _419.z);
    float4 _433 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _436 = dot(_433, Material_Material_PreshaderBuffer[0]);
    float _439 = dot(_433, Material_Material_PreshaderBuffer[1]);
    float _442 = dot(_433, Material_Material_PreshaderBuffer[2]);
    float _445 = dot(_433, Material_Material_PreshaderBuffer[3]);
    float2 _448 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _460 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _448 * Material_Material_PreshaderBuffer[4].x.xx).x * Material_Material_PreshaderBuffer[4].y;
    float4 _472 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_460) + Material_Material_PreshaderBuffer[4].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _476 = Material_Material_PreshaderBuffer[4].w.xx;
    float2 _477 = mad(_472.xy, _476, _448);
    float2 _479 = mad(_472.zw, _476, _448);
    float2 _481 = ddy(_448);
    float2 _482 = ddx(_448);
    float2 _494 = lerp(_477, _479, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _479, _482, _481) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _477, _482, _481)).x, frac(_460))), 0.0f, 1.0f).xx);
    float2 _500 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _509 = _436.xxx;
    float2 _515 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _524 = _439.xxx;
    float2 _530 = _494 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _536 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _530, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _545 = _442.xxx;
    float2 _552 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _561 = _445.xxx;
    float3 _569 = normalize(mul(normalize((mad(float4(_552, sqrt(clamp(1.0f - dot(_552, _552), 0.0f, 1.0f)), 1.0f).xyz, _561, mad(float4(_536, sqrt(clamp(1.0f - dot(_536, _536), 0.0f, 1.0f)), 1.0f).xyz, _545, mad(float4(_500, sqrt(clamp(1.0f - dot(_500, _500), 0.0f, 1.0f)), 1.0f).xyz, _509, float4(_515, sqrt(clamp(1.0f - dot(_515, _515), 0.0f, 1.0f)), 1.0f).xyz * _524))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_382, cross(_379, _382), _379), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _570 = _569 * 1.0f;
    float4 _605 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _610 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _617 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _530, View_View_MaterialTextureMipBias);
    float4 _623 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _494, View_View_MaterialTextureMipBias);
    float3 _637 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _494, View_View_MaterialTextureMipBias).xyz, _561, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _530, View_View_MaterialTextureMipBias).xyz, _545, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _494, View_View_MaterialTextureMipBias).xyz, _509, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _494, View_View_MaterialTextureMipBias).xyz * _524))), 0.0f.xxx, 1.0f.xxx);
    float _641 = mad(clamp(mad(_623.y * Material_Material_PreshaderBuffer[6].w, _445, mad(_617.y, _442, mad(_605.y, _436, _610.y * _439))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _642 = clamp(mad(_623.x, _445, mad(_617.x, _442, mad(_605.x, _436, _610.x * _439))), 0.0f, 1.0f);
    float3 _684 = 0.0f.xxx;
    float _685 = 0.0f;
    float _686 = 0.0f;
    float _687 = 0.0f;
    float3 _688 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _656 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _660 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _656, 0.0f);
        float4 _663 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _656, 0.0f);
        float4 _666 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _656, 0.0f);
        float _676 = _666.w;
        _684 = normalize((_570 * _663.w) + ((_663.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _685 = mad(_641, _676, _666.z);
        _686 = mad(0.5f, _676, _666.y);
        _687 = _666.x;
        _688 = (_637 * _660.w) + _660.xyz;
    }
    else
    {
        _684 = _570;
        _685 = _641;
        _686 = 0.5f;
        _687 = 0.0f;
        _688 = _637;
    }
    float _696 = _404.w;
    float3 _709 = ((_688 - (_688 * _687)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _716 = (lerp((0.07999999821186065673828125f * _686).xxx, _688, _687.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _717 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _722 = 0.0f.xxx;
    if (_717)
    {
        _722 = _709 + (_716 * 0.449999988079071044921875f);
    }
    else
    {
        _722 = _709;
    }
    bool3 _723 = _717.xxx;
    float3 _724 = float3(_723.x ? 0.0f.xxx.x : _716.x, _723.y ? 0.0f.xxx.y : _716.y, _723.z ? 0.0f.xxx.z : _716.z);
    float2 _730 = mad(_404.xy / _696.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _840 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _741 = int2(trunc(_730 * View_View_BufferSizeAndInvSize.xy));
        int _742 = _741.x;
        int _743 = _741.y;
        float4 _747 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_742, _743, 0).xy, 0));
        float _748 = _747.x;
        float _758 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _839 = 0.0f.xx;
        if ((abs((mad(_748, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_748, View_View_InvDeviceZToWorldZTransform.z, _758))) - _696) / _696) > 0.00999999977648258209228515625f)
        {
            float2 _771 = _730 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _775 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_742 - 1, _743, 0).xy, 0));
            float _776 = _775.x;
            float _782 = abs((mad(_776, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_776, View_View_InvDeviceZToWorldZTransform.z, _758))) - _696);
            bool _783 = _782 < 100000000.0f;
            bool2 _784 = _783.xx;
            float2 _785 = float2(_784.x ? _771.x : _730.x, _784.y ? _771.y : _730.y);
            float _786 = _783 ? _782 : 100000000.0f;
            float2 _789 = _730 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _793 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_742, _743 + 1, 0).xy, 0));
            float _794 = _793.x;
            float _800 = abs((mad(_794, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_794, View_View_InvDeviceZToWorldZTransform.z, _758))) - _696);
            bool _801 = _800 < _786;
            bool2 _802 = _801.xx;
            float2 _803 = float2(_802.x ? _789.x : _785.x, _802.y ? _789.y : _785.y);
            float _804 = _801 ? _800 : _786;
            float2 _806 = _730 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _810 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_742 + 1, _743, 0).xy, 0));
            float _811 = _810.x;
            float _817 = abs((mad(_811, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_811, View_View_InvDeviceZToWorldZTransform.z, _758))) - _696);
            bool _818 = _817 < _804;
            bool2 _819 = _818.xx;
            float2 _820 = float2(_819.x ? _806.x : _803.x, _819.y ? _806.y : _803.y);
            float2 _824 = _730 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _828 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_742, _743 - 1, 0).xy, 0));
            float _829 = _828.x;
            bool2 _837 = (abs((mad(_829, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_829, View_View_InvDeviceZToWorldZTransform.z, _758))) - _696) < (_818 ? _817 : _804)).xx;
            _839 = float2(_837.x ? _824.x : _820.x, _837.y ? _824.y : _820.y);
        }
        else
        {
            _839 = _730;
        }
        _840 = _839;
    }
    else
    {
        _840 = _730;
    }
    uint _846_dummy_parameter;
    uint2 _846 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _846_dummy_parameter);
    uint2 _890 = uint2(_397 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _918 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _918 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_840 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _918 = 1.0f.xxxx;
    }
    float4 _919 = _918 * _918;
    uint _932 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1224 = 0.0f.xxxx;
    float4 _1225 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _958 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _973 = dot(float4(float(_958 & 1u), float((_958 & 2u) >> 1u), float((_958 & 4u) >> 2u), float((_958 & 8u) >> 3u)), _919);
        bool _975 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _976 = _975 ? 1.0f : _973;
        float _989 = 0.0f;
        float _990 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _983 = clamp(mad(_696, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _985 = lerp(_975 ? _973 : 1.0f, 1.0f, _983 * _983);
            _989 = min(_985, _976) * _976;
            _990 = _985 * _976;
        }
        else
        {
            _989 = 1.0f;
            _990 = 1.0f;
        }
        float3 _1206 = 0.0f.xxx;
        float3 _1207 = 0.0f.xxx;
        [branch]
        if ((_990 + _989) > 0.0f)
        {
            float _997 = max(_685, View_View_MinRoughness);
            float _998 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1001 = rsqrt(_998);
            float3 _1002 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1001;
            float _1003 = dot(_684, _1002);
            float _1021 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1010 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_998 + 1.0f)), 0.0f, 1.0f));
                float _1020 = 0.0f;
                if (_1003 < _1010)
                {
                    float _1016 = _1010 + max(_1003, -_1010);
                    _1020 = (_1016 * _1016) / (4.0f * _1010);
                }
                else
                {
                    _1020 = _1003;
                }
                _1021 = _1020;
            }
            else
            {
                _1021 = _1003;
            }
            float _1022 = clamp(_1021, 0.0f, 1.0f);
            float _1023 = max(_997, View_View_MinRoughness);
            float _1028 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1001) * mad(-_1023, _1023, 1.0f), 0.0f, 1.0f);
            float _1030 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1001, 0.0f, 1.0f);
            float3 _1199 = 0.0f.xxx;
            float3 _1200 = 0.0f.xxx;
            [branch]
            if (_1022 > 0.0f)
            {
                float _1041 = dot(_684, _429);
                float _1042 = dot(_429, _1002);
                float _1044 = rsqrt(mad(2.0f, _1042, 2.0f));
                bool _1050 = _1028 > 0.0f;
                float _1129 = 0.0f;
                float _1130 = 0.0f;
                if (_1050)
                {
                    float _1055 = sqrt(mad(-_1028, _1028, 1.0f));
                    float _1056 = 2.0f * _1003;
                    float _1057 = -_1042;
                    float _1058 = mad(_1056, _1041, _1057);
                    float _1127 = 0.0f;
                    float _1128 = 0.0f;
                    if (_1058 >= _1055)
                    {
                        _1127 = 1.0f;
                        _1128 = abs(_1041);
                    }
                    else
                    {
                        float _1063 = -_1058;
                        float _1066 = _1028 * rsqrt(mad(_1063, _1058, 1.0f));
                        float _1067 = mad(_1063, _1003, _1041);
                        float _1071 = mad(_1063, _1042, mad(2.0f * _1041, _1041, -1.0f));
                        float _1082 = _1066 * sqrt(clamp(mad(_1056 * _1041, _1042, mad(_1057, _1042, mad(-_1041, _1041, mad(-_1003, _1003, 1.0f)))), 0.0f, 1.0f));
                        float _1084 = (_1082 * 2.0f) * _1041;
                        float _1085 = mad(_1003, _1055, _1041);
                        float _1086 = mad(_1066, _1067, _1085);
                        float _1088 = mad(_1066, _1071, mad(_1042, _1055, 1.0f));
                        float _1089 = _1082 * _1088;
                        float _1090 = _1086 * _1088;
                        float _1095 = _1090 * mad(-0.5f, _1089, (0.25f * _1084) * _1086);
                        float _1105 = mad(_1086, mad(_1085, _1088 * _1088, _1090 * mad(-0.5f, mad(_1042, _1055, _1088), -0.5f)), mad(_1089, _1089, (_1084 * _1086) * mad(_1084, _1086, _1089 * (-2.0f))));
                        float _1109 = (2.0f * _1095) / mad(_1105, _1105, _1095 * _1095);
                        float _1110 = _1109 * _1105;
                        float _1112 = mad(-_1109, _1095, 1.0f);
                        float _1118 = mad(_1042, _1055, mad(_1112, _1066 * _1071, _1110 * _1084));
                        float _1120 = rsqrt(mad(2.0f, _1118, 2.0f));
                        _1127 = clamp((mad(_1003, _1055, mad(_1112, _1066 * _1067, _1110 * _1082)) + _1041) * _1120, 0.0f, 1.0f);
                        _1128 = clamp(mad(_1120, _1118, _1120), 0.0f, 1.0f);
                    }
                    _1129 = _1127;
                    _1130 = _1128;
                }
                else
                {
                    _1129 = clamp((_1003 + _1041) * _1044, 0.0f, 1.0f);
                    _1130 = clamp(mad(_1044, _1042, _1044), 0.0f, 1.0f);
                }
                float _1133 = clamp(abs(_1041) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1135 = 1.0f.xxx * _1022;
                float3 _1197 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1197 = 0.0f.xxx;
                }
                else
                {
                    float _1142 = _997 * _997;
                    float _1152 = 0.0f;
                    if (_1030 > 0.0f)
                    {
                        _1152 = clamp(mad(_1142, _1142, (_1030 * _1030) / mad(_1130, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1152 = _1142 * _1142;
                    }
                    float _1166 = 0.0f;
                    if (_1050)
                    {
                        _1166 = _1152 / (_1152 + (((0.25f * _1028) * mad(3.0f, asfloat(532487669 + (asint(_1152) >> 1)), _1028)) / (_1130 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1166 = 1.0f;
                    }
                    float _1169 = mad(mad(_1129, _1152, -_1129), _1129, 1.0f);
                    float _1174 = sqrt(_1152);
                    float _1175 = 1.0f - _1174;
                    float _1181 = 1.0f - _1130;
                    float _1182 = _1181 * _1181;
                    float _1183 = _1182 * _1182;
                    _1197 = _1135 * (((clamp(50.0f * _724.y, 0.0f, 1.0f) * (_1183 * _1181)).xxx + (_724 * mad(-_1183, _1181, 1.0f))) * (((_1152 / ((3.1415927410125732421875f * _1169) * _1169)) * _1166) * (0.5f / mad(_1022, mad(_1133, _1175, _1174), _1133 * mad(_1022, _1175, _1174)))));
                }
                _1199 = ((_722 * 0.3183098733425140380859375f) * _1135) * 1.0f;
                _1200 = _1197;
            }
            else
            {
                _1199 = 0.0f.xxx;
                _1200 = 0.0f.xxx;
            }
            float3 _1203 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _990;
            _1206 = mad(_1199 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1203, 0.0f.xxx);
            _1207 = (_1200 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1203;
        }
        else
        {
            _1206 = 0.0f.xxx;
            _1207 = 0.0f.xxx;
        }
        float4 _1211 = float4(_1206, 0.0f);
        float4 _1215 = float4(_1207, 0.0f);
        float4 _1222 = 0.0f.xxxx;
        float4 _1223 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _932) != 0u)
        {
            _1222 = float4(_1211.x, _1211.y, _1211.z, _1211.w);
            _1223 = float4(_1215.x, _1215.y, _1215.z, _1215.w);
        }
        else
        {
            _1222 = 0.0f.xxxx;
            _1223 = 0.0f.xxxx;
        }
        _1224 = _1222;
        _1225 = _1223;
    }
    else
    {
        _1224 = 0.0f.xxxx;
        _1225 = 0.0f.xxxx;
    }
    uint _1226 = ((((min(uint(max(0.0f, log2(mad(_322, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _890.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _890.x) * 2u;
    uint _1236 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1226 + 1u] & 1073741823u;
    uint _1239 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1226] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1241 = 0.0f.xxxx;
    float4 _1244 = 0.0f.xxxx;
    _1241 = _1224;
    _1244 = _1225;
    float4 _1242 = 0.0f.xxxx;
    float4 _1245 = 0.0f.xxxx;
    [loop]
    for (uint _1246 = 0u; _1246 < _1239; _1241 = _1242, _1244 = _1245, _1246++)
    {
        uint _1255 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1236 + _1246).x * 6u;
        uint _1258 = _1255 + 1u;
        uint _1261 = _1255 + 2u;
        uint _1264 = _1255 + 3u;
        uint _1267 = _1255 + 4u;
        uint _1271 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1261].w);
        uint _1277 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1258].y);
        uint _1293 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1264].z);
        float2 _1295 = spvUnpackHalf2x16(_1293 & 65535u);
        float _1296 = _1295.x;
        float2 _1299 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1264].w));
        float _1300 = _1299.x;
        bool _1305 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1258].w == 0.0f;
        uint _1307 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1267].w);
        uint _1320 = _1271 >> 4u;
        float3 _1336 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].xyz - _413;
        float _1337 = dot(_1336, _1336);
        float _1354 = 0.0f;
        if (_1305)
        {
            float _1349 = _1337 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].w);
            float _1352 = clamp(mad(-_1349, _1349, 1.0f), 0.0f, 1.0f);
            _1354 = _1352 * _1352;
        }
        else
        {
            float3 _1343 = _1336 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].w;
            _1354 = pow(1.0f - clamp(dot(_1343, _1343), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1258].w);
        }
        float _1365 = 0.0f;
        if (((_1271 >> 16u) & 3u) == 2u)
        {
            float _1362 = clamp((dot(_1336 * rsqrt(_1337), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1261].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1264].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1264].y, 0.0f, 1.0f);
            _1365 = _1354 * (_1362 * _1362);
        }
        else
        {
            _1365 = _1354;
        }
        float3 _1662 = 0.0f.xxx;
        float3 _1663 = 0.0f.xxx;
        [branch]
        if (_1365 > 0.0f)
        {
            float _1373 = 0.0f;
            [branch]
            if (uint(int((_1271 & 255u) != 0u)) != 0u)
            {
                _1373 = dot(float4(float(_1320 & 1u), float((_1320 & 2u) >> 1u), float((_1320 & 4u) >> 2u), float((_1320 & 8u) >> 3u)), _919);
            }
            else
            {
                _1373 = 1.0f;
            }
            float3 _1660 = 0.0f.xxx;
            float3 _1661 = 0.0f.xxx;
            [branch]
            if ((_1373 + _1373) > 0.0f)
            {
                float3 _1379 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1267].xyz * (0.5f * _1300);
                float3 _1380 = _1336 - _1379;
                float3 _1381 = _1336 + _1379;
                float _1384 = max(_685, View_View_MinRoughness);
                bool _1385 = _1300 > 0.0f;
                float _1410 = 0.0f;
                float _1411 = 0.0f;
                float _1412 = 0.0f;
                [branch]
                if (_1385)
                {
                    float _1397 = rsqrt(dot(_1380, _1380));
                    float _1398 = rsqrt(dot(_1381, _1381));
                    float _1399 = _1397 * _1398;
                    float _1401 = dot(_1380, _1381) * _1399;
                    _1410 = _1401;
                    _1411 = 0.5f * mad(dot(_684, _1380), _1397, dot(_684, _1381) * _1398);
                    _1412 = _1399 / mad(_1397, _1398, mad(_1401, 0.5f, 0.5f));
                }
                else
                {
                    float _1389 = dot(_1380, _1380);
                    _1410 = 1.0f;
                    _1411 = dot(_684, _1380 * rsqrt(_1389));
                    _1412 = 1.0f / (_1389 + 1.0f);
                }
                float _1430 = 0.0f;
                if (_1296 > 0.0f)
                {
                    float _1419 = sqrt(clamp((_1296 * _1296) * _1412, 0.0f, 1.0f));
                    float _1429 = 0.0f;
                    if (_1411 < _1419)
                    {
                        float _1425 = _1419 + max(_1411, -_1419);
                        _1429 = (_1425 * _1425) / (4.0f * _1419);
                    }
                    else
                    {
                        _1429 = _1411;
                    }
                    _1430 = _1429;
                }
                else
                {
                    _1430 = _1411;
                }
                float _1431 = clamp(_1430, 0.0f, 1.0f);
                float3 _1449 = 0.0f.xxx;
                if (_1385)
                {
                    float3 _1436 = reflect(-_429, _684);
                    float3 _1437 = _1381 - _1380;
                    float _1438 = dot(_1436, _1437);
                    _1449 = _1380 + (_1437 * clamp(dot(_1380, (_1436 * _1438) - _1437) / mad(_1300, _1300, -(_1438 * _1438)), 0.0f, 1.0f));
                }
                else
                {
                    _1449 = _1380;
                }
                float _1451 = rsqrt(dot(_1449, _1449));
                float3 _1452 = _1449 * _1451;
                float _1453 = max(_1384, View_View_MinRoughness);
                float _1458 = clamp((_1296 * _1451) * mad(-_1453, _1453, 1.0f), 0.0f, 1.0f);
                float _1460 = clamp(spvUnpackHalf2x16(_1293 >> 16u).x * _1451, 0.0f, 1.0f);
                float3 _1653 = 0.0f.xxx;
                float3 _1654 = 0.0f.xxx;
                [branch]
                if (_1431 > 0.0f)
                {
                    float _1471 = dot(_684, _1452);
                    float _1472 = dot(_684, _429);
                    float _1473 = dot(_429, _1452);
                    float _1475 = rsqrt(mad(2.0f, _1473, 2.0f));
                    bool _1481 = _1458 > 0.0f;
                    float _1560 = 0.0f;
                    float _1561 = 0.0f;
                    if (_1481)
                    {
                        float _1486 = sqrt(mad(-_1458, _1458, 1.0f));
                        float _1487 = 2.0f * _1471;
                        float _1488 = -_1473;
                        float _1489 = mad(_1487, _1472, _1488);
                        float _1558 = 0.0f;
                        float _1559 = 0.0f;
                        if (_1489 >= _1486)
                        {
                            _1558 = 1.0f;
                            _1559 = abs(_1472);
                        }
                        else
                        {
                            float _1494 = -_1489;
                            float _1497 = _1458 * rsqrt(mad(_1494, _1489, 1.0f));
                            float _1498 = mad(_1494, _1471, _1472);
                            float _1502 = mad(_1494, _1473, mad(2.0f * _1472, _1472, -1.0f));
                            float _1513 = _1497 * sqrt(clamp(mad(_1487 * _1472, _1473, mad(_1488, _1473, mad(-_1472, _1472, mad(-_1471, _1471, 1.0f)))), 0.0f, 1.0f));
                            float _1515 = (_1513 * 2.0f) * _1472;
                            float _1516 = mad(_1471, _1486, _1472);
                            float _1517 = mad(_1497, _1498, _1516);
                            float _1519 = mad(_1497, _1502, mad(_1473, _1486, 1.0f));
                            float _1520 = _1513 * _1519;
                            float _1521 = _1517 * _1519;
                            float _1526 = _1521 * mad(-0.5f, _1520, (0.25f * _1515) * _1517);
                            float _1536 = mad(_1517, mad(_1516, _1519 * _1519, _1521 * mad(-0.5f, mad(_1473, _1486, _1519), -0.5f)), mad(_1520, _1520, (_1515 * _1517) * mad(_1515, _1517, _1520 * (-2.0f))));
                            float _1540 = (2.0f * _1526) / mad(_1536, _1536, _1526 * _1526);
                            float _1541 = _1540 * _1536;
                            float _1543 = mad(-_1540, _1526, 1.0f);
                            float _1549 = mad(_1473, _1486, mad(_1543, _1497 * _1502, _1541 * _1515));
                            float _1551 = rsqrt(mad(2.0f, _1549, 2.0f));
                            _1558 = clamp((mad(_1471, _1486, mad(_1543, _1497 * _1498, _1541 * _1513)) + _1472) * _1551, 0.0f, 1.0f);
                            _1559 = clamp(mad(_1551, _1549, _1551), 0.0f, 1.0f);
                        }
                        _1560 = _1558;
                        _1561 = _1559;
                    }
                    else
                    {
                        _1560 = clamp((_1471 + _1472) * _1475, 0.0f, 1.0f);
                        _1561 = clamp(mad(_1475, _1473, _1475), 0.0f, 1.0f);
                    }
                    float _1564 = clamp(abs(_1472) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1567 = 1.0f.xxx * ((_1305 ? _1412 : 1.0f) * _1431);
                    float3 _1651 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1300, _1296), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1651 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1574 = _1384 * _1384;
                        float _1584 = 0.0f;
                        if (_1460 > 0.0f)
                        {
                            _1584 = clamp(mad(_1574, _1574, (_1460 * _1460) / mad(_1561, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1584 = _1574 * _1574;
                        }
                        float _1598 = 0.0f;
                        float _1599 = 0.0f;
                        if (_1481)
                        {
                            float _1596 = _1584 + (((0.25f * _1458) * mad(3.0f, asfloat(532487669 + (asint(_1584) >> 1)), _1458)) / (_1561 + 0.001000000047497451305389404296875f));
                            _1598 = _1584 / _1596;
                            _1599 = _1596;
                        }
                        else
                        {
                            _1598 = 1.0f;
                            _1599 = _1584;
                        }
                        float _1620 = 0.0f;
                        if (_1410 < 1.0f)
                        {
                            float _1606 = sqrt((1.00010001659393310546875f - _1410) / (1.0f + _1410));
                            _1620 = _1598 * sqrt(_1599 / (_1599 + (((0.25f * _1606) * mad(3.0f, asfloat(532487669 + (asint(_1599) >> 1)), _1606)) / (_1561 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1620 = _1598;
                        }
                        float _1623 = mad(mad(_1560, _1584, -_1560), _1560, 1.0f);
                        float _1628 = sqrt(_1584);
                        float _1629 = 1.0f - _1628;
                        float _1635 = 1.0f - _1561;
                        float _1636 = _1635 * _1635;
                        float _1637 = _1636 * _1636;
                        _1651 = _1567 * (((clamp(50.0f * _724.y, 0.0f, 1.0f) * (_1637 * _1635)).xxx + (_724 * mad(-_1637, _1635, 1.0f))) * (((_1584 / ((3.1415927410125732421875f * _1623) * _1623)) * _1620) * (0.5f / mad(_1431, mad(_1564, _1629, _1628), _1564 * mad(_1431, _1629, _1628)))));
                    }
                    _1653 = ((_722 * 0.3183098733425140380859375f) * _1567) * 1.0f;
                    _1654 = _1651;
                }
                else
                {
                    _1653 = 0.0f.xxx;
                    _1654 = 0.0f.xxx;
                }
                float3 _1657 = ((float3(float((_1277 >> 0u) & 1023u), float((_1277 >> 10u) & 1023u), float((_1277 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1258].x) * _1365) * _1373;
                _1660 = mad(_1653 * (float((_1307 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1657, 0.0f.xxx);
                _1661 = (_1654 * (float(_1307 & 1023u) * 0.000977517105638980865478515625f)) * _1657;
            }
            else
            {
                _1660 = 0.0f.xxx;
                _1661 = 0.0f.xxx;
            }
            _1662 = _1660;
            _1663 = _1661;
        }
        else
        {
            _1662 = 0.0f.xxx;
            _1663 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1271 >> 8u) & 7u) & _932) != 0u)
        {
            _1242 = _1241 + float4(_1662, 0.0f);
            _1245 = _1244 + float4(_1663, 0.0f);
        }
        else
        {
            _1242 = _1241;
            _1245 = _1244;
        }
    }
    bool4 _1681 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1690 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1728 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _685) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1729 = _1728.x;
    float2 _1738 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1729 * _1729, exp2((-9.27999973297119140625f) * clamp(dot(_684, _429), 0.0f, 1.0f))), _1729, _1728.y)) + _1728.zw;
    float3 _1763 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_684 * (2.0f * dot(_429, _684))) - _429, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1690].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_685, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1690].x, _287).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_724 * _1738.x) + (clamp(50.0f * _724.y, 0.0f, 1.0f) * _1738.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_840 * float2(float(_846.x), float(_846.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_642.xxx, ((((((_724 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _642) + ((_724 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _642) + ((_724 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _642), float4(_1681.x ? 0.0f.xxxx.x : _1241.x, _1681.y ? 0.0f.xxxx.y : _1241.y, _1681.z ? 0.0f.xxxx.z : _1241.z, _1681.w ? 0.0f.xxxx.w : _1241.w).xyz + float4(_1681.x ? 0.0f.xxxx.x : _1244.x, _1681.y ? 0.0f.xxxx.y : _1244.y, _1681.z ? 0.0f.xxxx.z : _1244.z, _1681.w ? 0.0f.xxxx.w : _1244.w).xyz);
    bool _1766 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2192 = 0.0f.xxxx;
    if (_1766)
    {
        uint2 _1778 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1780 = normalize(_413 - View_View_TranslatedWorldCameraOrigin);
        uint _1781 = _1778.x;
        uint4 _1785 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1781, _1778.y, 0u), 0u));
        uint _1786 = _1785.x;
        float4 _1788 = 0.0f.xxxx;
        _1788 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1789 = 0.0f.xxxx;
        for (int _1791 = 0; uint(_1791) < _1786; _1788 = _1789, _1791++)
        {
            uint _1802 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1781, _1778.y, uint(1 + _1791)), 0u)).x * 3u;
            float4 _1804 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1802);
            float4 _1806 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1802 + 1u);
            float4 _1808 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1802 + 2u);
            float3 _1809 = _1804.xyz;
            float _1810 = _1804.w;
            float _1811 = 1.0f / _1810;
            uint _1813 = asuint(_1806.x);
            float2 _1819 = float2(spvUnpackHalf2x16(_1813).x, spvUnpackHalf2x16(_1813 >> 16u).x);
            float3 _1820 = float3(_1819.x, _1819.y, _291.z);
            uint _1822 = asuint(_1806.y);
            _1820.z = spvUnpackHalf2x16(_1822).x;
            float3 _1829 = 0.0f.xxx;
            _1829.x = spvUnpackHalf2x16(_1822 >> 16u).x;
            uint _1831 = asuint(_1806.z);
            float2 _1837 = float2(spvUnpackHalf2x16(_1831).x, spvUnpackHalf2x16(_1831 >> 16u).x);
            float3 _1838 = float3(_1829.x, _1837.x, _1837.y);
            float3x3 _1843 = float3x3(_1820 * _1811, _1838 * _1811, cross(_1820, _1838) * _1811);
            uint _1845 = asuint(_1808.x);
            float2 _1848 = spvUnpackHalf2x16((_1845 >> 17u) & 32752u);
            float _1849 = _1848.x;
            float2 _1852 = spvUnpackHalf2x16((_1845 >> 6u) & 32752u);
            float _1853 = _1852.x;
            float2 _1856 = spvUnpackHalf2x16((_1845 << 5u) & 32736u);
            float _1857 = _1856.x;
            uint _1859 = asuint(_1808.y);
            float3 _1877 = 0.0f.xxx;
            if (_1859 > 0u)
            {
                _1877 = float3(spvUnpackHalf2x16((_1859 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1859 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1859 << 5u) & 32736u).x);
            }
            else
            {
                _1877 = 0.0f.xxx;
            }
            uint _1879 = asuint(_1808.z);
            float _1894 = float((_1879 >> 24u) & 255u);
            float _1895 = _1894 * 0.0039215688593685626983642578125f;
            float3 _1902 = mul(View_View_TranslatedWorldCameraOrigin - _1809, _1843);
            float3 _1904 = normalize(mul(_1780, _1843));
            float _1906 = dot(_1904, _1904);
            float _1907 = dot(_1904, _1902);
            float _1908 = 2.0f * _1907;
            float _1913 = mad(_1908, _1908, -((4.0f * _1906) * mad(-1.0f, 1.0f, dot(_1902, _1902))));
            float2 _1925 = 0.0f.xx;
            [flatten]
            if (_1913 >= 0.0f)
            {
                _1925 = ((_1907 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1913))) / (2.0f * _1906).xx;
            }
            else
            {
                _1925 = (-1.0f).xx;
            }
            float3 _1931 = mul(_413 - _1809, _1843) - _1902;
            float2 _1935 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1811, _1925), sqrt(dot(_1931, _1931)).xx);
            float _2087 = 0.0f;
            float3 _2088 = 0.0f.xxx;
            if (any(bool2(_1935.x > 0.0f.xx.x, _1935.y > 0.0f.xx.y)))
            {
                float2 _1956 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1946 = dot(_1780, View_View_ViewForward);
                    _1956 = max(_1935, ((View_View_VolumetricFogMaxDistance * ((_1946 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1946) : 0.0f)) * _1811).xx);
                }
                else
                {
                    _1956 = _1935;
                }
                float _1961 = max(0.0f, abs(_1956.y - _1956.x));
                float _2085 = 0.0f;
                float3 _2086 = 0.0f.xxx;
                if (_1961 > 0.0f)
                {
                    float3 _1966 = _1902 + (_1904 * _1956.x);
                    float _2002 = 0.0f;
                    if (_1849 > 0.0f)
                    {
                        float _1970 = dot(_1904, _1966);
                        float _1971 = dot(_1966, _1966);
                        float _1972 = _1971 - 1.0f;
                        float _1974 = mad(_1970, _1970, 1.0f - _1971);
                        float _2001 = 0.0f;
                        if (_1974 >= 0.0f)
                        {
                            float _1978 = sqrt(_1974);
                            float _1979 = -_1970;
                            float _1982 = max(_1979 - _1978, 0.0f);
                            float _1984 = min(max(_1979 + _1978, 0.0f), _1961);
                            float _1985 = _1982 * _1982;
                            float _1986 = _1984 * _1984;
                            _2001 = max(0.0f, (_1849 * ((-mad(_1986 * _1984, 0.3333333432674407958984375f, mad(_1972, _1984, _1970 * _1986))) - (-mad(_1985 * _1982, 0.3333333432674407958984375f, mad(_1972, _1982, _1970 * _1985))))) * 0.75f);
                        }
                        else
                        {
                            _2001 = 0.0f;
                        }
                        _2002 = _2001;
                    }
                    else
                    {
                        _2002 = 0.0f;
                    }
                    float _2027 = 0.0f;
                    if (_1853 > 0.0f)
                    {
                        float _2008 = _1904.z;
                        float _2014 = (abs(_2008) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2008 >= 0.0f) ? 1.0f : (-1.0f))) : _2008;
                        float _2017 = max(-80.0f, (_1966.z - _1808.w) * _1857);
                        _2027 = (_1853 / (_1857 * _2014)) * (exp(-_2017) - exp(-mad(_2014 * _1961, _1857, _2017)));
                    }
                    else
                    {
                        _2027 = 0.0f;
                    }
                    float _2038 = exp((log(mad(exp(-_2002) - 1.0f, 1.0f - exp(-_2027), 1.0f)) * _1810) * 0.00999999977648258209228515625f);
                    float _2042 = _1894 * (-0.0039215688593685626983642578125f);
                    float _2049 = mad(_1894 * (-0.007843137718737125396728515625f), dot(_1780, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2042, _2042, 1.0f));
                    float3 _2054 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1895, _2042, 1.0f) / ((12.56637096405029296875f * _2049) * sqrt(_2049)));
                    float3 _2082 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2067 = float4(_1780 * _2042, 1.0f);
                        _2082 = _2054 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2067), dot(View_SkyIrradianceEnvironmentMap[1u], _2067), dot(View_SkyIrradianceEnvironmentMap[2u], _2067)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2082 = _2054;
                    }
                    _2085 = _2038;
                    _2086 = mad(_2082, float4(float((_1879 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1879 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1879 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1895).xyz, _1877) * (1.0f - _2038);
                }
                else
                {
                    _2085 = 1.0f;
                    _2086 = 0.0f.xxx;
                }
                _2087 = _2085;
                _2088 = _2086;
            }
            else
            {
                _2087 = 1.0f;
                _2088 = 0.0f.xxx;
            }
            _1789 = float4((_1788.xyz * _2087) + float4(_2088, _2087).xyz, _1788.w * _2087);
        }
        float _2108 = _1788.w * in_var_TEXCOORD7.w;
        float4 _2116 = float4(_89, 1.0f);
        precise float4 _93 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _94 = _2116 + _93;
        precise float4 _95 = _94 - _2116;
        precise float4 _96 = _94 - _95;
        precise float4 _97 = _2116 - _96;
        precise float4 _98 = _93 - _95;
        precise float4 _99 = _97 + _98;
        float4 _2127 = mul(_94 + (float4(_92, 0.0f) + _99), View_View_RelativeWorldToClip);
        float _2128 = _2127.w;
        float4 _2191 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2191 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2174 = 0.0f.xxxx;
            float _2175 = 0.0f;
            if (_1766)
            {
                float4 _2170 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2127.xy / _2128.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2128, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2172 = _2170.xyz * View_View_OneOverPreExposure;
                _2174 = float4(_2172.x, _2172.y, _2172.z, _2170.w);
                _2175 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2174 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2175 = 0.0f;
            }
            float4 _2180 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2174, clamp((_696 - _2175) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2183 = _2180.w;
            _2191 = float4(_2180.xyz + (float4(_1788.xyz + (in_var_TEXCOORD7.xyz * _1788.w), _2108).xyz * _2183), _2183 * _2108);
            break;
        } while(false);
        _2192 = _2191;
    }
    else
    {
        _2192 = in_var_TEXCOORD7;
    }
    float3 _2199 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2257 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _100 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _101 = _100 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _102 = _101 - _100;
        precise float3 _103 = Primitive_Primitive_ObjectWorldPositionLow - _102;
        precise float3 _104 = _89 - _101;
        precise float3 _105 = _92 - _103;
        precise float3 _106 = _104 + _105;
        float3 _2219 = abs(_106);
        float3 _2220 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2256 = 0.0f.xxx;
        if (any(bool3(_2219.x > _2220.x, _2219.y > _2220.y, _2219.z > _2220.z)))
        {
            float3 _2252 = frac(dot(frac(frac(_89 * 1.52587890625e-05f.xxx) + frac(_92 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2256 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2252.x > 0.5f.xxx.x, _2252.y > 0.5f.xxx.y, _2252.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2242 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2230 = abs(_413 - in_var_TEXCOORD9);
                _2242 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2230.x, max(_2230.y, _2230.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2242 = _2199;
            }
            _2256 = _2242;
        }
        _2257 = _2256;
    }
    else
    {
        _2257 = _2199;
    }
    float4 _2266 = float4(((lerp(_1763, _722 + (_724 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2257) * _2192.w) + _2192.xyz, 0.0f);
    _2266.w = 0.0f;
    float4 _2270 = _2266 * View_View_PreExposure;
    float3 _2275 = min(_2270.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2275.x, _2275.y, _2275.z, _2270.w);
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
