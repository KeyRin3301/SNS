#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _291 = 0.0f;
static float3 _292 = 0.0f.xxx;

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
    float4 Material_Material_PreshaderBuffer[6] : packoffset(c0);
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
    float _321 = 1.0f / gl_FragCoord.w;
    float4 _369 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _373 = mad(float2(_369.zw), 2.0f.xx, (-1.0f).xx);
    float _377 = sqrt(max(1.0f - dot(_373, _373), 0.0f));
    float _378 = _373.x;
    float3 _380 = float3(_378, _373.y, _377);
    float3 _383 = normalize(float3(_377, 0.0f, -_378));
    float2 _398 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _405 = float4(mad(_398, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _291, 1.0f) * _321;
    float4 _410 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _414 = _410.xyz / _410.w.xxx;
    float3 _415 = _414 - View_View_RelativePreViewTranslationTO;
    precise float3 _87 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _415);
    precise float3 _90 = _415 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _87);
    bool _417 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _418 = -View_View_ViewForward;
    float3 _420 = normalize(-_414);
    float3 _430 = float3(_417 ? _418.x : _420.x, _417 ? _418.y : _420.y, _417 ? _418.z : _420.z);
    float4 _434 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _437 = dot(_434, Material_Material_PreshaderBuffer[0]);
    float _440 = dot(_434, Material_Material_PreshaderBuffer[1]);
    float _443 = dot(_434, Material_Material_PreshaderBuffer[2]);
    float2 _446 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _458 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _446 * Material_Material_PreshaderBuffer[3].x.xx).x * Material_Material_PreshaderBuffer[3].y;
    float4 _470 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_458) + Material_Material_PreshaderBuffer[3].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _474 = Material_Material_PreshaderBuffer[3].w.xx;
    float2 _475 = mad(_470.xy, _474, _446);
    float2 _477 = mad(_470.zw, _474, _446);
    float2 _479 = ddy(_446);
    float2 _480 = ddx(_446);
    float2 _492 = lerp(_475, _477, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _477, _480, _479) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _475, _480, _479)).x, frac(_458))), 0.0f, 1.0f).xx);
    float2 _498 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _492, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _507 = _437.xxx;
    float2 _511 = _492 * Material_Material_PreshaderBuffer[4].x.xx;
    float2 _517 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _511, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _526 = _440.xxx;
    float2 _534 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _492, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _543 = _443.xxx;
    float3 _552 = normalize(mul(normalize((mad(float4(_534, sqrt(clamp(1.0f - dot(_534, _534), 0.0f, 1.0f)), 1.0f).xyz, _543, mad(float4(_498, sqrt(clamp(1.0f - dot(_498, _498), 0.0f, 1.0f)), 1.0f).xyz, _507, float4(_517, sqrt(clamp(1.0f - dot(_517, _517), 0.0f, 1.0f)), 1.0f).xyz * _526)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_383, cross(_380, _383), _380), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _563 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _568 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _511, View_View_MaterialTextureMipBias);
    float4 _575 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _581 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _586 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _511, View_View_MaterialTextureMipBias);
    float4 _593 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _492, View_View_MaterialTextureMipBias);
    float3 _605 = clamp(mad(_575.xyz, _543, mad(_563.xyz, _507, _568.xyz * _526)), 0.0f.xxx, 1.0f.xxx);
    float _609 = mad(clamp(mad(_593.y * Material_Material_PreshaderBuffer[5].w, _443, mad(_581.y, _437, _586.y * _440)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _610 = clamp(mad(_593.x, _443, mad(_581.x, _437, _586.x * _440)), 0.0f, 1.0f);
    uint _611 = in_var_PRIMITIVE_ID * 43u;
    float3 _655 = 0.0f.xxx;
    float _656 = 0.0f;
    float _657 = 0.0f;
    float _658 = 0.0f;
    float3 _659 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_611].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _627 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _631 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _627, 0.0f);
        float4 _634 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _627, 0.0f);
        float4 _637 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _627, 0.0f);
        float _647 = _637.w;
        _655 = normalize((_552 * _634.w) + ((_634.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _656 = mad(_609, _647, _637.z);
        _657 = mad(0.5f, _647, _637.y);
        _658 = _637.x;
        _659 = (_605 * _631.w) + _631.xyz;
    }
    else
    {
        _655 = _552;
        _656 = _609;
        _657 = 0.5f;
        _658 = 0.0f;
        _659 = _605;
    }
    uint _662 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_611].x);
    float _670 = _405.w;
    float3 _683 = ((_659 - (_659 * _658)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _690 = (lerp((0.07999999821186065673828125f * _657).xxx, _659, _658.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _691 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _696 = 0.0f.xxx;
    if (_691)
    {
        _696 = _683 + (_690 * 0.449999988079071044921875f);
    }
    else
    {
        _696 = _683;
    }
    bool3 _697 = _691.xxx;
    float3 _698 = float3(_697.x ? 0.0f.xxx.x : _690.x, _697.y ? 0.0f.xxx.y : _690.y, _697.z ? 0.0f.xxx.z : _690.z);
    float3 _744 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _707 = float4(_655, 1.0f);
        float4 _720 = _707.xyzz * _707.yzzx;
        _744 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _707), dot(View_SkyIrradianceEnvironmentMap[1u], _707), dot(View_SkyIrradianceEnvironmentMap[2u], _707)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _720), dot(View_SkyIrradianceEnvironmentMap[4u], _720), dot(View_SkyIrradianceEnvironmentMap[5u], _720))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_655.x, _655.x, -(_655.y * _655.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _744 = 0.0f.xxx;
    }
    float2 _750 = mad(_405.xy / _670.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _860 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _761 = int2(trunc(_750 * View_View_BufferSizeAndInvSize.xy));
        int _762 = _761.x;
        int _763 = _761.y;
        float4 _767 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_762, _763, 0).xy, 0));
        float _768 = _767.x;
        float _778 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _859 = 0.0f.xx;
        if ((abs((mad(_768, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_768, View_View_InvDeviceZToWorldZTransform.z, _778))) - _670) / _670) > 0.00999999977648258209228515625f)
        {
            float2 _791 = _750 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _795 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_762 - 1, _763, 0).xy, 0));
            float _796 = _795.x;
            float _802 = abs((mad(_796, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_796, View_View_InvDeviceZToWorldZTransform.z, _778))) - _670);
            bool _803 = _802 < 100000000.0f;
            bool2 _804 = _803.xx;
            float2 _805 = float2(_804.x ? _791.x : _750.x, _804.y ? _791.y : _750.y);
            float _806 = _803 ? _802 : 100000000.0f;
            float2 _809 = _750 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _813 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_762, _763 + 1, 0).xy, 0));
            float _814 = _813.x;
            float _820 = abs((mad(_814, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_814, View_View_InvDeviceZToWorldZTransform.z, _778))) - _670);
            bool _821 = _820 < _806;
            bool2 _822 = _821.xx;
            float2 _823 = float2(_822.x ? _809.x : _805.x, _822.y ? _809.y : _805.y);
            float _824 = _821 ? _820 : _806;
            float2 _826 = _750 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _830 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_762 + 1, _763, 0).xy, 0));
            float _831 = _830.x;
            float _837 = abs((mad(_831, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_831, View_View_InvDeviceZToWorldZTransform.z, _778))) - _670);
            bool _838 = _837 < _824;
            bool2 _839 = _838.xx;
            float2 _840 = float2(_839.x ? _826.x : _823.x, _839.y ? _826.y : _823.y);
            float2 _844 = _750 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _848 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_762, _763 - 1, 0).xy, 0));
            float _849 = _848.x;
            bool2 _857 = (abs((mad(_849, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_849, View_View_InvDeviceZToWorldZTransform.z, _778))) - _670) < (_838 ? _837 : _824)).xx;
            _859 = float2(_857.x ? _844.x : _840.x, _857.y ? _844.y : _840.y);
        }
        else
        {
            _859 = _750;
        }
        _860 = _859;
    }
    else
    {
        _860 = _750;
    }
    uint _866_dummy_parameter;
    uint2 _866 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _866_dummy_parameter);
    float _884 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_860 * float2(float(_866.x), float(_866.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_662 & 256u) != 0u), float((_662 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _893 = _610.xxx;
    uint2 _925 = uint2(_398 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _953 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _953 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_860 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _953 = 1.0f.xxxx;
    }
    float4 _954 = _953 * _953;
    uint _957 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_611].x);
    uint _970 = (uint((_957 & 2048u) != 0u) | (uint((_957 & 4096u) != 0u) << 1u)) | (uint((_957 & 8192u) != 0u) << 2u);
    float4 _1262 = 0.0f.xxxx;
    float4 _1263 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _996 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1011 = dot(float4(float(_996 & 1u), float((_996 & 2u) >> 1u), float((_996 & 4u) >> 2u), float((_996 & 8u) >> 3u)), _954);
        bool _1013 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1014 = _1013 ? 1.0f : _1011;
        float _1027 = 0.0f;
        float _1028 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1021 = clamp(mad(_670, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1023 = lerp(_1013 ? _1011 : 1.0f, 1.0f, _1021 * _1021);
            _1027 = min(_1023, _1014) * _1014;
            _1028 = _1023 * _1014;
        }
        else
        {
            _1027 = 1.0f;
            _1028 = 1.0f;
        }
        float3 _1244 = 0.0f.xxx;
        float3 _1245 = 0.0f.xxx;
        [branch]
        if ((_1028 + _1027) > 0.0f)
        {
            float _1035 = max(_656, View_View_MinRoughness);
            float _1036 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1039 = rsqrt(_1036);
            float3 _1040 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1039;
            float _1041 = dot(_655, _1040);
            float _1059 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1048 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1036 + 1.0f)), 0.0f, 1.0f));
                float _1058 = 0.0f;
                if (_1041 < _1048)
                {
                    float _1054 = _1048 + max(_1041, -_1048);
                    _1058 = (_1054 * _1054) / (4.0f * _1048);
                }
                else
                {
                    _1058 = _1041;
                }
                _1059 = _1058;
            }
            else
            {
                _1059 = _1041;
            }
            float _1060 = clamp(_1059, 0.0f, 1.0f);
            float _1061 = max(_1035, View_View_MinRoughness);
            float _1066 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1039) * mad(-_1061, _1061, 1.0f), 0.0f, 1.0f);
            float _1068 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1039, 0.0f, 1.0f);
            float3 _1237 = 0.0f.xxx;
            float3 _1238 = 0.0f.xxx;
            [branch]
            if (_1060 > 0.0f)
            {
                float _1079 = dot(_655, _430);
                float _1080 = dot(_430, _1040);
                float _1082 = rsqrt(mad(2.0f, _1080, 2.0f));
                bool _1088 = _1066 > 0.0f;
                float _1167 = 0.0f;
                float _1168 = 0.0f;
                if (_1088)
                {
                    float _1093 = sqrt(mad(-_1066, _1066, 1.0f));
                    float _1094 = 2.0f * _1041;
                    float _1095 = -_1080;
                    float _1096 = mad(_1094, _1079, _1095);
                    float _1165 = 0.0f;
                    float _1166 = 0.0f;
                    if (_1096 >= _1093)
                    {
                        _1165 = 1.0f;
                        _1166 = abs(_1079);
                    }
                    else
                    {
                        float _1101 = -_1096;
                        float _1104 = _1066 * rsqrt(mad(_1101, _1096, 1.0f));
                        float _1105 = mad(_1101, _1041, _1079);
                        float _1109 = mad(_1101, _1080, mad(2.0f * _1079, _1079, -1.0f));
                        float _1120 = _1104 * sqrt(clamp(mad(_1094 * _1079, _1080, mad(_1095, _1080, mad(-_1079, _1079, mad(-_1041, _1041, 1.0f)))), 0.0f, 1.0f));
                        float _1122 = (_1120 * 2.0f) * _1079;
                        float _1123 = mad(_1041, _1093, _1079);
                        float _1124 = mad(_1104, _1105, _1123);
                        float _1126 = mad(_1104, _1109, mad(_1080, _1093, 1.0f));
                        float _1127 = _1120 * _1126;
                        float _1128 = _1124 * _1126;
                        float _1133 = _1128 * mad(-0.5f, _1127, (0.25f * _1122) * _1124);
                        float _1143 = mad(_1124, mad(_1123, _1126 * _1126, _1128 * mad(-0.5f, mad(_1080, _1093, _1126), -0.5f)), mad(_1127, _1127, (_1122 * _1124) * mad(_1122, _1124, _1127 * (-2.0f))));
                        float _1147 = (2.0f * _1133) / mad(_1143, _1143, _1133 * _1133);
                        float _1148 = _1147 * _1143;
                        float _1150 = mad(-_1147, _1133, 1.0f);
                        float _1156 = mad(_1080, _1093, mad(_1150, _1104 * _1109, _1148 * _1122));
                        float _1158 = rsqrt(mad(2.0f, _1156, 2.0f));
                        _1165 = clamp((mad(_1041, _1093, mad(_1150, _1104 * _1105, _1148 * _1120)) + _1079) * _1158, 0.0f, 1.0f);
                        _1166 = clamp(mad(_1158, _1156, _1158), 0.0f, 1.0f);
                    }
                    _1167 = _1165;
                    _1168 = _1166;
                }
                else
                {
                    _1167 = clamp((_1041 + _1079) * _1082, 0.0f, 1.0f);
                    _1168 = clamp(mad(_1082, _1080, _1082), 0.0f, 1.0f);
                }
                float _1171 = clamp(abs(_1079) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1173 = 1.0f.xxx * _1060;
                float3 _1235 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1235 = 0.0f.xxx;
                }
                else
                {
                    float _1180 = _1035 * _1035;
                    float _1190 = 0.0f;
                    if (_1068 > 0.0f)
                    {
                        _1190 = clamp(mad(_1180, _1180, (_1068 * _1068) / mad(_1168, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1190 = _1180 * _1180;
                    }
                    float _1204 = 0.0f;
                    if (_1088)
                    {
                        _1204 = _1190 / (_1190 + (((0.25f * _1066) * mad(3.0f, asfloat(532487669 + (asint(_1190) >> 1)), _1066)) / (_1168 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1204 = 1.0f;
                    }
                    float _1207 = mad(mad(_1167, _1190, -_1167), _1167, 1.0f);
                    float _1212 = sqrt(_1190);
                    float _1213 = 1.0f - _1212;
                    float _1219 = 1.0f - _1168;
                    float _1220 = _1219 * _1219;
                    float _1221 = _1220 * _1220;
                    _1235 = _1173 * (((clamp(50.0f * _698.y, 0.0f, 1.0f) * (_1221 * _1219)).xxx + (_698 * mad(-_1221, _1219, 1.0f))) * (((_1190 / ((3.1415927410125732421875f * _1207) * _1207)) * _1204) * (0.5f / mad(_1060, mad(_1171, _1213, _1212), _1171 * mad(_1060, _1213, _1212)))));
                }
                _1237 = ((_696 * 0.3183098733425140380859375f) * _1173) * 1.0f;
                _1238 = _1235;
            }
            else
            {
                _1237 = 0.0f.xxx;
                _1238 = 0.0f.xxx;
            }
            float3 _1241 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1028;
            _1244 = mad(_1237 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1241, 0.0f.xxx);
            _1245 = (_1238 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1241;
        }
        else
        {
            _1244 = 0.0f.xxx;
            _1245 = 0.0f.xxx;
        }
        float4 _1249 = float4(_1244, 0.0f);
        float4 _1253 = float4(_1245, 0.0f);
        float4 _1260 = 0.0f.xxxx;
        float4 _1261 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _970) != 0u)
        {
            _1260 = float4(_1249.x, _1249.y, _1249.z, _1249.w);
            _1261 = float4(_1253.x, _1253.y, _1253.z, _1253.w);
        }
        else
        {
            _1260 = 0.0f.xxxx;
            _1261 = 0.0f.xxxx;
        }
        _1262 = _1260;
        _1263 = _1261;
    }
    else
    {
        _1262 = 0.0f.xxxx;
        _1263 = 0.0f.xxxx;
    }
    uint _1264 = ((((min(uint(max(0.0f, log2(mad(_321, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _925.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _925.x) * 2u;
    uint _1274 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1264 + 1u] & 1073741823u;
    uint _1277 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1264] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1279 = 0.0f.xxxx;
    float4 _1282 = 0.0f.xxxx;
    _1279 = _1262;
    _1282 = _1263;
    float4 _1280 = 0.0f.xxxx;
    float4 _1283 = 0.0f.xxxx;
    [loop]
    for (uint _1284 = 0u; _1284 < _1277; _1279 = _1280, _1282 = _1283, _1284++)
    {
        uint _1293 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1274 + _1284).x * 6u;
        uint _1296 = _1293 + 1u;
        uint _1299 = _1293 + 2u;
        uint _1302 = _1293 + 3u;
        uint _1305 = _1293 + 4u;
        uint _1309 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].w);
        uint _1315 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1296].y);
        uint _1331 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].z);
        float2 _1333 = spvUnpackHalf2x16(_1331 & 65535u);
        float _1334 = _1333.x;
        float2 _1337 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].w));
        float _1338 = _1337.x;
        bool _1343 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1296].w == 0.0f;
        uint _1345 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1305].w);
        uint _1358 = _1309 >> 4u;
        float3 _1374 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].xyz - _414;
        float _1375 = dot(_1374, _1374);
        float _1392 = 0.0f;
        if (_1343)
        {
            float _1387 = _1375 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].w);
            float _1390 = clamp(mad(-_1387, _1387, 1.0f), 0.0f, 1.0f);
            _1392 = _1390 * _1390;
        }
        else
        {
            float3 _1381 = _1374 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].w;
            _1392 = pow(1.0f - clamp(dot(_1381, _1381), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1296].w);
        }
        float _1403 = 0.0f;
        if (((_1309 >> 16u) & 3u) == 2u)
        {
            float _1400 = clamp((dot(_1374 * rsqrt(_1375), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].y, 0.0f, 1.0f);
            _1403 = _1392 * (_1400 * _1400);
        }
        else
        {
            _1403 = _1392;
        }
        float3 _1700 = 0.0f.xxx;
        float3 _1701 = 0.0f.xxx;
        [branch]
        if (_1403 > 0.0f)
        {
            float _1411 = 0.0f;
            [branch]
            if (uint(int((_1309 & 255u) != 0u)) != 0u)
            {
                _1411 = dot(float4(float(_1358 & 1u), float((_1358 & 2u) >> 1u), float((_1358 & 4u) >> 2u), float((_1358 & 8u) >> 3u)), _954);
            }
            else
            {
                _1411 = 1.0f;
            }
            float3 _1698 = 0.0f.xxx;
            float3 _1699 = 0.0f.xxx;
            [branch]
            if ((_1411 + _1411) > 0.0f)
            {
                float3 _1417 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1305].xyz * (0.5f * _1338);
                float3 _1418 = _1374 - _1417;
                float3 _1419 = _1374 + _1417;
                float _1422 = max(_656, View_View_MinRoughness);
                bool _1423 = _1338 > 0.0f;
                float _1448 = 0.0f;
                float _1449 = 0.0f;
                float _1450 = 0.0f;
                [branch]
                if (_1423)
                {
                    float _1435 = rsqrt(dot(_1418, _1418));
                    float _1436 = rsqrt(dot(_1419, _1419));
                    float _1437 = _1435 * _1436;
                    float _1439 = dot(_1418, _1419) * _1437;
                    _1448 = _1439;
                    _1449 = 0.5f * mad(dot(_655, _1418), _1435, dot(_655, _1419) * _1436);
                    _1450 = _1437 / mad(_1435, _1436, mad(_1439, 0.5f, 0.5f));
                }
                else
                {
                    float _1427 = dot(_1418, _1418);
                    _1448 = 1.0f;
                    _1449 = dot(_655, _1418 * rsqrt(_1427));
                    _1450 = 1.0f / (_1427 + 1.0f);
                }
                float _1468 = 0.0f;
                if (_1334 > 0.0f)
                {
                    float _1457 = sqrt(clamp((_1334 * _1334) * _1450, 0.0f, 1.0f));
                    float _1467 = 0.0f;
                    if (_1449 < _1457)
                    {
                        float _1463 = _1457 + max(_1449, -_1457);
                        _1467 = (_1463 * _1463) / (4.0f * _1457);
                    }
                    else
                    {
                        _1467 = _1449;
                    }
                    _1468 = _1467;
                }
                else
                {
                    _1468 = _1449;
                }
                float _1469 = clamp(_1468, 0.0f, 1.0f);
                float3 _1487 = 0.0f.xxx;
                if (_1423)
                {
                    float3 _1474 = reflect(-_430, _655);
                    float3 _1475 = _1419 - _1418;
                    float _1476 = dot(_1474, _1475);
                    _1487 = _1418 + (_1475 * clamp(dot(_1418, (_1474 * _1476) - _1475) / mad(_1338, _1338, -(_1476 * _1476)), 0.0f, 1.0f));
                }
                else
                {
                    _1487 = _1418;
                }
                float _1489 = rsqrt(dot(_1487, _1487));
                float3 _1490 = _1487 * _1489;
                float _1491 = max(_1422, View_View_MinRoughness);
                float _1496 = clamp((_1334 * _1489) * mad(-_1491, _1491, 1.0f), 0.0f, 1.0f);
                float _1498 = clamp(spvUnpackHalf2x16(_1331 >> 16u).x * _1489, 0.0f, 1.0f);
                float3 _1691 = 0.0f.xxx;
                float3 _1692 = 0.0f.xxx;
                [branch]
                if (_1469 > 0.0f)
                {
                    float _1509 = dot(_655, _1490);
                    float _1510 = dot(_655, _430);
                    float _1511 = dot(_430, _1490);
                    float _1513 = rsqrt(mad(2.0f, _1511, 2.0f));
                    bool _1519 = _1496 > 0.0f;
                    float _1598 = 0.0f;
                    float _1599 = 0.0f;
                    if (_1519)
                    {
                        float _1524 = sqrt(mad(-_1496, _1496, 1.0f));
                        float _1525 = 2.0f * _1509;
                        float _1526 = -_1511;
                        float _1527 = mad(_1525, _1510, _1526);
                        float _1596 = 0.0f;
                        float _1597 = 0.0f;
                        if (_1527 >= _1524)
                        {
                            _1596 = 1.0f;
                            _1597 = abs(_1510);
                        }
                        else
                        {
                            float _1532 = -_1527;
                            float _1535 = _1496 * rsqrt(mad(_1532, _1527, 1.0f));
                            float _1536 = mad(_1532, _1509, _1510);
                            float _1540 = mad(_1532, _1511, mad(2.0f * _1510, _1510, -1.0f));
                            float _1551 = _1535 * sqrt(clamp(mad(_1525 * _1510, _1511, mad(_1526, _1511, mad(-_1510, _1510, mad(-_1509, _1509, 1.0f)))), 0.0f, 1.0f));
                            float _1553 = (_1551 * 2.0f) * _1510;
                            float _1554 = mad(_1509, _1524, _1510);
                            float _1555 = mad(_1535, _1536, _1554);
                            float _1557 = mad(_1535, _1540, mad(_1511, _1524, 1.0f));
                            float _1558 = _1551 * _1557;
                            float _1559 = _1555 * _1557;
                            float _1564 = _1559 * mad(-0.5f, _1558, (0.25f * _1553) * _1555);
                            float _1574 = mad(_1555, mad(_1554, _1557 * _1557, _1559 * mad(-0.5f, mad(_1511, _1524, _1557), -0.5f)), mad(_1558, _1558, (_1553 * _1555) * mad(_1553, _1555, _1558 * (-2.0f))));
                            float _1578 = (2.0f * _1564) / mad(_1574, _1574, _1564 * _1564);
                            float _1579 = _1578 * _1574;
                            float _1581 = mad(-_1578, _1564, 1.0f);
                            float _1587 = mad(_1511, _1524, mad(_1581, _1535 * _1540, _1579 * _1553));
                            float _1589 = rsqrt(mad(2.0f, _1587, 2.0f));
                            _1596 = clamp((mad(_1509, _1524, mad(_1581, _1535 * _1536, _1579 * _1551)) + _1510) * _1589, 0.0f, 1.0f);
                            _1597 = clamp(mad(_1589, _1587, _1589), 0.0f, 1.0f);
                        }
                        _1598 = _1596;
                        _1599 = _1597;
                    }
                    else
                    {
                        _1598 = clamp((_1509 + _1510) * _1513, 0.0f, 1.0f);
                        _1599 = clamp(mad(_1513, _1511, _1513), 0.0f, 1.0f);
                    }
                    float _1602 = clamp(abs(_1510) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1605 = 1.0f.xxx * ((_1343 ? _1450 : 1.0f) * _1469);
                    float3 _1689 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1338, _1334), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1689 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1612 = _1422 * _1422;
                        float _1622 = 0.0f;
                        if (_1498 > 0.0f)
                        {
                            _1622 = clamp(mad(_1612, _1612, (_1498 * _1498) / mad(_1599, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1622 = _1612 * _1612;
                        }
                        float _1636 = 0.0f;
                        float _1637 = 0.0f;
                        if (_1519)
                        {
                            float _1634 = _1622 + (((0.25f * _1496) * mad(3.0f, asfloat(532487669 + (asint(_1622) >> 1)), _1496)) / (_1599 + 0.001000000047497451305389404296875f));
                            _1636 = _1622 / _1634;
                            _1637 = _1634;
                        }
                        else
                        {
                            _1636 = 1.0f;
                            _1637 = _1622;
                        }
                        float _1658 = 0.0f;
                        if (_1448 < 1.0f)
                        {
                            float _1644 = sqrt((1.00010001659393310546875f - _1448) / (1.0f + _1448));
                            _1658 = _1636 * sqrt(_1637 / (_1637 + (((0.25f * _1644) * mad(3.0f, asfloat(532487669 + (asint(_1637) >> 1)), _1644)) / (_1599 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1658 = _1636;
                        }
                        float _1661 = mad(mad(_1598, _1622, -_1598), _1598, 1.0f);
                        float _1666 = sqrt(_1622);
                        float _1667 = 1.0f - _1666;
                        float _1673 = 1.0f - _1599;
                        float _1674 = _1673 * _1673;
                        float _1675 = _1674 * _1674;
                        _1689 = _1605 * (((clamp(50.0f * _698.y, 0.0f, 1.0f) * (_1675 * _1673)).xxx + (_698 * mad(-_1675, _1673, 1.0f))) * (((_1622 / ((3.1415927410125732421875f * _1661) * _1661)) * _1658) * (0.5f / mad(_1469, mad(_1602, _1667, _1666), _1602 * mad(_1469, _1667, _1666)))));
                    }
                    _1691 = ((_696 * 0.3183098733425140380859375f) * _1605) * 1.0f;
                    _1692 = _1689;
                }
                else
                {
                    _1691 = 0.0f.xxx;
                    _1692 = 0.0f.xxx;
                }
                float3 _1695 = ((float3(float((_1315 >> 0u) & 1023u), float((_1315 >> 10u) & 1023u), float((_1315 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1296].x) * _1403) * _1411;
                _1698 = mad(_1691 * (float((_1345 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1695, 0.0f.xxx);
                _1699 = (_1692 * (float(_1345 & 1023u) * 0.000977517105638980865478515625f)) * _1695;
            }
            else
            {
                _1698 = 0.0f.xxx;
                _1699 = 0.0f.xxx;
            }
            _1700 = _1698;
            _1701 = _1699;
        }
        else
        {
            _1700 = 0.0f.xxx;
            _1701 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1309 >> 8u) & 7u) & _970) != 0u)
        {
            _1280 = _1279 + float4(_1700, 0.0f);
            _1283 = _1282 + float4(_1701, 0.0f);
        }
        else
        {
            _1280 = _1279;
            _1283 = _1282;
        }
    }
    bool4 _1719 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1729 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_611].w) & 65535u);
    float3 _1733 = (_655 * (2.0f * dot(_430, _655))) - _430;
    float _1740 = mad(-1.2000000476837158203125f, log2(max(_656, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1754 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1733, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1729].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1740);
    float _1758 = 1.0f - _1754.w;
    float3 _1785 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1785 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1733, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1740).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1785 = 0.0f.xxx;
    }
    float4 _1791 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _656) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1792 = _1791.x;
    float2 _1801 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1792 * _1792, exp2((-9.27999973297119140625f) * clamp(dot(_655, _430), 0.0f, 1.0f))), _1792, _1791.y)) + _1791.zw;
    bool _1828 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2252 = 0.0f.xxxx;
    if (_1828)
    {
        uint2 _1840 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1842 = normalize(_414 - View_View_TranslatedWorldCameraOrigin);
        uint _1843 = _1840.x;
        uint4 _1847 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1843, _1840.y, 0u), 0u));
        uint _1848 = _1847.x;
        float4 _1850 = 0.0f.xxxx;
        _1850 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1851 = 0.0f.xxxx;
        for (int _1853 = 0; uint(_1853) < _1848; _1850 = _1851, _1853++)
        {
            uint _1864 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1843, _1840.y, uint(1 + _1853)), 0u)).x * 3u;
            float4 _1866 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1864);
            float4 _1868 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1864 + 1u);
            float4 _1870 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1864 + 2u);
            float3 _1871 = _1866.xyz;
            float _1872 = _1866.w;
            float _1873 = 1.0f / _1872;
            uint _1875 = asuint(_1868.x);
            float2 _1881 = float2(spvUnpackHalf2x16(_1875).x, spvUnpackHalf2x16(_1875 >> 16u).x);
            float3 _1882 = float3(_1881.x, _1881.y, _292.z);
            uint _1884 = asuint(_1868.y);
            _1882.z = spvUnpackHalf2x16(_1884).x;
            float3 _1891 = 0.0f.xxx;
            _1891.x = spvUnpackHalf2x16(_1884 >> 16u).x;
            uint _1893 = asuint(_1868.z);
            float2 _1899 = float2(spvUnpackHalf2x16(_1893).x, spvUnpackHalf2x16(_1893 >> 16u).x);
            float3 _1900 = float3(_1891.x, _1899.x, _1899.y);
            float3x3 _1905 = float3x3(_1882 * _1873, _1900 * _1873, cross(_1882, _1900) * _1873);
            uint _1907 = asuint(_1870.x);
            float2 _1910 = spvUnpackHalf2x16((_1907 >> 17u) & 32752u);
            float _1911 = _1910.x;
            float2 _1914 = spvUnpackHalf2x16((_1907 >> 6u) & 32752u);
            float _1915 = _1914.x;
            float2 _1918 = spvUnpackHalf2x16((_1907 << 5u) & 32736u);
            float _1919 = _1918.x;
            uint _1921 = asuint(_1870.y);
            float3 _1939 = 0.0f.xxx;
            if (_1921 > 0u)
            {
                _1939 = float3(spvUnpackHalf2x16((_1921 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1921 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1921 << 5u) & 32736u).x);
            }
            else
            {
                _1939 = 0.0f.xxx;
            }
            uint _1941 = asuint(_1870.z);
            float _1956 = float((_1941 >> 24u) & 255u);
            float _1957 = _1956 * 0.0039215688593685626983642578125f;
            float3 _1964 = mul(View_View_TranslatedWorldCameraOrigin - _1871, _1905);
            float3 _1966 = normalize(mul(_1842, _1905));
            float _1968 = dot(_1966, _1966);
            float _1969 = dot(_1966, _1964);
            float _1970 = 2.0f * _1969;
            float _1975 = mad(_1970, _1970, -((4.0f * _1968) * mad(-1.0f, 1.0f, dot(_1964, _1964))));
            float2 _1987 = 0.0f.xx;
            [flatten]
            if (_1975 >= 0.0f)
            {
                _1987 = ((_1969 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1975))) / (2.0f * _1968).xx;
            }
            else
            {
                _1987 = (-1.0f).xx;
            }
            float3 _1993 = mul(_414 - _1871, _1905) - _1964;
            float2 _1997 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1873, _1987), sqrt(dot(_1993, _1993)).xx);
            float _2147 = 0.0f;
            float3 _2148 = 0.0f.xxx;
            if (any(bool2(_1997.x > 0.0f.xx.x, _1997.y > 0.0f.xx.y)))
            {
                float2 _2018 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2008 = dot(_1842, View_View_ViewForward);
                    _2018 = max(_1997, ((View_View_VolumetricFogMaxDistance * ((_2008 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2008) : 0.0f)) * _1873).xx);
                }
                else
                {
                    _2018 = _1997;
                }
                float _2023 = max(0.0f, abs(_2018.y - _2018.x));
                float _2145 = 0.0f;
                float3 _2146 = 0.0f.xxx;
                if (_2023 > 0.0f)
                {
                    float3 _2028 = _1964 + (_1966 * _2018.x);
                    float _2064 = 0.0f;
                    if (_1911 > 0.0f)
                    {
                        float _2032 = dot(_1966, _2028);
                        float _2033 = dot(_2028, _2028);
                        float _2034 = _2033 - 1.0f;
                        float _2036 = mad(_2032, _2032, 1.0f - _2033);
                        float _2063 = 0.0f;
                        if (_2036 >= 0.0f)
                        {
                            float _2040 = sqrt(_2036);
                            float _2041 = -_2032;
                            float _2044 = max(_2041 - _2040, 0.0f);
                            float _2046 = min(max(_2041 + _2040, 0.0f), _2023);
                            float _2047 = _2044 * _2044;
                            float _2048 = _2046 * _2046;
                            _2063 = max(0.0f, (_1911 * ((-mad(_2048 * _2046, 0.3333333432674407958984375f, mad(_2034, _2046, _2032 * _2048))) - (-mad(_2047 * _2044, 0.3333333432674407958984375f, mad(_2034, _2044, _2032 * _2047))))) * 0.75f);
                        }
                        else
                        {
                            _2063 = 0.0f;
                        }
                        _2064 = _2063;
                    }
                    else
                    {
                        _2064 = 0.0f;
                    }
                    float _2089 = 0.0f;
                    if (_1915 > 0.0f)
                    {
                        float _2070 = _1966.z;
                        float _2076 = (abs(_2070) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2070 >= 0.0f) ? 1.0f : (-1.0f))) : _2070;
                        float _2079 = max(-80.0f, (_2028.z - _1870.w) * _1919);
                        _2089 = (_1915 / (_1919 * _2076)) * (exp(-_2079) - exp(-mad(_2076 * _2023, _1919, _2079)));
                    }
                    else
                    {
                        _2089 = 0.0f;
                    }
                    float _2100 = exp((log(mad(exp(-_2064) - 1.0f, 1.0f - exp(-_2089), 1.0f)) * _1872) * 0.00999999977648258209228515625f);
                    float _2104 = _1956 * (-0.0039215688593685626983642578125f);
                    float _2111 = mad(_1956 * (-0.007843137718737125396728515625f), dot(_1842, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2104, _2104, 1.0f));
                    float3 _2116 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1957, _2104, 1.0f) / ((12.56637096405029296875f * _2111) * sqrt(_2111)));
                    float3 _2142 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2127 = float4(_1842 * _2104, 1.0f);
                        _2142 = _2116 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2127), dot(View_SkyIrradianceEnvironmentMap[1u], _2127), dot(View_SkyIrradianceEnvironmentMap[2u], _2127)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2142 = _2116;
                    }
                    _2145 = _2100;
                    _2146 = mad(_2142, float4(float((_1941 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1941 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1941 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1957).xyz, _1939) * (1.0f - _2100);
                }
                else
                {
                    _2145 = 1.0f;
                    _2146 = 0.0f.xxx;
                }
                _2147 = _2145;
                _2148 = _2146;
            }
            else
            {
                _2147 = 1.0f;
                _2148 = 0.0f.xxx;
            }
            _1851 = float4((_1850.xyz * _2147) + float4(_2148, _2147).xyz, _1850.w * _2147);
        }
        float _2168 = _1850.w * in_var_TEXCOORD7.w;
        float4 _2176 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2176 + _91;
        precise float4 _93 = _92 - _2176;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2176 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2187 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2188 = _2187.w;
        float4 _2251 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2251 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2234 = 0.0f.xxxx;
            float _2235 = 0.0f;
            if (_1828)
            {
                float4 _2230 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2187.xy / _2188.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2188, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2232 = _2230.xyz * View_View_OneOverPreExposure;
                _2234 = float4(_2232.x, _2232.y, _2232.z, _2230.w);
                _2235 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2234 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2235 = 0.0f;
            }
            float4 _2240 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2234, clamp((_670 - _2235) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2243 = _2240.w;
            _2251 = float4(_2240.xyz + (float4(_1850.xyz + (in_var_TEXCOORD7.xyz * _1850.w), _2168).xyz * _2243), _2243 * _2168);
            break;
        } while(false);
        _2252 = _2251;
    }
    else
    {
        _2252 = in_var_TEXCOORD7;
    }
    float3 _2259 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].xyz, Material_Material_PreshaderBuffer[4].y.xxx), 0.0f.xxx);
    float3 _2328 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _98 = Scene_GPUScene_GPUScenePrimitiveSceneData[_611 + 18u].xyz * 2097152.0f;
        precise float3 _99 = _98 + Scene_GPUScene_GPUScenePrimitiveSceneData[_611 + 19u].xyz;
        precise float3 _100 = _99 - _98;
        precise float3 _101 = Scene_GPUScene_GPUScenePrimitiveSceneData[_611 + 19u].xyz - _100;
        uint _2285 = _611 + 32u;
        precise float3 _102 = _87 - _99;
        precise float3 _103 = _90 - _101;
        precise float3 _104 = _102 + _103;
        float3 _2290 = abs(_104);
        float3 _2291 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_611 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_611 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_611 + 27u].w) + 1.0f.xxx;
        float3 _2327 = 0.0f.xxx;
        if (any(bool3(_2290.x > _2291.x, _2290.y > _2291.y, _2290.z > _2291.z)))
        {
            float3 _2323 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2327 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2323.x > 0.5f.xxx.x, _2323.y > 0.5f.xxx.y, _2323.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2313 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2285].x > 0.0f)
            {
                float3 _2301 = abs(_414 - in_var_TEXCOORD9);
                _2313 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2301.x, max(_2301.y, _2301.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2285].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2313 = _2259;
            }
            _2327 = _2313;
        }
        _2328 = _2327;
    }
    else
    {
        _2328 = _2259;
    }
    float3 _2330 = mad((_744 * _884) * _696, max(_893, ((((((_659 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _610) + ((_659 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _610) + ((_659 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _610), lerp(mad((((float4(_1754.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1729].x, _1758).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1785 * _1758)).xyz * ((_698 * _1801.x) + (clamp(50.0f * _698.y, 0.0f, 1.0f) * _1801.y).xxx)) * _884, max(_893, ((((((_698 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _610) + ((_698 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _610) + ((_698 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _610), float4(_1719.x ? 0.0f.xxxx.x : _1279.x, _1719.y ? 0.0f.xxxx.y : _1279.y, _1719.z ? 0.0f.xxxx.z : _1279.z, _1719.w ? 0.0f.xxxx.w : _1279.w).xyz + float4(_1719.x ? 0.0f.xxxx.x : _1282.x, _1719.y ? 0.0f.xxxx.y : _1282.y, _1719.z ? 0.0f.xxxx.z : _1282.z, _1719.w ? 0.0f.xxxx.w : _1282.w).xyz), _696 + (_698 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2328;
    float4 _2338 = float4((_2330 * _2252.w) + _2252.xyz, 0.0f);
    _2338.w = 0.0f;
    float4 _2342 = _2338 * View_View_PreExposure;
    float3 _2347 = min(_2342.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2347.x, _2347.y, _2347.z, _2342.w);
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
