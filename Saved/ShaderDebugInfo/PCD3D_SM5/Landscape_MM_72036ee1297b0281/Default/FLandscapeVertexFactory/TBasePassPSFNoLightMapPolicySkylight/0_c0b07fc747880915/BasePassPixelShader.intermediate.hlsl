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
    float4 _454 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _446 * Material_Material_PreshaderBuffer[3].x.xx);
    float _458 = _454.x * Material_Material_PreshaderBuffer[3].y;
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
    float2 _530 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _492, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _539 = _443.xxx;
    float3 _548 = normalize(mul(normalize((mad(float4(_530, sqrt(clamp(1.0f - dot(_530, _530), 0.0f, 1.0f)), 1.0f).xyz, _539, mad(float4(_498, sqrt(clamp(1.0f - dot(_498, _498), 0.0f, 1.0f)), 1.0f).xyz, _507, float4(_513, sqrt(clamp(1.0f - dot(_513, _513), 0.0f, 1.0f)), 1.0f).xyz * _522)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_383, cross(_380, _383), _380), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _559 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _564 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _571 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _577 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _582 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _492, View_View_MaterialTextureMipBias);
    float4 _589 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _492, View_View_MaterialTextureMipBias);
    float3 _601 = clamp(mad(_571.xyz, _539, mad(_559.xyz, _507, _564.xyz * _522)), 0.0f.xxx, 1.0f.xxx);
    float _605 = mad(clamp(mad(_589.y * Material_Material_PreshaderBuffer[5].x, _443, mad(_577.y, _437, _582.y * _440)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _606 = clamp(mad(_589.x, _443, mad(_577.x, _437, _582.x * _440)), 0.0f, 1.0f);
    uint _607 = in_var_PRIMITIVE_ID * 43u;
    float3 _651 = 0.0f.xxx;
    float _652 = 0.0f;
    float _653 = 0.0f;
    float _654 = 0.0f;
    float3 _655 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_607].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _623 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _627 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _623, 0.0f);
        float4 _630 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _623, 0.0f);
        float4 _633 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _623, 0.0f);
        float _643 = _633.w;
        _651 = normalize((_548 * _630.w) + ((_630.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _652 = mad(_605, _643, _633.z);
        _653 = mad(0.5f, _643, _633.y);
        _654 = _633.x;
        _655 = (_601 * _627.w) + _627.xyz;
    }
    else
    {
        _651 = _548;
        _652 = _605;
        _653 = 0.5f;
        _654 = 0.0f;
        _655 = _601;
    }
    uint _658 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_607].x);
    float _666 = _405.w;
    float3 _679 = ((_655 - (_655 * _654)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _686 = (lerp((0.07999999821186065673828125f * _653).xxx, _655, _654.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _687 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _692 = 0.0f.xxx;
    if (_687)
    {
        _692 = _679 + (_686 * 0.449999988079071044921875f);
    }
    else
    {
        _692 = _679;
    }
    bool3 _693 = _687.xxx;
    float3 _694 = float3(_693.x ? 0.0f.xxx.x : _686.x, _693.y ? 0.0f.xxx.y : _686.y, _693.z ? 0.0f.xxx.z : _686.z);
    float3 _740 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _703 = float4(_651, 1.0f);
        float4 _716 = _703.xyzz * _703.yzzx;
        _740 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _703), dot(View_SkyIrradianceEnvironmentMap[1u], _703), dot(View_SkyIrradianceEnvironmentMap[2u], _703)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _716), dot(View_SkyIrradianceEnvironmentMap[4u], _716), dot(View_SkyIrradianceEnvironmentMap[5u], _716))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_651.x, _651.x, -(_651.y * _651.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _740 = 0.0f.xxx;
    }
    float2 _746 = mad(_405.xy / _666.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _856 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _757 = int2(trunc(_746 * View_View_BufferSizeAndInvSize.xy));
        int _758 = _757.x;
        int _759 = _757.y;
        float4 _763 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_758, _759, 0).xy, 0));
        float _764 = _763.x;
        float _774 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _855 = 0.0f.xx;
        if ((abs((mad(_764, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_764, View_View_InvDeviceZToWorldZTransform.z, _774))) - _666) / _666) > 0.00999999977648258209228515625f)
        {
            float2 _787 = _746 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _791 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_758 - 1, _759, 0).xy, 0));
            float _792 = _791.x;
            float _798 = abs((mad(_792, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_792, View_View_InvDeviceZToWorldZTransform.z, _774))) - _666);
            bool _799 = _798 < 100000000.0f;
            bool2 _800 = _799.xx;
            float2 _801 = float2(_800.x ? _787.x : _746.x, _800.y ? _787.y : _746.y);
            float _802 = _799 ? _798 : 100000000.0f;
            float2 _805 = _746 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _809 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_758, _759 + 1, 0).xy, 0));
            float _810 = _809.x;
            float _816 = abs((mad(_810, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_810, View_View_InvDeviceZToWorldZTransform.z, _774))) - _666);
            bool _817 = _816 < _802;
            bool2 _818 = _817.xx;
            float2 _819 = float2(_818.x ? _805.x : _801.x, _818.y ? _805.y : _801.y);
            float _820 = _817 ? _816 : _802;
            float2 _822 = _746 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _826 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_758 + 1, _759, 0).xy, 0));
            float _827 = _826.x;
            float _833 = abs((mad(_827, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_827, View_View_InvDeviceZToWorldZTransform.z, _774))) - _666);
            bool _834 = _833 < _820;
            bool2 _835 = _834.xx;
            float2 _836 = float2(_835.x ? _822.x : _819.x, _835.y ? _822.y : _819.y);
            float2 _840 = _746 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _844 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_758, _759 - 1, 0).xy, 0));
            float _845 = _844.x;
            bool2 _853 = (abs((mad(_845, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_845, View_View_InvDeviceZToWorldZTransform.z, _774))) - _666) < (_834 ? _833 : _820)).xx;
            _855 = float2(_853.x ? _840.x : _836.x, _853.y ? _840.y : _836.y);
        }
        else
        {
            _855 = _746;
        }
        _856 = _855;
    }
    else
    {
        _856 = _746;
    }
    uint _862_dummy_parameter;
    uint2 _862 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _862_dummy_parameter);
    float _880 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_856 * float2(float(_862.x), float(_862.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_658 & 256u) != 0u), float((_658 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _889 = _606.xxx;
    uint2 _921 = uint2(_398 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _949 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _949 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_856 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _949 = 1.0f.xxxx;
    }
    float4 _950 = _949 * _949;
    uint _953 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_607].x);
    uint _966 = (uint((_953 & 2048u) != 0u) | (uint((_953 & 4096u) != 0u) << 1u)) | (uint((_953 & 8192u) != 0u) << 2u);
    float4 _1258 = 0.0f.xxxx;
    float4 _1259 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _992 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1007 = dot(float4(float(_992 & 1u), float((_992 & 2u) >> 1u), float((_992 & 4u) >> 2u), float((_992 & 8u) >> 3u)), _950);
        bool _1009 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1010 = _1009 ? 1.0f : _1007;
        float _1023 = 0.0f;
        float _1024 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1017 = clamp(mad(_666, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1019 = lerp(_1009 ? _1007 : 1.0f, 1.0f, _1017 * _1017);
            _1023 = min(_1019, _1010) * _1010;
            _1024 = _1019 * _1010;
        }
        else
        {
            _1023 = 1.0f;
            _1024 = 1.0f;
        }
        float3 _1240 = 0.0f.xxx;
        float3 _1241 = 0.0f.xxx;
        [branch]
        if ((_1024 + _1023) > 0.0f)
        {
            float _1031 = max(_652, View_View_MinRoughness);
            float _1032 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1035 = rsqrt(_1032);
            float3 _1036 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1035;
            float _1037 = dot(_651, _1036);
            float _1055 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1044 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1032 + 1.0f)), 0.0f, 1.0f));
                float _1054 = 0.0f;
                if (_1037 < _1044)
                {
                    float _1050 = _1044 + max(_1037, -_1044);
                    _1054 = (_1050 * _1050) / (4.0f * _1044);
                }
                else
                {
                    _1054 = _1037;
                }
                _1055 = _1054;
            }
            else
            {
                _1055 = _1037;
            }
            float _1056 = clamp(_1055, 0.0f, 1.0f);
            float _1057 = max(_1031, View_View_MinRoughness);
            float _1062 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1035) * mad(-_1057, _1057, 1.0f), 0.0f, 1.0f);
            float _1064 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1035, 0.0f, 1.0f);
            float3 _1233 = 0.0f.xxx;
            float3 _1234 = 0.0f.xxx;
            [branch]
            if (_1056 > 0.0f)
            {
                float _1075 = dot(_651, _430);
                float _1076 = dot(_430, _1036);
                float _1078 = rsqrt(mad(2.0f, _1076, 2.0f));
                bool _1084 = _1062 > 0.0f;
                float _1163 = 0.0f;
                float _1164 = 0.0f;
                if (_1084)
                {
                    float _1089 = sqrt(mad(-_1062, _1062, 1.0f));
                    float _1090 = 2.0f * _1037;
                    float _1091 = -_1076;
                    float _1092 = mad(_1090, _1075, _1091);
                    float _1161 = 0.0f;
                    float _1162 = 0.0f;
                    if (_1092 >= _1089)
                    {
                        _1161 = 1.0f;
                        _1162 = abs(_1075);
                    }
                    else
                    {
                        float _1097 = -_1092;
                        float _1100 = _1062 * rsqrt(mad(_1097, _1092, 1.0f));
                        float _1101 = mad(_1097, _1037, _1075);
                        float _1105 = mad(_1097, _1076, mad(2.0f * _1075, _1075, -1.0f));
                        float _1116 = _1100 * sqrt(clamp(mad(_1090 * _1075, _1076, mad(_1091, _1076, mad(-_1075, _1075, mad(-_1037, _1037, 1.0f)))), 0.0f, 1.0f));
                        float _1118 = (_1116 * 2.0f) * _1075;
                        float _1119 = mad(_1037, _1089, _1075);
                        float _1120 = mad(_1100, _1101, _1119);
                        float _1122 = mad(_1100, _1105, mad(_1076, _1089, 1.0f));
                        float _1123 = _1116 * _1122;
                        float _1124 = _1120 * _1122;
                        float _1129 = _1124 * mad(-0.5f, _1123, (0.25f * _1118) * _1120);
                        float _1139 = mad(_1120, mad(_1119, _1122 * _1122, _1124 * mad(-0.5f, mad(_1076, _1089, _1122), -0.5f)), mad(_1123, _1123, (_1118 * _1120) * mad(_1118, _1120, _1123 * (-2.0f))));
                        float _1143 = (2.0f * _1129) / mad(_1139, _1139, _1129 * _1129);
                        float _1144 = _1143 * _1139;
                        float _1146 = mad(-_1143, _1129, 1.0f);
                        float _1152 = mad(_1076, _1089, mad(_1146, _1100 * _1105, _1144 * _1118));
                        float _1154 = rsqrt(mad(2.0f, _1152, 2.0f));
                        _1161 = clamp((mad(_1037, _1089, mad(_1146, _1100 * _1101, _1144 * _1116)) + _1075) * _1154, 0.0f, 1.0f);
                        _1162 = clamp(mad(_1154, _1152, _1154), 0.0f, 1.0f);
                    }
                    _1163 = _1161;
                    _1164 = _1162;
                }
                else
                {
                    _1163 = clamp((_1037 + _1075) * _1078, 0.0f, 1.0f);
                    _1164 = clamp(mad(_1078, _1076, _1078), 0.0f, 1.0f);
                }
                float _1167 = clamp(abs(_1075) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1169 = 1.0f.xxx * _1056;
                float3 _1231 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1231 = 0.0f.xxx;
                }
                else
                {
                    float _1176 = _1031 * _1031;
                    float _1186 = 0.0f;
                    if (_1064 > 0.0f)
                    {
                        _1186 = clamp(mad(_1176, _1176, (_1064 * _1064) / mad(_1164, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1186 = _1176 * _1176;
                    }
                    float _1200 = 0.0f;
                    if (_1084)
                    {
                        _1200 = _1186 / (_1186 + (((0.25f * _1062) * mad(3.0f, asfloat(532487669 + (asint(_1186) >> 1)), _1062)) / (_1164 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1200 = 1.0f;
                    }
                    float _1203 = mad(mad(_1163, _1186, -_1163), _1163, 1.0f);
                    float _1208 = sqrt(_1186);
                    float _1209 = 1.0f - _1208;
                    float _1215 = 1.0f - _1164;
                    float _1216 = _1215 * _1215;
                    float _1217 = _1216 * _1216;
                    _1231 = _1169 * (((clamp(50.0f * _694.y, 0.0f, 1.0f) * (_1217 * _1215)).xxx + (_694 * mad(-_1217, _1215, 1.0f))) * (((_1186 / ((3.1415927410125732421875f * _1203) * _1203)) * _1200) * (0.5f / mad(_1056, mad(_1167, _1209, _1208), _1167 * mad(_1056, _1209, _1208)))));
                }
                _1233 = ((_692 * 0.3183098733425140380859375f) * _1169) * 1.0f;
                _1234 = _1231;
            }
            else
            {
                _1233 = 0.0f.xxx;
                _1234 = 0.0f.xxx;
            }
            float3 _1237 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1024;
            _1240 = mad(_1233 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1237, 0.0f.xxx);
            _1241 = (_1234 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1237;
        }
        else
        {
            _1240 = 0.0f.xxx;
            _1241 = 0.0f.xxx;
        }
        float4 _1245 = float4(_1240, 0.0f);
        float4 _1249 = float4(_1241, 0.0f);
        float4 _1256 = 0.0f.xxxx;
        float4 _1257 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _966) != 0u)
        {
            _1256 = float4(_1245.x, _1245.y, _1245.z, _1245.w);
            _1257 = float4(_1249.x, _1249.y, _1249.z, _1249.w);
        }
        else
        {
            _1256 = 0.0f.xxxx;
            _1257 = 0.0f.xxxx;
        }
        _1258 = _1256;
        _1259 = _1257;
    }
    else
    {
        _1258 = 0.0f.xxxx;
        _1259 = 0.0f.xxxx;
    }
    uint _1260 = ((((min(uint(max(0.0f, log2(mad(_321, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _921.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _921.x) * 2u;
    uint _1270 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1260 + 1u] & 1073741823u;
    uint _1273 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1260] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1275 = 0.0f.xxxx;
    float4 _1278 = 0.0f.xxxx;
    _1275 = _1258;
    _1278 = _1259;
    float4 _1276 = 0.0f.xxxx;
    float4 _1279 = 0.0f.xxxx;
    [loop]
    for (uint _1280 = 0u; _1280 < _1273; _1275 = _1276, _1278 = _1279, _1280++)
    {
        uint _1289 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1270 + _1280).x * 6u;
        uint _1292 = _1289 + 1u;
        uint _1295 = _1289 + 2u;
        uint _1298 = _1289 + 3u;
        uint _1301 = _1289 + 4u;
        uint _1305 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1295].w);
        uint _1311 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1292].y);
        uint _1327 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1298].z);
        float2 _1329 = spvUnpackHalf2x16(_1327 & 65535u);
        float _1330 = _1329.x;
        float2 _1333 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1298].w));
        float _1334 = _1333.x;
        bool _1339 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1292].w == 0.0f;
        uint _1341 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1301].w);
        uint _1354 = _1305 >> 4u;
        float3 _1370 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1289].xyz - _414;
        float _1371 = dot(_1370, _1370);
        float _1388 = 0.0f;
        if (_1339)
        {
            float _1383 = _1371 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1289].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1289].w);
            float _1386 = clamp(mad(-_1383, _1383, 1.0f), 0.0f, 1.0f);
            _1388 = _1386 * _1386;
        }
        else
        {
            float3 _1377 = _1370 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1289].w;
            _1388 = pow(1.0f - clamp(dot(_1377, _1377), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1292].w);
        }
        float _1399 = 0.0f;
        if (((_1305 >> 16u) & 3u) == 2u)
        {
            float _1396 = clamp((dot(_1370 * rsqrt(_1371), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1295].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1298].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1298].y, 0.0f, 1.0f);
            _1399 = _1388 * (_1396 * _1396);
        }
        else
        {
            _1399 = _1388;
        }
        float3 _1696 = 0.0f.xxx;
        float3 _1697 = 0.0f.xxx;
        [branch]
        if (_1399 > 0.0f)
        {
            float _1407 = 0.0f;
            [branch]
            if (uint(int((_1305 & 255u) != 0u)) != 0u)
            {
                _1407 = dot(float4(float(_1354 & 1u), float((_1354 & 2u) >> 1u), float((_1354 & 4u) >> 2u), float((_1354 & 8u) >> 3u)), _950);
            }
            else
            {
                _1407 = 1.0f;
            }
            float3 _1694 = 0.0f.xxx;
            float3 _1695 = 0.0f.xxx;
            [branch]
            if ((_1407 + _1407) > 0.0f)
            {
                float3 _1413 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1301].xyz * (0.5f * _1334);
                float3 _1414 = _1370 - _1413;
                float3 _1415 = _1370 + _1413;
                float _1418 = max(_652, View_View_MinRoughness);
                bool _1419 = _1334 > 0.0f;
                float _1444 = 0.0f;
                float _1445 = 0.0f;
                float _1446 = 0.0f;
                [branch]
                if (_1419)
                {
                    float _1431 = rsqrt(dot(_1414, _1414));
                    float _1432 = rsqrt(dot(_1415, _1415));
                    float _1433 = _1431 * _1432;
                    float _1435 = dot(_1414, _1415) * _1433;
                    _1444 = _1435;
                    _1445 = 0.5f * mad(dot(_651, _1414), _1431, dot(_651, _1415) * _1432);
                    _1446 = _1433 / mad(_1431, _1432, mad(_1435, 0.5f, 0.5f));
                }
                else
                {
                    float _1423 = dot(_1414, _1414);
                    _1444 = 1.0f;
                    _1445 = dot(_651, _1414 * rsqrt(_1423));
                    _1446 = 1.0f / (_1423 + 1.0f);
                }
                float _1464 = 0.0f;
                if (_1330 > 0.0f)
                {
                    float _1453 = sqrt(clamp((_1330 * _1330) * _1446, 0.0f, 1.0f));
                    float _1463 = 0.0f;
                    if (_1445 < _1453)
                    {
                        float _1459 = _1453 + max(_1445, -_1453);
                        _1463 = (_1459 * _1459) / (4.0f * _1453);
                    }
                    else
                    {
                        _1463 = _1445;
                    }
                    _1464 = _1463;
                }
                else
                {
                    _1464 = _1445;
                }
                float _1465 = clamp(_1464, 0.0f, 1.0f);
                float3 _1483 = 0.0f.xxx;
                if (_1419)
                {
                    float3 _1470 = reflect(-_430, _651);
                    float3 _1471 = _1415 - _1414;
                    float _1472 = dot(_1470, _1471);
                    _1483 = _1414 + (_1471 * clamp(dot(_1414, (_1470 * _1472) - _1471) / mad(_1334, _1334, -(_1472 * _1472)), 0.0f, 1.0f));
                }
                else
                {
                    _1483 = _1414;
                }
                float _1485 = rsqrt(dot(_1483, _1483));
                float3 _1486 = _1483 * _1485;
                float _1487 = max(_1418, View_View_MinRoughness);
                float _1492 = clamp((_1330 * _1485) * mad(-_1487, _1487, 1.0f), 0.0f, 1.0f);
                float _1494 = clamp(spvUnpackHalf2x16(_1327 >> 16u).x * _1485, 0.0f, 1.0f);
                float3 _1687 = 0.0f.xxx;
                float3 _1688 = 0.0f.xxx;
                [branch]
                if (_1465 > 0.0f)
                {
                    float _1505 = dot(_651, _1486);
                    float _1506 = dot(_651, _430);
                    float _1507 = dot(_430, _1486);
                    float _1509 = rsqrt(mad(2.0f, _1507, 2.0f));
                    bool _1515 = _1492 > 0.0f;
                    float _1594 = 0.0f;
                    float _1595 = 0.0f;
                    if (_1515)
                    {
                        float _1520 = sqrt(mad(-_1492, _1492, 1.0f));
                        float _1521 = 2.0f * _1505;
                        float _1522 = -_1507;
                        float _1523 = mad(_1521, _1506, _1522);
                        float _1592 = 0.0f;
                        float _1593 = 0.0f;
                        if (_1523 >= _1520)
                        {
                            _1592 = 1.0f;
                            _1593 = abs(_1506);
                        }
                        else
                        {
                            float _1528 = -_1523;
                            float _1531 = _1492 * rsqrt(mad(_1528, _1523, 1.0f));
                            float _1532 = mad(_1528, _1505, _1506);
                            float _1536 = mad(_1528, _1507, mad(2.0f * _1506, _1506, -1.0f));
                            float _1547 = _1531 * sqrt(clamp(mad(_1521 * _1506, _1507, mad(_1522, _1507, mad(-_1506, _1506, mad(-_1505, _1505, 1.0f)))), 0.0f, 1.0f));
                            float _1549 = (_1547 * 2.0f) * _1506;
                            float _1550 = mad(_1505, _1520, _1506);
                            float _1551 = mad(_1531, _1532, _1550);
                            float _1553 = mad(_1531, _1536, mad(_1507, _1520, 1.0f));
                            float _1554 = _1547 * _1553;
                            float _1555 = _1551 * _1553;
                            float _1560 = _1555 * mad(-0.5f, _1554, (0.25f * _1549) * _1551);
                            float _1570 = mad(_1551, mad(_1550, _1553 * _1553, _1555 * mad(-0.5f, mad(_1507, _1520, _1553), -0.5f)), mad(_1554, _1554, (_1549 * _1551) * mad(_1549, _1551, _1554 * (-2.0f))));
                            float _1574 = (2.0f * _1560) / mad(_1570, _1570, _1560 * _1560);
                            float _1575 = _1574 * _1570;
                            float _1577 = mad(-_1574, _1560, 1.0f);
                            float _1583 = mad(_1507, _1520, mad(_1577, _1531 * _1536, _1575 * _1549));
                            float _1585 = rsqrt(mad(2.0f, _1583, 2.0f));
                            _1592 = clamp((mad(_1505, _1520, mad(_1577, _1531 * _1532, _1575 * _1547)) + _1506) * _1585, 0.0f, 1.0f);
                            _1593 = clamp(mad(_1585, _1583, _1585), 0.0f, 1.0f);
                        }
                        _1594 = _1592;
                        _1595 = _1593;
                    }
                    else
                    {
                        _1594 = clamp((_1505 + _1506) * _1509, 0.0f, 1.0f);
                        _1595 = clamp(mad(_1509, _1507, _1509), 0.0f, 1.0f);
                    }
                    float _1598 = clamp(abs(_1506) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1601 = 1.0f.xxx * ((_1339 ? _1446 : 1.0f) * _1465);
                    float3 _1685 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1334, _1330), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1685 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1608 = _1418 * _1418;
                        float _1618 = 0.0f;
                        if (_1494 > 0.0f)
                        {
                            _1618 = clamp(mad(_1608, _1608, (_1494 * _1494) / mad(_1595, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1618 = _1608 * _1608;
                        }
                        float _1632 = 0.0f;
                        float _1633 = 0.0f;
                        if (_1515)
                        {
                            float _1630 = _1618 + (((0.25f * _1492) * mad(3.0f, asfloat(532487669 + (asint(_1618) >> 1)), _1492)) / (_1595 + 0.001000000047497451305389404296875f));
                            _1632 = _1618 / _1630;
                            _1633 = _1630;
                        }
                        else
                        {
                            _1632 = 1.0f;
                            _1633 = _1618;
                        }
                        float _1654 = 0.0f;
                        if (_1444 < 1.0f)
                        {
                            float _1640 = sqrt((1.00010001659393310546875f - _1444) / (1.0f + _1444));
                            _1654 = _1632 * sqrt(_1633 / (_1633 + (((0.25f * _1640) * mad(3.0f, asfloat(532487669 + (asint(_1633) >> 1)), _1640)) / (_1595 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1654 = _1632;
                        }
                        float _1657 = mad(mad(_1594, _1618, -_1594), _1594, 1.0f);
                        float _1662 = sqrt(_1618);
                        float _1663 = 1.0f - _1662;
                        float _1669 = 1.0f - _1595;
                        float _1670 = _1669 * _1669;
                        float _1671 = _1670 * _1670;
                        _1685 = _1601 * (((clamp(50.0f * _694.y, 0.0f, 1.0f) * (_1671 * _1669)).xxx + (_694 * mad(-_1671, _1669, 1.0f))) * (((_1618 / ((3.1415927410125732421875f * _1657) * _1657)) * _1654) * (0.5f / mad(_1465, mad(_1598, _1663, _1662), _1598 * mad(_1465, _1663, _1662)))));
                    }
                    _1687 = ((_692 * 0.3183098733425140380859375f) * _1601) * 1.0f;
                    _1688 = _1685;
                }
                else
                {
                    _1687 = 0.0f.xxx;
                    _1688 = 0.0f.xxx;
                }
                float3 _1691 = ((float3(float((_1311 >> 0u) & 1023u), float((_1311 >> 10u) & 1023u), float((_1311 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1292].x) * _1399) * _1407;
                _1694 = mad(_1687 * (float((_1341 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1691, 0.0f.xxx);
                _1695 = (_1688 * (float(_1341 & 1023u) * 0.000977517105638980865478515625f)) * _1691;
            }
            else
            {
                _1694 = 0.0f.xxx;
                _1695 = 0.0f.xxx;
            }
            _1696 = _1694;
            _1697 = _1695;
        }
        else
        {
            _1696 = 0.0f.xxx;
            _1697 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1305 >> 8u) & 7u) & _966) != 0u)
        {
            _1276 = _1275 + float4(_1696, 0.0f);
            _1279 = _1278 + float4(_1697, 0.0f);
        }
        else
        {
            _1276 = _1275;
            _1279 = _1278;
        }
    }
    bool4 _1715 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1725 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_607].w) & 65535u);
    float3 _1729 = (_651 * (2.0f * dot(_430, _651))) - _430;
    float _1736 = mad(-1.2000000476837158203125f, log2(max(_652, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1750 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1729, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1725].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1736);
    float _1754 = 1.0f - _1750.w;
    float3 _1781 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1781 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1729, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1736).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1781 = 0.0f.xxx;
    }
    float4 _1787 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _652) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1788 = _1787.x;
    float2 _1797 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1788 * _1788, exp2((-9.27999973297119140625f) * clamp(dot(_651, _430), 0.0f, 1.0f))), _1788, _1787.y)) + _1787.zw;
    bool _1824 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2248 = 0.0f.xxxx;
    if (_1824)
    {
        uint2 _1836 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1838 = normalize(_414 - View_View_TranslatedWorldCameraOrigin);
        uint _1839 = _1836.x;
        uint4 _1843 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1839, _1836.y, 0u), 0u));
        uint _1844 = _1843.x;
        float4 _1846 = 0.0f.xxxx;
        _1846 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1847 = 0.0f.xxxx;
        for (int _1849 = 0; uint(_1849) < _1844; _1846 = _1847, _1849++)
        {
            uint _1860 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1839, _1836.y, uint(1 + _1849)), 0u)).x * 3u;
            float4 _1862 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1860);
            float4 _1864 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1860 + 1u);
            float4 _1866 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1860 + 2u);
            float3 _1867 = _1862.xyz;
            float _1868 = _1862.w;
            float _1869 = 1.0f / _1868;
            uint _1871 = asuint(_1864.x);
            float2 _1877 = float2(spvUnpackHalf2x16(_1871).x, spvUnpackHalf2x16(_1871 >> 16u).x);
            float3 _1878 = float3(_1877.x, _1877.y, _292.z);
            uint _1880 = asuint(_1864.y);
            _1878.z = spvUnpackHalf2x16(_1880).x;
            float3 _1887 = 0.0f.xxx;
            _1887.x = spvUnpackHalf2x16(_1880 >> 16u).x;
            uint _1889 = asuint(_1864.z);
            float2 _1895 = float2(spvUnpackHalf2x16(_1889).x, spvUnpackHalf2x16(_1889 >> 16u).x);
            float3 _1896 = float3(_1887.x, _1895.x, _1895.y);
            float3x3 _1901 = float3x3(_1878 * _1869, _1896 * _1869, cross(_1878, _1896) * _1869);
            uint _1903 = asuint(_1866.x);
            float2 _1906 = spvUnpackHalf2x16((_1903 >> 17u) & 32752u);
            float _1907 = _1906.x;
            float2 _1910 = spvUnpackHalf2x16((_1903 >> 6u) & 32752u);
            float _1911 = _1910.x;
            float2 _1914 = spvUnpackHalf2x16((_1903 << 5u) & 32736u);
            float _1915 = _1914.x;
            uint _1917 = asuint(_1866.y);
            float3 _1935 = 0.0f.xxx;
            if (_1917 > 0u)
            {
                _1935 = float3(spvUnpackHalf2x16((_1917 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1917 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1917 << 5u) & 32736u).x);
            }
            else
            {
                _1935 = 0.0f.xxx;
            }
            uint _1937 = asuint(_1866.z);
            float _1952 = float((_1937 >> 24u) & 255u);
            float _1953 = _1952 * 0.0039215688593685626983642578125f;
            float3 _1960 = mul(View_View_TranslatedWorldCameraOrigin - _1867, _1901);
            float3 _1962 = normalize(mul(_1838, _1901));
            float _1964 = dot(_1962, _1962);
            float _1965 = dot(_1962, _1960);
            float _1966 = 2.0f * _1965;
            float _1971 = mad(_1966, _1966, -((4.0f * _1964) * mad(-1.0f, 1.0f, dot(_1960, _1960))));
            float2 _1983 = 0.0f.xx;
            [flatten]
            if (_1971 >= 0.0f)
            {
                _1983 = ((_1965 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1971))) / (2.0f * _1964).xx;
            }
            else
            {
                _1983 = (-1.0f).xx;
            }
            float3 _1989 = mul(_414 - _1867, _1901) - _1960;
            float2 _1993 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1869, _1983), sqrt(dot(_1989, _1989)).xx);
            float _2143 = 0.0f;
            float3 _2144 = 0.0f.xxx;
            if (any(bool2(_1993.x > 0.0f.xx.x, _1993.y > 0.0f.xx.y)))
            {
                float2 _2014 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2004 = dot(_1838, View_View_ViewForward);
                    _2014 = max(_1993, ((View_View_VolumetricFogMaxDistance * ((_2004 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2004) : 0.0f)) * _1869).xx);
                }
                else
                {
                    _2014 = _1993;
                }
                float _2019 = max(0.0f, abs(_2014.y - _2014.x));
                float _2141 = 0.0f;
                float3 _2142 = 0.0f.xxx;
                if (_2019 > 0.0f)
                {
                    float3 _2024 = _1960 + (_1962 * _2014.x);
                    float _2060 = 0.0f;
                    if (_1907 > 0.0f)
                    {
                        float _2028 = dot(_1962, _2024);
                        float _2029 = dot(_2024, _2024);
                        float _2030 = _2029 - 1.0f;
                        float _2032 = mad(_2028, _2028, 1.0f - _2029);
                        float _2059 = 0.0f;
                        if (_2032 >= 0.0f)
                        {
                            float _2036 = sqrt(_2032);
                            float _2037 = -_2028;
                            float _2040 = max(_2037 - _2036, 0.0f);
                            float _2042 = min(max(_2037 + _2036, 0.0f), _2019);
                            float _2043 = _2040 * _2040;
                            float _2044 = _2042 * _2042;
                            _2059 = max(0.0f, (_1907 * ((-mad(_2044 * _2042, 0.3333333432674407958984375f, mad(_2030, _2042, _2028 * _2044))) - (-mad(_2043 * _2040, 0.3333333432674407958984375f, mad(_2030, _2040, _2028 * _2043))))) * 0.75f);
                        }
                        else
                        {
                            _2059 = 0.0f;
                        }
                        _2060 = _2059;
                    }
                    else
                    {
                        _2060 = 0.0f;
                    }
                    float _2085 = 0.0f;
                    if (_1911 > 0.0f)
                    {
                        float _2066 = _1962.z;
                        float _2072 = (abs(_2066) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2066 >= 0.0f) ? 1.0f : (-1.0f))) : _2066;
                        float _2075 = max(-80.0f, (_2024.z - _1866.w) * _1915);
                        _2085 = (_1911 / (_1915 * _2072)) * (exp(-_2075) - exp(-mad(_2072 * _2019, _1915, _2075)));
                    }
                    else
                    {
                        _2085 = 0.0f;
                    }
                    float _2096 = exp((log(mad(exp(-_2060) - 1.0f, 1.0f - exp(-_2085), 1.0f)) * _1868) * 0.00999999977648258209228515625f);
                    float _2100 = _1952 * (-0.0039215688593685626983642578125f);
                    float _2107 = mad(_1952 * (-0.007843137718737125396728515625f), dot(_1838, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2100, _2100, 1.0f));
                    float3 _2112 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1953, _2100, 1.0f) / ((12.56637096405029296875f * _2107) * sqrt(_2107)));
                    float3 _2138 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2123 = float4(_1838 * _2100, 1.0f);
                        _2138 = _2112 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2123), dot(View_SkyIrradianceEnvironmentMap[1u], _2123), dot(View_SkyIrradianceEnvironmentMap[2u], _2123)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2138 = _2112;
                    }
                    _2141 = _2096;
                    _2142 = mad(_2138, float4(float((_1937 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1937 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1937 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1953).xyz, _1935) * (1.0f - _2096);
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
            _1847 = float4((_1846.xyz * _2143) + float4(_2144, _2143).xyz, _1846.w * _2143);
        }
        float _2164 = _1846.w * in_var_TEXCOORD7.w;
        float4 _2172 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2172 + _91;
        precise float4 _93 = _92 - _2172;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2172 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2183 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
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
            if (_1824)
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
            float4 _2236 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2230, clamp((_666 - _2231) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2239 = _2236.w;
            _2247 = float4(_2236.xyz + (float4(_1846.xyz + (in_var_TEXCOORD7.xyz * _1846.w), _2164).xyz * _2239), _2239 * _2164);
            break;
        } while(false);
        _2248 = _2247;
    }
    else
    {
        _2248 = in_var_TEXCOORD7;
    }
    float3 _2255 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _2324 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _98 = Scene_GPUScene_GPUScenePrimitiveSceneData[_607 + 18u].xyz * 2097152.0f;
        precise float3 _99 = _98 + Scene_GPUScene_GPUScenePrimitiveSceneData[_607 + 19u].xyz;
        precise float3 _100 = _99 - _98;
        precise float3 _101 = Scene_GPUScene_GPUScenePrimitiveSceneData[_607 + 19u].xyz - _100;
        uint _2281 = _607 + 32u;
        precise float3 _102 = _87 - _99;
        precise float3 _103 = _90 - _101;
        precise float3 _104 = _102 + _103;
        float3 _2286 = abs(_104);
        float3 _2287 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_607 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_607 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_607 + 27u].w) + 1.0f.xxx;
        float3 _2323 = 0.0f.xxx;
        if (any(bool3(_2286.x > _2287.x, _2286.y > _2287.y, _2286.z > _2287.z)))
        {
            float3 _2319 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2323 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2319.x > 0.5f.xxx.x, _2319.y > 0.5f.xxx.y, _2319.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2309 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2281].x > 0.0f)
            {
                float3 _2297 = abs(_414 - in_var_TEXCOORD9);
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
    float3 _2326 = mad((_740 * _880) * _692, max(_889, ((((((_655 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _606) + ((_655 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _606) + ((_655 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _606), lerp(mad((((float4(_1750.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1725].x, _1754).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1781 * _1754)).xyz * ((_694 * _1797.x) + (clamp(50.0f * _694.y, 0.0f, 1.0f) * _1797.y).xxx)) * _880, max(_889, ((((((_694 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _606) + ((_694 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _606) + ((_694 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _606), float4(_1715.x ? 0.0f.xxxx.x : _1275.x, _1715.y ? 0.0f.xxxx.y : _1275.y, _1715.z ? 0.0f.xxxx.z : _1275.z, _1715.w ? 0.0f.xxxx.w : _1275.w).xyz + float4(_1715.x ? 0.0f.xxxx.x : _1278.x, _1715.y ? 0.0f.xxxx.y : _1278.y, _1715.z ? 0.0f.xxxx.z : _1278.z, _1715.w ? 0.0f.xxxx.w : _1278.w).xyz), _692 + (_694 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2324;
    float4 _2334 = float4((_2326 * _2248.w) + _2248.xyz, 0.0f);
    _2334.w = 0.0f;
    float4 _2338 = _2334 * View_View_PreExposure;
    float3 _2343 = min(_2338.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2343.x, _2343.y, _2343.z, _2338.w);
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
