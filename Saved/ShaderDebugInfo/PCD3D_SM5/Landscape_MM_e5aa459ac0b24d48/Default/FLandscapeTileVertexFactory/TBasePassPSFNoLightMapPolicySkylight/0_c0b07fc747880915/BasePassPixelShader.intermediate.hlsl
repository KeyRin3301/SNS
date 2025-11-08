#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _287 = 0.0f;
static float3 _288 = 0.0f.xxx;

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
    float _319 = 1.0f / gl_FragCoord.w;
    float4 _367 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _371 = mad(float2(_367.zw), 2.0f.xx, (-1.0f).xx);
    float _375 = sqrt(max(1.0f - dot(_371, _371), 0.0f));
    float _376 = _371.x;
    float3 _378 = float3(_376, _371.y, _375);
    float3 _381 = normalize(float3(_375, 0.0f, -_376));
    float2 _396 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _403 = float4(mad(_396, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _287, 1.0f) * _319;
    float4 _408 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _412 = _408.xyz / _408.w.xxx;
    float3 _413 = _412 - View_View_RelativePreViewTranslationTO;
    precise float3 _87 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _413);
    precise float3 _90 = _413 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _87);
    bool _415 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _416 = -View_View_ViewForward;
    float3 _418 = normalize(-_412);
    float3 _428 = float3(_415 ? _416.x : _418.x, _415 ? _416.y : _418.y, _415 ? _416.z : _418.z);
    float4 _432 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _435 = dot(_432, Material_Material_PreshaderBuffer[0]);
    float _438 = dot(_432, Material_Material_PreshaderBuffer[1]);
    float _441 = dot(_432, Material_Material_PreshaderBuffer[2]);
    float2 _444 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _456 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _444 * Material_Material_PreshaderBuffer[3].x.xx).x * Material_Material_PreshaderBuffer[3].y;
    float4 _468 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_456) + Material_Material_PreshaderBuffer[3].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _472 = Material_Material_PreshaderBuffer[3].w.xx;
    float2 _473 = mad(_468.xy, _472, _444);
    float2 _475 = mad(_468.zw, _472, _444);
    float2 _477 = ddy(_444);
    float2 _478 = ddx(_444);
    float2 _490 = lerp(_473, _475, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _475, _478, _477) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _473, _478, _477)).x, frac(_456))), 0.0f, 1.0f).xx);
    float2 _496 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _490, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _505 = _435.xxx;
    float2 _511 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _490, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _520 = _438.xxx;
    float2 _526 = _490 * Material_Material_PreshaderBuffer[4].x.xx;
    float2 _532 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _526, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _541 = _441.xxx;
    float3 _550 = normalize(mul(normalize((mad(float4(_532, sqrt(clamp(1.0f - dot(_532, _532), 0.0f, 1.0f)), 1.0f).xyz, _541, mad(float4(_496, sqrt(clamp(1.0f - dot(_496, _496), 0.0f, 1.0f)), 1.0f).xyz, _505, float4(_511, sqrt(clamp(1.0f - dot(_511, _511), 0.0f, 1.0f)), 1.0f).xyz * _520)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_381, cross(_378, _381), _378), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _561 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _566 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _573 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _526, View_View_MaterialTextureMipBias);
    float4 _579 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _584 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _591 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _526, View_View_MaterialTextureMipBias);
    float3 _600 = clamp(mad(_573.xyz, _541, mad(_561.xyz, _505, _566.xyz * _520)), 0.0f.xxx, 1.0f.xxx);
    float _604 = mad(clamp(mad(_591.y, _441, mad(_579.y, _435, _584.y * _438)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _605 = clamp(mad(_591.x, _441, mad(_579.x, _435, _584.x * _438)), 0.0f, 1.0f);
    float3 _647 = 0.0f.xxx;
    float _648 = 0.0f;
    float _649 = 0.0f;
    float _650 = 0.0f;
    float3 _651 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _619 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _623 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _619, 0.0f);
        float4 _626 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _619, 0.0f);
        float4 _629 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _619, 0.0f);
        float _639 = _629.w;
        _647 = normalize((_550 * _626.w) + ((_626.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _648 = mad(_604, _639, _629.z);
        _649 = mad(0.5f, _639, _629.y);
        _650 = _629.x;
        _651 = (_600 * _623.w) + _623.xyz;
    }
    else
    {
        _647 = _550;
        _648 = _604;
        _649 = 0.5f;
        _650 = 0.0f;
        _651 = _600;
    }
    float _659 = _403.w;
    float3 _672 = ((_651 - (_651 * _650)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _679 = (lerp((0.07999999821186065673828125f * _649).xxx, _651, _650.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _680 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _685 = 0.0f.xxx;
    if (_680)
    {
        _685 = _672 + (_679 * 0.449999988079071044921875f);
    }
    else
    {
        _685 = _672;
    }
    bool3 _686 = _680.xxx;
    float3 _687 = float3(_686.x ? 0.0f.xxx.x : _679.x, _686.y ? 0.0f.xxx.y : _679.y, _686.z ? 0.0f.xxx.z : _679.z);
    float3 _733 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _696 = float4(_647, 1.0f);
        float4 _709 = _696.xyzz * _696.yzzx;
        _733 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _696), dot(View_SkyIrradianceEnvironmentMap[1u], _696), dot(View_SkyIrradianceEnvironmentMap[2u], _696)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _709), dot(View_SkyIrradianceEnvironmentMap[4u], _709), dot(View_SkyIrradianceEnvironmentMap[5u], _709))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_647.x, _647.x, -(_647.y * _647.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _733 = 0.0f.xxx;
    }
    float2 _739 = mad(_403.xy / _659.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _849 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _750 = int2(trunc(_739 * View_View_BufferSizeAndInvSize.xy));
        int _751 = _750.x;
        int _752 = _750.y;
        float4 _756 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_751, _752, 0).xy, 0));
        float _757 = _756.x;
        float _767 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _848 = 0.0f.xx;
        if ((abs((mad(_757, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_757, View_View_InvDeviceZToWorldZTransform.z, _767))) - _659) / _659) > 0.00999999977648258209228515625f)
        {
            float2 _780 = _739 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _784 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_751 - 1, _752, 0).xy, 0));
            float _785 = _784.x;
            float _791 = abs((mad(_785, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_785, View_View_InvDeviceZToWorldZTransform.z, _767))) - _659);
            bool _792 = _791 < 100000000.0f;
            bool2 _793 = _792.xx;
            float2 _794 = float2(_793.x ? _780.x : _739.x, _793.y ? _780.y : _739.y);
            float _795 = _792 ? _791 : 100000000.0f;
            float2 _798 = _739 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _802 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_751, _752 + 1, 0).xy, 0));
            float _803 = _802.x;
            float _809 = abs((mad(_803, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_803, View_View_InvDeviceZToWorldZTransform.z, _767))) - _659);
            bool _810 = _809 < _795;
            bool2 _811 = _810.xx;
            float2 _812 = float2(_811.x ? _798.x : _794.x, _811.y ? _798.y : _794.y);
            float _813 = _810 ? _809 : _795;
            float2 _815 = _739 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _819 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_751 + 1, _752, 0).xy, 0));
            float _820 = _819.x;
            float _826 = abs((mad(_820, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_820, View_View_InvDeviceZToWorldZTransform.z, _767))) - _659);
            bool _827 = _826 < _813;
            bool2 _828 = _827.xx;
            float2 _829 = float2(_828.x ? _815.x : _812.x, _828.y ? _815.y : _812.y);
            float2 _833 = _739 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _837 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_751, _752 - 1, 0).xy, 0));
            float _838 = _837.x;
            bool2 _846 = (abs((mad(_838, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_838, View_View_InvDeviceZToWorldZTransform.z, _767))) - _659) < (_827 ? _826 : _813)).xx;
            _848 = float2(_846.x ? _833.x : _829.x, _846.y ? _833.y : _829.y);
        }
        else
        {
            _848 = _739;
        }
        _849 = _848;
    }
    else
    {
        _849 = _739;
    }
    uint _855_dummy_parameter;
    uint2 _855 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _855_dummy_parameter);
    float _873 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_849 * float2(float(_855.x), float(_855.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _882 = _605.xxx;
    uint2 _914 = uint2(_396 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _942 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _942 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_849 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _942 = 1.0f.xxxx;
    }
    float4 _943 = _942 * _942;
    uint _956 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1248 = 0.0f.xxxx;
    float4 _1249 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _982 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _997 = dot(float4(float(_982 & 1u), float((_982 & 2u) >> 1u), float((_982 & 4u) >> 2u), float((_982 & 8u) >> 3u)), _943);
        bool _999 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1000 = _999 ? 1.0f : _997;
        float _1013 = 0.0f;
        float _1014 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1007 = clamp(mad(_659, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1009 = lerp(_999 ? _997 : 1.0f, 1.0f, _1007 * _1007);
            _1013 = min(_1009, _1000) * _1000;
            _1014 = _1009 * _1000;
        }
        else
        {
            _1013 = 1.0f;
            _1014 = 1.0f;
        }
        float3 _1230 = 0.0f.xxx;
        float3 _1231 = 0.0f.xxx;
        [branch]
        if ((_1014 + _1013) > 0.0f)
        {
            float _1021 = max(_648, View_View_MinRoughness);
            float _1022 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1025 = rsqrt(_1022);
            float3 _1026 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1025;
            float _1027 = dot(_647, _1026);
            float _1045 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1034 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1022 + 1.0f)), 0.0f, 1.0f));
                float _1044 = 0.0f;
                if (_1027 < _1034)
                {
                    float _1040 = _1034 + max(_1027, -_1034);
                    _1044 = (_1040 * _1040) / (4.0f * _1034);
                }
                else
                {
                    _1044 = _1027;
                }
                _1045 = _1044;
            }
            else
            {
                _1045 = _1027;
            }
            float _1046 = clamp(_1045, 0.0f, 1.0f);
            float _1047 = max(_1021, View_View_MinRoughness);
            float _1052 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1025) * mad(-_1047, _1047, 1.0f), 0.0f, 1.0f);
            float _1054 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1025, 0.0f, 1.0f);
            float3 _1223 = 0.0f.xxx;
            float3 _1224 = 0.0f.xxx;
            [branch]
            if (_1046 > 0.0f)
            {
                float _1065 = dot(_647, _428);
                float _1066 = dot(_428, _1026);
                float _1068 = rsqrt(mad(2.0f, _1066, 2.0f));
                bool _1074 = _1052 > 0.0f;
                float _1153 = 0.0f;
                float _1154 = 0.0f;
                if (_1074)
                {
                    float _1079 = sqrt(mad(-_1052, _1052, 1.0f));
                    float _1080 = 2.0f * _1027;
                    float _1081 = -_1066;
                    float _1082 = mad(_1080, _1065, _1081);
                    float _1151 = 0.0f;
                    float _1152 = 0.0f;
                    if (_1082 >= _1079)
                    {
                        _1151 = 1.0f;
                        _1152 = abs(_1065);
                    }
                    else
                    {
                        float _1087 = -_1082;
                        float _1090 = _1052 * rsqrt(mad(_1087, _1082, 1.0f));
                        float _1091 = mad(_1087, _1027, _1065);
                        float _1095 = mad(_1087, _1066, mad(2.0f * _1065, _1065, -1.0f));
                        float _1106 = _1090 * sqrt(clamp(mad(_1080 * _1065, _1066, mad(_1081, _1066, mad(-_1065, _1065, mad(-_1027, _1027, 1.0f)))), 0.0f, 1.0f));
                        float _1108 = (_1106 * 2.0f) * _1065;
                        float _1109 = mad(_1027, _1079, _1065);
                        float _1110 = mad(_1090, _1091, _1109);
                        float _1112 = mad(_1090, _1095, mad(_1066, _1079, 1.0f));
                        float _1113 = _1106 * _1112;
                        float _1114 = _1110 * _1112;
                        float _1119 = _1114 * mad(-0.5f, _1113, (0.25f * _1108) * _1110);
                        float _1129 = mad(_1110, mad(_1109, _1112 * _1112, _1114 * mad(-0.5f, mad(_1066, _1079, _1112), -0.5f)), mad(_1113, _1113, (_1108 * _1110) * mad(_1108, _1110, _1113 * (-2.0f))));
                        float _1133 = (2.0f * _1119) / mad(_1129, _1129, _1119 * _1119);
                        float _1134 = _1133 * _1129;
                        float _1136 = mad(-_1133, _1119, 1.0f);
                        float _1142 = mad(_1066, _1079, mad(_1136, _1090 * _1095, _1134 * _1108));
                        float _1144 = rsqrt(mad(2.0f, _1142, 2.0f));
                        _1151 = clamp((mad(_1027, _1079, mad(_1136, _1090 * _1091, _1134 * _1106)) + _1065) * _1144, 0.0f, 1.0f);
                        _1152 = clamp(mad(_1144, _1142, _1144), 0.0f, 1.0f);
                    }
                    _1153 = _1151;
                    _1154 = _1152;
                }
                else
                {
                    _1153 = clamp((_1027 + _1065) * _1068, 0.0f, 1.0f);
                    _1154 = clamp(mad(_1068, _1066, _1068), 0.0f, 1.0f);
                }
                float _1157 = clamp(abs(_1065) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1159 = 1.0f.xxx * _1046;
                float3 _1221 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1221 = 0.0f.xxx;
                }
                else
                {
                    float _1166 = _1021 * _1021;
                    float _1176 = 0.0f;
                    if (_1054 > 0.0f)
                    {
                        _1176 = clamp(mad(_1166, _1166, (_1054 * _1054) / mad(_1154, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1176 = _1166 * _1166;
                    }
                    float _1190 = 0.0f;
                    if (_1074)
                    {
                        _1190 = _1176 / (_1176 + (((0.25f * _1052) * mad(3.0f, asfloat(532487669 + (asint(_1176) >> 1)), _1052)) / (_1154 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1190 = 1.0f;
                    }
                    float _1193 = mad(mad(_1153, _1176, -_1153), _1153, 1.0f);
                    float _1198 = sqrt(_1176);
                    float _1199 = 1.0f - _1198;
                    float _1205 = 1.0f - _1154;
                    float _1206 = _1205 * _1205;
                    float _1207 = _1206 * _1206;
                    _1221 = _1159 * (((clamp(50.0f * _687.y, 0.0f, 1.0f) * (_1207 * _1205)).xxx + (_687 * mad(-_1207, _1205, 1.0f))) * (((_1176 / ((3.1415927410125732421875f * _1193) * _1193)) * _1190) * (0.5f / mad(_1046, mad(_1157, _1199, _1198), _1157 * mad(_1046, _1199, _1198)))));
                }
                _1223 = ((_685 * 0.3183098733425140380859375f) * _1159) * 1.0f;
                _1224 = _1221;
            }
            else
            {
                _1223 = 0.0f.xxx;
                _1224 = 0.0f.xxx;
            }
            float3 _1227 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1014;
            _1230 = mad(_1223 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1227, 0.0f.xxx);
            _1231 = (_1224 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1227;
        }
        else
        {
            _1230 = 0.0f.xxx;
            _1231 = 0.0f.xxx;
        }
        float4 _1235 = float4(_1230, 0.0f);
        float4 _1239 = float4(_1231, 0.0f);
        float4 _1246 = 0.0f.xxxx;
        float4 _1247 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _956) != 0u)
        {
            _1246 = float4(_1235.x, _1235.y, _1235.z, _1235.w);
            _1247 = float4(_1239.x, _1239.y, _1239.z, _1239.w);
        }
        else
        {
            _1246 = 0.0f.xxxx;
            _1247 = 0.0f.xxxx;
        }
        _1248 = _1246;
        _1249 = _1247;
    }
    else
    {
        _1248 = 0.0f.xxxx;
        _1249 = 0.0f.xxxx;
    }
    uint _1250 = ((((min(uint(max(0.0f, log2(mad(_319, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _914.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _914.x) * 2u;
    uint _1260 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1250 + 1u] & 1073741823u;
    uint _1263 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1250] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1265 = 0.0f.xxxx;
    float4 _1268 = 0.0f.xxxx;
    _1265 = _1248;
    _1268 = _1249;
    float4 _1266 = 0.0f.xxxx;
    float4 _1269 = 0.0f.xxxx;
    [loop]
    for (uint _1270 = 0u; _1270 < _1263; _1265 = _1266, _1268 = _1269, _1270++)
    {
        uint _1279 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1260 + _1270).x * 6u;
        uint _1282 = _1279 + 1u;
        uint _1285 = _1279 + 2u;
        uint _1288 = _1279 + 3u;
        uint _1291 = _1279 + 4u;
        uint _1295 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].w);
        uint _1301 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].y);
        uint _1317 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].z);
        float2 _1319 = spvUnpackHalf2x16(_1317 & 65535u);
        float _1320 = _1319.x;
        float2 _1323 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].w));
        float _1324 = _1323.x;
        bool _1329 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].w == 0.0f;
        uint _1331 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].w);
        uint _1344 = _1295 >> 4u;
        float3 _1360 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1279].xyz - _412;
        float _1361 = dot(_1360, _1360);
        float _1378 = 0.0f;
        if (_1329)
        {
            float _1373 = _1361 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1279].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1279].w);
            float _1376 = clamp(mad(-_1373, _1373, 1.0f), 0.0f, 1.0f);
            _1378 = _1376 * _1376;
        }
        else
        {
            float3 _1367 = _1360 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1279].w;
            _1378 = pow(1.0f - clamp(dot(_1367, _1367), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].w);
        }
        float _1389 = 0.0f;
        if (((_1295 >> 16u) & 3u) == 2u)
        {
            float _1386 = clamp((dot(_1360 * rsqrt(_1361), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].y, 0.0f, 1.0f);
            _1389 = _1378 * (_1386 * _1386);
        }
        else
        {
            _1389 = _1378;
        }
        float3 _1686 = 0.0f.xxx;
        float3 _1687 = 0.0f.xxx;
        [branch]
        if (_1389 > 0.0f)
        {
            float _1397 = 0.0f;
            [branch]
            if (uint(int((_1295 & 255u) != 0u)) != 0u)
            {
                _1397 = dot(float4(float(_1344 & 1u), float((_1344 & 2u) >> 1u), float((_1344 & 4u) >> 2u), float((_1344 & 8u) >> 3u)), _943);
            }
            else
            {
                _1397 = 1.0f;
            }
            float3 _1684 = 0.0f.xxx;
            float3 _1685 = 0.0f.xxx;
            [branch]
            if ((_1397 + _1397) > 0.0f)
            {
                float3 _1403 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].xyz * (0.5f * _1324);
                float3 _1404 = _1360 - _1403;
                float3 _1405 = _1360 + _1403;
                float _1408 = max(_648, View_View_MinRoughness);
                bool _1409 = _1324 > 0.0f;
                float _1434 = 0.0f;
                float _1435 = 0.0f;
                float _1436 = 0.0f;
                [branch]
                if (_1409)
                {
                    float _1421 = rsqrt(dot(_1404, _1404));
                    float _1422 = rsqrt(dot(_1405, _1405));
                    float _1423 = _1421 * _1422;
                    float _1425 = dot(_1404, _1405) * _1423;
                    _1434 = _1425;
                    _1435 = 0.5f * mad(dot(_647, _1404), _1421, dot(_647, _1405) * _1422);
                    _1436 = _1423 / mad(_1421, _1422, mad(_1425, 0.5f, 0.5f));
                }
                else
                {
                    float _1413 = dot(_1404, _1404);
                    _1434 = 1.0f;
                    _1435 = dot(_647, _1404 * rsqrt(_1413));
                    _1436 = 1.0f / (_1413 + 1.0f);
                }
                float _1454 = 0.0f;
                if (_1320 > 0.0f)
                {
                    float _1443 = sqrt(clamp((_1320 * _1320) * _1436, 0.0f, 1.0f));
                    float _1453 = 0.0f;
                    if (_1435 < _1443)
                    {
                        float _1449 = _1443 + max(_1435, -_1443);
                        _1453 = (_1449 * _1449) / (4.0f * _1443);
                    }
                    else
                    {
                        _1453 = _1435;
                    }
                    _1454 = _1453;
                }
                else
                {
                    _1454 = _1435;
                }
                float _1455 = clamp(_1454, 0.0f, 1.0f);
                float3 _1473 = 0.0f.xxx;
                if (_1409)
                {
                    float3 _1460 = reflect(-_428, _647);
                    float3 _1461 = _1405 - _1404;
                    float _1462 = dot(_1460, _1461);
                    _1473 = _1404 + (_1461 * clamp(dot(_1404, (_1460 * _1462) - _1461) / mad(_1324, _1324, -(_1462 * _1462)), 0.0f, 1.0f));
                }
                else
                {
                    _1473 = _1404;
                }
                float _1475 = rsqrt(dot(_1473, _1473));
                float3 _1476 = _1473 * _1475;
                float _1477 = max(_1408, View_View_MinRoughness);
                float _1482 = clamp((_1320 * _1475) * mad(-_1477, _1477, 1.0f), 0.0f, 1.0f);
                float _1484 = clamp(spvUnpackHalf2x16(_1317 >> 16u).x * _1475, 0.0f, 1.0f);
                float3 _1677 = 0.0f.xxx;
                float3 _1678 = 0.0f.xxx;
                [branch]
                if (_1455 > 0.0f)
                {
                    float _1495 = dot(_647, _1476);
                    float _1496 = dot(_647, _428);
                    float _1497 = dot(_428, _1476);
                    float _1499 = rsqrt(mad(2.0f, _1497, 2.0f));
                    bool _1505 = _1482 > 0.0f;
                    float _1584 = 0.0f;
                    float _1585 = 0.0f;
                    if (_1505)
                    {
                        float _1510 = sqrt(mad(-_1482, _1482, 1.0f));
                        float _1511 = 2.0f * _1495;
                        float _1512 = -_1497;
                        float _1513 = mad(_1511, _1496, _1512);
                        float _1582 = 0.0f;
                        float _1583 = 0.0f;
                        if (_1513 >= _1510)
                        {
                            _1582 = 1.0f;
                            _1583 = abs(_1496);
                        }
                        else
                        {
                            float _1518 = -_1513;
                            float _1521 = _1482 * rsqrt(mad(_1518, _1513, 1.0f));
                            float _1522 = mad(_1518, _1495, _1496);
                            float _1526 = mad(_1518, _1497, mad(2.0f * _1496, _1496, -1.0f));
                            float _1537 = _1521 * sqrt(clamp(mad(_1511 * _1496, _1497, mad(_1512, _1497, mad(-_1496, _1496, mad(-_1495, _1495, 1.0f)))), 0.0f, 1.0f));
                            float _1539 = (_1537 * 2.0f) * _1496;
                            float _1540 = mad(_1495, _1510, _1496);
                            float _1541 = mad(_1521, _1522, _1540);
                            float _1543 = mad(_1521, _1526, mad(_1497, _1510, 1.0f));
                            float _1544 = _1537 * _1543;
                            float _1545 = _1541 * _1543;
                            float _1550 = _1545 * mad(-0.5f, _1544, (0.25f * _1539) * _1541);
                            float _1560 = mad(_1541, mad(_1540, _1543 * _1543, _1545 * mad(-0.5f, mad(_1497, _1510, _1543), -0.5f)), mad(_1544, _1544, (_1539 * _1541) * mad(_1539, _1541, _1544 * (-2.0f))));
                            float _1564 = (2.0f * _1550) / mad(_1560, _1560, _1550 * _1550);
                            float _1565 = _1564 * _1560;
                            float _1567 = mad(-_1564, _1550, 1.0f);
                            float _1573 = mad(_1497, _1510, mad(_1567, _1521 * _1526, _1565 * _1539));
                            float _1575 = rsqrt(mad(2.0f, _1573, 2.0f));
                            _1582 = clamp((mad(_1495, _1510, mad(_1567, _1521 * _1522, _1565 * _1537)) + _1496) * _1575, 0.0f, 1.0f);
                            _1583 = clamp(mad(_1575, _1573, _1575), 0.0f, 1.0f);
                        }
                        _1584 = _1582;
                        _1585 = _1583;
                    }
                    else
                    {
                        _1584 = clamp((_1495 + _1496) * _1499, 0.0f, 1.0f);
                        _1585 = clamp(mad(_1499, _1497, _1499), 0.0f, 1.0f);
                    }
                    float _1588 = clamp(abs(_1496) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1591 = 1.0f.xxx * ((_1329 ? _1436 : 1.0f) * _1455);
                    float3 _1675 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1324, _1320), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1675 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1598 = _1408 * _1408;
                        float _1608 = 0.0f;
                        if (_1484 > 0.0f)
                        {
                            _1608 = clamp(mad(_1598, _1598, (_1484 * _1484) / mad(_1585, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1608 = _1598 * _1598;
                        }
                        float _1622 = 0.0f;
                        float _1623 = 0.0f;
                        if (_1505)
                        {
                            float _1620 = _1608 + (((0.25f * _1482) * mad(3.0f, asfloat(532487669 + (asint(_1608) >> 1)), _1482)) / (_1585 + 0.001000000047497451305389404296875f));
                            _1622 = _1608 / _1620;
                            _1623 = _1620;
                        }
                        else
                        {
                            _1622 = 1.0f;
                            _1623 = _1608;
                        }
                        float _1644 = 0.0f;
                        if (_1434 < 1.0f)
                        {
                            float _1630 = sqrt((1.00010001659393310546875f - _1434) / (1.0f + _1434));
                            _1644 = _1622 * sqrt(_1623 / (_1623 + (((0.25f * _1630) * mad(3.0f, asfloat(532487669 + (asint(_1623) >> 1)), _1630)) / (_1585 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1644 = _1622;
                        }
                        float _1647 = mad(mad(_1584, _1608, -_1584), _1584, 1.0f);
                        float _1652 = sqrt(_1608);
                        float _1653 = 1.0f - _1652;
                        float _1659 = 1.0f - _1585;
                        float _1660 = _1659 * _1659;
                        float _1661 = _1660 * _1660;
                        _1675 = _1591 * (((clamp(50.0f * _687.y, 0.0f, 1.0f) * (_1661 * _1659)).xxx + (_687 * mad(-_1661, _1659, 1.0f))) * (((_1608 / ((3.1415927410125732421875f * _1647) * _1647)) * _1644) * (0.5f / mad(_1455, mad(_1588, _1653, _1652), _1588 * mad(_1455, _1653, _1652)))));
                    }
                    _1677 = ((_685 * 0.3183098733425140380859375f) * _1591) * 1.0f;
                    _1678 = _1675;
                }
                else
                {
                    _1677 = 0.0f.xxx;
                    _1678 = 0.0f.xxx;
                }
                float3 _1681 = ((float3(float((_1301 >> 0u) & 1023u), float((_1301 >> 10u) & 1023u), float((_1301 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].x) * _1389) * _1397;
                _1684 = mad(_1677 * (float((_1331 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1681, 0.0f.xxx);
                _1685 = (_1678 * (float(_1331 & 1023u) * 0.000977517105638980865478515625f)) * _1681;
            }
            else
            {
                _1684 = 0.0f.xxx;
                _1685 = 0.0f.xxx;
            }
            _1686 = _1684;
            _1687 = _1685;
        }
        else
        {
            _1686 = 0.0f.xxx;
            _1687 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1295 >> 8u) & 7u) & _956) != 0u)
        {
            _1266 = _1265 + float4(_1686, 0.0f);
            _1269 = _1268 + float4(_1687, 0.0f);
        }
        else
        {
            _1266 = _1265;
            _1269 = _1268;
        }
    }
    bool4 _1705 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1714 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1718 = (_647 * (2.0f * dot(_428, _647))) - _428;
    float _1725 = mad(-1.2000000476837158203125f, log2(max(_648, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1739 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1718, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1714].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1725);
    float _1743 = 1.0f - _1739.w;
    float3 _1770 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1770 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1718, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1725).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1770 = 0.0f.xxx;
    }
    float4 _1776 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _648) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1777 = _1776.x;
    float2 _1786 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1777 * _1777, exp2((-9.27999973297119140625f) * clamp(dot(_647, _428), 0.0f, 1.0f))), _1777, _1776.y)) + _1776.zw;
    bool _1813 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2237 = 0.0f.xxxx;
    if (_1813)
    {
        uint2 _1825 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1827 = normalize(_412 - View_View_TranslatedWorldCameraOrigin);
        uint _1828 = _1825.x;
        uint4 _1832 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1828, _1825.y, 0u), 0u));
        uint _1833 = _1832.x;
        float4 _1835 = 0.0f.xxxx;
        _1835 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1836 = 0.0f.xxxx;
        for (int _1838 = 0; uint(_1838) < _1833; _1835 = _1836, _1838++)
        {
            uint _1849 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1828, _1825.y, uint(1 + _1838)), 0u)).x * 3u;
            float4 _1851 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1849);
            float4 _1853 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1849 + 1u);
            float4 _1855 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1849 + 2u);
            float3 _1856 = _1851.xyz;
            float _1857 = _1851.w;
            float _1858 = 1.0f / _1857;
            uint _1860 = asuint(_1853.x);
            float2 _1866 = float2(spvUnpackHalf2x16(_1860).x, spvUnpackHalf2x16(_1860 >> 16u).x);
            float3 _1867 = float3(_1866.x, _1866.y, _288.z);
            uint _1869 = asuint(_1853.y);
            _1867.z = spvUnpackHalf2x16(_1869).x;
            float3 _1876 = 0.0f.xxx;
            _1876.x = spvUnpackHalf2x16(_1869 >> 16u).x;
            uint _1878 = asuint(_1853.z);
            float2 _1884 = float2(spvUnpackHalf2x16(_1878).x, spvUnpackHalf2x16(_1878 >> 16u).x);
            float3 _1885 = float3(_1876.x, _1884.x, _1884.y);
            float3x3 _1890 = float3x3(_1867 * _1858, _1885 * _1858, cross(_1867, _1885) * _1858);
            uint _1892 = asuint(_1855.x);
            float2 _1895 = spvUnpackHalf2x16((_1892 >> 17u) & 32752u);
            float _1896 = _1895.x;
            float2 _1899 = spvUnpackHalf2x16((_1892 >> 6u) & 32752u);
            float _1900 = _1899.x;
            float2 _1903 = spvUnpackHalf2x16((_1892 << 5u) & 32736u);
            float _1904 = _1903.x;
            uint _1906 = asuint(_1855.y);
            float3 _1924 = 0.0f.xxx;
            if (_1906 > 0u)
            {
                _1924 = float3(spvUnpackHalf2x16((_1906 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1906 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1906 << 5u) & 32736u).x);
            }
            else
            {
                _1924 = 0.0f.xxx;
            }
            uint _1926 = asuint(_1855.z);
            float _1941 = float((_1926 >> 24u) & 255u);
            float _1942 = _1941 * 0.0039215688593685626983642578125f;
            float3 _1949 = mul(View_View_TranslatedWorldCameraOrigin - _1856, _1890);
            float3 _1951 = normalize(mul(_1827, _1890));
            float _1953 = dot(_1951, _1951);
            float _1954 = dot(_1951, _1949);
            float _1955 = 2.0f * _1954;
            float _1960 = mad(_1955, _1955, -((4.0f * _1953) * mad(-1.0f, 1.0f, dot(_1949, _1949))));
            float2 _1972 = 0.0f.xx;
            [flatten]
            if (_1960 >= 0.0f)
            {
                _1972 = ((_1954 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1960))) / (2.0f * _1953).xx;
            }
            else
            {
                _1972 = (-1.0f).xx;
            }
            float3 _1978 = mul(_412 - _1856, _1890) - _1949;
            float2 _1982 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1858, _1972), sqrt(dot(_1978, _1978)).xx);
            float _2132 = 0.0f;
            float3 _2133 = 0.0f.xxx;
            if (any(bool2(_1982.x > 0.0f.xx.x, _1982.y > 0.0f.xx.y)))
            {
                float2 _2003 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1993 = dot(_1827, View_View_ViewForward);
                    _2003 = max(_1982, ((View_View_VolumetricFogMaxDistance * ((_1993 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1993) : 0.0f)) * _1858).xx);
                }
                else
                {
                    _2003 = _1982;
                }
                float _2008 = max(0.0f, abs(_2003.y - _2003.x));
                float _2130 = 0.0f;
                float3 _2131 = 0.0f.xxx;
                if (_2008 > 0.0f)
                {
                    float3 _2013 = _1949 + (_1951 * _2003.x);
                    float _2049 = 0.0f;
                    if (_1896 > 0.0f)
                    {
                        float _2017 = dot(_1951, _2013);
                        float _2018 = dot(_2013, _2013);
                        float _2019 = _2018 - 1.0f;
                        float _2021 = mad(_2017, _2017, 1.0f - _2018);
                        float _2048 = 0.0f;
                        if (_2021 >= 0.0f)
                        {
                            float _2025 = sqrt(_2021);
                            float _2026 = -_2017;
                            float _2029 = max(_2026 - _2025, 0.0f);
                            float _2031 = min(max(_2026 + _2025, 0.0f), _2008);
                            float _2032 = _2029 * _2029;
                            float _2033 = _2031 * _2031;
                            _2048 = max(0.0f, (_1896 * ((-mad(_2033 * _2031, 0.3333333432674407958984375f, mad(_2019, _2031, _2017 * _2033))) - (-mad(_2032 * _2029, 0.3333333432674407958984375f, mad(_2019, _2029, _2017 * _2032))))) * 0.75f);
                        }
                        else
                        {
                            _2048 = 0.0f;
                        }
                        _2049 = _2048;
                    }
                    else
                    {
                        _2049 = 0.0f;
                    }
                    float _2074 = 0.0f;
                    if (_1900 > 0.0f)
                    {
                        float _2055 = _1951.z;
                        float _2061 = (abs(_2055) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2055 >= 0.0f) ? 1.0f : (-1.0f))) : _2055;
                        float _2064 = max(-80.0f, (_2013.z - _1855.w) * _1904);
                        _2074 = (_1900 / (_1904 * _2061)) * (exp(-_2064) - exp(-mad(_2061 * _2008, _1904, _2064)));
                    }
                    else
                    {
                        _2074 = 0.0f;
                    }
                    float _2085 = exp((log(mad(exp(-_2049) - 1.0f, 1.0f - exp(-_2074), 1.0f)) * _1857) * 0.00999999977648258209228515625f);
                    float _2089 = _1941 * (-0.0039215688593685626983642578125f);
                    float _2096 = mad(_1941 * (-0.007843137718737125396728515625f), dot(_1827, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2089, _2089, 1.0f));
                    float3 _2101 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1942, _2089, 1.0f) / ((12.56637096405029296875f * _2096) * sqrt(_2096)));
                    float3 _2127 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2112 = float4(_1827 * _2089, 1.0f);
                        _2127 = _2101 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2112), dot(View_SkyIrradianceEnvironmentMap[1u], _2112), dot(View_SkyIrradianceEnvironmentMap[2u], _2112)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2127 = _2101;
                    }
                    _2130 = _2085;
                    _2131 = mad(_2127, float4(float((_1926 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1926 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1926 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1942).xyz, _1924) * (1.0f - _2085);
                }
                else
                {
                    _2130 = 1.0f;
                    _2131 = 0.0f.xxx;
                }
                _2132 = _2130;
                _2133 = _2131;
            }
            else
            {
                _2132 = 1.0f;
                _2133 = 0.0f.xxx;
            }
            _1836 = float4((_1835.xyz * _2132) + float4(_2133, _2132).xyz, _1835.w * _2132);
        }
        float _2153 = _1835.w * in_var_TEXCOORD7.w;
        float4 _2161 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2161 + _91;
        precise float4 _93 = _92 - _2161;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2161 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2172 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2173 = _2172.w;
        float4 _2236 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2236 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2219 = 0.0f.xxxx;
            float _2220 = 0.0f;
            if (_1813)
            {
                float4 _2215 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2172.xy / _2173.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2173, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2217 = _2215.xyz * View_View_OneOverPreExposure;
                _2219 = float4(_2217.x, _2217.y, _2217.z, _2215.w);
                _2220 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2219 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2220 = 0.0f;
            }
            float4 _2225 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2219, clamp((_659 - _2220) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2228 = _2225.w;
            _2236 = float4(_2225.xyz + (float4(_1835.xyz + (in_var_TEXCOORD7.xyz * _1835.w), _2153).xyz * _2228), _2228 * _2153);
            break;
        } while(false);
        _2237 = _2236;
    }
    else
    {
        _2237 = in_var_TEXCOORD7;
    }
    float3 _2244 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].xyz, Material_Material_PreshaderBuffer[4].y.xxx), 0.0f.xxx);
    float3 _2302 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _98 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _99 = _98 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _100 = _99 - _98;
        precise float3 _101 = Primitive_Primitive_ObjectWorldPositionLow - _100;
        precise float3 _102 = _87 - _99;
        precise float3 _103 = _90 - _101;
        precise float3 _104 = _102 + _103;
        float3 _2264 = abs(_104);
        float3 _2265 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2301 = 0.0f.xxx;
        if (any(bool3(_2264.x > _2265.x, _2264.y > _2265.y, _2264.z > _2265.z)))
        {
            float3 _2297 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2301 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2297.x > 0.5f.xxx.x, _2297.y > 0.5f.xxx.y, _2297.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2287 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2275 = abs(_412 - in_var_TEXCOORD9);
                _2287 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2275.x, max(_2275.y, _2275.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2287 = _2244;
            }
            _2301 = _2287;
        }
        _2302 = _2301;
    }
    else
    {
        _2302 = _2244;
    }
    float3 _2304 = mad((_733 * _873) * _685, max(_882, ((((((_651 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _605) + ((_651 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _605) + ((_651 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _605), lerp(mad((((float4(_1739.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1714].x, _1743).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1770 * _1743)).xyz * ((_687 * _1786.x) + (clamp(50.0f * _687.y, 0.0f, 1.0f) * _1786.y).xxx)) * _873, max(_882, ((((((_687 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _605) + ((_687 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _605) + ((_687 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _605), float4(_1705.x ? 0.0f.xxxx.x : _1265.x, _1705.y ? 0.0f.xxxx.y : _1265.y, _1705.z ? 0.0f.xxxx.z : _1265.z, _1705.w ? 0.0f.xxxx.w : _1265.w).xyz + float4(_1705.x ? 0.0f.xxxx.x : _1268.x, _1705.y ? 0.0f.xxxx.y : _1268.y, _1705.z ? 0.0f.xxxx.z : _1268.z, _1705.w ? 0.0f.xxxx.w : _1268.w).xyz), _685 + (_687 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2302;
    float4 _2312 = float4((_2304 * _2237.w) + _2237.xyz, 0.0f);
    _2312.w = 0.0f;
    float4 _2316 = _2312 * View_View_PreExposure;
    float3 _2321 = min(_2316.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2321.x, _2321.y, _2321.z, _2316.w);
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
