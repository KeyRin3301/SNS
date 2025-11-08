#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _291 = 0.0f;
static float _294 = 0.0f;
static float3 _295 = 0.0f.xxx;

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
    float _324 = 1.0f / gl_FragCoord.w;
    float4 _370 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _374 = mad(float2(_370.zw), 2.0f.xx, (-1.0f).xx);
    float _378 = sqrt(max(1.0f - dot(_374, _374), 0.0f));
    float _379 = _374.x;
    float3 _381 = float3(_379, _374.y, _378);
    float3 _384 = normalize(float3(_378, 0.0f, -_379));
    float2 _399 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _406 = float4(mad(_399, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _294, 1.0f) * _324;
    float4 _411 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _415 = _411.xyz / _411.w.xxx;
    float3 _416 = _415 - View_View_RelativePreViewTranslationTO;
    precise float3 _89 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _416);
    precise float3 _92 = _416 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _89);
    bool _418 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _419 = -View_View_ViewForward;
    float3 _421 = normalize(-_415);
    float3 _431 = float3(_418 ? _419.x : _421.x, _418 ? _419.y : _421.y, _418 ? _419.z : _421.z);
    float4 _435 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _438 = dot(_435, Material_Material_PreshaderBuffer[0]);
    float _441 = dot(_435, Material_Material_PreshaderBuffer[1]);
    float _444 = dot(_435, Material_Material_PreshaderBuffer[2]);
    float _447 = dot(_435, Material_Material_PreshaderBuffer[3]);
    float2 _450 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _462 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _450 * Material_Material_PreshaderBuffer[4].x.xx).x * Material_Material_PreshaderBuffer[4].y;
    float4 _474 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_462) + Material_Material_PreshaderBuffer[4].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _478 = Material_Material_PreshaderBuffer[4].w.xx;
    float2 _479 = mad(_474.xy, _478, _450);
    float2 _481 = mad(_474.zw, _478, _450);
    float2 _483 = ddy(_450);
    float2 _484 = ddx(_450);
    float2 _496 = lerp(_479, _481, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _481, _484, _483) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _479, _484, _483)).x, frac(_462))), 0.0f, 1.0f).xx);
    float2 _502 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _496, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _511 = _438.xxx;
    float2 _517 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _496, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _526 = _441.xxx;
    float2 _534 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _496, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _543 = _444.xxx;
    float2 _550 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _496, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _559 = _447.xxx;
    float3 _567 = normalize(mul(normalize((mad(float4(_550, sqrt(clamp(1.0f - dot(_550, _550), 0.0f, 1.0f)), 1.0f).xyz, _559, mad(float4(_534, sqrt(clamp(1.0f - dot(_534, _534), 0.0f, 1.0f)), 1.0f).xyz, _543, mad(float4(_502, sqrt(clamp(1.0f - dot(_502, _502), 0.0f, 1.0f)), 1.0f).xyz, _511, float4(_517, sqrt(clamp(1.0f - dot(_517, _517), 0.0f, 1.0f)), 1.0f).xyz * _526))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_384, cross(_381, _384), _381), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _568 = _567 * 1.0f;
    float4 _603 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _608 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _615 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _621 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _496, View_View_MaterialTextureMipBias);
    float3 _635 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _496, View_View_MaterialTextureMipBias).xyz, _559, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _496, View_View_MaterialTextureMipBias).xyz, _543, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _496, View_View_MaterialTextureMipBias).xyz, _511, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _496, View_View_MaterialTextureMipBias).xyz * _526))), 0.0f.xxx, 1.0f.xxx);
    float _639 = mad(clamp(mad(_621.y * Material_Material_PreshaderBuffer[6].x, _447, mad(_615.y, _444, mad(_603.y, _438, _608.y * _441))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _640 = clamp(mad(_621.x, _447, mad(_615.x, _444, mad(_603.x, _438, _608.x * _441))), 0.0f, 1.0f);
    uint _641 = in_var_PRIMITIVE_ID * 43u;
    float3 _685 = 0.0f.xxx;
    float _686 = 0.0f;
    float _687 = 0.0f;
    float _688 = 0.0f;
    float3 _689 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_641].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _657 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _661 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _657, 0.0f);
        float4 _664 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _657, 0.0f);
        float4 _667 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _657, 0.0f);
        float _677 = _667.w;
        _685 = normalize((_568 * _664.w) + ((_664.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _686 = mad(_639, _677, _667.z);
        _687 = mad(0.5f, _677, _667.y);
        _688 = _667.x;
        _689 = (_635 * _661.w) + _661.xyz;
    }
    else
    {
        _685 = _568;
        _686 = _639;
        _687 = 0.5f;
        _688 = 0.0f;
        _689 = _635;
    }
    uint _692 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_641].x);
    float _700 = _406.w;
    float3 _713 = ((_689 - (_689 * _688)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _720 = (lerp((0.07999999821186065673828125f * _687).xxx, _689, _688.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _721 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _726 = 0.0f.xxx;
    if (_721)
    {
        _726 = _713 + (_720 * 0.449999988079071044921875f);
    }
    else
    {
        _726 = _713;
    }
    bool3 _727 = _721.xxx;
    float3 _728 = float3(_727.x ? 0.0f.xxx.x : _720.x, _727.y ? 0.0f.xxx.y : _720.y, _727.z ? 0.0f.xxx.z : _720.z);
    float2 _734 = mad(_406.xy / _700.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
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
        if ((abs((mad(_752, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_752, View_View_InvDeviceZToWorldZTransform.z, _762))) - _700) / _700) > 0.00999999977648258209228515625f)
        {
            float2 _775 = _734 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _779 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746 - 1, _747, 0).xy, 0));
            float _780 = _779.x;
            float _786 = abs((mad(_780, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_780, View_View_InvDeviceZToWorldZTransform.z, _762))) - _700);
            bool _787 = _786 < 100000000.0f;
            bool2 _788 = _787.xx;
            float2 _789 = float2(_788.x ? _775.x : _734.x, _788.y ? _775.y : _734.y);
            float _790 = _787 ? _786 : 100000000.0f;
            float2 _793 = _734 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _797 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746, _747 + 1, 0).xy, 0));
            float _798 = _797.x;
            float _804 = abs((mad(_798, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_798, View_View_InvDeviceZToWorldZTransform.z, _762))) - _700);
            bool _805 = _804 < _790;
            bool2 _806 = _805.xx;
            float2 _807 = float2(_806.x ? _793.x : _789.x, _806.y ? _793.y : _789.y);
            float _808 = _805 ? _804 : _790;
            float2 _810 = _734 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _814 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746 + 1, _747, 0).xy, 0));
            float _815 = _814.x;
            float _821 = abs((mad(_815, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_815, View_View_InvDeviceZToWorldZTransform.z, _762))) - _700);
            bool _822 = _821 < _808;
            bool2 _823 = _822.xx;
            float2 _824 = float2(_823.x ? _810.x : _807.x, _823.y ? _810.y : _807.y);
            float2 _828 = _734 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _832 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_746, _747 - 1, 0).xy, 0));
            float _833 = _832.x;
            bool2 _841 = (abs((mad(_833, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_833, View_View_InvDeviceZToWorldZTransform.z, _762))) - _700) < (_822 ? _821 : _808)).xx;
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
    uint2 _894 = uint2(_399 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _922 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _922 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_844 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _922 = 1.0f.xxxx;
    }
    float4 _923 = _922 * _922;
    uint _926 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_641].x);
    uint _939 = (uint((_926 & 2048u) != 0u) | (uint((_926 & 4096u) != 0u) << 1u)) | (uint((_926 & 8192u) != 0u) << 2u);
    float4 _1231 = 0.0f.xxxx;
    float4 _1232 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _965 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _980 = dot(float4(float(_965 & 1u), float((_965 & 2u) >> 1u), float((_965 & 4u) >> 2u), float((_965 & 8u) >> 3u)), _923);
        bool _982 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _983 = _982 ? 1.0f : _980;
        float _996 = 0.0f;
        float _997 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _990 = clamp(mad(_700, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _992 = lerp(_982 ? _980 : 1.0f, 1.0f, _990 * _990);
            _996 = min(_992, _983) * _983;
            _997 = _992 * _983;
        }
        else
        {
            _996 = 1.0f;
            _997 = 1.0f;
        }
        float3 _1213 = 0.0f.xxx;
        float3 _1214 = 0.0f.xxx;
        [branch]
        if ((_997 + _996) > 0.0f)
        {
            float _1004 = max(_686, View_View_MinRoughness);
            float _1005 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1008 = rsqrt(_1005);
            float3 _1009 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1008;
            float _1010 = dot(_685, _1009);
            float _1028 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1017 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1005 + 1.0f)), 0.0f, 1.0f));
                float _1027 = 0.0f;
                if (_1010 < _1017)
                {
                    float _1023 = _1017 + max(_1010, -_1017);
                    _1027 = (_1023 * _1023) / (4.0f * _1017);
                }
                else
                {
                    _1027 = _1010;
                }
                _1028 = _1027;
            }
            else
            {
                _1028 = _1010;
            }
            float _1029 = clamp(_1028, 0.0f, 1.0f);
            float _1030 = max(_1004, View_View_MinRoughness);
            float _1035 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1008) * mad(-_1030, _1030, 1.0f), 0.0f, 1.0f);
            float _1037 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1008, 0.0f, 1.0f);
            float3 _1206 = 0.0f.xxx;
            float3 _1207 = 0.0f.xxx;
            [branch]
            if (_1029 > 0.0f)
            {
                float _1048 = dot(_685, _431);
                float _1049 = dot(_431, _1009);
                float _1051 = rsqrt(mad(2.0f, _1049, 2.0f));
                bool _1057 = _1035 > 0.0f;
                float _1136 = 0.0f;
                float _1137 = 0.0f;
                if (_1057)
                {
                    float _1062 = sqrt(mad(-_1035, _1035, 1.0f));
                    float _1063 = 2.0f * _1010;
                    float _1064 = -_1049;
                    float _1065 = mad(_1063, _1048, _1064);
                    float _1134 = 0.0f;
                    float _1135 = 0.0f;
                    if (_1065 >= _1062)
                    {
                        _1134 = 1.0f;
                        _1135 = abs(_1048);
                    }
                    else
                    {
                        float _1070 = -_1065;
                        float _1073 = _1035 * rsqrt(mad(_1070, _1065, 1.0f));
                        float _1074 = mad(_1070, _1010, _1048);
                        float _1078 = mad(_1070, _1049, mad(2.0f * _1048, _1048, -1.0f));
                        float _1089 = _1073 * sqrt(clamp(mad(_1063 * _1048, _1049, mad(_1064, _1049, mad(-_1048, _1048, mad(-_1010, _1010, 1.0f)))), 0.0f, 1.0f));
                        float _1091 = (_1089 * 2.0f) * _1048;
                        float _1092 = mad(_1010, _1062, _1048);
                        float _1093 = mad(_1073, _1074, _1092);
                        float _1095 = mad(_1073, _1078, mad(_1049, _1062, 1.0f));
                        float _1096 = _1089 * _1095;
                        float _1097 = _1093 * _1095;
                        float _1102 = _1097 * mad(-0.5f, _1096, (0.25f * _1091) * _1093);
                        float _1112 = mad(_1093, mad(_1092, _1095 * _1095, _1097 * mad(-0.5f, mad(_1049, _1062, _1095), -0.5f)), mad(_1096, _1096, (_1091 * _1093) * mad(_1091, _1093, _1096 * (-2.0f))));
                        float _1116 = (2.0f * _1102) / mad(_1112, _1112, _1102 * _1102);
                        float _1117 = _1116 * _1112;
                        float _1119 = mad(-_1116, _1102, 1.0f);
                        float _1125 = mad(_1049, _1062, mad(_1119, _1073 * _1078, _1117 * _1091));
                        float _1127 = rsqrt(mad(2.0f, _1125, 2.0f));
                        _1134 = clamp((mad(_1010, _1062, mad(_1119, _1073 * _1074, _1117 * _1089)) + _1048) * _1127, 0.0f, 1.0f);
                        _1135 = clamp(mad(_1127, _1125, _1127), 0.0f, 1.0f);
                    }
                    _1136 = _1134;
                    _1137 = _1135;
                }
                else
                {
                    _1136 = clamp((_1010 + _1048) * _1051, 0.0f, 1.0f);
                    _1137 = clamp(mad(_1051, _1049, _1051), 0.0f, 1.0f);
                }
                float _1140 = clamp(abs(_1048) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1142 = 1.0f.xxx * _1029;
                float3 _1204 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1204 = 0.0f.xxx;
                }
                else
                {
                    float _1149 = _1004 * _1004;
                    float _1159 = 0.0f;
                    if (_1037 > 0.0f)
                    {
                        _1159 = clamp(mad(_1149, _1149, (_1037 * _1037) / mad(_1137, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1159 = _1149 * _1149;
                    }
                    float _1173 = 0.0f;
                    if (_1057)
                    {
                        _1173 = _1159 / (_1159 + (((0.25f * _1035) * mad(3.0f, asfloat(532487669 + (asint(_1159) >> 1)), _1035)) / (_1137 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1173 = 1.0f;
                    }
                    float _1176 = mad(mad(_1136, _1159, -_1136), _1136, 1.0f);
                    float _1181 = sqrt(_1159);
                    float _1182 = 1.0f - _1181;
                    float _1188 = 1.0f - _1137;
                    float _1189 = _1188 * _1188;
                    float _1190 = _1189 * _1189;
                    _1204 = _1142 * (((clamp(50.0f * _728.y, 0.0f, 1.0f) * (_1190 * _1188)).xxx + (_728 * mad(-_1190, _1188, 1.0f))) * (((_1159 / ((3.1415927410125732421875f * _1176) * _1176)) * _1173) * (0.5f / mad(_1029, mad(_1140, _1182, _1181), _1140 * mad(_1029, _1182, _1181)))));
                }
                _1206 = ((_726 * 0.3183098733425140380859375f) * _1142) * 1.0f;
                _1207 = _1204;
            }
            else
            {
                _1206 = 0.0f.xxx;
                _1207 = 0.0f.xxx;
            }
            float3 _1210 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _997;
            _1213 = mad(_1206 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1210, 0.0f.xxx);
            _1214 = (_1207 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1210;
        }
        else
        {
            _1213 = 0.0f.xxx;
            _1214 = 0.0f.xxx;
        }
        float4 _1218 = float4(_1213, 0.0f);
        float4 _1222 = float4(_1214, 0.0f);
        float4 _1229 = 0.0f.xxxx;
        float4 _1230 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _939) != 0u)
        {
            _1229 = float4(_1218.x, _1218.y, _1218.z, _1218.w);
            _1230 = float4(_1222.x, _1222.y, _1222.z, _1222.w);
        }
        else
        {
            _1229 = 0.0f.xxxx;
            _1230 = 0.0f.xxxx;
        }
        _1231 = _1229;
        _1232 = _1230;
    }
    else
    {
        _1231 = 0.0f.xxxx;
        _1232 = 0.0f.xxxx;
    }
    uint _1233 = ((((min(uint(max(0.0f, log2(mad(_324, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _894.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _894.x) * 2u;
    uint _1243 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1233 + 1u] & 1073741823u;
    uint _1246 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1233] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1248 = 0.0f.xxxx;
    float4 _1251 = 0.0f.xxxx;
    _1248 = _1231;
    _1251 = _1232;
    float4 _1249 = 0.0f.xxxx;
    float4 _1252 = 0.0f.xxxx;
    [loop]
    for (uint _1253 = 0u; _1253 < _1246; _1248 = _1249, _1251 = _1252, _1253++)
    {
        uint _1262 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1243 + _1253).x * 6u;
        uint _1265 = _1262 + 1u;
        uint _1268 = _1262 + 2u;
        uint _1271 = _1262 + 3u;
        uint _1274 = _1262 + 4u;
        uint _1278 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1268].w);
        uint _1284 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1265].y);
        uint _1300 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1271].z);
        float2 _1302 = spvUnpackHalf2x16(_1300 & 65535u);
        float _1303 = _1302.x;
        float2 _1306 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1271].w));
        float _1307 = _1306.x;
        bool _1312 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1265].w == 0.0f;
        uint _1314 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1274].w);
        uint _1327 = _1278 >> 4u;
        float3 _1343 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1262].xyz - _415;
        float _1344 = dot(_1343, _1343);
        float _1361 = 0.0f;
        if (_1312)
        {
            float _1356 = _1344 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1262].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1262].w);
            float _1359 = clamp(mad(-_1356, _1356, 1.0f), 0.0f, 1.0f);
            _1361 = _1359 * _1359;
        }
        else
        {
            float3 _1350 = _1343 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1262].w;
            _1361 = pow(1.0f - clamp(dot(_1350, _1350), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1265].w);
        }
        float _1372 = 0.0f;
        if (((_1278 >> 16u) & 3u) == 2u)
        {
            float _1369 = clamp((dot(_1343 * rsqrt(_1344), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1268].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1271].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1271].y, 0.0f, 1.0f);
            _1372 = _1361 * (_1369 * _1369);
        }
        else
        {
            _1372 = _1361;
        }
        float3 _1669 = 0.0f.xxx;
        float3 _1670 = 0.0f.xxx;
        [branch]
        if (_1372 > 0.0f)
        {
            float _1380 = 0.0f;
            [branch]
            if (uint(int((_1278 & 255u) != 0u)) != 0u)
            {
                _1380 = dot(float4(float(_1327 & 1u), float((_1327 & 2u) >> 1u), float((_1327 & 4u) >> 2u), float((_1327 & 8u) >> 3u)), _923);
            }
            else
            {
                _1380 = 1.0f;
            }
            float3 _1667 = 0.0f.xxx;
            float3 _1668 = 0.0f.xxx;
            [branch]
            if ((_1380 + _1380) > 0.0f)
            {
                float3 _1386 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1274].xyz * (0.5f * _1307);
                float3 _1387 = _1343 - _1386;
                float3 _1388 = _1343 + _1386;
                float _1391 = max(_686, View_View_MinRoughness);
                bool _1392 = _1307 > 0.0f;
                float _1417 = 0.0f;
                float _1418 = 0.0f;
                float _1419 = 0.0f;
                [branch]
                if (_1392)
                {
                    float _1404 = rsqrt(dot(_1387, _1387));
                    float _1405 = rsqrt(dot(_1388, _1388));
                    float _1406 = _1404 * _1405;
                    float _1408 = dot(_1387, _1388) * _1406;
                    _1417 = _1408;
                    _1418 = 0.5f * mad(dot(_685, _1387), _1404, dot(_685, _1388) * _1405);
                    _1419 = _1406 / mad(_1404, _1405, mad(_1408, 0.5f, 0.5f));
                }
                else
                {
                    float _1396 = dot(_1387, _1387);
                    _1417 = 1.0f;
                    _1418 = dot(_685, _1387 * rsqrt(_1396));
                    _1419 = 1.0f / (_1396 + 1.0f);
                }
                float _1437 = 0.0f;
                if (_1303 > 0.0f)
                {
                    float _1426 = sqrt(clamp((_1303 * _1303) * _1419, 0.0f, 1.0f));
                    float _1436 = 0.0f;
                    if (_1418 < _1426)
                    {
                        float _1432 = _1426 + max(_1418, -_1426);
                        _1436 = (_1432 * _1432) / (4.0f * _1426);
                    }
                    else
                    {
                        _1436 = _1418;
                    }
                    _1437 = _1436;
                }
                else
                {
                    _1437 = _1418;
                }
                float _1438 = clamp(_1437, 0.0f, 1.0f);
                float3 _1456 = 0.0f.xxx;
                if (_1392)
                {
                    float3 _1443 = reflect(-_431, _685);
                    float3 _1444 = _1388 - _1387;
                    float _1445 = dot(_1443, _1444);
                    _1456 = _1387 + (_1444 * clamp(dot(_1387, (_1443 * _1445) - _1444) / mad(_1307, _1307, -(_1445 * _1445)), 0.0f, 1.0f));
                }
                else
                {
                    _1456 = _1387;
                }
                float _1458 = rsqrt(dot(_1456, _1456));
                float3 _1459 = _1456 * _1458;
                float _1460 = max(_1391, View_View_MinRoughness);
                float _1465 = clamp((_1303 * _1458) * mad(-_1460, _1460, 1.0f), 0.0f, 1.0f);
                float _1467 = clamp(spvUnpackHalf2x16(_1300 >> 16u).x * _1458, 0.0f, 1.0f);
                float3 _1660 = 0.0f.xxx;
                float3 _1661 = 0.0f.xxx;
                [branch]
                if (_1438 > 0.0f)
                {
                    float _1478 = dot(_685, _1459);
                    float _1479 = dot(_685, _431);
                    float _1480 = dot(_431, _1459);
                    float _1482 = rsqrt(mad(2.0f, _1480, 2.0f));
                    bool _1488 = _1465 > 0.0f;
                    float _1567 = 0.0f;
                    float _1568 = 0.0f;
                    if (_1488)
                    {
                        float _1493 = sqrt(mad(-_1465, _1465, 1.0f));
                        float _1494 = 2.0f * _1478;
                        float _1495 = -_1480;
                        float _1496 = mad(_1494, _1479, _1495);
                        float _1565 = 0.0f;
                        float _1566 = 0.0f;
                        if (_1496 >= _1493)
                        {
                            _1565 = 1.0f;
                            _1566 = abs(_1479);
                        }
                        else
                        {
                            float _1501 = -_1496;
                            float _1504 = _1465 * rsqrt(mad(_1501, _1496, 1.0f));
                            float _1505 = mad(_1501, _1478, _1479);
                            float _1509 = mad(_1501, _1480, mad(2.0f * _1479, _1479, -1.0f));
                            float _1520 = _1504 * sqrt(clamp(mad(_1494 * _1479, _1480, mad(_1495, _1480, mad(-_1479, _1479, mad(-_1478, _1478, 1.0f)))), 0.0f, 1.0f));
                            float _1522 = (_1520 * 2.0f) * _1479;
                            float _1523 = mad(_1478, _1493, _1479);
                            float _1524 = mad(_1504, _1505, _1523);
                            float _1526 = mad(_1504, _1509, mad(_1480, _1493, 1.0f));
                            float _1527 = _1520 * _1526;
                            float _1528 = _1524 * _1526;
                            float _1533 = _1528 * mad(-0.5f, _1527, (0.25f * _1522) * _1524);
                            float _1543 = mad(_1524, mad(_1523, _1526 * _1526, _1528 * mad(-0.5f, mad(_1480, _1493, _1526), -0.5f)), mad(_1527, _1527, (_1522 * _1524) * mad(_1522, _1524, _1527 * (-2.0f))));
                            float _1547 = (2.0f * _1533) / mad(_1543, _1543, _1533 * _1533);
                            float _1548 = _1547 * _1543;
                            float _1550 = mad(-_1547, _1533, 1.0f);
                            float _1556 = mad(_1480, _1493, mad(_1550, _1504 * _1509, _1548 * _1522));
                            float _1558 = rsqrt(mad(2.0f, _1556, 2.0f));
                            _1565 = clamp((mad(_1478, _1493, mad(_1550, _1504 * _1505, _1548 * _1520)) + _1479) * _1558, 0.0f, 1.0f);
                            _1566 = clamp(mad(_1558, _1556, _1558), 0.0f, 1.0f);
                        }
                        _1567 = _1565;
                        _1568 = _1566;
                    }
                    else
                    {
                        _1567 = clamp((_1478 + _1479) * _1482, 0.0f, 1.0f);
                        _1568 = clamp(mad(_1482, _1480, _1482), 0.0f, 1.0f);
                    }
                    float _1571 = clamp(abs(_1479) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1574 = 1.0f.xxx * ((_1312 ? _1419 : 1.0f) * _1438);
                    float3 _1658 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1307, _1303), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1658 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1581 = _1391 * _1391;
                        float _1591 = 0.0f;
                        if (_1467 > 0.0f)
                        {
                            _1591 = clamp(mad(_1581, _1581, (_1467 * _1467) / mad(_1568, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1591 = _1581 * _1581;
                        }
                        float _1605 = 0.0f;
                        float _1606 = 0.0f;
                        if (_1488)
                        {
                            float _1603 = _1591 + (((0.25f * _1465) * mad(3.0f, asfloat(532487669 + (asint(_1591) >> 1)), _1465)) / (_1568 + 0.001000000047497451305389404296875f));
                            _1605 = _1591 / _1603;
                            _1606 = _1603;
                        }
                        else
                        {
                            _1605 = 1.0f;
                            _1606 = _1591;
                        }
                        float _1627 = 0.0f;
                        if (_1417 < 1.0f)
                        {
                            float _1613 = sqrt((1.00010001659393310546875f - _1417) / (1.0f + _1417));
                            _1627 = _1605 * sqrt(_1606 / (_1606 + (((0.25f * _1613) * mad(3.0f, asfloat(532487669 + (asint(_1606) >> 1)), _1613)) / (_1568 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1627 = _1605;
                        }
                        float _1630 = mad(mad(_1567, _1591, -_1567), _1567, 1.0f);
                        float _1635 = sqrt(_1591);
                        float _1636 = 1.0f - _1635;
                        float _1642 = 1.0f - _1568;
                        float _1643 = _1642 * _1642;
                        float _1644 = _1643 * _1643;
                        _1658 = _1574 * (((clamp(50.0f * _728.y, 0.0f, 1.0f) * (_1644 * _1642)).xxx + (_728 * mad(-_1644, _1642, 1.0f))) * (((_1591 / ((3.1415927410125732421875f * _1630) * _1630)) * _1627) * (0.5f / mad(_1438, mad(_1571, _1636, _1635), _1571 * mad(_1438, _1636, _1635)))));
                    }
                    _1660 = ((_726 * 0.3183098733425140380859375f) * _1574) * 1.0f;
                    _1661 = _1658;
                }
                else
                {
                    _1660 = 0.0f.xxx;
                    _1661 = 0.0f.xxx;
                }
                float3 _1664 = ((float3(float((_1284 >> 0u) & 1023u), float((_1284 >> 10u) & 1023u), float((_1284 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1265].x) * _1372) * _1380;
                _1667 = mad(_1660 * (float((_1314 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1664, 0.0f.xxx);
                _1668 = (_1661 * (float(_1314 & 1023u) * 0.000977517105638980865478515625f)) * _1664;
            }
            else
            {
                _1667 = 0.0f.xxx;
                _1668 = 0.0f.xxx;
            }
            _1669 = _1667;
            _1670 = _1668;
        }
        else
        {
            _1669 = 0.0f.xxx;
            _1670 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1278 >> 8u) & 7u) & _939) != 0u)
        {
            _1249 = _1248 + float4(_1669, 0.0f);
            _1252 = _1251 + float4(_1670, 0.0f);
        }
        else
        {
            _1249 = _1248;
            _1252 = _1251;
        }
    }
    bool4 _1688 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1698 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_641].w) & 65535u);
    float4 _1736 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _686) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1737 = _1736.x;
    float2 _1746 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1737 * _1737, exp2((-9.27999973297119140625f) * clamp(dot(_685, _431), 0.0f, 1.0f))), _1737, _1736.y)) + _1736.zw;
    float3 _1771 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_685 * (2.0f * dot(_431, _685))) - _431, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1698].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_686, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1698].x, _291).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_728 * _1746.x) + (clamp(50.0f * _728.y, 0.0f, 1.0f) * _1746.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_844 * float2(float(_850.x), float(_850.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_692 & 256u) != 0u), float((_692 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_640.xxx, ((((((_728 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _640) + ((_728 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _640) + ((_728 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _640), float4(_1688.x ? 0.0f.xxxx.x : _1248.x, _1688.y ? 0.0f.xxxx.y : _1248.y, _1688.z ? 0.0f.xxxx.z : _1248.z, _1688.w ? 0.0f.xxxx.w : _1248.w).xyz + float4(_1688.x ? 0.0f.xxxx.x : _1251.x, _1688.y ? 0.0f.xxxx.y : _1251.y, _1688.z ? 0.0f.xxxx.z : _1251.z, _1688.w ? 0.0f.xxxx.w : _1251.w).xyz);
    bool _1774 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2200 = 0.0f.xxxx;
    if (_1774)
    {
        uint2 _1786 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1788 = normalize(_415 - View_View_TranslatedWorldCameraOrigin);
        uint _1789 = _1786.x;
        uint4 _1793 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1789, _1786.y, 0u), 0u));
        uint _1794 = _1793.x;
        float4 _1796 = 0.0f.xxxx;
        _1796 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1797 = 0.0f.xxxx;
        for (int _1799 = 0; uint(_1799) < _1794; _1796 = _1797, _1799++)
        {
            uint _1810 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1789, _1786.y, uint(1 + _1799)), 0u)).x * 3u;
            float4 _1812 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1810);
            float4 _1814 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1810 + 1u);
            float4 _1816 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1810 + 2u);
            float3 _1817 = _1812.xyz;
            float _1818 = _1812.w;
            float _1819 = 1.0f / _1818;
            uint _1821 = asuint(_1814.x);
            float2 _1827 = float2(spvUnpackHalf2x16(_1821).x, spvUnpackHalf2x16(_1821 >> 16u).x);
            float3 _1828 = float3(_1827.x, _1827.y, _295.z);
            uint _1830 = asuint(_1814.y);
            _1828.z = spvUnpackHalf2x16(_1830).x;
            float3 _1837 = 0.0f.xxx;
            _1837.x = spvUnpackHalf2x16(_1830 >> 16u).x;
            uint _1839 = asuint(_1814.z);
            float2 _1845 = float2(spvUnpackHalf2x16(_1839).x, spvUnpackHalf2x16(_1839 >> 16u).x);
            float3 _1846 = float3(_1837.x, _1845.x, _1845.y);
            float3x3 _1851 = float3x3(_1828 * _1819, _1846 * _1819, cross(_1828, _1846) * _1819);
            uint _1853 = asuint(_1816.x);
            float2 _1856 = spvUnpackHalf2x16((_1853 >> 17u) & 32752u);
            float _1857 = _1856.x;
            float2 _1860 = spvUnpackHalf2x16((_1853 >> 6u) & 32752u);
            float _1861 = _1860.x;
            float2 _1864 = spvUnpackHalf2x16((_1853 << 5u) & 32736u);
            float _1865 = _1864.x;
            uint _1867 = asuint(_1816.y);
            float3 _1885 = 0.0f.xxx;
            if (_1867 > 0u)
            {
                _1885 = float3(spvUnpackHalf2x16((_1867 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1867 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1867 << 5u) & 32736u).x);
            }
            else
            {
                _1885 = 0.0f.xxx;
            }
            uint _1887 = asuint(_1816.z);
            float _1902 = float((_1887 >> 24u) & 255u);
            float _1903 = _1902 * 0.0039215688593685626983642578125f;
            float3 _1910 = mul(View_View_TranslatedWorldCameraOrigin - _1817, _1851);
            float3 _1912 = normalize(mul(_1788, _1851));
            float _1914 = dot(_1912, _1912);
            float _1915 = dot(_1912, _1910);
            float _1916 = 2.0f * _1915;
            float _1921 = mad(_1916, _1916, -((4.0f * _1914) * mad(-1.0f, 1.0f, dot(_1910, _1910))));
            float2 _1933 = 0.0f.xx;
            [flatten]
            if (_1921 >= 0.0f)
            {
                _1933 = ((_1915 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1921))) / (2.0f * _1914).xx;
            }
            else
            {
                _1933 = (-1.0f).xx;
            }
            float3 _1939 = mul(_415 - _1817, _1851) - _1910;
            float2 _1943 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1819, _1933), sqrt(dot(_1939, _1939)).xx);
            float _2095 = 0.0f;
            float3 _2096 = 0.0f.xxx;
            if (any(bool2(_1943.x > 0.0f.xx.x, _1943.y > 0.0f.xx.y)))
            {
                float2 _1964 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1954 = dot(_1788, View_View_ViewForward);
                    _1964 = max(_1943, ((View_View_VolumetricFogMaxDistance * ((_1954 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1954) : 0.0f)) * _1819).xx);
                }
                else
                {
                    _1964 = _1943;
                }
                float _1969 = max(0.0f, abs(_1964.y - _1964.x));
                float _2093 = 0.0f;
                float3 _2094 = 0.0f.xxx;
                if (_1969 > 0.0f)
                {
                    float3 _1974 = _1910 + (_1912 * _1964.x);
                    float _2010 = 0.0f;
                    if (_1857 > 0.0f)
                    {
                        float _1978 = dot(_1912, _1974);
                        float _1979 = dot(_1974, _1974);
                        float _1980 = _1979 - 1.0f;
                        float _1982 = mad(_1978, _1978, 1.0f - _1979);
                        float _2009 = 0.0f;
                        if (_1982 >= 0.0f)
                        {
                            float _1986 = sqrt(_1982);
                            float _1987 = -_1978;
                            float _1990 = max(_1987 - _1986, 0.0f);
                            float _1992 = min(max(_1987 + _1986, 0.0f), _1969);
                            float _1993 = _1990 * _1990;
                            float _1994 = _1992 * _1992;
                            _2009 = max(0.0f, (_1857 * ((-mad(_1994 * _1992, 0.3333333432674407958984375f, mad(_1980, _1992, _1978 * _1994))) - (-mad(_1993 * _1990, 0.3333333432674407958984375f, mad(_1980, _1990, _1978 * _1993))))) * 0.75f);
                        }
                        else
                        {
                            _2009 = 0.0f;
                        }
                        _2010 = _2009;
                    }
                    else
                    {
                        _2010 = 0.0f;
                    }
                    float _2035 = 0.0f;
                    if (_1861 > 0.0f)
                    {
                        float _2016 = _1912.z;
                        float _2022 = (abs(_2016) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2016 >= 0.0f) ? 1.0f : (-1.0f))) : _2016;
                        float _2025 = max(-80.0f, (_1974.z - _1816.w) * _1865);
                        _2035 = (_1861 / (_1865 * _2022)) * (exp(-_2025) - exp(-mad(_2022 * _1969, _1865, _2025)));
                    }
                    else
                    {
                        _2035 = 0.0f;
                    }
                    float _2046 = exp((log(mad(exp(-_2010) - 1.0f, 1.0f - exp(-_2035), 1.0f)) * _1818) * 0.00999999977648258209228515625f);
                    float _2050 = _1902 * (-0.0039215688593685626983642578125f);
                    float _2057 = mad(_1902 * (-0.007843137718737125396728515625f), dot(_1788, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2050, _2050, 1.0f));
                    float3 _2062 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1903, _2050, 1.0f) / ((12.56637096405029296875f * _2057) * sqrt(_2057)));
                    float3 _2090 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2075 = float4(_1788 * _2050, 1.0f);
                        _2090 = _2062 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2075), dot(View_SkyIrradianceEnvironmentMap[1u], _2075), dot(View_SkyIrradianceEnvironmentMap[2u], _2075)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2090 = _2062;
                    }
                    _2093 = _2046;
                    _2094 = mad(_2090, float4(float((_1887 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1887 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1887 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1903).xyz, _1885) * (1.0f - _2046);
                }
                else
                {
                    _2093 = 1.0f;
                    _2094 = 0.0f.xxx;
                }
                _2095 = _2093;
                _2096 = _2094;
            }
            else
            {
                _2095 = 1.0f;
                _2096 = 0.0f.xxx;
            }
            _1797 = float4((_1796.xyz * _2095) + float4(_2096, _2095).xyz, _1796.w * _2095);
        }
        float _2116 = _1796.w * in_var_TEXCOORD7.w;
        float4 _2124 = float4(_89, 1.0f);
        precise float4 _93 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _94 = _2124 + _93;
        precise float4 _95 = _94 - _2124;
        precise float4 _96 = _94 - _95;
        precise float4 _97 = _2124 - _96;
        precise float4 _98 = _93 - _95;
        precise float4 _99 = _97 + _98;
        float4 _2135 = mul(_94 + (float4(_92, 0.0f) + _99), View_View_RelativeWorldToClip);
        float _2136 = _2135.w;
        float4 _2199 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2199 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2182 = 0.0f.xxxx;
            float _2183 = 0.0f;
            if (_1774)
            {
                float4 _2178 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2135.xy / _2136.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2136, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2180 = _2178.xyz * View_View_OneOverPreExposure;
                _2182 = float4(_2180.x, _2180.y, _2180.z, _2178.w);
                _2183 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2182 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2183 = 0.0f;
            }
            float4 _2188 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2182, clamp((_700 - _2183) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2191 = _2188.w;
            _2199 = float4(_2188.xyz + (float4(_1796.xyz + (in_var_TEXCOORD7.xyz * _1796.w), _2116).xyz * _2191), _2191 * _2116);
            break;
        } while(false);
        _2200 = _2199;
    }
    else
    {
        _2200 = in_var_TEXCOORD7;
    }
    float3 _2207 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].yzw, Material_Material_PreshaderBuffer[5].x.xxx), 0.0f.xxx);
    float3 _2276 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _100 = Scene_GPUScene_GPUScenePrimitiveSceneData[_641 + 18u].xyz * 2097152.0f;
        precise float3 _101 = _100 + Scene_GPUScene_GPUScenePrimitiveSceneData[_641 + 19u].xyz;
        precise float3 _102 = _101 - _100;
        precise float3 _103 = Scene_GPUScene_GPUScenePrimitiveSceneData[_641 + 19u].xyz - _102;
        uint _2233 = _641 + 32u;
        precise float3 _104 = _89 - _101;
        precise float3 _105 = _92 - _103;
        precise float3 _106 = _104 + _105;
        float3 _2238 = abs(_106);
        float3 _2239 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_641 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_641 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_641 + 27u].w) + 1.0f.xxx;
        float3 _2275 = 0.0f.xxx;
        if (any(bool3(_2238.x > _2239.x, _2238.y > _2239.y, _2238.z > _2239.z)))
        {
            float3 _2271 = frac(dot(frac(frac(_89 * 1.52587890625e-05f.xxx) + frac(_92 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2275 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2271.x > 0.5f.xxx.x, _2271.y > 0.5f.xxx.y, _2271.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2261 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2233].x > 0.0f)
            {
                float3 _2249 = abs(_415 - in_var_TEXCOORD9);
                _2261 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2249.x, max(_2249.y, _2249.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2233].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2261 = _2207;
            }
            _2275 = _2261;
        }
        _2276 = _2275;
    }
    else
    {
        _2276 = _2207;
    }
    float4 _2285 = float4(((lerp(_1771, _726 + (_728 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2276) * _2200.w) + _2200.xyz, 0.0f);
    _2285.w = 0.0f;
    float4 _2289 = _2285 * View_View_PreExposure;
    float3 _2294 = min(_2289.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2294.x, _2294.y, _2294.z, _2289.w);
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
