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
    float2 _513 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _492, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _522 = _440.xxx;
    float2 _528 = _492 * Material_Material_PreshaderBuffer[4].x.xx;
    float2 _534 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _528, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _543 = _443.xxx;
    float3 _552 = normalize(mul(normalize((mad(float4(_534, sqrt(clamp(1.0f - dot(_534, _534), 0.0f, 1.0f)), 1.0f).xyz, _543, mad(float4(_498, sqrt(clamp(1.0f - dot(_498, _498), 0.0f, 1.0f)), 1.0f).xyz, _507, float4(_513, sqrt(clamp(1.0f - dot(_513, _513), 0.0f, 1.0f)), 1.0f).xyz * _522)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_383, cross(_380, _383), _380), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _563 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _568 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _575 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _528, View_View_MaterialTextureMipBias);
    float4 _581 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _586 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _593 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _528, View_View_MaterialTextureMipBias);
    float3 _602 = clamp(mad(_575.xyz, _543, mad(_563.xyz, _507, _568.xyz * _522)), 0.0f.xxx, 1.0f.xxx);
    float _606 = mad(clamp(mad(_593.y, _443, mad(_581.y, _437, _586.y * _440)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _607 = clamp(mad(_593.x, _443, mad(_581.x, _437, _586.x * _440)), 0.0f, 1.0f);
    uint _608 = in_var_PRIMITIVE_ID * 43u;
    float3 _652 = 0.0f.xxx;
    float _653 = 0.0f;
    float _654 = 0.0f;
    float _655 = 0.0f;
    float3 _656 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_608].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _624 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _628 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _624, 0.0f);
        float4 _631 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _624, 0.0f);
        float4 _634 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _624, 0.0f);
        float _644 = _634.w;
        _652 = normalize((_552 * _631.w) + ((_631.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _653 = mad(_606, _644, _634.z);
        _654 = mad(0.5f, _644, _634.y);
        _655 = _634.x;
        _656 = (_602 * _628.w) + _628.xyz;
    }
    else
    {
        _652 = _552;
        _653 = _606;
        _654 = 0.5f;
        _655 = 0.0f;
        _656 = _602;
    }
    uint _659 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_608].x);
    float _667 = _405.w;
    float3 _680 = ((_656 - (_656 * _655)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _687 = (lerp((0.07999999821186065673828125f * _654).xxx, _656, _655.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _688 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _693 = 0.0f.xxx;
    if (_688)
    {
        _693 = _680 + (_687 * 0.449999988079071044921875f);
    }
    else
    {
        _693 = _680;
    }
    bool3 _694 = _688.xxx;
    float3 _695 = float3(_694.x ? 0.0f.xxx.x : _687.x, _694.y ? 0.0f.xxx.y : _687.y, _694.z ? 0.0f.xxx.z : _687.z);
    float3 _741 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _704 = float4(_652, 1.0f);
        float4 _717 = _704.xyzz * _704.yzzx;
        _741 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _704), dot(View_SkyIrradianceEnvironmentMap[1u], _704), dot(View_SkyIrradianceEnvironmentMap[2u], _704)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _717), dot(View_SkyIrradianceEnvironmentMap[4u], _717), dot(View_SkyIrradianceEnvironmentMap[5u], _717))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_652.x, _652.x, -(_652.y * _652.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _741 = 0.0f.xxx;
    }
    float2 _747 = mad(_405.xy / _667.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _857 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _758 = int2(trunc(_747 * View_View_BufferSizeAndInvSize.xy));
        int _759 = _758.x;
        int _760 = _758.y;
        float4 _764 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_759, _760, 0).xy, 0));
        float _765 = _764.x;
        float _775 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _856 = 0.0f.xx;
        if ((abs((mad(_765, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_765, View_View_InvDeviceZToWorldZTransform.z, _775))) - _667) / _667) > 0.00999999977648258209228515625f)
        {
            float2 _788 = _747 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _792 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_759 - 1, _760, 0).xy, 0));
            float _793 = _792.x;
            float _799 = abs((mad(_793, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_793, View_View_InvDeviceZToWorldZTransform.z, _775))) - _667);
            bool _800 = _799 < 100000000.0f;
            bool2 _801 = _800.xx;
            float2 _802 = float2(_801.x ? _788.x : _747.x, _801.y ? _788.y : _747.y);
            float _803 = _800 ? _799 : 100000000.0f;
            float2 _806 = _747 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _810 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_759, _760 + 1, 0).xy, 0));
            float _811 = _810.x;
            float _817 = abs((mad(_811, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_811, View_View_InvDeviceZToWorldZTransform.z, _775))) - _667);
            bool _818 = _817 < _803;
            bool2 _819 = _818.xx;
            float2 _820 = float2(_819.x ? _806.x : _802.x, _819.y ? _806.y : _802.y);
            float _821 = _818 ? _817 : _803;
            float2 _823 = _747 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _827 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_759 + 1, _760, 0).xy, 0));
            float _828 = _827.x;
            float _834 = abs((mad(_828, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_828, View_View_InvDeviceZToWorldZTransform.z, _775))) - _667);
            bool _835 = _834 < _821;
            bool2 _836 = _835.xx;
            float2 _837 = float2(_836.x ? _823.x : _820.x, _836.y ? _823.y : _820.y);
            float2 _841 = _747 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _845 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_759, _760 - 1, 0).xy, 0));
            float _846 = _845.x;
            bool2 _854 = (abs((mad(_846, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_846, View_View_InvDeviceZToWorldZTransform.z, _775))) - _667) < (_835 ? _834 : _821)).xx;
            _856 = float2(_854.x ? _841.x : _837.x, _854.y ? _841.y : _837.y);
        }
        else
        {
            _856 = _747;
        }
        _857 = _856;
    }
    else
    {
        _857 = _747;
    }
    uint _863_dummy_parameter;
    uint2 _863 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _863_dummy_parameter);
    float _881 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_857 * float2(float(_863.x), float(_863.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_659 & 256u) != 0u), float((_659 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _890 = _607.xxx;
    uint2 _922 = uint2(_398 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _950 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _950 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_857 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _950 = 1.0f.xxxx;
    }
    float4 _951 = _950 * _950;
    uint _954 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_608].x);
    uint _967 = (uint((_954 & 2048u) != 0u) | (uint((_954 & 4096u) != 0u) << 1u)) | (uint((_954 & 8192u) != 0u) << 2u);
    float4 _1259 = 0.0f.xxxx;
    float4 _1260 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _993 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1008 = dot(float4(float(_993 & 1u), float((_993 & 2u) >> 1u), float((_993 & 4u) >> 2u), float((_993 & 8u) >> 3u)), _951);
        bool _1010 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1011 = _1010 ? 1.0f : _1008;
        float _1024 = 0.0f;
        float _1025 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1018 = clamp(mad(_667, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1020 = lerp(_1010 ? _1008 : 1.0f, 1.0f, _1018 * _1018);
            _1024 = min(_1020, _1011) * _1011;
            _1025 = _1020 * _1011;
        }
        else
        {
            _1024 = 1.0f;
            _1025 = 1.0f;
        }
        float3 _1241 = 0.0f.xxx;
        float3 _1242 = 0.0f.xxx;
        [branch]
        if ((_1025 + _1024) > 0.0f)
        {
            float _1032 = max(_653, View_View_MinRoughness);
            float _1033 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1036 = rsqrt(_1033);
            float3 _1037 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1036;
            float _1038 = dot(_652, _1037);
            float _1056 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1045 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1033 + 1.0f)), 0.0f, 1.0f));
                float _1055 = 0.0f;
                if (_1038 < _1045)
                {
                    float _1051 = _1045 + max(_1038, -_1045);
                    _1055 = (_1051 * _1051) / (4.0f * _1045);
                }
                else
                {
                    _1055 = _1038;
                }
                _1056 = _1055;
            }
            else
            {
                _1056 = _1038;
            }
            float _1057 = clamp(_1056, 0.0f, 1.0f);
            float _1058 = max(_1032, View_View_MinRoughness);
            float _1063 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1036) * mad(-_1058, _1058, 1.0f), 0.0f, 1.0f);
            float _1065 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1036, 0.0f, 1.0f);
            float3 _1234 = 0.0f.xxx;
            float3 _1235 = 0.0f.xxx;
            [branch]
            if (_1057 > 0.0f)
            {
                float _1076 = dot(_652, _430);
                float _1077 = dot(_430, _1037);
                float _1079 = rsqrt(mad(2.0f, _1077, 2.0f));
                bool _1085 = _1063 > 0.0f;
                float _1164 = 0.0f;
                float _1165 = 0.0f;
                if (_1085)
                {
                    float _1090 = sqrt(mad(-_1063, _1063, 1.0f));
                    float _1091 = 2.0f * _1038;
                    float _1092 = -_1077;
                    float _1093 = mad(_1091, _1076, _1092);
                    float _1162 = 0.0f;
                    float _1163 = 0.0f;
                    if (_1093 >= _1090)
                    {
                        _1162 = 1.0f;
                        _1163 = abs(_1076);
                    }
                    else
                    {
                        float _1098 = -_1093;
                        float _1101 = _1063 * rsqrt(mad(_1098, _1093, 1.0f));
                        float _1102 = mad(_1098, _1038, _1076);
                        float _1106 = mad(_1098, _1077, mad(2.0f * _1076, _1076, -1.0f));
                        float _1117 = _1101 * sqrt(clamp(mad(_1091 * _1076, _1077, mad(_1092, _1077, mad(-_1076, _1076, mad(-_1038, _1038, 1.0f)))), 0.0f, 1.0f));
                        float _1119 = (_1117 * 2.0f) * _1076;
                        float _1120 = mad(_1038, _1090, _1076);
                        float _1121 = mad(_1101, _1102, _1120);
                        float _1123 = mad(_1101, _1106, mad(_1077, _1090, 1.0f));
                        float _1124 = _1117 * _1123;
                        float _1125 = _1121 * _1123;
                        float _1130 = _1125 * mad(-0.5f, _1124, (0.25f * _1119) * _1121);
                        float _1140 = mad(_1121, mad(_1120, _1123 * _1123, _1125 * mad(-0.5f, mad(_1077, _1090, _1123), -0.5f)), mad(_1124, _1124, (_1119 * _1121) * mad(_1119, _1121, _1124 * (-2.0f))));
                        float _1144 = (2.0f * _1130) / mad(_1140, _1140, _1130 * _1130);
                        float _1145 = _1144 * _1140;
                        float _1147 = mad(-_1144, _1130, 1.0f);
                        float _1153 = mad(_1077, _1090, mad(_1147, _1101 * _1106, _1145 * _1119));
                        float _1155 = rsqrt(mad(2.0f, _1153, 2.0f));
                        _1162 = clamp((mad(_1038, _1090, mad(_1147, _1101 * _1102, _1145 * _1117)) + _1076) * _1155, 0.0f, 1.0f);
                        _1163 = clamp(mad(_1155, _1153, _1155), 0.0f, 1.0f);
                    }
                    _1164 = _1162;
                    _1165 = _1163;
                }
                else
                {
                    _1164 = clamp((_1038 + _1076) * _1079, 0.0f, 1.0f);
                    _1165 = clamp(mad(_1079, _1077, _1079), 0.0f, 1.0f);
                }
                float _1168 = clamp(abs(_1076) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1170 = 1.0f.xxx * _1057;
                float3 _1232 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1232 = 0.0f.xxx;
                }
                else
                {
                    float _1177 = _1032 * _1032;
                    float _1187 = 0.0f;
                    if (_1065 > 0.0f)
                    {
                        _1187 = clamp(mad(_1177, _1177, (_1065 * _1065) / mad(_1165, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1187 = _1177 * _1177;
                    }
                    float _1201 = 0.0f;
                    if (_1085)
                    {
                        _1201 = _1187 / (_1187 + (((0.25f * _1063) * mad(3.0f, asfloat(532487669 + (asint(_1187) >> 1)), _1063)) / (_1165 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1201 = 1.0f;
                    }
                    float _1204 = mad(mad(_1164, _1187, -_1164), _1164, 1.0f);
                    float _1209 = sqrt(_1187);
                    float _1210 = 1.0f - _1209;
                    float _1216 = 1.0f - _1165;
                    float _1217 = _1216 * _1216;
                    float _1218 = _1217 * _1217;
                    _1232 = _1170 * (((clamp(50.0f * _695.y, 0.0f, 1.0f) * (_1218 * _1216)).xxx + (_695 * mad(-_1218, _1216, 1.0f))) * (((_1187 / ((3.1415927410125732421875f * _1204) * _1204)) * _1201) * (0.5f / mad(_1057, mad(_1168, _1210, _1209), _1168 * mad(_1057, _1210, _1209)))));
                }
                _1234 = ((_693 * 0.3183098733425140380859375f) * _1170) * 1.0f;
                _1235 = _1232;
            }
            else
            {
                _1234 = 0.0f.xxx;
                _1235 = 0.0f.xxx;
            }
            float3 _1238 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1025;
            _1241 = mad(_1234 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1238, 0.0f.xxx);
            _1242 = (_1235 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1238;
        }
        else
        {
            _1241 = 0.0f.xxx;
            _1242 = 0.0f.xxx;
        }
        float4 _1246 = float4(_1241, 0.0f);
        float4 _1250 = float4(_1242, 0.0f);
        float4 _1257 = 0.0f.xxxx;
        float4 _1258 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _967) != 0u)
        {
            _1257 = float4(_1246.x, _1246.y, _1246.z, _1246.w);
            _1258 = float4(_1250.x, _1250.y, _1250.z, _1250.w);
        }
        else
        {
            _1257 = 0.0f.xxxx;
            _1258 = 0.0f.xxxx;
        }
        _1259 = _1257;
        _1260 = _1258;
    }
    else
    {
        _1259 = 0.0f.xxxx;
        _1260 = 0.0f.xxxx;
    }
    uint _1261 = ((((min(uint(max(0.0f, log2(mad(_321, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _922.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _922.x) * 2u;
    uint _1271 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1261 + 1u] & 1073741823u;
    uint _1274 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1261] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1276 = 0.0f.xxxx;
    float4 _1279 = 0.0f.xxxx;
    _1276 = _1259;
    _1279 = _1260;
    float4 _1277 = 0.0f.xxxx;
    float4 _1280 = 0.0f.xxxx;
    [loop]
    for (uint _1281 = 0u; _1281 < _1274; _1276 = _1277, _1279 = _1280, _1281++)
    {
        uint _1290 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1271 + _1281).x * 6u;
        uint _1293 = _1290 + 1u;
        uint _1296 = _1290 + 2u;
        uint _1299 = _1290 + 3u;
        uint _1302 = _1290 + 4u;
        uint _1306 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1296].w);
        uint _1312 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].y);
        uint _1328 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].z);
        float2 _1330 = spvUnpackHalf2x16(_1328 & 65535u);
        float _1331 = _1330.x;
        float2 _1334 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].w));
        float _1335 = _1334.x;
        bool _1340 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].w == 0.0f;
        uint _1342 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].w);
        uint _1355 = _1306 >> 4u;
        float3 _1371 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1290].xyz - _414;
        float _1372 = dot(_1371, _1371);
        float _1389 = 0.0f;
        if (_1340)
        {
            float _1384 = _1372 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1290].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1290].w);
            float _1387 = clamp(mad(-_1384, _1384, 1.0f), 0.0f, 1.0f);
            _1389 = _1387 * _1387;
        }
        else
        {
            float3 _1378 = _1371 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1290].w;
            _1389 = pow(1.0f - clamp(dot(_1378, _1378), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].w);
        }
        float _1400 = 0.0f;
        if (((_1306 >> 16u) & 3u) == 2u)
        {
            float _1397 = clamp((dot(_1371 * rsqrt(_1372), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1296].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1299].y, 0.0f, 1.0f);
            _1400 = _1389 * (_1397 * _1397);
        }
        else
        {
            _1400 = _1389;
        }
        float3 _1697 = 0.0f.xxx;
        float3 _1698 = 0.0f.xxx;
        [branch]
        if (_1400 > 0.0f)
        {
            float _1408 = 0.0f;
            [branch]
            if (uint(int((_1306 & 255u) != 0u)) != 0u)
            {
                _1408 = dot(float4(float(_1355 & 1u), float((_1355 & 2u) >> 1u), float((_1355 & 4u) >> 2u), float((_1355 & 8u) >> 3u)), _951);
            }
            else
            {
                _1408 = 1.0f;
            }
            float3 _1695 = 0.0f.xxx;
            float3 _1696 = 0.0f.xxx;
            [branch]
            if ((_1408 + _1408) > 0.0f)
            {
                float3 _1414 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1302].xyz * (0.5f * _1335);
                float3 _1415 = _1371 - _1414;
                float3 _1416 = _1371 + _1414;
                float _1419 = max(_653, View_View_MinRoughness);
                bool _1420 = _1335 > 0.0f;
                float _1445 = 0.0f;
                float _1446 = 0.0f;
                float _1447 = 0.0f;
                [branch]
                if (_1420)
                {
                    float _1432 = rsqrt(dot(_1415, _1415));
                    float _1433 = rsqrt(dot(_1416, _1416));
                    float _1434 = _1432 * _1433;
                    float _1436 = dot(_1415, _1416) * _1434;
                    _1445 = _1436;
                    _1446 = 0.5f * mad(dot(_652, _1415), _1432, dot(_652, _1416) * _1433);
                    _1447 = _1434 / mad(_1432, _1433, mad(_1436, 0.5f, 0.5f));
                }
                else
                {
                    float _1424 = dot(_1415, _1415);
                    _1445 = 1.0f;
                    _1446 = dot(_652, _1415 * rsqrt(_1424));
                    _1447 = 1.0f / (_1424 + 1.0f);
                }
                float _1465 = 0.0f;
                if (_1331 > 0.0f)
                {
                    float _1454 = sqrt(clamp((_1331 * _1331) * _1447, 0.0f, 1.0f));
                    float _1464 = 0.0f;
                    if (_1446 < _1454)
                    {
                        float _1460 = _1454 + max(_1446, -_1454);
                        _1464 = (_1460 * _1460) / (4.0f * _1454);
                    }
                    else
                    {
                        _1464 = _1446;
                    }
                    _1465 = _1464;
                }
                else
                {
                    _1465 = _1446;
                }
                float _1466 = clamp(_1465, 0.0f, 1.0f);
                float3 _1484 = 0.0f.xxx;
                if (_1420)
                {
                    float3 _1471 = reflect(-_430, _652);
                    float3 _1472 = _1416 - _1415;
                    float _1473 = dot(_1471, _1472);
                    _1484 = _1415 + (_1472 * clamp(dot(_1415, (_1471 * _1473) - _1472) / mad(_1335, _1335, -(_1473 * _1473)), 0.0f, 1.0f));
                }
                else
                {
                    _1484 = _1415;
                }
                float _1486 = rsqrt(dot(_1484, _1484));
                float3 _1487 = _1484 * _1486;
                float _1488 = max(_1419, View_View_MinRoughness);
                float _1493 = clamp((_1331 * _1486) * mad(-_1488, _1488, 1.0f), 0.0f, 1.0f);
                float _1495 = clamp(spvUnpackHalf2x16(_1328 >> 16u).x * _1486, 0.0f, 1.0f);
                float3 _1688 = 0.0f.xxx;
                float3 _1689 = 0.0f.xxx;
                [branch]
                if (_1466 > 0.0f)
                {
                    float _1506 = dot(_652, _1487);
                    float _1507 = dot(_652, _430);
                    float _1508 = dot(_430, _1487);
                    float _1510 = rsqrt(mad(2.0f, _1508, 2.0f));
                    bool _1516 = _1493 > 0.0f;
                    float _1595 = 0.0f;
                    float _1596 = 0.0f;
                    if (_1516)
                    {
                        float _1521 = sqrt(mad(-_1493, _1493, 1.0f));
                        float _1522 = 2.0f * _1506;
                        float _1523 = -_1508;
                        float _1524 = mad(_1522, _1507, _1523);
                        float _1593 = 0.0f;
                        float _1594 = 0.0f;
                        if (_1524 >= _1521)
                        {
                            _1593 = 1.0f;
                            _1594 = abs(_1507);
                        }
                        else
                        {
                            float _1529 = -_1524;
                            float _1532 = _1493 * rsqrt(mad(_1529, _1524, 1.0f));
                            float _1533 = mad(_1529, _1506, _1507);
                            float _1537 = mad(_1529, _1508, mad(2.0f * _1507, _1507, -1.0f));
                            float _1548 = _1532 * sqrt(clamp(mad(_1522 * _1507, _1508, mad(_1523, _1508, mad(-_1507, _1507, mad(-_1506, _1506, 1.0f)))), 0.0f, 1.0f));
                            float _1550 = (_1548 * 2.0f) * _1507;
                            float _1551 = mad(_1506, _1521, _1507);
                            float _1552 = mad(_1532, _1533, _1551);
                            float _1554 = mad(_1532, _1537, mad(_1508, _1521, 1.0f));
                            float _1555 = _1548 * _1554;
                            float _1556 = _1552 * _1554;
                            float _1561 = _1556 * mad(-0.5f, _1555, (0.25f * _1550) * _1552);
                            float _1571 = mad(_1552, mad(_1551, _1554 * _1554, _1556 * mad(-0.5f, mad(_1508, _1521, _1554), -0.5f)), mad(_1555, _1555, (_1550 * _1552) * mad(_1550, _1552, _1555 * (-2.0f))));
                            float _1575 = (2.0f * _1561) / mad(_1571, _1571, _1561 * _1561);
                            float _1576 = _1575 * _1571;
                            float _1578 = mad(-_1575, _1561, 1.0f);
                            float _1584 = mad(_1508, _1521, mad(_1578, _1532 * _1537, _1576 * _1550));
                            float _1586 = rsqrt(mad(2.0f, _1584, 2.0f));
                            _1593 = clamp((mad(_1506, _1521, mad(_1578, _1532 * _1533, _1576 * _1548)) + _1507) * _1586, 0.0f, 1.0f);
                            _1594 = clamp(mad(_1586, _1584, _1586), 0.0f, 1.0f);
                        }
                        _1595 = _1593;
                        _1596 = _1594;
                    }
                    else
                    {
                        _1595 = clamp((_1506 + _1507) * _1510, 0.0f, 1.0f);
                        _1596 = clamp(mad(_1510, _1508, _1510), 0.0f, 1.0f);
                    }
                    float _1599 = clamp(abs(_1507) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1602 = 1.0f.xxx * ((_1340 ? _1447 : 1.0f) * _1466);
                    float3 _1686 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1335, _1331), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1686 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1609 = _1419 * _1419;
                        float _1619 = 0.0f;
                        if (_1495 > 0.0f)
                        {
                            _1619 = clamp(mad(_1609, _1609, (_1495 * _1495) / mad(_1596, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1619 = _1609 * _1609;
                        }
                        float _1633 = 0.0f;
                        float _1634 = 0.0f;
                        if (_1516)
                        {
                            float _1631 = _1619 + (((0.25f * _1493) * mad(3.0f, asfloat(532487669 + (asint(_1619) >> 1)), _1493)) / (_1596 + 0.001000000047497451305389404296875f));
                            _1633 = _1619 / _1631;
                            _1634 = _1631;
                        }
                        else
                        {
                            _1633 = 1.0f;
                            _1634 = _1619;
                        }
                        float _1655 = 0.0f;
                        if (_1445 < 1.0f)
                        {
                            float _1641 = sqrt((1.00010001659393310546875f - _1445) / (1.0f + _1445));
                            _1655 = _1633 * sqrt(_1634 / (_1634 + (((0.25f * _1641) * mad(3.0f, asfloat(532487669 + (asint(_1634) >> 1)), _1641)) / (_1596 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1655 = _1633;
                        }
                        float _1658 = mad(mad(_1595, _1619, -_1595), _1595, 1.0f);
                        float _1663 = sqrt(_1619);
                        float _1664 = 1.0f - _1663;
                        float _1670 = 1.0f - _1596;
                        float _1671 = _1670 * _1670;
                        float _1672 = _1671 * _1671;
                        _1686 = _1602 * (((clamp(50.0f * _695.y, 0.0f, 1.0f) * (_1672 * _1670)).xxx + (_695 * mad(-_1672, _1670, 1.0f))) * (((_1619 / ((3.1415927410125732421875f * _1658) * _1658)) * _1655) * (0.5f / mad(_1466, mad(_1599, _1664, _1663), _1599 * mad(_1466, _1664, _1663)))));
                    }
                    _1688 = ((_693 * 0.3183098733425140380859375f) * _1602) * 1.0f;
                    _1689 = _1686;
                }
                else
                {
                    _1688 = 0.0f.xxx;
                    _1689 = 0.0f.xxx;
                }
                float3 _1692 = ((float3(float((_1312 >> 0u) & 1023u), float((_1312 >> 10u) & 1023u), float((_1312 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1293].x) * _1400) * _1408;
                _1695 = mad(_1688 * (float((_1342 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1692, 0.0f.xxx);
                _1696 = (_1689 * (float(_1342 & 1023u) * 0.000977517105638980865478515625f)) * _1692;
            }
            else
            {
                _1695 = 0.0f.xxx;
                _1696 = 0.0f.xxx;
            }
            _1697 = _1695;
            _1698 = _1696;
        }
        else
        {
            _1697 = 0.0f.xxx;
            _1698 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1306 >> 8u) & 7u) & _967) != 0u)
        {
            _1277 = _1276 + float4(_1697, 0.0f);
            _1280 = _1279 + float4(_1698, 0.0f);
        }
        else
        {
            _1277 = _1276;
            _1280 = _1279;
        }
    }
    bool4 _1716 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1726 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_608].w) & 65535u);
    float3 _1730 = (_652 * (2.0f * dot(_430, _652))) - _430;
    float _1737 = mad(-1.2000000476837158203125f, log2(max(_653, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1751 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1730, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1726].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1737);
    float _1755 = 1.0f - _1751.w;
    float3 _1782 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1782 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1730, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1737).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1782 = 0.0f.xxx;
    }
    float4 _1788 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _653) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1789 = _1788.x;
    float2 _1798 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1789 * _1789, exp2((-9.27999973297119140625f) * clamp(dot(_652, _430), 0.0f, 1.0f))), _1789, _1788.y)) + _1788.zw;
    bool _1825 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2249 = 0.0f.xxxx;
    if (_1825)
    {
        uint2 _1837 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1839 = normalize(_414 - View_View_TranslatedWorldCameraOrigin);
        uint _1840 = _1837.x;
        uint4 _1844 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1840, _1837.y, 0u), 0u));
        uint _1845 = _1844.x;
        float4 _1847 = 0.0f.xxxx;
        _1847 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1848 = 0.0f.xxxx;
        for (int _1850 = 0; uint(_1850) < _1845; _1847 = _1848, _1850++)
        {
            uint _1861 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1840, _1837.y, uint(1 + _1850)), 0u)).x * 3u;
            float4 _1863 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1861);
            float4 _1865 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1861 + 1u);
            float4 _1867 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1861 + 2u);
            float3 _1868 = _1863.xyz;
            float _1869 = _1863.w;
            float _1870 = 1.0f / _1869;
            uint _1872 = asuint(_1865.x);
            float2 _1878 = float2(spvUnpackHalf2x16(_1872).x, spvUnpackHalf2x16(_1872 >> 16u).x);
            float3 _1879 = float3(_1878.x, _1878.y, _292.z);
            uint _1881 = asuint(_1865.y);
            _1879.z = spvUnpackHalf2x16(_1881).x;
            float3 _1888 = 0.0f.xxx;
            _1888.x = spvUnpackHalf2x16(_1881 >> 16u).x;
            uint _1890 = asuint(_1865.z);
            float2 _1896 = float2(spvUnpackHalf2x16(_1890).x, spvUnpackHalf2x16(_1890 >> 16u).x);
            float3 _1897 = float3(_1888.x, _1896.x, _1896.y);
            float3x3 _1902 = float3x3(_1879 * _1870, _1897 * _1870, cross(_1879, _1897) * _1870);
            uint _1904 = asuint(_1867.x);
            float2 _1907 = spvUnpackHalf2x16((_1904 >> 17u) & 32752u);
            float _1908 = _1907.x;
            float2 _1911 = spvUnpackHalf2x16((_1904 >> 6u) & 32752u);
            float _1912 = _1911.x;
            float2 _1915 = spvUnpackHalf2x16((_1904 << 5u) & 32736u);
            float _1916 = _1915.x;
            uint _1918 = asuint(_1867.y);
            float3 _1936 = 0.0f.xxx;
            if (_1918 > 0u)
            {
                _1936 = float3(spvUnpackHalf2x16((_1918 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1918 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1918 << 5u) & 32736u).x);
            }
            else
            {
                _1936 = 0.0f.xxx;
            }
            uint _1938 = asuint(_1867.z);
            float _1953 = float((_1938 >> 24u) & 255u);
            float _1954 = _1953 * 0.0039215688593685626983642578125f;
            float3 _1961 = mul(View_View_TranslatedWorldCameraOrigin - _1868, _1902);
            float3 _1963 = normalize(mul(_1839, _1902));
            float _1965 = dot(_1963, _1963);
            float _1966 = dot(_1963, _1961);
            float _1967 = 2.0f * _1966;
            float _1972 = mad(_1967, _1967, -((4.0f * _1965) * mad(-1.0f, 1.0f, dot(_1961, _1961))));
            float2 _1984 = 0.0f.xx;
            [flatten]
            if (_1972 >= 0.0f)
            {
                _1984 = ((_1966 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1972))) / (2.0f * _1965).xx;
            }
            else
            {
                _1984 = (-1.0f).xx;
            }
            float3 _1990 = mul(_414 - _1868, _1902) - _1961;
            float2 _1994 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1870, _1984), sqrt(dot(_1990, _1990)).xx);
            float _2144 = 0.0f;
            float3 _2145 = 0.0f.xxx;
            if (any(bool2(_1994.x > 0.0f.xx.x, _1994.y > 0.0f.xx.y)))
            {
                float2 _2015 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2005 = dot(_1839, View_View_ViewForward);
                    _2015 = max(_1994, ((View_View_VolumetricFogMaxDistance * ((_2005 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2005) : 0.0f)) * _1870).xx);
                }
                else
                {
                    _2015 = _1994;
                }
                float _2020 = max(0.0f, abs(_2015.y - _2015.x));
                float _2142 = 0.0f;
                float3 _2143 = 0.0f.xxx;
                if (_2020 > 0.0f)
                {
                    float3 _2025 = _1961 + (_1963 * _2015.x);
                    float _2061 = 0.0f;
                    if (_1908 > 0.0f)
                    {
                        float _2029 = dot(_1963, _2025);
                        float _2030 = dot(_2025, _2025);
                        float _2031 = _2030 - 1.0f;
                        float _2033 = mad(_2029, _2029, 1.0f - _2030);
                        float _2060 = 0.0f;
                        if (_2033 >= 0.0f)
                        {
                            float _2037 = sqrt(_2033);
                            float _2038 = -_2029;
                            float _2041 = max(_2038 - _2037, 0.0f);
                            float _2043 = min(max(_2038 + _2037, 0.0f), _2020);
                            float _2044 = _2041 * _2041;
                            float _2045 = _2043 * _2043;
                            _2060 = max(0.0f, (_1908 * ((-mad(_2045 * _2043, 0.3333333432674407958984375f, mad(_2031, _2043, _2029 * _2045))) - (-mad(_2044 * _2041, 0.3333333432674407958984375f, mad(_2031, _2041, _2029 * _2044))))) * 0.75f);
                        }
                        else
                        {
                            _2060 = 0.0f;
                        }
                        _2061 = _2060;
                    }
                    else
                    {
                        _2061 = 0.0f;
                    }
                    float _2086 = 0.0f;
                    if (_1912 > 0.0f)
                    {
                        float _2067 = _1963.z;
                        float _2073 = (abs(_2067) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2067 >= 0.0f) ? 1.0f : (-1.0f))) : _2067;
                        float _2076 = max(-80.0f, (_2025.z - _1867.w) * _1916);
                        _2086 = (_1912 / (_1916 * _2073)) * (exp(-_2076) - exp(-mad(_2073 * _2020, _1916, _2076)));
                    }
                    else
                    {
                        _2086 = 0.0f;
                    }
                    float _2097 = exp((log(mad(exp(-_2061) - 1.0f, 1.0f - exp(-_2086), 1.0f)) * _1869) * 0.00999999977648258209228515625f);
                    float _2101 = _1953 * (-0.0039215688593685626983642578125f);
                    float _2108 = mad(_1953 * (-0.007843137718737125396728515625f), dot(_1839, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2101, _2101, 1.0f));
                    float3 _2113 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1954, _2101, 1.0f) / ((12.56637096405029296875f * _2108) * sqrt(_2108)));
                    float3 _2139 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2124 = float4(_1839 * _2101, 1.0f);
                        _2139 = _2113 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2124), dot(View_SkyIrradianceEnvironmentMap[1u], _2124), dot(View_SkyIrradianceEnvironmentMap[2u], _2124)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2139 = _2113;
                    }
                    _2142 = _2097;
                    _2143 = mad(_2139, float4(float((_1938 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1938 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1938 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1954).xyz, _1936) * (1.0f - _2097);
                }
                else
                {
                    _2142 = 1.0f;
                    _2143 = 0.0f.xxx;
                }
                _2144 = _2142;
                _2145 = _2143;
            }
            else
            {
                _2144 = 1.0f;
                _2145 = 0.0f.xxx;
            }
            _1848 = float4((_1847.xyz * _2144) + float4(_2145, _2144).xyz, _1847.w * _2144);
        }
        float _2165 = _1847.w * in_var_TEXCOORD7.w;
        float4 _2173 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2173 + _91;
        precise float4 _93 = _92 - _2173;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2173 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2184 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2185 = _2184.w;
        float4 _2248 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2248 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2231 = 0.0f.xxxx;
            float _2232 = 0.0f;
            if (_1825)
            {
                float4 _2227 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2184.xy / _2185.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2185, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2229 = _2227.xyz * View_View_OneOverPreExposure;
                _2231 = float4(_2229.x, _2229.y, _2229.z, _2227.w);
                _2232 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2231 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2232 = 0.0f;
            }
            float4 _2237 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2231, clamp((_667 - _2232) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2240 = _2237.w;
            _2248 = float4(_2237.xyz + (float4(_1847.xyz + (in_var_TEXCOORD7.xyz * _1847.w), _2165).xyz * _2240), _2240 * _2165);
            break;
        } while(false);
        _2249 = _2248;
    }
    else
    {
        _2249 = in_var_TEXCOORD7;
    }
    float3 _2256 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].xyz, Material_Material_PreshaderBuffer[4].y.xxx), 0.0f.xxx);
    float3 _2325 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _98 = Scene_GPUScene_GPUScenePrimitiveSceneData[_608 + 18u].xyz * 2097152.0f;
        precise float3 _99 = _98 + Scene_GPUScene_GPUScenePrimitiveSceneData[_608 + 19u].xyz;
        precise float3 _100 = _99 - _98;
        precise float3 _101 = Scene_GPUScene_GPUScenePrimitiveSceneData[_608 + 19u].xyz - _100;
        uint _2282 = _608 + 32u;
        precise float3 _102 = _87 - _99;
        precise float3 _103 = _90 - _101;
        precise float3 _104 = _102 + _103;
        float3 _2287 = abs(_104);
        float3 _2288 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_608 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_608 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_608 + 27u].w) + 1.0f.xxx;
        float3 _2324 = 0.0f.xxx;
        if (any(bool3(_2287.x > _2288.x, _2287.y > _2288.y, _2287.z > _2288.z)))
        {
            float3 _2320 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2324 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2320.x > 0.5f.xxx.x, _2320.y > 0.5f.xxx.y, _2320.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2310 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2282].x > 0.0f)
            {
                float3 _2298 = abs(_414 - in_var_TEXCOORD9);
                _2310 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2298.x, max(_2298.y, _2298.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2282].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2310 = _2256;
            }
            _2324 = _2310;
        }
        _2325 = _2324;
    }
    else
    {
        _2325 = _2256;
    }
    float3 _2327 = mad((_741 * _881) * _693, max(_890, ((((((_656 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _607) + ((_656 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _607) + ((_656 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _607), lerp(mad((((float4(_1751.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1726].x, _1755).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1782 * _1755)).xyz * ((_695 * _1798.x) + (clamp(50.0f * _695.y, 0.0f, 1.0f) * _1798.y).xxx)) * _881, max(_890, ((((((_695 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _607) + ((_695 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _607) + ((_695 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _607), float4(_1716.x ? 0.0f.xxxx.x : _1276.x, _1716.y ? 0.0f.xxxx.y : _1276.y, _1716.z ? 0.0f.xxxx.z : _1276.z, _1716.w ? 0.0f.xxxx.w : _1276.w).xyz + float4(_1716.x ? 0.0f.xxxx.x : _1279.x, _1716.y ? 0.0f.xxxx.y : _1279.y, _1716.z ? 0.0f.xxxx.z : _1279.z, _1716.w ? 0.0f.xxxx.w : _1279.w).xyz), _693 + (_695 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2325;
    float4 _2335 = float4((_2327 * _2249.w) + _2249.xyz, 0.0f);
    _2335.w = 0.0f;
    float4 _2339 = _2335 * View_View_PreExposure;
    float3 _2344 = min(_2339.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2344.x, _2344.y, _2344.z, _2339.w);
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
