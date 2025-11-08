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
    float4 _452 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _444 * Material_Material_PreshaderBuffer[3].x.xx);
    float _456 = _452.x * Material_Material_PreshaderBuffer[3].y;
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
    float2 _528 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _490, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _537 = _441.xxx;
    float3 _546 = normalize(mul(normalize((mad(float4(_528, sqrt(clamp(1.0f - dot(_528, _528), 0.0f, 1.0f)), 1.0f).xyz, _537, mad(float4(_496, sqrt(clamp(1.0f - dot(_496, _496), 0.0f, 1.0f)), 1.0f).xyz, _505, float4(_511, sqrt(clamp(1.0f - dot(_511, _511), 0.0f, 1.0f)), 1.0f).xyz * _520)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_381, cross(_378, _381), _378), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _557 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _562 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _569 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _575 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _580 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _587 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _490, View_View_MaterialTextureMipBias);
    float3 _599 = clamp(mad(_569.xyz, _537, mad(_557.xyz, _505, _562.xyz * _520)), 0.0f.xxx, 1.0f.xxx);
    float _603 = mad(clamp(mad(_587.y * Material_Material_PreshaderBuffer[5].x, _441, mad(_575.y, _435, _580.y * _438)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _604 = clamp(mad(_587.x, _441, mad(_575.x, _435, _580.x * _438)), 0.0f, 1.0f);
    float3 _646 = 0.0f.xxx;
    float _647 = 0.0f;
    float _648 = 0.0f;
    float _649 = 0.0f;
    float3 _650 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _618 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _622 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _618, 0.0f);
        float4 _625 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _618, 0.0f);
        float4 _628 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _618, 0.0f);
        float _638 = _628.w;
        _646 = normalize((_546 * _625.w) + ((_625.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _647 = mad(_603, _638, _628.z);
        _648 = mad(0.5f, _638, _628.y);
        _649 = _628.x;
        _650 = (_599 * _622.w) + _622.xyz;
    }
    else
    {
        _646 = _546;
        _647 = _603;
        _648 = 0.5f;
        _649 = 0.0f;
        _650 = _599;
    }
    float _658 = _403.w;
    float3 _671 = ((_650 - (_650 * _649)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _678 = (lerp((0.07999999821186065673828125f * _648).xxx, _650, _649.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _679 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _684 = 0.0f.xxx;
    if (_679)
    {
        _684 = _671 + (_678 * 0.449999988079071044921875f);
    }
    else
    {
        _684 = _671;
    }
    bool3 _685 = _679.xxx;
    float3 _686 = float3(_685.x ? 0.0f.xxx.x : _678.x, _685.y ? 0.0f.xxx.y : _678.y, _685.z ? 0.0f.xxx.z : _678.z);
    float3 _732 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _695 = float4(_646, 1.0f);
        float4 _708 = _695.xyzz * _695.yzzx;
        _732 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _695), dot(View_SkyIrradianceEnvironmentMap[1u], _695), dot(View_SkyIrradianceEnvironmentMap[2u], _695)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _708), dot(View_SkyIrradianceEnvironmentMap[4u], _708), dot(View_SkyIrradianceEnvironmentMap[5u], _708))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_646.x, _646.x, -(_646.y * _646.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _732 = 0.0f.xxx;
    }
    float2 _738 = mad(_403.xy / _658.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
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
        if ((abs((mad(_756, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_756, View_View_InvDeviceZToWorldZTransform.z, _766))) - _658) / _658) > 0.00999999977648258209228515625f)
        {
            float2 _779 = _738 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _783 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750 - 1, _751, 0).xy, 0));
            float _784 = _783.x;
            float _790 = abs((mad(_784, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_784, View_View_InvDeviceZToWorldZTransform.z, _766))) - _658);
            bool _791 = _790 < 100000000.0f;
            bool2 _792 = _791.xx;
            float2 _793 = float2(_792.x ? _779.x : _738.x, _792.y ? _779.y : _738.y);
            float _794 = _791 ? _790 : 100000000.0f;
            float2 _797 = _738 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _801 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750, _751 + 1, 0).xy, 0));
            float _802 = _801.x;
            float _808 = abs((mad(_802, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_802, View_View_InvDeviceZToWorldZTransform.z, _766))) - _658);
            bool _809 = _808 < _794;
            bool2 _810 = _809.xx;
            float2 _811 = float2(_810.x ? _797.x : _793.x, _810.y ? _797.y : _793.y);
            float _812 = _809 ? _808 : _794;
            float2 _814 = _738 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _818 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750 + 1, _751, 0).xy, 0));
            float _819 = _818.x;
            float _825 = abs((mad(_819, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_819, View_View_InvDeviceZToWorldZTransform.z, _766))) - _658);
            bool _826 = _825 < _812;
            bool2 _827 = _826.xx;
            float2 _828 = float2(_827.x ? _814.x : _811.x, _827.y ? _814.y : _811.y);
            float2 _832 = _738 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _836 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_750, _751 - 1, 0).xy, 0));
            float _837 = _836.x;
            bool2 _845 = (abs((mad(_837, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_837, View_View_InvDeviceZToWorldZTransform.z, _766))) - _658) < (_826 ? _825 : _812)).xx;
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
    float _872 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_848 * float2(float(_854.x), float(_854.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _881 = _604.xxx;
    uint2 _913 = uint2(_396 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _941 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _941 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_848 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _941 = 1.0f.xxxx;
    }
    float4 _942 = _941 * _941;
    uint _955 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1247 = 0.0f.xxxx;
    float4 _1248 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _981 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _996 = dot(float4(float(_981 & 1u), float((_981 & 2u) >> 1u), float((_981 & 4u) >> 2u), float((_981 & 8u) >> 3u)), _942);
        bool _998 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _999 = _998 ? 1.0f : _996;
        float _1012 = 0.0f;
        float _1013 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1006 = clamp(mad(_658, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1008 = lerp(_998 ? _996 : 1.0f, 1.0f, _1006 * _1006);
            _1012 = min(_1008, _999) * _999;
            _1013 = _1008 * _999;
        }
        else
        {
            _1012 = 1.0f;
            _1013 = 1.0f;
        }
        float3 _1229 = 0.0f.xxx;
        float3 _1230 = 0.0f.xxx;
        [branch]
        if ((_1013 + _1012) > 0.0f)
        {
            float _1020 = max(_647, View_View_MinRoughness);
            float _1021 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1024 = rsqrt(_1021);
            float3 _1025 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1024;
            float _1026 = dot(_646, _1025);
            float _1044 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1033 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1021 + 1.0f)), 0.0f, 1.0f));
                float _1043 = 0.0f;
                if (_1026 < _1033)
                {
                    float _1039 = _1033 + max(_1026, -_1033);
                    _1043 = (_1039 * _1039) / (4.0f * _1033);
                }
                else
                {
                    _1043 = _1026;
                }
                _1044 = _1043;
            }
            else
            {
                _1044 = _1026;
            }
            float _1045 = clamp(_1044, 0.0f, 1.0f);
            float _1046 = max(_1020, View_View_MinRoughness);
            float _1051 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1024) * mad(-_1046, _1046, 1.0f), 0.0f, 1.0f);
            float _1053 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1024, 0.0f, 1.0f);
            float3 _1222 = 0.0f.xxx;
            float3 _1223 = 0.0f.xxx;
            [branch]
            if (_1045 > 0.0f)
            {
                float _1064 = dot(_646, _428);
                float _1065 = dot(_428, _1025);
                float _1067 = rsqrt(mad(2.0f, _1065, 2.0f));
                bool _1073 = _1051 > 0.0f;
                float _1152 = 0.0f;
                float _1153 = 0.0f;
                if (_1073)
                {
                    float _1078 = sqrt(mad(-_1051, _1051, 1.0f));
                    float _1079 = 2.0f * _1026;
                    float _1080 = -_1065;
                    float _1081 = mad(_1079, _1064, _1080);
                    float _1150 = 0.0f;
                    float _1151 = 0.0f;
                    if (_1081 >= _1078)
                    {
                        _1150 = 1.0f;
                        _1151 = abs(_1064);
                    }
                    else
                    {
                        float _1086 = -_1081;
                        float _1089 = _1051 * rsqrt(mad(_1086, _1081, 1.0f));
                        float _1090 = mad(_1086, _1026, _1064);
                        float _1094 = mad(_1086, _1065, mad(2.0f * _1064, _1064, -1.0f));
                        float _1105 = _1089 * sqrt(clamp(mad(_1079 * _1064, _1065, mad(_1080, _1065, mad(-_1064, _1064, mad(-_1026, _1026, 1.0f)))), 0.0f, 1.0f));
                        float _1107 = (_1105 * 2.0f) * _1064;
                        float _1108 = mad(_1026, _1078, _1064);
                        float _1109 = mad(_1089, _1090, _1108);
                        float _1111 = mad(_1089, _1094, mad(_1065, _1078, 1.0f));
                        float _1112 = _1105 * _1111;
                        float _1113 = _1109 * _1111;
                        float _1118 = _1113 * mad(-0.5f, _1112, (0.25f * _1107) * _1109);
                        float _1128 = mad(_1109, mad(_1108, _1111 * _1111, _1113 * mad(-0.5f, mad(_1065, _1078, _1111), -0.5f)), mad(_1112, _1112, (_1107 * _1109) * mad(_1107, _1109, _1112 * (-2.0f))));
                        float _1132 = (2.0f * _1118) / mad(_1128, _1128, _1118 * _1118);
                        float _1133 = _1132 * _1128;
                        float _1135 = mad(-_1132, _1118, 1.0f);
                        float _1141 = mad(_1065, _1078, mad(_1135, _1089 * _1094, _1133 * _1107));
                        float _1143 = rsqrt(mad(2.0f, _1141, 2.0f));
                        _1150 = clamp((mad(_1026, _1078, mad(_1135, _1089 * _1090, _1133 * _1105)) + _1064) * _1143, 0.0f, 1.0f);
                        _1151 = clamp(mad(_1143, _1141, _1143), 0.0f, 1.0f);
                    }
                    _1152 = _1150;
                    _1153 = _1151;
                }
                else
                {
                    _1152 = clamp((_1026 + _1064) * _1067, 0.0f, 1.0f);
                    _1153 = clamp(mad(_1067, _1065, _1067), 0.0f, 1.0f);
                }
                float _1156 = clamp(abs(_1064) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1158 = 1.0f.xxx * _1045;
                float3 _1220 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1220 = 0.0f.xxx;
                }
                else
                {
                    float _1165 = _1020 * _1020;
                    float _1175 = 0.0f;
                    if (_1053 > 0.0f)
                    {
                        _1175 = clamp(mad(_1165, _1165, (_1053 * _1053) / mad(_1153, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1175 = _1165 * _1165;
                    }
                    float _1189 = 0.0f;
                    if (_1073)
                    {
                        _1189 = _1175 / (_1175 + (((0.25f * _1051) * mad(3.0f, asfloat(532487669 + (asint(_1175) >> 1)), _1051)) / (_1153 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1189 = 1.0f;
                    }
                    float _1192 = mad(mad(_1152, _1175, -_1152), _1152, 1.0f);
                    float _1197 = sqrt(_1175);
                    float _1198 = 1.0f - _1197;
                    float _1204 = 1.0f - _1153;
                    float _1205 = _1204 * _1204;
                    float _1206 = _1205 * _1205;
                    _1220 = _1158 * (((clamp(50.0f * _686.y, 0.0f, 1.0f) * (_1206 * _1204)).xxx + (_686 * mad(-_1206, _1204, 1.0f))) * (((_1175 / ((3.1415927410125732421875f * _1192) * _1192)) * _1189) * (0.5f / mad(_1045, mad(_1156, _1198, _1197), _1156 * mad(_1045, _1198, _1197)))));
                }
                _1222 = ((_684 * 0.3183098733425140380859375f) * _1158) * 1.0f;
                _1223 = _1220;
            }
            else
            {
                _1222 = 0.0f.xxx;
                _1223 = 0.0f.xxx;
            }
            float3 _1226 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1013;
            _1229 = mad(_1222 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1226, 0.0f.xxx);
            _1230 = (_1223 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1226;
        }
        else
        {
            _1229 = 0.0f.xxx;
            _1230 = 0.0f.xxx;
        }
        float4 _1234 = float4(_1229, 0.0f);
        float4 _1238 = float4(_1230, 0.0f);
        float4 _1245 = 0.0f.xxxx;
        float4 _1246 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _955) != 0u)
        {
            _1245 = float4(_1234.x, _1234.y, _1234.z, _1234.w);
            _1246 = float4(_1238.x, _1238.y, _1238.z, _1238.w);
        }
        else
        {
            _1245 = 0.0f.xxxx;
            _1246 = 0.0f.xxxx;
        }
        _1247 = _1245;
        _1248 = _1246;
    }
    else
    {
        _1247 = 0.0f.xxxx;
        _1248 = 0.0f.xxxx;
    }
    uint _1249 = ((((min(uint(max(0.0f, log2(mad(_319, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _913.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _913.x) * 2u;
    uint _1259 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1249 + 1u] & 1073741823u;
    uint _1262 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1249] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1264 = 0.0f.xxxx;
    float4 _1267 = 0.0f.xxxx;
    _1264 = _1247;
    _1267 = _1248;
    float4 _1265 = 0.0f.xxxx;
    float4 _1268 = 0.0f.xxxx;
    [loop]
    for (uint _1269 = 0u; _1269 < _1262; _1264 = _1265, _1267 = _1268, _1269++)
    {
        uint _1278 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1259 + _1269).x * 6u;
        uint _1281 = _1278 + 1u;
        uint _1284 = _1278 + 2u;
        uint _1287 = _1278 + 3u;
        uint _1290 = _1278 + 4u;
        uint _1294 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1284].w);
        uint _1300 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1281].y);
        uint _1316 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1287].z);
        float2 _1318 = spvUnpackHalf2x16(_1316 & 65535u);
        float _1319 = _1318.x;
        float2 _1322 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1287].w));
        float _1323 = _1322.x;
        bool _1328 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1281].w == 0.0f;
        uint _1330 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1290].w);
        uint _1343 = _1294 >> 4u;
        float3 _1359 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1278].xyz - _412;
        float _1360 = dot(_1359, _1359);
        float _1377 = 0.0f;
        if (_1328)
        {
            float _1372 = _1360 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1278].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1278].w);
            float _1375 = clamp(mad(-_1372, _1372, 1.0f), 0.0f, 1.0f);
            _1377 = _1375 * _1375;
        }
        else
        {
            float3 _1366 = _1359 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1278].w;
            _1377 = pow(1.0f - clamp(dot(_1366, _1366), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1281].w);
        }
        float _1388 = 0.0f;
        if (((_1294 >> 16u) & 3u) == 2u)
        {
            float _1385 = clamp((dot(_1359 * rsqrt(_1360), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1284].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1287].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1287].y, 0.0f, 1.0f);
            _1388 = _1377 * (_1385 * _1385);
        }
        else
        {
            _1388 = _1377;
        }
        float3 _1685 = 0.0f.xxx;
        float3 _1686 = 0.0f.xxx;
        [branch]
        if (_1388 > 0.0f)
        {
            float _1396 = 0.0f;
            [branch]
            if (uint(int((_1294 & 255u) != 0u)) != 0u)
            {
                _1396 = dot(float4(float(_1343 & 1u), float((_1343 & 2u) >> 1u), float((_1343 & 4u) >> 2u), float((_1343 & 8u) >> 3u)), _942);
            }
            else
            {
                _1396 = 1.0f;
            }
            float3 _1683 = 0.0f.xxx;
            float3 _1684 = 0.0f.xxx;
            [branch]
            if ((_1396 + _1396) > 0.0f)
            {
                float3 _1402 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1290].xyz * (0.5f * _1323);
                float3 _1403 = _1359 - _1402;
                float3 _1404 = _1359 + _1402;
                float _1407 = max(_647, View_View_MinRoughness);
                bool _1408 = _1323 > 0.0f;
                float _1433 = 0.0f;
                float _1434 = 0.0f;
                float _1435 = 0.0f;
                [branch]
                if (_1408)
                {
                    float _1420 = rsqrt(dot(_1403, _1403));
                    float _1421 = rsqrt(dot(_1404, _1404));
                    float _1422 = _1420 * _1421;
                    float _1424 = dot(_1403, _1404) * _1422;
                    _1433 = _1424;
                    _1434 = 0.5f * mad(dot(_646, _1403), _1420, dot(_646, _1404) * _1421);
                    _1435 = _1422 / mad(_1420, _1421, mad(_1424, 0.5f, 0.5f));
                }
                else
                {
                    float _1412 = dot(_1403, _1403);
                    _1433 = 1.0f;
                    _1434 = dot(_646, _1403 * rsqrt(_1412));
                    _1435 = 1.0f / (_1412 + 1.0f);
                }
                float _1453 = 0.0f;
                if (_1319 > 0.0f)
                {
                    float _1442 = sqrt(clamp((_1319 * _1319) * _1435, 0.0f, 1.0f));
                    float _1452 = 0.0f;
                    if (_1434 < _1442)
                    {
                        float _1448 = _1442 + max(_1434, -_1442);
                        _1452 = (_1448 * _1448) / (4.0f * _1442);
                    }
                    else
                    {
                        _1452 = _1434;
                    }
                    _1453 = _1452;
                }
                else
                {
                    _1453 = _1434;
                }
                float _1454 = clamp(_1453, 0.0f, 1.0f);
                float3 _1472 = 0.0f.xxx;
                if (_1408)
                {
                    float3 _1459 = reflect(-_428, _646);
                    float3 _1460 = _1404 - _1403;
                    float _1461 = dot(_1459, _1460);
                    _1472 = _1403 + (_1460 * clamp(dot(_1403, (_1459 * _1461) - _1460) / mad(_1323, _1323, -(_1461 * _1461)), 0.0f, 1.0f));
                }
                else
                {
                    _1472 = _1403;
                }
                float _1474 = rsqrt(dot(_1472, _1472));
                float3 _1475 = _1472 * _1474;
                float _1476 = max(_1407, View_View_MinRoughness);
                float _1481 = clamp((_1319 * _1474) * mad(-_1476, _1476, 1.0f), 0.0f, 1.0f);
                float _1483 = clamp(spvUnpackHalf2x16(_1316 >> 16u).x * _1474, 0.0f, 1.0f);
                float3 _1676 = 0.0f.xxx;
                float3 _1677 = 0.0f.xxx;
                [branch]
                if (_1454 > 0.0f)
                {
                    float _1494 = dot(_646, _1475);
                    float _1495 = dot(_646, _428);
                    float _1496 = dot(_428, _1475);
                    float _1498 = rsqrt(mad(2.0f, _1496, 2.0f));
                    bool _1504 = _1481 > 0.0f;
                    float _1583 = 0.0f;
                    float _1584 = 0.0f;
                    if (_1504)
                    {
                        float _1509 = sqrt(mad(-_1481, _1481, 1.0f));
                        float _1510 = 2.0f * _1494;
                        float _1511 = -_1496;
                        float _1512 = mad(_1510, _1495, _1511);
                        float _1581 = 0.0f;
                        float _1582 = 0.0f;
                        if (_1512 >= _1509)
                        {
                            _1581 = 1.0f;
                            _1582 = abs(_1495);
                        }
                        else
                        {
                            float _1517 = -_1512;
                            float _1520 = _1481 * rsqrt(mad(_1517, _1512, 1.0f));
                            float _1521 = mad(_1517, _1494, _1495);
                            float _1525 = mad(_1517, _1496, mad(2.0f * _1495, _1495, -1.0f));
                            float _1536 = _1520 * sqrt(clamp(mad(_1510 * _1495, _1496, mad(_1511, _1496, mad(-_1495, _1495, mad(-_1494, _1494, 1.0f)))), 0.0f, 1.0f));
                            float _1538 = (_1536 * 2.0f) * _1495;
                            float _1539 = mad(_1494, _1509, _1495);
                            float _1540 = mad(_1520, _1521, _1539);
                            float _1542 = mad(_1520, _1525, mad(_1496, _1509, 1.0f));
                            float _1543 = _1536 * _1542;
                            float _1544 = _1540 * _1542;
                            float _1549 = _1544 * mad(-0.5f, _1543, (0.25f * _1538) * _1540);
                            float _1559 = mad(_1540, mad(_1539, _1542 * _1542, _1544 * mad(-0.5f, mad(_1496, _1509, _1542), -0.5f)), mad(_1543, _1543, (_1538 * _1540) * mad(_1538, _1540, _1543 * (-2.0f))));
                            float _1563 = (2.0f * _1549) / mad(_1559, _1559, _1549 * _1549);
                            float _1564 = _1563 * _1559;
                            float _1566 = mad(-_1563, _1549, 1.0f);
                            float _1572 = mad(_1496, _1509, mad(_1566, _1520 * _1525, _1564 * _1538));
                            float _1574 = rsqrt(mad(2.0f, _1572, 2.0f));
                            _1581 = clamp((mad(_1494, _1509, mad(_1566, _1520 * _1521, _1564 * _1536)) + _1495) * _1574, 0.0f, 1.0f);
                            _1582 = clamp(mad(_1574, _1572, _1574), 0.0f, 1.0f);
                        }
                        _1583 = _1581;
                        _1584 = _1582;
                    }
                    else
                    {
                        _1583 = clamp((_1494 + _1495) * _1498, 0.0f, 1.0f);
                        _1584 = clamp(mad(_1498, _1496, _1498), 0.0f, 1.0f);
                    }
                    float _1587 = clamp(abs(_1495) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1590 = 1.0f.xxx * ((_1328 ? _1435 : 1.0f) * _1454);
                    float3 _1674 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1323, _1319), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1674 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1597 = _1407 * _1407;
                        float _1607 = 0.0f;
                        if (_1483 > 0.0f)
                        {
                            _1607 = clamp(mad(_1597, _1597, (_1483 * _1483) / mad(_1584, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1607 = _1597 * _1597;
                        }
                        float _1621 = 0.0f;
                        float _1622 = 0.0f;
                        if (_1504)
                        {
                            float _1619 = _1607 + (((0.25f * _1481) * mad(3.0f, asfloat(532487669 + (asint(_1607) >> 1)), _1481)) / (_1584 + 0.001000000047497451305389404296875f));
                            _1621 = _1607 / _1619;
                            _1622 = _1619;
                        }
                        else
                        {
                            _1621 = 1.0f;
                            _1622 = _1607;
                        }
                        float _1643 = 0.0f;
                        if (_1433 < 1.0f)
                        {
                            float _1629 = sqrt((1.00010001659393310546875f - _1433) / (1.0f + _1433));
                            _1643 = _1621 * sqrt(_1622 / (_1622 + (((0.25f * _1629) * mad(3.0f, asfloat(532487669 + (asint(_1622) >> 1)), _1629)) / (_1584 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1643 = _1621;
                        }
                        float _1646 = mad(mad(_1583, _1607, -_1583), _1583, 1.0f);
                        float _1651 = sqrt(_1607);
                        float _1652 = 1.0f - _1651;
                        float _1658 = 1.0f - _1584;
                        float _1659 = _1658 * _1658;
                        float _1660 = _1659 * _1659;
                        _1674 = _1590 * (((clamp(50.0f * _686.y, 0.0f, 1.0f) * (_1660 * _1658)).xxx + (_686 * mad(-_1660, _1658, 1.0f))) * (((_1607 / ((3.1415927410125732421875f * _1646) * _1646)) * _1643) * (0.5f / mad(_1454, mad(_1587, _1652, _1651), _1587 * mad(_1454, _1652, _1651)))));
                    }
                    _1676 = ((_684 * 0.3183098733425140380859375f) * _1590) * 1.0f;
                    _1677 = _1674;
                }
                else
                {
                    _1676 = 0.0f.xxx;
                    _1677 = 0.0f.xxx;
                }
                float3 _1680 = ((float3(float((_1300 >> 0u) & 1023u), float((_1300 >> 10u) & 1023u), float((_1300 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1281].x) * _1388) * _1396;
                _1683 = mad(_1676 * (float((_1330 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1680, 0.0f.xxx);
                _1684 = (_1677 * (float(_1330 & 1023u) * 0.000977517105638980865478515625f)) * _1680;
            }
            else
            {
                _1683 = 0.0f.xxx;
                _1684 = 0.0f.xxx;
            }
            _1685 = _1683;
            _1686 = _1684;
        }
        else
        {
            _1685 = 0.0f.xxx;
            _1686 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1294 >> 8u) & 7u) & _955) != 0u)
        {
            _1265 = _1264 + float4(_1685, 0.0f);
            _1268 = _1267 + float4(_1686, 0.0f);
        }
        else
        {
            _1265 = _1264;
            _1268 = _1267;
        }
    }
    bool4 _1704 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1713 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1717 = (_646 * (2.0f * dot(_428, _646))) - _428;
    float _1724 = mad(-1.2000000476837158203125f, log2(max(_647, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1738 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1717, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1713].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1724);
    float _1742 = 1.0f - _1738.w;
    float3 _1769 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1769 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1717, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1724).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1769 = 0.0f.xxx;
    }
    float4 _1775 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _647) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1776 = _1775.x;
    float2 _1785 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1776 * _1776, exp2((-9.27999973297119140625f) * clamp(dot(_646, _428), 0.0f, 1.0f))), _1776, _1775.y)) + _1775.zw;
    bool _1812 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2236 = 0.0f.xxxx;
    if (_1812)
    {
        uint2 _1824 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1826 = normalize(_412 - View_View_TranslatedWorldCameraOrigin);
        uint _1827 = _1824.x;
        uint4 _1831 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1827, _1824.y, 0u), 0u));
        uint _1832 = _1831.x;
        float4 _1834 = 0.0f.xxxx;
        _1834 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1835 = 0.0f.xxxx;
        for (int _1837 = 0; uint(_1837) < _1832; _1834 = _1835, _1837++)
        {
            uint _1848 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1827, _1824.y, uint(1 + _1837)), 0u)).x * 3u;
            float4 _1850 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1848);
            float4 _1852 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1848 + 1u);
            float4 _1854 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1848 + 2u);
            float3 _1855 = _1850.xyz;
            float _1856 = _1850.w;
            float _1857 = 1.0f / _1856;
            uint _1859 = asuint(_1852.x);
            float2 _1865 = float2(spvUnpackHalf2x16(_1859).x, spvUnpackHalf2x16(_1859 >> 16u).x);
            float3 _1866 = float3(_1865.x, _1865.y, _288.z);
            uint _1868 = asuint(_1852.y);
            _1866.z = spvUnpackHalf2x16(_1868).x;
            float3 _1875 = 0.0f.xxx;
            _1875.x = spvUnpackHalf2x16(_1868 >> 16u).x;
            uint _1877 = asuint(_1852.z);
            float2 _1883 = float2(spvUnpackHalf2x16(_1877).x, spvUnpackHalf2x16(_1877 >> 16u).x);
            float3 _1884 = float3(_1875.x, _1883.x, _1883.y);
            float3x3 _1889 = float3x3(_1866 * _1857, _1884 * _1857, cross(_1866, _1884) * _1857);
            uint _1891 = asuint(_1854.x);
            float2 _1894 = spvUnpackHalf2x16((_1891 >> 17u) & 32752u);
            float _1895 = _1894.x;
            float2 _1898 = spvUnpackHalf2x16((_1891 >> 6u) & 32752u);
            float _1899 = _1898.x;
            float2 _1902 = spvUnpackHalf2x16((_1891 << 5u) & 32736u);
            float _1903 = _1902.x;
            uint _1905 = asuint(_1854.y);
            float3 _1923 = 0.0f.xxx;
            if (_1905 > 0u)
            {
                _1923 = float3(spvUnpackHalf2x16((_1905 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1905 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1905 << 5u) & 32736u).x);
            }
            else
            {
                _1923 = 0.0f.xxx;
            }
            uint _1925 = asuint(_1854.z);
            float _1940 = float((_1925 >> 24u) & 255u);
            float _1941 = _1940 * 0.0039215688593685626983642578125f;
            float3 _1948 = mul(View_View_TranslatedWorldCameraOrigin - _1855, _1889);
            float3 _1950 = normalize(mul(_1826, _1889));
            float _1952 = dot(_1950, _1950);
            float _1953 = dot(_1950, _1948);
            float _1954 = 2.0f * _1953;
            float _1959 = mad(_1954, _1954, -((4.0f * _1952) * mad(-1.0f, 1.0f, dot(_1948, _1948))));
            float2 _1971 = 0.0f.xx;
            [flatten]
            if (_1959 >= 0.0f)
            {
                _1971 = ((_1953 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1959))) / (2.0f * _1952).xx;
            }
            else
            {
                _1971 = (-1.0f).xx;
            }
            float3 _1977 = mul(_412 - _1855, _1889) - _1948;
            float2 _1981 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1857, _1971), sqrt(dot(_1977, _1977)).xx);
            float _2131 = 0.0f;
            float3 _2132 = 0.0f.xxx;
            if (any(bool2(_1981.x > 0.0f.xx.x, _1981.y > 0.0f.xx.y)))
            {
                float2 _2002 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1992 = dot(_1826, View_View_ViewForward);
                    _2002 = max(_1981, ((View_View_VolumetricFogMaxDistance * ((_1992 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1992) : 0.0f)) * _1857).xx);
                }
                else
                {
                    _2002 = _1981;
                }
                float _2007 = max(0.0f, abs(_2002.y - _2002.x));
                float _2129 = 0.0f;
                float3 _2130 = 0.0f.xxx;
                if (_2007 > 0.0f)
                {
                    float3 _2012 = _1948 + (_1950 * _2002.x);
                    float _2048 = 0.0f;
                    if (_1895 > 0.0f)
                    {
                        float _2016 = dot(_1950, _2012);
                        float _2017 = dot(_2012, _2012);
                        float _2018 = _2017 - 1.0f;
                        float _2020 = mad(_2016, _2016, 1.0f - _2017);
                        float _2047 = 0.0f;
                        if (_2020 >= 0.0f)
                        {
                            float _2024 = sqrt(_2020);
                            float _2025 = -_2016;
                            float _2028 = max(_2025 - _2024, 0.0f);
                            float _2030 = min(max(_2025 + _2024, 0.0f), _2007);
                            float _2031 = _2028 * _2028;
                            float _2032 = _2030 * _2030;
                            _2047 = max(0.0f, (_1895 * ((-mad(_2032 * _2030, 0.3333333432674407958984375f, mad(_2018, _2030, _2016 * _2032))) - (-mad(_2031 * _2028, 0.3333333432674407958984375f, mad(_2018, _2028, _2016 * _2031))))) * 0.75f);
                        }
                        else
                        {
                            _2047 = 0.0f;
                        }
                        _2048 = _2047;
                    }
                    else
                    {
                        _2048 = 0.0f;
                    }
                    float _2073 = 0.0f;
                    if (_1899 > 0.0f)
                    {
                        float _2054 = _1950.z;
                        float _2060 = (abs(_2054) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2054 >= 0.0f) ? 1.0f : (-1.0f))) : _2054;
                        float _2063 = max(-80.0f, (_2012.z - _1854.w) * _1903);
                        _2073 = (_1899 / (_1903 * _2060)) * (exp(-_2063) - exp(-mad(_2060 * _2007, _1903, _2063)));
                    }
                    else
                    {
                        _2073 = 0.0f;
                    }
                    float _2084 = exp((log(mad(exp(-_2048) - 1.0f, 1.0f - exp(-_2073), 1.0f)) * _1856) * 0.00999999977648258209228515625f);
                    float _2088 = _1940 * (-0.0039215688593685626983642578125f);
                    float _2095 = mad(_1940 * (-0.007843137718737125396728515625f), dot(_1826, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2088, _2088, 1.0f));
                    float3 _2100 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1941, _2088, 1.0f) / ((12.56637096405029296875f * _2095) * sqrt(_2095)));
                    float3 _2126 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2111 = float4(_1826 * _2088, 1.0f);
                        _2126 = _2100 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2111), dot(View_SkyIrradianceEnvironmentMap[1u], _2111), dot(View_SkyIrradianceEnvironmentMap[2u], _2111)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2126 = _2100;
                    }
                    _2129 = _2084;
                    _2130 = mad(_2126, float4(float((_1925 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1925 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1925 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1941).xyz, _1923) * (1.0f - _2084);
                }
                else
                {
                    _2129 = 1.0f;
                    _2130 = 0.0f.xxx;
                }
                _2131 = _2129;
                _2132 = _2130;
            }
            else
            {
                _2131 = 1.0f;
                _2132 = 0.0f.xxx;
            }
            _1835 = float4((_1834.xyz * _2131) + float4(_2132, _2131).xyz, _1834.w * _2131);
        }
        float _2152 = _1834.w * in_var_TEXCOORD7.w;
        float4 _2160 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2160 + _91;
        precise float4 _93 = _92 - _2160;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2160 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2171 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2172 = _2171.w;
        float4 _2235 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2235 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2218 = 0.0f.xxxx;
            float _2219 = 0.0f;
            if (_1812)
            {
                float4 _2214 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2171.xy / _2172.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2172, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2216 = _2214.xyz * View_View_OneOverPreExposure;
                _2218 = float4(_2216.x, _2216.y, _2216.z, _2214.w);
                _2219 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2218 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2219 = 0.0f;
            }
            float4 _2224 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2218, clamp((_658 - _2219) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2227 = _2224.w;
            _2235 = float4(_2224.xyz + (float4(_1834.xyz + (in_var_TEXCOORD7.xyz * _1834.w), _2152).xyz * _2227), _2227 * _2152);
            break;
        } while(false);
        _2236 = _2235;
    }
    else
    {
        _2236 = in_var_TEXCOORD7;
    }
    float3 _2243 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _2301 = 0.0f.xxx;
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
        float3 _2263 = abs(_104);
        float3 _2264 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2300 = 0.0f.xxx;
        if (any(bool3(_2263.x > _2264.x, _2263.y > _2264.y, _2263.z > _2264.z)))
        {
            float3 _2296 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2300 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2296.x > 0.5f.xxx.x, _2296.y > 0.5f.xxx.y, _2296.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2286 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2274 = abs(_412 - in_var_TEXCOORD9);
                _2286 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2274.x, max(_2274.y, _2274.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2286 = _2243;
            }
            _2300 = _2286;
        }
        _2301 = _2300;
    }
    else
    {
        _2301 = _2243;
    }
    float3 _2303 = mad((_732 * _872) * _684, max(_881, ((((((_650 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _604) + ((_650 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _604) + ((_650 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _604), lerp(mad((((float4(_1738.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1713].x, _1742).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1769 * _1742)).xyz * ((_686 * _1785.x) + (clamp(50.0f * _686.y, 0.0f, 1.0f) * _1785.y).xxx)) * _872, max(_881, ((((((_686 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _604) + ((_686 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _604) + ((_686 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _604), float4(_1704.x ? 0.0f.xxxx.x : _1264.x, _1704.y ? 0.0f.xxxx.y : _1264.y, _1704.z ? 0.0f.xxxx.z : _1264.z, _1704.w ? 0.0f.xxxx.w : _1264.w).xyz + float4(_1704.x ? 0.0f.xxxx.x : _1267.x, _1704.y ? 0.0f.xxxx.y : _1267.y, _1704.z ? 0.0f.xxxx.z : _1267.z, _1704.w ? 0.0f.xxxx.w : _1267.w).xyz), _684 + (_686 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2301;
    float4 _2311 = float4((_2303 * _2236.w) + _2236.xyz, 0.0f);
    _2311.w = 0.0f;
    float4 _2315 = _2311 * View_View_PreExposure;
    float3 _2320 = min(_2315.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2320.x, _2320.y, _2320.z, _2315.w);
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
