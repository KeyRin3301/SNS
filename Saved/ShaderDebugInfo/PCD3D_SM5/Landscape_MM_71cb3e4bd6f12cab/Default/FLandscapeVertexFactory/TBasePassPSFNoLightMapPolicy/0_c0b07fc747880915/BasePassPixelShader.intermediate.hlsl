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
    float2 _548 = _496 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _554 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _548, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _563 = _447.xxx;
    float3 _571 = normalize(mul(normalize((mad(float4(_554, sqrt(clamp(1.0f - dot(_554, _554), 0.0f, 1.0f)), 1.0f).xyz, _563, mad(float4(_534, sqrt(clamp(1.0f - dot(_534, _534), 0.0f, 1.0f)), 1.0f).xyz, _543, mad(float4(_502, sqrt(clamp(1.0f - dot(_502, _502), 0.0f, 1.0f)), 1.0f).xyz, _511, float4(_517, sqrt(clamp(1.0f - dot(_517, _517), 0.0f, 1.0f)), 1.0f).xyz * _526))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_384, cross(_381, _384), _381), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _572 = _571 * 1.0f;
    float4 _607 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _612 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _619 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _496, View_View_MaterialTextureMipBias);
    float4 _625 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _548, View_View_MaterialTextureMipBias);
    float3 _636 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _548, View_View_MaterialTextureMipBias).xyz, _563, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _496, View_View_MaterialTextureMipBias).xyz, _543, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _496, View_View_MaterialTextureMipBias).xyz, _511, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _496, View_View_MaterialTextureMipBias).xyz * _526))), 0.0f.xxx, 1.0f.xxx);
    float _640 = mad(clamp(mad(_625.y, _447, mad(_619.y, _444, mad(_607.y, _438, _612.y * _441))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _641 = clamp(mad(_625.x, _447, mad(_619.x, _444, mad(_607.x, _438, _612.x * _441))), 0.0f, 1.0f);
    uint _642 = in_var_PRIMITIVE_ID * 43u;
    float3 _686 = 0.0f.xxx;
    float _687 = 0.0f;
    float _688 = 0.0f;
    float _689 = 0.0f;
    float3 _690 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_642].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _658 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _662 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _658, 0.0f);
        float4 _665 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _658, 0.0f);
        float4 _668 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _658, 0.0f);
        float _678 = _668.w;
        _686 = normalize((_572 * _665.w) + ((_665.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _687 = mad(_640, _678, _668.z);
        _688 = mad(0.5f, _678, _668.y);
        _689 = _668.x;
        _690 = (_636 * _662.w) + _662.xyz;
    }
    else
    {
        _686 = _572;
        _687 = _640;
        _688 = 0.5f;
        _689 = 0.0f;
        _690 = _636;
    }
    uint _693 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_642].x);
    float _701 = _406.w;
    float3 _714 = ((_690 - (_690 * _689)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _721 = (lerp((0.07999999821186065673828125f * _688).xxx, _690, _689.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _722 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _727 = 0.0f.xxx;
    if (_722)
    {
        _727 = _714 + (_721 * 0.449999988079071044921875f);
    }
    else
    {
        _727 = _714;
    }
    bool3 _728 = _722.xxx;
    float3 _729 = float3(_728.x ? 0.0f.xxx.x : _721.x, _728.y ? 0.0f.xxx.y : _721.y, _728.z ? 0.0f.xxx.z : _721.z);
    float2 _735 = mad(_406.xy / _701.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _845 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _746 = int2(trunc(_735 * View_View_BufferSizeAndInvSize.xy));
        int _747 = _746.x;
        int _748 = _746.y;
        float4 _752 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_747, _748, 0).xy, 0));
        float _753 = _752.x;
        float _763 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _844 = 0.0f.xx;
        if ((abs((mad(_753, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_753, View_View_InvDeviceZToWorldZTransform.z, _763))) - _701) / _701) > 0.00999999977648258209228515625f)
        {
            float2 _776 = _735 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _780 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_747 - 1, _748, 0).xy, 0));
            float _781 = _780.x;
            float _787 = abs((mad(_781, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_781, View_View_InvDeviceZToWorldZTransform.z, _763))) - _701);
            bool _788 = _787 < 100000000.0f;
            bool2 _789 = _788.xx;
            float2 _790 = float2(_789.x ? _776.x : _735.x, _789.y ? _776.y : _735.y);
            float _791 = _788 ? _787 : 100000000.0f;
            float2 _794 = _735 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _798 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_747, _748 + 1, 0).xy, 0));
            float _799 = _798.x;
            float _805 = abs((mad(_799, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_799, View_View_InvDeviceZToWorldZTransform.z, _763))) - _701);
            bool _806 = _805 < _791;
            bool2 _807 = _806.xx;
            float2 _808 = float2(_807.x ? _794.x : _790.x, _807.y ? _794.y : _790.y);
            float _809 = _806 ? _805 : _791;
            float2 _811 = _735 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _815 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_747 + 1, _748, 0).xy, 0));
            float _816 = _815.x;
            float _822 = abs((mad(_816, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_816, View_View_InvDeviceZToWorldZTransform.z, _763))) - _701);
            bool _823 = _822 < _809;
            bool2 _824 = _823.xx;
            float2 _825 = float2(_824.x ? _811.x : _808.x, _824.y ? _811.y : _808.y);
            float2 _829 = _735 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _833 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_747, _748 - 1, 0).xy, 0));
            float _834 = _833.x;
            bool2 _842 = (abs((mad(_834, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_834, View_View_InvDeviceZToWorldZTransform.z, _763))) - _701) < (_823 ? _822 : _809)).xx;
            _844 = float2(_842.x ? _829.x : _825.x, _842.y ? _829.y : _825.y);
        }
        else
        {
            _844 = _735;
        }
        _845 = _844;
    }
    else
    {
        _845 = _735;
    }
    uint _851_dummy_parameter;
    uint2 _851 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _851_dummy_parameter);
    uint2 _895 = uint2(_399 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _923 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _923 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_845 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _923 = 1.0f.xxxx;
    }
    float4 _924 = _923 * _923;
    uint _927 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_642].x);
    uint _940 = (uint((_927 & 2048u) != 0u) | (uint((_927 & 4096u) != 0u) << 1u)) | (uint((_927 & 8192u) != 0u) << 2u);
    float4 _1232 = 0.0f.xxxx;
    float4 _1233 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _966 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _981 = dot(float4(float(_966 & 1u), float((_966 & 2u) >> 1u), float((_966 & 4u) >> 2u), float((_966 & 8u) >> 3u)), _924);
        bool _983 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _984 = _983 ? 1.0f : _981;
        float _997 = 0.0f;
        float _998 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _991 = clamp(mad(_701, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _993 = lerp(_983 ? _981 : 1.0f, 1.0f, _991 * _991);
            _997 = min(_993, _984) * _984;
            _998 = _993 * _984;
        }
        else
        {
            _997 = 1.0f;
            _998 = 1.0f;
        }
        float3 _1214 = 0.0f.xxx;
        float3 _1215 = 0.0f.xxx;
        [branch]
        if ((_998 + _997) > 0.0f)
        {
            float _1005 = max(_687, View_View_MinRoughness);
            float _1006 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1009 = rsqrt(_1006);
            float3 _1010 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1009;
            float _1011 = dot(_686, _1010);
            float _1029 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1018 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1006 + 1.0f)), 0.0f, 1.0f));
                float _1028 = 0.0f;
                if (_1011 < _1018)
                {
                    float _1024 = _1018 + max(_1011, -_1018);
                    _1028 = (_1024 * _1024) / (4.0f * _1018);
                }
                else
                {
                    _1028 = _1011;
                }
                _1029 = _1028;
            }
            else
            {
                _1029 = _1011;
            }
            float _1030 = clamp(_1029, 0.0f, 1.0f);
            float _1031 = max(_1005, View_View_MinRoughness);
            float _1036 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1009) * mad(-_1031, _1031, 1.0f), 0.0f, 1.0f);
            float _1038 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1009, 0.0f, 1.0f);
            float3 _1207 = 0.0f.xxx;
            float3 _1208 = 0.0f.xxx;
            [branch]
            if (_1030 > 0.0f)
            {
                float _1049 = dot(_686, _431);
                float _1050 = dot(_431, _1010);
                float _1052 = rsqrt(mad(2.0f, _1050, 2.0f));
                bool _1058 = _1036 > 0.0f;
                float _1137 = 0.0f;
                float _1138 = 0.0f;
                if (_1058)
                {
                    float _1063 = sqrt(mad(-_1036, _1036, 1.0f));
                    float _1064 = 2.0f * _1011;
                    float _1065 = -_1050;
                    float _1066 = mad(_1064, _1049, _1065);
                    float _1135 = 0.0f;
                    float _1136 = 0.0f;
                    if (_1066 >= _1063)
                    {
                        _1135 = 1.0f;
                        _1136 = abs(_1049);
                    }
                    else
                    {
                        float _1071 = -_1066;
                        float _1074 = _1036 * rsqrt(mad(_1071, _1066, 1.0f));
                        float _1075 = mad(_1071, _1011, _1049);
                        float _1079 = mad(_1071, _1050, mad(2.0f * _1049, _1049, -1.0f));
                        float _1090 = _1074 * sqrt(clamp(mad(_1064 * _1049, _1050, mad(_1065, _1050, mad(-_1049, _1049, mad(-_1011, _1011, 1.0f)))), 0.0f, 1.0f));
                        float _1092 = (_1090 * 2.0f) * _1049;
                        float _1093 = mad(_1011, _1063, _1049);
                        float _1094 = mad(_1074, _1075, _1093);
                        float _1096 = mad(_1074, _1079, mad(_1050, _1063, 1.0f));
                        float _1097 = _1090 * _1096;
                        float _1098 = _1094 * _1096;
                        float _1103 = _1098 * mad(-0.5f, _1097, (0.25f * _1092) * _1094);
                        float _1113 = mad(_1094, mad(_1093, _1096 * _1096, _1098 * mad(-0.5f, mad(_1050, _1063, _1096), -0.5f)), mad(_1097, _1097, (_1092 * _1094) * mad(_1092, _1094, _1097 * (-2.0f))));
                        float _1117 = (2.0f * _1103) / mad(_1113, _1113, _1103 * _1103);
                        float _1118 = _1117 * _1113;
                        float _1120 = mad(-_1117, _1103, 1.0f);
                        float _1126 = mad(_1050, _1063, mad(_1120, _1074 * _1079, _1118 * _1092));
                        float _1128 = rsqrt(mad(2.0f, _1126, 2.0f));
                        _1135 = clamp((mad(_1011, _1063, mad(_1120, _1074 * _1075, _1118 * _1090)) + _1049) * _1128, 0.0f, 1.0f);
                        _1136 = clamp(mad(_1128, _1126, _1128), 0.0f, 1.0f);
                    }
                    _1137 = _1135;
                    _1138 = _1136;
                }
                else
                {
                    _1137 = clamp((_1011 + _1049) * _1052, 0.0f, 1.0f);
                    _1138 = clamp(mad(_1052, _1050, _1052), 0.0f, 1.0f);
                }
                float _1141 = clamp(abs(_1049) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1143 = 1.0f.xxx * _1030;
                float3 _1205 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1205 = 0.0f.xxx;
                }
                else
                {
                    float _1150 = _1005 * _1005;
                    float _1160 = 0.0f;
                    if (_1038 > 0.0f)
                    {
                        _1160 = clamp(mad(_1150, _1150, (_1038 * _1038) / mad(_1138, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1160 = _1150 * _1150;
                    }
                    float _1174 = 0.0f;
                    if (_1058)
                    {
                        _1174 = _1160 / (_1160 + (((0.25f * _1036) * mad(3.0f, asfloat(532487669 + (asint(_1160) >> 1)), _1036)) / (_1138 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1174 = 1.0f;
                    }
                    float _1177 = mad(mad(_1137, _1160, -_1137), _1137, 1.0f);
                    float _1182 = sqrt(_1160);
                    float _1183 = 1.0f - _1182;
                    float _1189 = 1.0f - _1138;
                    float _1190 = _1189 * _1189;
                    float _1191 = _1190 * _1190;
                    _1205 = _1143 * (((clamp(50.0f * _729.y, 0.0f, 1.0f) * (_1191 * _1189)).xxx + (_729 * mad(-_1191, _1189, 1.0f))) * (((_1160 / ((3.1415927410125732421875f * _1177) * _1177)) * _1174) * (0.5f / mad(_1030, mad(_1141, _1183, _1182), _1141 * mad(_1030, _1183, _1182)))));
                }
                _1207 = ((_727 * 0.3183098733425140380859375f) * _1143) * 1.0f;
                _1208 = _1205;
            }
            else
            {
                _1207 = 0.0f.xxx;
                _1208 = 0.0f.xxx;
            }
            float3 _1211 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _998;
            _1214 = mad(_1207 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1211, 0.0f.xxx);
            _1215 = (_1208 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1211;
        }
        else
        {
            _1214 = 0.0f.xxx;
            _1215 = 0.0f.xxx;
        }
        float4 _1219 = float4(_1214, 0.0f);
        float4 _1223 = float4(_1215, 0.0f);
        float4 _1230 = 0.0f.xxxx;
        float4 _1231 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _940) != 0u)
        {
            _1230 = float4(_1219.x, _1219.y, _1219.z, _1219.w);
            _1231 = float4(_1223.x, _1223.y, _1223.z, _1223.w);
        }
        else
        {
            _1230 = 0.0f.xxxx;
            _1231 = 0.0f.xxxx;
        }
        _1232 = _1230;
        _1233 = _1231;
    }
    else
    {
        _1232 = 0.0f.xxxx;
        _1233 = 0.0f.xxxx;
    }
    uint _1234 = ((((min(uint(max(0.0f, log2(mad(_324, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _895.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _895.x) * 2u;
    uint _1244 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1234 + 1u] & 1073741823u;
    uint _1247 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1234] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1249 = 0.0f.xxxx;
    float4 _1252 = 0.0f.xxxx;
    _1249 = _1232;
    _1252 = _1233;
    float4 _1250 = 0.0f.xxxx;
    float4 _1253 = 0.0f.xxxx;
    [loop]
    for (uint _1254 = 0u; _1254 < _1247; _1249 = _1250, _1252 = _1253, _1254++)
    {
        uint _1263 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1244 + _1254).x * 6u;
        uint _1266 = _1263 + 1u;
        uint _1269 = _1263 + 2u;
        uint _1272 = _1263 + 3u;
        uint _1275 = _1263 + 4u;
        uint _1279 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1269].w);
        uint _1285 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].y);
        uint _1301 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1272].z);
        float2 _1303 = spvUnpackHalf2x16(_1301 & 65535u);
        float _1304 = _1303.x;
        float2 _1307 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1272].w));
        float _1308 = _1307.x;
        bool _1313 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].w == 0.0f;
        uint _1315 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1275].w);
        uint _1328 = _1279 >> 4u;
        float3 _1344 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1263].xyz - _415;
        float _1345 = dot(_1344, _1344);
        float _1362 = 0.0f;
        if (_1313)
        {
            float _1357 = _1345 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1263].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1263].w);
            float _1360 = clamp(mad(-_1357, _1357, 1.0f), 0.0f, 1.0f);
            _1362 = _1360 * _1360;
        }
        else
        {
            float3 _1351 = _1344 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1263].w;
            _1362 = pow(1.0f - clamp(dot(_1351, _1351), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].w);
        }
        float _1373 = 0.0f;
        if (((_1279 >> 16u) & 3u) == 2u)
        {
            float _1370 = clamp((dot(_1344 * rsqrt(_1345), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1269].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1272].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1272].y, 0.0f, 1.0f);
            _1373 = _1362 * (_1370 * _1370);
        }
        else
        {
            _1373 = _1362;
        }
        float3 _1670 = 0.0f.xxx;
        float3 _1671 = 0.0f.xxx;
        [branch]
        if (_1373 > 0.0f)
        {
            float _1381 = 0.0f;
            [branch]
            if (uint(int((_1279 & 255u) != 0u)) != 0u)
            {
                _1381 = dot(float4(float(_1328 & 1u), float((_1328 & 2u) >> 1u), float((_1328 & 4u) >> 2u), float((_1328 & 8u) >> 3u)), _924);
            }
            else
            {
                _1381 = 1.0f;
            }
            float3 _1668 = 0.0f.xxx;
            float3 _1669 = 0.0f.xxx;
            [branch]
            if ((_1381 + _1381) > 0.0f)
            {
                float3 _1387 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1275].xyz * (0.5f * _1308);
                float3 _1388 = _1344 - _1387;
                float3 _1389 = _1344 + _1387;
                float _1392 = max(_687, View_View_MinRoughness);
                bool _1393 = _1308 > 0.0f;
                float _1418 = 0.0f;
                float _1419 = 0.0f;
                float _1420 = 0.0f;
                [branch]
                if (_1393)
                {
                    float _1405 = rsqrt(dot(_1388, _1388));
                    float _1406 = rsqrt(dot(_1389, _1389));
                    float _1407 = _1405 * _1406;
                    float _1409 = dot(_1388, _1389) * _1407;
                    _1418 = _1409;
                    _1419 = 0.5f * mad(dot(_686, _1388), _1405, dot(_686, _1389) * _1406);
                    _1420 = _1407 / mad(_1405, _1406, mad(_1409, 0.5f, 0.5f));
                }
                else
                {
                    float _1397 = dot(_1388, _1388);
                    _1418 = 1.0f;
                    _1419 = dot(_686, _1388 * rsqrt(_1397));
                    _1420 = 1.0f / (_1397 + 1.0f);
                }
                float _1438 = 0.0f;
                if (_1304 > 0.0f)
                {
                    float _1427 = sqrt(clamp((_1304 * _1304) * _1420, 0.0f, 1.0f));
                    float _1437 = 0.0f;
                    if (_1419 < _1427)
                    {
                        float _1433 = _1427 + max(_1419, -_1427);
                        _1437 = (_1433 * _1433) / (4.0f * _1427);
                    }
                    else
                    {
                        _1437 = _1419;
                    }
                    _1438 = _1437;
                }
                else
                {
                    _1438 = _1419;
                }
                float _1439 = clamp(_1438, 0.0f, 1.0f);
                float3 _1457 = 0.0f.xxx;
                if (_1393)
                {
                    float3 _1444 = reflect(-_431, _686);
                    float3 _1445 = _1389 - _1388;
                    float _1446 = dot(_1444, _1445);
                    _1457 = _1388 + (_1445 * clamp(dot(_1388, (_1444 * _1446) - _1445) / mad(_1308, _1308, -(_1446 * _1446)), 0.0f, 1.0f));
                }
                else
                {
                    _1457 = _1388;
                }
                float _1459 = rsqrt(dot(_1457, _1457));
                float3 _1460 = _1457 * _1459;
                float _1461 = max(_1392, View_View_MinRoughness);
                float _1466 = clamp((_1304 * _1459) * mad(-_1461, _1461, 1.0f), 0.0f, 1.0f);
                float _1468 = clamp(spvUnpackHalf2x16(_1301 >> 16u).x * _1459, 0.0f, 1.0f);
                float3 _1661 = 0.0f.xxx;
                float3 _1662 = 0.0f.xxx;
                [branch]
                if (_1439 > 0.0f)
                {
                    float _1479 = dot(_686, _1460);
                    float _1480 = dot(_686, _431);
                    float _1481 = dot(_431, _1460);
                    float _1483 = rsqrt(mad(2.0f, _1481, 2.0f));
                    bool _1489 = _1466 > 0.0f;
                    float _1568 = 0.0f;
                    float _1569 = 0.0f;
                    if (_1489)
                    {
                        float _1494 = sqrt(mad(-_1466, _1466, 1.0f));
                        float _1495 = 2.0f * _1479;
                        float _1496 = -_1481;
                        float _1497 = mad(_1495, _1480, _1496);
                        float _1566 = 0.0f;
                        float _1567 = 0.0f;
                        if (_1497 >= _1494)
                        {
                            _1566 = 1.0f;
                            _1567 = abs(_1480);
                        }
                        else
                        {
                            float _1502 = -_1497;
                            float _1505 = _1466 * rsqrt(mad(_1502, _1497, 1.0f));
                            float _1506 = mad(_1502, _1479, _1480);
                            float _1510 = mad(_1502, _1481, mad(2.0f * _1480, _1480, -1.0f));
                            float _1521 = _1505 * sqrt(clamp(mad(_1495 * _1480, _1481, mad(_1496, _1481, mad(-_1480, _1480, mad(-_1479, _1479, 1.0f)))), 0.0f, 1.0f));
                            float _1523 = (_1521 * 2.0f) * _1480;
                            float _1524 = mad(_1479, _1494, _1480);
                            float _1525 = mad(_1505, _1506, _1524);
                            float _1527 = mad(_1505, _1510, mad(_1481, _1494, 1.0f));
                            float _1528 = _1521 * _1527;
                            float _1529 = _1525 * _1527;
                            float _1534 = _1529 * mad(-0.5f, _1528, (0.25f * _1523) * _1525);
                            float _1544 = mad(_1525, mad(_1524, _1527 * _1527, _1529 * mad(-0.5f, mad(_1481, _1494, _1527), -0.5f)), mad(_1528, _1528, (_1523 * _1525) * mad(_1523, _1525, _1528 * (-2.0f))));
                            float _1548 = (2.0f * _1534) / mad(_1544, _1544, _1534 * _1534);
                            float _1549 = _1548 * _1544;
                            float _1551 = mad(-_1548, _1534, 1.0f);
                            float _1557 = mad(_1481, _1494, mad(_1551, _1505 * _1510, _1549 * _1523));
                            float _1559 = rsqrt(mad(2.0f, _1557, 2.0f));
                            _1566 = clamp((mad(_1479, _1494, mad(_1551, _1505 * _1506, _1549 * _1521)) + _1480) * _1559, 0.0f, 1.0f);
                            _1567 = clamp(mad(_1559, _1557, _1559), 0.0f, 1.0f);
                        }
                        _1568 = _1566;
                        _1569 = _1567;
                    }
                    else
                    {
                        _1568 = clamp((_1479 + _1480) * _1483, 0.0f, 1.0f);
                        _1569 = clamp(mad(_1483, _1481, _1483), 0.0f, 1.0f);
                    }
                    float _1572 = clamp(abs(_1480) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1575 = 1.0f.xxx * ((_1313 ? _1420 : 1.0f) * _1439);
                    float3 _1659 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1308, _1304), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1659 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1582 = _1392 * _1392;
                        float _1592 = 0.0f;
                        if (_1468 > 0.0f)
                        {
                            _1592 = clamp(mad(_1582, _1582, (_1468 * _1468) / mad(_1569, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1592 = _1582 * _1582;
                        }
                        float _1606 = 0.0f;
                        float _1607 = 0.0f;
                        if (_1489)
                        {
                            float _1604 = _1592 + (((0.25f * _1466) * mad(3.0f, asfloat(532487669 + (asint(_1592) >> 1)), _1466)) / (_1569 + 0.001000000047497451305389404296875f));
                            _1606 = _1592 / _1604;
                            _1607 = _1604;
                        }
                        else
                        {
                            _1606 = 1.0f;
                            _1607 = _1592;
                        }
                        float _1628 = 0.0f;
                        if (_1418 < 1.0f)
                        {
                            float _1614 = sqrt((1.00010001659393310546875f - _1418) / (1.0f + _1418));
                            _1628 = _1606 * sqrt(_1607 / (_1607 + (((0.25f * _1614) * mad(3.0f, asfloat(532487669 + (asint(_1607) >> 1)), _1614)) / (_1569 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1628 = _1606;
                        }
                        float _1631 = mad(mad(_1568, _1592, -_1568), _1568, 1.0f);
                        float _1636 = sqrt(_1592);
                        float _1637 = 1.0f - _1636;
                        float _1643 = 1.0f - _1569;
                        float _1644 = _1643 * _1643;
                        float _1645 = _1644 * _1644;
                        _1659 = _1575 * (((clamp(50.0f * _729.y, 0.0f, 1.0f) * (_1645 * _1643)).xxx + (_729 * mad(-_1645, _1643, 1.0f))) * (((_1592 / ((3.1415927410125732421875f * _1631) * _1631)) * _1628) * (0.5f / mad(_1439, mad(_1572, _1637, _1636), _1572 * mad(_1439, _1637, _1636)))));
                    }
                    _1661 = ((_727 * 0.3183098733425140380859375f) * _1575) * 1.0f;
                    _1662 = _1659;
                }
                else
                {
                    _1661 = 0.0f.xxx;
                    _1662 = 0.0f.xxx;
                }
                float3 _1665 = ((float3(float((_1285 >> 0u) & 1023u), float((_1285 >> 10u) & 1023u), float((_1285 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1266].x) * _1373) * _1381;
                _1668 = mad(_1661 * (float((_1315 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1665, 0.0f.xxx);
                _1669 = (_1662 * (float(_1315 & 1023u) * 0.000977517105638980865478515625f)) * _1665;
            }
            else
            {
                _1668 = 0.0f.xxx;
                _1669 = 0.0f.xxx;
            }
            _1670 = _1668;
            _1671 = _1669;
        }
        else
        {
            _1670 = 0.0f.xxx;
            _1671 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1279 >> 8u) & 7u) & _940) != 0u)
        {
            _1250 = _1249 + float4(_1670, 0.0f);
            _1253 = _1252 + float4(_1671, 0.0f);
        }
        else
        {
            _1250 = _1249;
            _1253 = _1252;
        }
    }
    bool4 _1689 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1699 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_642].w) & 65535u);
    float4 _1737 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _687) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1738 = _1737.x;
    float2 _1747 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1738 * _1738, exp2((-9.27999973297119140625f) * clamp(dot(_686, _431), 0.0f, 1.0f))), _1738, _1737.y)) + _1737.zw;
    float3 _1772 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_686 * (2.0f * dot(_431, _686))) - _431, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1699].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_687, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1699].x, _291).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_729 * _1747.x) + (clamp(50.0f * _729.y, 0.0f, 1.0f) * _1747.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_845 * float2(float(_851.x), float(_851.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_693 & 256u) != 0u), float((_693 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_641.xxx, ((((((_729 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _641) + ((_729 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _641) + ((_729 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _641), float4(_1689.x ? 0.0f.xxxx.x : _1249.x, _1689.y ? 0.0f.xxxx.y : _1249.y, _1689.z ? 0.0f.xxxx.z : _1249.z, _1689.w ? 0.0f.xxxx.w : _1249.w).xyz + float4(_1689.x ? 0.0f.xxxx.x : _1252.x, _1689.y ? 0.0f.xxxx.y : _1252.y, _1689.z ? 0.0f.xxxx.z : _1252.z, _1689.w ? 0.0f.xxxx.w : _1252.w).xyz);
    bool _1775 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2201 = 0.0f.xxxx;
    if (_1775)
    {
        uint2 _1787 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1789 = normalize(_415 - View_View_TranslatedWorldCameraOrigin);
        uint _1790 = _1787.x;
        uint4 _1794 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1790, _1787.y, 0u), 0u));
        uint _1795 = _1794.x;
        float4 _1797 = 0.0f.xxxx;
        _1797 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1798 = 0.0f.xxxx;
        for (int _1800 = 0; uint(_1800) < _1795; _1797 = _1798, _1800++)
        {
            uint _1811 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1790, _1787.y, uint(1 + _1800)), 0u)).x * 3u;
            float4 _1813 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1811);
            float4 _1815 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1811 + 1u);
            float4 _1817 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1811 + 2u);
            float3 _1818 = _1813.xyz;
            float _1819 = _1813.w;
            float _1820 = 1.0f / _1819;
            uint _1822 = asuint(_1815.x);
            float2 _1828 = float2(spvUnpackHalf2x16(_1822).x, spvUnpackHalf2x16(_1822 >> 16u).x);
            float3 _1829 = float3(_1828.x, _1828.y, _295.z);
            uint _1831 = asuint(_1815.y);
            _1829.z = spvUnpackHalf2x16(_1831).x;
            float3 _1838 = 0.0f.xxx;
            _1838.x = spvUnpackHalf2x16(_1831 >> 16u).x;
            uint _1840 = asuint(_1815.z);
            float2 _1846 = float2(spvUnpackHalf2x16(_1840).x, spvUnpackHalf2x16(_1840 >> 16u).x);
            float3 _1847 = float3(_1838.x, _1846.x, _1846.y);
            float3x3 _1852 = float3x3(_1829 * _1820, _1847 * _1820, cross(_1829, _1847) * _1820);
            uint _1854 = asuint(_1817.x);
            float2 _1857 = spvUnpackHalf2x16((_1854 >> 17u) & 32752u);
            float _1858 = _1857.x;
            float2 _1861 = spvUnpackHalf2x16((_1854 >> 6u) & 32752u);
            float _1862 = _1861.x;
            float2 _1865 = spvUnpackHalf2x16((_1854 << 5u) & 32736u);
            float _1866 = _1865.x;
            uint _1868 = asuint(_1817.y);
            float3 _1886 = 0.0f.xxx;
            if (_1868 > 0u)
            {
                _1886 = float3(spvUnpackHalf2x16((_1868 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1868 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1868 << 5u) & 32736u).x);
            }
            else
            {
                _1886 = 0.0f.xxx;
            }
            uint _1888 = asuint(_1817.z);
            float _1903 = float((_1888 >> 24u) & 255u);
            float _1904 = _1903 * 0.0039215688593685626983642578125f;
            float3 _1911 = mul(View_View_TranslatedWorldCameraOrigin - _1818, _1852);
            float3 _1913 = normalize(mul(_1789, _1852));
            float _1915 = dot(_1913, _1913);
            float _1916 = dot(_1913, _1911);
            float _1917 = 2.0f * _1916;
            float _1922 = mad(_1917, _1917, -((4.0f * _1915) * mad(-1.0f, 1.0f, dot(_1911, _1911))));
            float2 _1934 = 0.0f.xx;
            [flatten]
            if (_1922 >= 0.0f)
            {
                _1934 = ((_1916 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1922))) / (2.0f * _1915).xx;
            }
            else
            {
                _1934 = (-1.0f).xx;
            }
            float3 _1940 = mul(_415 - _1818, _1852) - _1911;
            float2 _1944 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1820, _1934), sqrt(dot(_1940, _1940)).xx);
            float _2096 = 0.0f;
            float3 _2097 = 0.0f.xxx;
            if (any(bool2(_1944.x > 0.0f.xx.x, _1944.y > 0.0f.xx.y)))
            {
                float2 _1965 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1955 = dot(_1789, View_View_ViewForward);
                    _1965 = max(_1944, ((View_View_VolumetricFogMaxDistance * ((_1955 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1955) : 0.0f)) * _1820).xx);
                }
                else
                {
                    _1965 = _1944;
                }
                float _1970 = max(0.0f, abs(_1965.y - _1965.x));
                float _2094 = 0.0f;
                float3 _2095 = 0.0f.xxx;
                if (_1970 > 0.0f)
                {
                    float3 _1975 = _1911 + (_1913 * _1965.x);
                    float _2011 = 0.0f;
                    if (_1858 > 0.0f)
                    {
                        float _1979 = dot(_1913, _1975);
                        float _1980 = dot(_1975, _1975);
                        float _1981 = _1980 - 1.0f;
                        float _1983 = mad(_1979, _1979, 1.0f - _1980);
                        float _2010 = 0.0f;
                        if (_1983 >= 0.0f)
                        {
                            float _1987 = sqrt(_1983);
                            float _1988 = -_1979;
                            float _1991 = max(_1988 - _1987, 0.0f);
                            float _1993 = min(max(_1988 + _1987, 0.0f), _1970);
                            float _1994 = _1991 * _1991;
                            float _1995 = _1993 * _1993;
                            _2010 = max(0.0f, (_1858 * ((-mad(_1995 * _1993, 0.3333333432674407958984375f, mad(_1981, _1993, _1979 * _1995))) - (-mad(_1994 * _1991, 0.3333333432674407958984375f, mad(_1981, _1991, _1979 * _1994))))) * 0.75f);
                        }
                        else
                        {
                            _2010 = 0.0f;
                        }
                        _2011 = _2010;
                    }
                    else
                    {
                        _2011 = 0.0f;
                    }
                    float _2036 = 0.0f;
                    if (_1862 > 0.0f)
                    {
                        float _2017 = _1913.z;
                        float _2023 = (abs(_2017) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2017 >= 0.0f) ? 1.0f : (-1.0f))) : _2017;
                        float _2026 = max(-80.0f, (_1975.z - _1817.w) * _1866);
                        _2036 = (_1862 / (_1866 * _2023)) * (exp(-_2026) - exp(-mad(_2023 * _1970, _1866, _2026)));
                    }
                    else
                    {
                        _2036 = 0.0f;
                    }
                    float _2047 = exp((log(mad(exp(-_2011) - 1.0f, 1.0f - exp(-_2036), 1.0f)) * _1819) * 0.00999999977648258209228515625f);
                    float _2051 = _1903 * (-0.0039215688593685626983642578125f);
                    float _2058 = mad(_1903 * (-0.007843137718737125396728515625f), dot(_1789, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2051, _2051, 1.0f));
                    float3 _2063 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1904, _2051, 1.0f) / ((12.56637096405029296875f * _2058) * sqrt(_2058)));
                    float3 _2091 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2076 = float4(_1789 * _2051, 1.0f);
                        _2091 = _2063 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2076), dot(View_SkyIrradianceEnvironmentMap[1u], _2076), dot(View_SkyIrradianceEnvironmentMap[2u], _2076)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2091 = _2063;
                    }
                    _2094 = _2047;
                    _2095 = mad(_2091, float4(float((_1888 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1888 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1888 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1904).xyz, _1886) * (1.0f - _2047);
                }
                else
                {
                    _2094 = 1.0f;
                    _2095 = 0.0f.xxx;
                }
                _2096 = _2094;
                _2097 = _2095;
            }
            else
            {
                _2096 = 1.0f;
                _2097 = 0.0f.xxx;
            }
            _1798 = float4((_1797.xyz * _2096) + float4(_2097, _2096).xyz, _1797.w * _2096);
        }
        float _2117 = _1797.w * in_var_TEXCOORD7.w;
        float4 _2125 = float4(_89, 1.0f);
        precise float4 _93 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _94 = _2125 + _93;
        precise float4 _95 = _94 - _2125;
        precise float4 _96 = _94 - _95;
        precise float4 _97 = _2125 - _96;
        precise float4 _98 = _93 - _95;
        precise float4 _99 = _97 + _98;
        float4 _2136 = mul(_94 + (float4(_92, 0.0f) + _99), View_View_RelativeWorldToClip);
        float _2137 = _2136.w;
        float4 _2200 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2200 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2183 = 0.0f.xxxx;
            float _2184 = 0.0f;
            if (_1775)
            {
                float4 _2179 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2136.xy / _2137.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2137, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2181 = _2179.xyz * View_View_OneOverPreExposure;
                _2183 = float4(_2181.x, _2181.y, _2181.z, _2179.w);
                _2184 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2183 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2184 = 0.0f;
            }
            float4 _2189 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2183, clamp((_701 - _2184) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2192 = _2189.w;
            _2200 = float4(_2189.xyz + (float4(_1797.xyz + (in_var_TEXCOORD7.xyz * _1797.w), _2117).xyz * _2192), _2192 * _2117);
            break;
        } while(false);
        _2201 = _2200;
    }
    else
    {
        _2201 = in_var_TEXCOORD7;
    }
    float3 _2208 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2277 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _100 = Scene_GPUScene_GPUScenePrimitiveSceneData[_642 + 18u].xyz * 2097152.0f;
        precise float3 _101 = _100 + Scene_GPUScene_GPUScenePrimitiveSceneData[_642 + 19u].xyz;
        precise float3 _102 = _101 - _100;
        precise float3 _103 = Scene_GPUScene_GPUScenePrimitiveSceneData[_642 + 19u].xyz - _102;
        uint _2234 = _642 + 32u;
        precise float3 _104 = _89 - _101;
        precise float3 _105 = _92 - _103;
        precise float3 _106 = _104 + _105;
        float3 _2239 = abs(_106);
        float3 _2240 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_642 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_642 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_642 + 27u].w) + 1.0f.xxx;
        float3 _2276 = 0.0f.xxx;
        if (any(bool3(_2239.x > _2240.x, _2239.y > _2240.y, _2239.z > _2240.z)))
        {
            float3 _2272 = frac(dot(frac(frac(_89 * 1.52587890625e-05f.xxx) + frac(_92 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2276 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2272.x > 0.5f.xxx.x, _2272.y > 0.5f.xxx.y, _2272.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2262 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2234].x > 0.0f)
            {
                float3 _2250 = abs(_415 - in_var_TEXCOORD9);
                _2262 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2250.x, max(_2250.y, _2250.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2234].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2262 = _2208;
            }
            _2276 = _2262;
        }
        _2277 = _2276;
    }
    else
    {
        _2277 = _2208;
    }
    float4 _2286 = float4(((lerp(_1772, _727 + (_729 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2277) * _2201.w) + _2201.xyz, 0.0f);
    _2286.w = 0.0f;
    float4 _2290 = _2286 * View_View_PreExposure;
    float3 _2295 = min(_2290.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2295.x, _2295.y, _2295.z, _2290.w);
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
