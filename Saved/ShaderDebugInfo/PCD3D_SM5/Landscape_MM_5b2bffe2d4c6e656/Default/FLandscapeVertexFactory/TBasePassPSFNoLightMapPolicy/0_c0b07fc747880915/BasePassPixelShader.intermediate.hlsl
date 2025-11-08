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
    float2 _532 = _496 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _538 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _532, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _547 = _444.xxx;
    float2 _554 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _496, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _563 = _447.xxx;
    float3 _571 = normalize(mul(normalize((mad(float4(_554, sqrt(clamp(1.0f - dot(_554, _554), 0.0f, 1.0f)), 1.0f).xyz, _563, mad(float4(_538, sqrt(clamp(1.0f - dot(_538, _538), 0.0f, 1.0f)), 1.0f).xyz, _547, mad(float4(_502, sqrt(clamp(1.0f - dot(_502, _502), 0.0f, 1.0f)), 1.0f).xyz, _511, float4(_517, sqrt(clamp(1.0f - dot(_517, _517), 0.0f, 1.0f)), 1.0f).xyz * _526))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_384, cross(_381, _384), _381), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _572 = _571 * 1.0f;
    float4 _607 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _612 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _619 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _532, View_View_MaterialTextureMipBias);
    float4 _625 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _496, View_View_MaterialTextureMipBias);
    float3 _639 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _496, View_View_MaterialTextureMipBias).xyz, _563, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _532, View_View_MaterialTextureMipBias).xyz, _547, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _496, View_View_MaterialTextureMipBias).xyz, _511, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _496, View_View_MaterialTextureMipBias).xyz * _526))), 0.0f.xxx, 1.0f.xxx);
    float _643 = mad(clamp(mad(_625.y * Material_Material_PreshaderBuffer[6].w, _447, mad(_619.y, _444, mad(_607.y, _438, _612.y * _441))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _644 = clamp(mad(_625.x, _447, mad(_619.x, _444, mad(_607.x, _438, _612.x * _441))), 0.0f, 1.0f);
    uint _645 = in_var_PRIMITIVE_ID * 43u;
    float3 _689 = 0.0f.xxx;
    float _690 = 0.0f;
    float _691 = 0.0f;
    float _692 = 0.0f;
    float3 _693 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_645].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _661 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _665 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _661, 0.0f);
        float4 _668 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _661, 0.0f);
        float4 _671 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _661, 0.0f);
        float _681 = _671.w;
        _689 = normalize((_572 * _668.w) + ((_668.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _690 = mad(_643, _681, _671.z);
        _691 = mad(0.5f, _681, _671.y);
        _692 = _671.x;
        _693 = (_639 * _665.w) + _665.xyz;
    }
    else
    {
        _689 = _572;
        _690 = _643;
        _691 = 0.5f;
        _692 = 0.0f;
        _693 = _639;
    }
    uint _696 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_645].x);
    float _704 = _406.w;
    float3 _717 = ((_693 - (_693 * _692)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _724 = (lerp((0.07999999821186065673828125f * _691).xxx, _693, _692.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _725 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _730 = 0.0f.xxx;
    if (_725)
    {
        _730 = _717 + (_724 * 0.449999988079071044921875f);
    }
    else
    {
        _730 = _717;
    }
    bool3 _731 = _725.xxx;
    float3 _732 = float3(_731.x ? 0.0f.xxx.x : _724.x, _731.y ? 0.0f.xxx.y : _724.y, _731.z ? 0.0f.xxx.z : _724.z);
    float2 _738 = mad(_406.xy / _704.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _848 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _749 = int2(trunc(_738 * View_View_BufferSizeAndInvSize.xy));
        int _750 = _749.x;
        int _751 = _749.y;
        float4 _755 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750, _751, 0).xy, 0));
        float _756 = _755.x;
        float _766 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _847 = 0.0f.xx;
        if ((abs((mad(_756, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_756, View_View_InvDeviceZToWorldZTransform.z, _766))) - _704) / _704) > 0.00999999977648258209228515625f)
        {
            float2 _779 = _738 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _783 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750 - 1, _751, 0).xy, 0));
            float _784 = _783.x;
            float _790 = abs((mad(_784, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_784, View_View_InvDeviceZToWorldZTransform.z, _766))) - _704);
            bool _791 = _790 < 100000000.0f;
            bool2 _792 = _791.xx;
            float2 _793 = float2(_792.x ? _779.x : _738.x, _792.y ? _779.y : _738.y);
            float _794 = _791 ? _790 : 100000000.0f;
            float2 _797 = _738 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _801 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750, _751 + 1, 0).xy, 0));
            float _802 = _801.x;
            float _808 = abs((mad(_802, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_802, View_View_InvDeviceZToWorldZTransform.z, _766))) - _704);
            bool _809 = _808 < _794;
            bool2 _810 = _809.xx;
            float2 _811 = float2(_810.x ? _797.x : _793.x, _810.y ? _797.y : _793.y);
            float _812 = _809 ? _808 : _794;
            float2 _814 = _738 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _818 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750 + 1, _751, 0).xy, 0));
            float _819 = _818.x;
            float _825 = abs((mad(_819, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_819, View_View_InvDeviceZToWorldZTransform.z, _766))) - _704);
            bool _826 = _825 < _812;
            bool2 _827 = _826.xx;
            float2 _828 = float2(_827.x ? _814.x : _811.x, _827.y ? _814.y : _811.y);
            float2 _832 = _738 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _836 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750, _751 - 1, 0).xy, 0));
            float _837 = _836.x;
            bool2 _845 = (abs((mad(_837, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_837, View_View_InvDeviceZToWorldZTransform.z, _766))) - _704) < (_826 ? _825 : _812)).xx;
            _847 = float2(_845.x ? _832.x : _828.x, _845.y ? _832.y : _828.y);
        }
        else
        {
            _847 = _738;
        }
        _848 = _847;
    }
    else
    {
        _848 = _738;
    }
    uint _854_dummy_parameter;
    uint2 _854 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _854_dummy_parameter);
    uint2 _898 = uint2(_399 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _926 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _926 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_848 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _926 = 1.0f.xxxx;
    }
    float4 _927 = _926 * _926;
    uint _930 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_645].x);
    uint _943 = (uint((_930 & 2048u) != 0u) | (uint((_930 & 4096u) != 0u) << 1u)) | (uint((_930 & 8192u) != 0u) << 2u);
    float4 _1235 = 0.0f.xxxx;
    float4 _1236 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _969 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _984 = dot(float4(float(_969 & 1u), float((_969 & 2u) >> 1u), float((_969 & 4u) >> 2u), float((_969 & 8u) >> 3u)), _927);
        bool _986 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _987 = _986 ? 1.0f : _984;
        float _1000 = 0.0f;
        float _1001 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _994 = clamp(mad(_704, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _996 = lerp(_986 ? _984 : 1.0f, 1.0f, _994 * _994);
            _1000 = min(_996, _987) * _987;
            _1001 = _996 * _987;
        }
        else
        {
            _1000 = 1.0f;
            _1001 = 1.0f;
        }
        float3 _1217 = 0.0f.xxx;
        float3 _1218 = 0.0f.xxx;
        [branch]
        if ((_1001 + _1000) > 0.0f)
        {
            float _1008 = max(_690, View_View_MinRoughness);
            float _1009 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1012 = rsqrt(_1009);
            float3 _1013 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1012;
            float _1014 = dot(_689, _1013);
            float _1032 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1021 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1009 + 1.0f)), 0.0f, 1.0f));
                float _1031 = 0.0f;
                if (_1014 < _1021)
                {
                    float _1027 = _1021 + max(_1014, -_1021);
                    _1031 = (_1027 * _1027) / (4.0f * _1021);
                }
                else
                {
                    _1031 = _1014;
                }
                _1032 = _1031;
            }
            else
            {
                _1032 = _1014;
            }
            float _1033 = clamp(_1032, 0.0f, 1.0f);
            float _1034 = max(_1008, View_View_MinRoughness);
            float _1039 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1012) * mad(-_1034, _1034, 1.0f), 0.0f, 1.0f);
            float _1041 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1012, 0.0f, 1.0f);
            float3 _1210 = 0.0f.xxx;
            float3 _1211 = 0.0f.xxx;
            [branch]
            if (_1033 > 0.0f)
            {
                float _1052 = dot(_689, _431);
                float _1053 = dot(_431, _1013);
                float _1055 = rsqrt(mad(2.0f, _1053, 2.0f));
                bool _1061 = _1039 > 0.0f;
                float _1140 = 0.0f;
                float _1141 = 0.0f;
                if (_1061)
                {
                    float _1066 = sqrt(mad(-_1039, _1039, 1.0f));
                    float _1067 = 2.0f * _1014;
                    float _1068 = -_1053;
                    float _1069 = mad(_1067, _1052, _1068);
                    float _1138 = 0.0f;
                    float _1139 = 0.0f;
                    if (_1069 >= _1066)
                    {
                        _1138 = 1.0f;
                        _1139 = abs(_1052);
                    }
                    else
                    {
                        float _1074 = -_1069;
                        float _1077 = _1039 * rsqrt(mad(_1074, _1069, 1.0f));
                        float _1078 = mad(_1074, _1014, _1052);
                        float _1082 = mad(_1074, _1053, mad(2.0f * _1052, _1052, -1.0f));
                        float _1093 = _1077 * sqrt(clamp(mad(_1067 * _1052, _1053, mad(_1068, _1053, mad(-_1052, _1052, mad(-_1014, _1014, 1.0f)))), 0.0f, 1.0f));
                        float _1095 = (_1093 * 2.0f) * _1052;
                        float _1096 = mad(_1014, _1066, _1052);
                        float _1097 = mad(_1077, _1078, _1096);
                        float _1099 = mad(_1077, _1082, mad(_1053, _1066, 1.0f));
                        float _1100 = _1093 * _1099;
                        float _1101 = _1097 * _1099;
                        float _1106 = _1101 * mad(-0.5f, _1100, (0.25f * _1095) * _1097);
                        float _1116 = mad(_1097, mad(_1096, _1099 * _1099, _1101 * mad(-0.5f, mad(_1053, _1066, _1099), -0.5f)), mad(_1100, _1100, (_1095 * _1097) * mad(_1095, _1097, _1100 * (-2.0f))));
                        float _1120 = (2.0f * _1106) / mad(_1116, _1116, _1106 * _1106);
                        float _1121 = _1120 * _1116;
                        float _1123 = mad(-_1120, _1106, 1.0f);
                        float _1129 = mad(_1053, _1066, mad(_1123, _1077 * _1082, _1121 * _1095));
                        float _1131 = rsqrt(mad(2.0f, _1129, 2.0f));
                        _1138 = clamp((mad(_1014, _1066, mad(_1123, _1077 * _1078, _1121 * _1093)) + _1052) * _1131, 0.0f, 1.0f);
                        _1139 = clamp(mad(_1131, _1129, _1131), 0.0f, 1.0f);
                    }
                    _1140 = _1138;
                    _1141 = _1139;
                }
                else
                {
                    _1140 = clamp((_1014 + _1052) * _1055, 0.0f, 1.0f);
                    _1141 = clamp(mad(_1055, _1053, _1055), 0.0f, 1.0f);
                }
                float _1144 = clamp(abs(_1052) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1146 = 1.0f.xxx * _1033;
                float3 _1208 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1208 = 0.0f.xxx;
                }
                else
                {
                    float _1153 = _1008 * _1008;
                    float _1163 = 0.0f;
                    if (_1041 > 0.0f)
                    {
                        _1163 = clamp(mad(_1153, _1153, (_1041 * _1041) / mad(_1141, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1163 = _1153 * _1153;
                    }
                    float _1177 = 0.0f;
                    if (_1061)
                    {
                        _1177 = _1163 / (_1163 + (((0.25f * _1039) * mad(3.0f, asfloat(532487669 + (asint(_1163) >> 1)), _1039)) / (_1141 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1177 = 1.0f;
                    }
                    float _1180 = mad(mad(_1140, _1163, -_1140), _1140, 1.0f);
                    float _1185 = sqrt(_1163);
                    float _1186 = 1.0f - _1185;
                    float _1192 = 1.0f - _1141;
                    float _1193 = _1192 * _1192;
                    float _1194 = _1193 * _1193;
                    _1208 = _1146 * (((clamp(50.0f * _732.y, 0.0f, 1.0f) * (_1194 * _1192)).xxx + (_732 * mad(-_1194, _1192, 1.0f))) * (((_1163 / ((3.1415927410125732421875f * _1180) * _1180)) * _1177) * (0.5f / mad(_1033, mad(_1144, _1186, _1185), _1144 * mad(_1033, _1186, _1185)))));
                }
                _1210 = ((_730 * 0.3183098733425140380859375f) * _1146) * 1.0f;
                _1211 = _1208;
            }
            else
            {
                _1210 = 0.0f.xxx;
                _1211 = 0.0f.xxx;
            }
            float3 _1214 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1001;
            _1217 = mad(_1210 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1214, 0.0f.xxx);
            _1218 = (_1211 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1214;
        }
        else
        {
            _1217 = 0.0f.xxx;
            _1218 = 0.0f.xxx;
        }
        float4 _1222 = float4(_1217, 0.0f);
        float4 _1226 = float4(_1218, 0.0f);
        float4 _1233 = 0.0f.xxxx;
        float4 _1234 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _943) != 0u)
        {
            _1233 = float4(_1222.x, _1222.y, _1222.z, _1222.w);
            _1234 = float4(_1226.x, _1226.y, _1226.z, _1226.w);
        }
        else
        {
            _1233 = 0.0f.xxxx;
            _1234 = 0.0f.xxxx;
        }
        _1235 = _1233;
        _1236 = _1234;
    }
    else
    {
        _1235 = 0.0f.xxxx;
        _1236 = 0.0f.xxxx;
    }
    uint _1237 = ((((min(uint(max(0.0f, log2(mad(_324, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _898.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _898.x) * 2u;
    uint _1247 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1237 + 1u] & 1073741823u;
    uint _1250 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1237] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1252 = 0.0f.xxxx;
    float4 _1255 = 0.0f.xxxx;
    _1252 = _1235;
    _1255 = _1236;
    float4 _1253 = 0.0f.xxxx;
    float4 _1256 = 0.0f.xxxx;
    [loop]
    for (uint _1257 = 0u; _1257 < _1250; _1252 = _1253, _1255 = _1256, _1257++)
    {
        uint _1266 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1247 + _1257).x * 6u;
        uint _1269 = _1266 + 1u;
        uint _1272 = _1266 + 2u;
        uint _1275 = _1266 + 3u;
        uint _1278 = _1266 + 4u;
        uint _1282 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1272].w);
        uint _1288 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1269].y);
        uint _1304 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1275].z);
        float2 _1306 = spvUnpackHalf2x16(_1304 & 65535u);
        float _1307 = _1306.x;
        float2 _1310 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1275].w));
        float _1311 = _1310.x;
        bool _1316 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1269].w == 0.0f;
        uint _1318 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1278].w);
        uint _1331 = _1282 >> 4u;
        float3 _1347 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].xyz - _415;
        float _1348 = dot(_1347, _1347);
        float _1365 = 0.0f;
        if (_1316)
        {
            float _1360 = _1348 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].w);
            float _1363 = clamp(mad(-_1360, _1360, 1.0f), 0.0f, 1.0f);
            _1365 = _1363 * _1363;
        }
        else
        {
            float3 _1354 = _1347 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].w;
            _1365 = pow(1.0f - clamp(dot(_1354, _1354), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1269].w);
        }
        float _1376 = 0.0f;
        if (((_1282 >> 16u) & 3u) == 2u)
        {
            float _1373 = clamp((dot(_1347 * rsqrt(_1348), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1272].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1275].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1275].y, 0.0f, 1.0f);
            _1376 = _1365 * (_1373 * _1373);
        }
        else
        {
            _1376 = _1365;
        }
        float3 _1673 = 0.0f.xxx;
        float3 _1674 = 0.0f.xxx;
        [branch]
        if (_1376 > 0.0f)
        {
            float _1384 = 0.0f;
            [branch]
            if (uint(int((_1282 & 255u) != 0u)) != 0u)
            {
                _1384 = dot(float4(float(_1331 & 1u), float((_1331 & 2u) >> 1u), float((_1331 & 4u) >> 2u), float((_1331 & 8u) >> 3u)), _927);
            }
            else
            {
                _1384 = 1.0f;
            }
            float3 _1671 = 0.0f.xxx;
            float3 _1672 = 0.0f.xxx;
            [branch]
            if ((_1384 + _1384) > 0.0f)
            {
                float3 _1390 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1278].xyz * (0.5f * _1311);
                float3 _1391 = _1347 - _1390;
                float3 _1392 = _1347 + _1390;
                float _1395 = max(_690, View_View_MinRoughness);
                bool _1396 = _1311 > 0.0f;
                float _1421 = 0.0f;
                float _1422 = 0.0f;
                float _1423 = 0.0f;
                [branch]
                if (_1396)
                {
                    float _1408 = rsqrt(dot(_1391, _1391));
                    float _1409 = rsqrt(dot(_1392, _1392));
                    float _1410 = _1408 * _1409;
                    float _1412 = dot(_1391, _1392) * _1410;
                    _1421 = _1412;
                    _1422 = 0.5f * mad(dot(_689, _1391), _1408, dot(_689, _1392) * _1409);
                    _1423 = _1410 / mad(_1408, _1409, mad(_1412, 0.5f, 0.5f));
                }
                else
                {
                    float _1400 = dot(_1391, _1391);
                    _1421 = 1.0f;
                    _1422 = dot(_689, _1391 * rsqrt(_1400));
                    _1423 = 1.0f / (_1400 + 1.0f);
                }
                float _1441 = 0.0f;
                if (_1307 > 0.0f)
                {
                    float _1430 = sqrt(clamp((_1307 * _1307) * _1423, 0.0f, 1.0f));
                    float _1440 = 0.0f;
                    if (_1422 < _1430)
                    {
                        float _1436 = _1430 + max(_1422, -_1430);
                        _1440 = (_1436 * _1436) / (4.0f * _1430);
                    }
                    else
                    {
                        _1440 = _1422;
                    }
                    _1441 = _1440;
                }
                else
                {
                    _1441 = _1422;
                }
                float _1442 = clamp(_1441, 0.0f, 1.0f);
                float3 _1460 = 0.0f.xxx;
                if (_1396)
                {
                    float3 _1447 = reflect(-_431, _689);
                    float3 _1448 = _1392 - _1391;
                    float _1449 = dot(_1447, _1448);
                    _1460 = _1391 + (_1448 * clamp(dot(_1391, (_1447 * _1449) - _1448) / mad(_1311, _1311, -(_1449 * _1449)), 0.0f, 1.0f));
                }
                else
                {
                    _1460 = _1391;
                }
                float _1462 = rsqrt(dot(_1460, _1460));
                float3 _1463 = _1460 * _1462;
                float _1464 = max(_1395, View_View_MinRoughness);
                float _1469 = clamp((_1307 * _1462) * mad(-_1464, _1464, 1.0f), 0.0f, 1.0f);
                float _1471 = clamp(spvUnpackHalf2x16(_1304 >> 16u).x * _1462, 0.0f, 1.0f);
                float3 _1664 = 0.0f.xxx;
                float3 _1665 = 0.0f.xxx;
                [branch]
                if (_1442 > 0.0f)
                {
                    float _1482 = dot(_689, _1463);
                    float _1483 = dot(_689, _431);
                    float _1484 = dot(_431, _1463);
                    float _1486 = rsqrt(mad(2.0f, _1484, 2.0f));
                    bool _1492 = _1469 > 0.0f;
                    float _1571 = 0.0f;
                    float _1572 = 0.0f;
                    if (_1492)
                    {
                        float _1497 = sqrt(mad(-_1469, _1469, 1.0f));
                        float _1498 = 2.0f * _1482;
                        float _1499 = -_1484;
                        float _1500 = mad(_1498, _1483, _1499);
                        float _1569 = 0.0f;
                        float _1570 = 0.0f;
                        if (_1500 >= _1497)
                        {
                            _1569 = 1.0f;
                            _1570 = abs(_1483);
                        }
                        else
                        {
                            float _1505 = -_1500;
                            float _1508 = _1469 * rsqrt(mad(_1505, _1500, 1.0f));
                            float _1509 = mad(_1505, _1482, _1483);
                            float _1513 = mad(_1505, _1484, mad(2.0f * _1483, _1483, -1.0f));
                            float _1524 = _1508 * sqrt(clamp(mad(_1498 * _1483, _1484, mad(_1499, _1484, mad(-_1483, _1483, mad(-_1482, _1482, 1.0f)))), 0.0f, 1.0f));
                            float _1526 = (_1524 * 2.0f) * _1483;
                            float _1527 = mad(_1482, _1497, _1483);
                            float _1528 = mad(_1508, _1509, _1527);
                            float _1530 = mad(_1508, _1513, mad(_1484, _1497, 1.0f));
                            float _1531 = _1524 * _1530;
                            float _1532 = _1528 * _1530;
                            float _1537 = _1532 * mad(-0.5f, _1531, (0.25f * _1526) * _1528);
                            float _1547 = mad(_1528, mad(_1527, _1530 * _1530, _1532 * mad(-0.5f, mad(_1484, _1497, _1530), -0.5f)), mad(_1531, _1531, (_1526 * _1528) * mad(_1526, _1528, _1531 * (-2.0f))));
                            float _1551 = (2.0f * _1537) / mad(_1547, _1547, _1537 * _1537);
                            float _1552 = _1551 * _1547;
                            float _1554 = mad(-_1551, _1537, 1.0f);
                            float _1560 = mad(_1484, _1497, mad(_1554, _1508 * _1513, _1552 * _1526));
                            float _1562 = rsqrt(mad(2.0f, _1560, 2.0f));
                            _1569 = clamp((mad(_1482, _1497, mad(_1554, _1508 * _1509, _1552 * _1524)) + _1483) * _1562, 0.0f, 1.0f);
                            _1570 = clamp(mad(_1562, _1560, _1562), 0.0f, 1.0f);
                        }
                        _1571 = _1569;
                        _1572 = _1570;
                    }
                    else
                    {
                        _1571 = clamp((_1482 + _1483) * _1486, 0.0f, 1.0f);
                        _1572 = clamp(mad(_1486, _1484, _1486), 0.0f, 1.0f);
                    }
                    float _1575 = clamp(abs(_1483) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1578 = 1.0f.xxx * ((_1316 ? _1423 : 1.0f) * _1442);
                    float3 _1662 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1311, _1307), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1662 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1585 = _1395 * _1395;
                        float _1595 = 0.0f;
                        if (_1471 > 0.0f)
                        {
                            _1595 = clamp(mad(_1585, _1585, (_1471 * _1471) / mad(_1572, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1595 = _1585 * _1585;
                        }
                        float _1609 = 0.0f;
                        float _1610 = 0.0f;
                        if (_1492)
                        {
                            float _1607 = _1595 + (((0.25f * _1469) * mad(3.0f, asfloat(532487669 + (asint(_1595) >> 1)), _1469)) / (_1572 + 0.001000000047497451305389404296875f));
                            _1609 = _1595 / _1607;
                            _1610 = _1607;
                        }
                        else
                        {
                            _1609 = 1.0f;
                            _1610 = _1595;
                        }
                        float _1631 = 0.0f;
                        if (_1421 < 1.0f)
                        {
                            float _1617 = sqrt((1.00010001659393310546875f - _1421) / (1.0f + _1421));
                            _1631 = _1609 * sqrt(_1610 / (_1610 + (((0.25f * _1617) * mad(3.0f, asfloat(532487669 + (asint(_1610) >> 1)), _1617)) / (_1572 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1631 = _1609;
                        }
                        float _1634 = mad(mad(_1571, _1595, -_1571), _1571, 1.0f);
                        float _1639 = sqrt(_1595);
                        float _1640 = 1.0f - _1639;
                        float _1646 = 1.0f - _1572;
                        float _1647 = _1646 * _1646;
                        float _1648 = _1647 * _1647;
                        _1662 = _1578 * (((clamp(50.0f * _732.y, 0.0f, 1.0f) * (_1648 * _1646)).xxx + (_732 * mad(-_1648, _1646, 1.0f))) * (((_1595 / ((3.1415927410125732421875f * _1634) * _1634)) * _1631) * (0.5f / mad(_1442, mad(_1575, _1640, _1639), _1575 * mad(_1442, _1640, _1639)))));
                    }
                    _1664 = ((_730 * 0.3183098733425140380859375f) * _1578) * 1.0f;
                    _1665 = _1662;
                }
                else
                {
                    _1664 = 0.0f.xxx;
                    _1665 = 0.0f.xxx;
                }
                float3 _1668 = ((float3(float((_1288 >> 0u) & 1023u), float((_1288 >> 10u) & 1023u), float((_1288 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1269].x) * _1376) * _1384;
                _1671 = mad(_1664 * (float((_1318 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1668, 0.0f.xxx);
                _1672 = (_1665 * (float(_1318 & 1023u) * 0.000977517105638980865478515625f)) * _1668;
            }
            else
            {
                _1671 = 0.0f.xxx;
                _1672 = 0.0f.xxx;
            }
            _1673 = _1671;
            _1674 = _1672;
        }
        else
        {
            _1673 = 0.0f.xxx;
            _1674 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1282 >> 8u) & 7u) & _943) != 0u)
        {
            _1253 = _1252 + float4(_1673, 0.0f);
            _1256 = _1255 + float4(_1674, 0.0f);
        }
        else
        {
            _1253 = _1252;
            _1256 = _1255;
        }
    }
    bool4 _1692 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1702 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_645].w) & 65535u);
    float4 _1740 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _690) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1741 = _1740.x;
    float2 _1750 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1741 * _1741, exp2((-9.27999973297119140625f) * clamp(dot(_689, _431), 0.0f, 1.0f))), _1741, _1740.y)) + _1740.zw;
    float3 _1775 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_689 * (2.0f * dot(_431, _689))) - _431, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1702].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_690, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1702].x, _291).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_732 * _1750.x) + (clamp(50.0f * _732.y, 0.0f, 1.0f) * _1750.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_848 * float2(float(_854.x), float(_854.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_696 & 256u) != 0u), float((_696 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_644.xxx, ((((((_732 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _644) + ((_732 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _644) + ((_732 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _644), float4(_1692.x ? 0.0f.xxxx.x : _1252.x, _1692.y ? 0.0f.xxxx.y : _1252.y, _1692.z ? 0.0f.xxxx.z : _1252.z, _1692.w ? 0.0f.xxxx.w : _1252.w).xyz + float4(_1692.x ? 0.0f.xxxx.x : _1255.x, _1692.y ? 0.0f.xxxx.y : _1255.y, _1692.z ? 0.0f.xxxx.z : _1255.z, _1692.w ? 0.0f.xxxx.w : _1255.w).xyz);
    bool _1778 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2204 = 0.0f.xxxx;
    if (_1778)
    {
        uint2 _1790 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1792 = normalize(_415 - View_View_TranslatedWorldCameraOrigin);
        uint _1793 = _1790.x;
        uint4 _1797 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1793, _1790.y, 0u), 0u));
        uint _1798 = _1797.x;
        float4 _1800 = 0.0f.xxxx;
        _1800 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1801 = 0.0f.xxxx;
        for (int _1803 = 0; uint(_1803) < _1798; _1800 = _1801, _1803++)
        {
            uint _1814 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1793, _1790.y, uint(1 + _1803)), 0u)).x * 3u;
            float4 _1816 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1814);
            float4 _1818 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1814 + 1u);
            float4 _1820 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1814 + 2u);
            float3 _1821 = _1816.xyz;
            float _1822 = _1816.w;
            float _1823 = 1.0f / _1822;
            uint _1825 = asuint(_1818.x);
            float2 _1831 = float2(spvUnpackHalf2x16(_1825).x, spvUnpackHalf2x16(_1825 >> 16u).x);
            float3 _1832 = float3(_1831.x, _1831.y, _295.z);
            uint _1834 = asuint(_1818.y);
            _1832.z = spvUnpackHalf2x16(_1834).x;
            float3 _1841 = 0.0f.xxx;
            _1841.x = spvUnpackHalf2x16(_1834 >> 16u).x;
            uint _1843 = asuint(_1818.z);
            float2 _1849 = float2(spvUnpackHalf2x16(_1843).x, spvUnpackHalf2x16(_1843 >> 16u).x);
            float3 _1850 = float3(_1841.x, _1849.x, _1849.y);
            float3x3 _1855 = float3x3(_1832 * _1823, _1850 * _1823, cross(_1832, _1850) * _1823);
            uint _1857 = asuint(_1820.x);
            float2 _1860 = spvUnpackHalf2x16((_1857 >> 17u) & 32752u);
            float _1861 = _1860.x;
            float2 _1864 = spvUnpackHalf2x16((_1857 >> 6u) & 32752u);
            float _1865 = _1864.x;
            float2 _1868 = spvUnpackHalf2x16((_1857 << 5u) & 32736u);
            float _1869 = _1868.x;
            uint _1871 = asuint(_1820.y);
            float3 _1889 = 0.0f.xxx;
            if (_1871 > 0u)
            {
                _1889 = float3(spvUnpackHalf2x16((_1871 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1871 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1871 << 5u) & 32736u).x);
            }
            else
            {
                _1889 = 0.0f.xxx;
            }
            uint _1891 = asuint(_1820.z);
            float _1906 = float((_1891 >> 24u) & 255u);
            float _1907 = _1906 * 0.0039215688593685626983642578125f;
            float3 _1914 = mul(View_View_TranslatedWorldCameraOrigin - _1821, _1855);
            float3 _1916 = normalize(mul(_1792, _1855));
            float _1918 = dot(_1916, _1916);
            float _1919 = dot(_1916, _1914);
            float _1920 = 2.0f * _1919;
            float _1925 = mad(_1920, _1920, -((4.0f * _1918) * mad(-1.0f, 1.0f, dot(_1914, _1914))));
            float2 _1937 = 0.0f.xx;
            [flatten]
            if (_1925 >= 0.0f)
            {
                _1937 = ((_1919 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1925))) / (2.0f * _1918).xx;
            }
            else
            {
                _1937 = (-1.0f).xx;
            }
            float3 _1943 = mul(_415 - _1821, _1855) - _1914;
            float2 _1947 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1823, _1937), sqrt(dot(_1943, _1943)).xx);
            float _2099 = 0.0f;
            float3 _2100 = 0.0f.xxx;
            if (any(bool2(_1947.x > 0.0f.xx.x, _1947.y > 0.0f.xx.y)))
            {
                float2 _1968 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1958 = dot(_1792, View_View_ViewForward);
                    _1968 = max(_1947, ((View_View_VolumetricFogMaxDistance * ((_1958 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1958) : 0.0f)) * _1823).xx);
                }
                else
                {
                    _1968 = _1947;
                }
                float _1973 = max(0.0f, abs(_1968.y - _1968.x));
                float _2097 = 0.0f;
                float3 _2098 = 0.0f.xxx;
                if (_1973 > 0.0f)
                {
                    float3 _1978 = _1914 + (_1916 * _1968.x);
                    float _2014 = 0.0f;
                    if (_1861 > 0.0f)
                    {
                        float _1982 = dot(_1916, _1978);
                        float _1983 = dot(_1978, _1978);
                        float _1984 = _1983 - 1.0f;
                        float _1986 = mad(_1982, _1982, 1.0f - _1983);
                        float _2013 = 0.0f;
                        if (_1986 >= 0.0f)
                        {
                            float _1990 = sqrt(_1986);
                            float _1991 = -_1982;
                            float _1994 = max(_1991 - _1990, 0.0f);
                            float _1996 = min(max(_1991 + _1990, 0.0f), _1973);
                            float _1997 = _1994 * _1994;
                            float _1998 = _1996 * _1996;
                            _2013 = max(0.0f, (_1861 * ((-mad(_1998 * _1996, 0.3333333432674407958984375f, mad(_1984, _1996, _1982 * _1998))) - (-mad(_1997 * _1994, 0.3333333432674407958984375f, mad(_1984, _1994, _1982 * _1997))))) * 0.75f);
                        }
                        else
                        {
                            _2013 = 0.0f;
                        }
                        _2014 = _2013;
                    }
                    else
                    {
                        _2014 = 0.0f;
                    }
                    float _2039 = 0.0f;
                    if (_1865 > 0.0f)
                    {
                        float _2020 = _1916.z;
                        float _2026 = (abs(_2020) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2020 >= 0.0f) ? 1.0f : (-1.0f))) : _2020;
                        float _2029 = max(-80.0f, (_1978.z - _1820.w) * _1869);
                        _2039 = (_1865 / (_1869 * _2026)) * (exp(-_2029) - exp(-mad(_2026 * _1973, _1869, _2029)));
                    }
                    else
                    {
                        _2039 = 0.0f;
                    }
                    float _2050 = exp((log(mad(exp(-_2014) - 1.0f, 1.0f - exp(-_2039), 1.0f)) * _1822) * 0.00999999977648258209228515625f);
                    float _2054 = _1906 * (-0.0039215688593685626983642578125f);
                    float _2061 = mad(_1906 * (-0.007843137718737125396728515625f), dot(_1792, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2054, _2054, 1.0f));
                    float3 _2066 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1907, _2054, 1.0f) / ((12.56637096405029296875f * _2061) * sqrt(_2061)));
                    float3 _2094 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2079 = float4(_1792 * _2054, 1.0f);
                        _2094 = _2066 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2079), dot(View_SkyIrradianceEnvironmentMap[1u], _2079), dot(View_SkyIrradianceEnvironmentMap[2u], _2079)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2094 = _2066;
                    }
                    _2097 = _2050;
                    _2098 = mad(_2094, float4(float((_1891 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1891 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1891 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1907).xyz, _1889) * (1.0f - _2050);
                }
                else
                {
                    _2097 = 1.0f;
                    _2098 = 0.0f.xxx;
                }
                _2099 = _2097;
                _2100 = _2098;
            }
            else
            {
                _2099 = 1.0f;
                _2100 = 0.0f.xxx;
            }
            _1801 = float4((_1800.xyz * _2099) + float4(_2100, _2099).xyz, _1800.w * _2099);
        }
        float _2120 = _1800.w * in_var_TEXCOORD7.w;
        float4 _2128 = float4(_89, 1.0f);
        precise float4 _93 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _94 = _2128 + _93;
        precise float4 _95 = _94 - _2128;
        precise float4 _96 = _94 - _95;
        precise float4 _97 = _2128 - _96;
        precise float4 _98 = _93 - _95;
        precise float4 _99 = _97 + _98;
        float4 _2139 = mul(_94 + (float4(_92, 0.0f) + _99), View_View_RelativeWorldToClip);
        float _2140 = _2139.w;
        float4 _2203 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2203 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2186 = 0.0f.xxxx;
            float _2187 = 0.0f;
            if (_1778)
            {
                float4 _2182 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2139.xy / _2140.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2140, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2184 = _2182.xyz * View_View_OneOverPreExposure;
                _2186 = float4(_2184.x, _2184.y, _2184.z, _2182.w);
                _2187 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2186 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2187 = 0.0f;
            }
            float4 _2192 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2186, clamp((_704 - _2187) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2195 = _2192.w;
            _2203 = float4(_2192.xyz + (float4(_1800.xyz + (in_var_TEXCOORD7.xyz * _1800.w), _2120).xyz * _2195), _2195 * _2120);
            break;
        } while(false);
        _2204 = _2203;
    }
    else
    {
        _2204 = in_var_TEXCOORD7;
    }
    float3 _2211 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2280 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _100 = Scene_GPUScene_GPUScenePrimitiveSceneData[_645 + 18u].xyz * 2097152.0f;
        precise float3 _101 = _100 + Scene_GPUScene_GPUScenePrimitiveSceneData[_645 + 19u].xyz;
        precise float3 _102 = _101 - _100;
        precise float3 _103 = Scene_GPUScene_GPUScenePrimitiveSceneData[_645 + 19u].xyz - _102;
        uint _2237 = _645 + 32u;
        precise float3 _104 = _89 - _101;
        precise float3 _105 = _92 - _103;
        precise float3 _106 = _104 + _105;
        float3 _2242 = abs(_106);
        float3 _2243 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_645 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_645 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_645 + 27u].w) + 1.0f.xxx;
        float3 _2279 = 0.0f.xxx;
        if (any(bool3(_2242.x > _2243.x, _2242.y > _2243.y, _2242.z > _2243.z)))
        {
            float3 _2275 = frac(dot(frac(frac(_89 * 1.52587890625e-05f.xxx) + frac(_92 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2279 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2275.x > 0.5f.xxx.x, _2275.y > 0.5f.xxx.y, _2275.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2265 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2237].x > 0.0f)
            {
                float3 _2253 = abs(_415 - in_var_TEXCOORD9);
                _2265 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2253.x, max(_2253.y, _2253.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2237].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2265 = _2211;
            }
            _2279 = _2265;
        }
        _2280 = _2279;
    }
    else
    {
        _2280 = _2211;
    }
    float4 _2289 = float4(((lerp(_1775, _730 + (_732 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2280) * _2204.w) + _2204.xyz, 0.0f);
    _2289.w = 0.0f;
    float4 _2293 = _2289 * View_View_PreExposure;
    float3 _2298 = min(_2293.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2298.x, _2298.y, _2298.z, _2293.w);
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
