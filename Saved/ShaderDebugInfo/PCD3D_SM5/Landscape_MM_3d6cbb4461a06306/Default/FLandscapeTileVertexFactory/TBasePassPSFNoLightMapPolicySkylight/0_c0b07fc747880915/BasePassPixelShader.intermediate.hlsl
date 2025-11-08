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
    float2 _509 = _490 * Material_Material_PreshaderBuffer[4].x.xx;
    float2 _515 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _509, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _524 = _438.xxx;
    float2 _532 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _490, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _541 = _441.xxx;
    float3 _550 = normalize(mul(normalize((mad(float4(_532, sqrt(clamp(1.0f - dot(_532, _532), 0.0f, 1.0f)), 1.0f).xyz, _541, mad(float4(_496, sqrt(clamp(1.0f - dot(_496, _496), 0.0f, 1.0f)), 1.0f).xyz, _505, float4(_515, sqrt(clamp(1.0f - dot(_515, _515), 0.0f, 1.0f)), 1.0f).xyz * _524)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_381, cross(_378, _381), _378), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _561 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _566 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _509, View_View_MaterialTextureMipBias);
    float4 _573 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _579 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _490, View_View_MaterialTextureMipBias);
    float4 _584 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _509, View_View_MaterialTextureMipBias);
    float4 _591 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _490, View_View_MaterialTextureMipBias);
    float3 _603 = clamp(mad(_573.xyz, _541, mad(_561.xyz, _505, _566.xyz * _524)), 0.0f.xxx, 1.0f.xxx);
    float _607 = mad(clamp(mad(_591.y * Material_Material_PreshaderBuffer[5].w, _441, mad(_579.y, _435, _584.y * _438)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _608 = clamp(mad(_591.x, _441, mad(_579.x, _435, _584.x * _438)), 0.0f, 1.0f);
    float3 _650 = 0.0f.xxx;
    float _651 = 0.0f;
    float _652 = 0.0f;
    float _653 = 0.0f;
    float3 _654 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _622 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _626 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _622, 0.0f);
        float4 _629 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _622, 0.0f);
        float4 _632 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _622, 0.0f);
        float _642 = _632.w;
        _650 = normalize((_550 * _629.w) + ((_629.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _651 = mad(_607, _642, _632.z);
        _652 = mad(0.5f, _642, _632.y);
        _653 = _632.x;
        _654 = (_603 * _626.w) + _626.xyz;
    }
    else
    {
        _650 = _550;
        _651 = _607;
        _652 = 0.5f;
        _653 = 0.0f;
        _654 = _603;
    }
    float _662 = _403.w;
    float3 _675 = ((_654 - (_654 * _653)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _682 = (lerp((0.07999999821186065673828125f * _652).xxx, _654, _653.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _683 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _688 = 0.0f.xxx;
    if (_683)
    {
        _688 = _675 + (_682 * 0.449999988079071044921875f);
    }
    else
    {
        _688 = _675;
    }
    bool3 _689 = _683.xxx;
    float3 _690 = float3(_689.x ? 0.0f.xxx.x : _682.x, _689.y ? 0.0f.xxx.y : _682.y, _689.z ? 0.0f.xxx.z : _682.z);
    float3 _736 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _699 = float4(_650, 1.0f);
        float4 _712 = _699.xyzz * _699.yzzx;
        _736 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _699), dot(View_SkyIrradianceEnvironmentMap[1u], _699), dot(View_SkyIrradianceEnvironmentMap[2u], _699)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _712), dot(View_SkyIrradianceEnvironmentMap[4u], _712), dot(View_SkyIrradianceEnvironmentMap[5u], _712))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_650.x, _650.x, -(_650.y * _650.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _736 = 0.0f.xxx;
    }
    float2 _742 = mad(_403.xy / _662.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _852 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _753 = int2(trunc(_742 * View_View_BufferSizeAndInvSize.xy));
        int _754 = _753.x;
        int _755 = _753.y;
        float4 _759 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_754, _755, 0).xy, 0));
        float _760 = _759.x;
        float _770 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _851 = 0.0f.xx;
        if ((abs((mad(_760, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_760, View_View_InvDeviceZToWorldZTransform.z, _770))) - _662) / _662) > 0.00999999977648258209228515625f)
        {
            float2 _783 = _742 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _787 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_754 - 1, _755, 0).xy, 0));
            float _788 = _787.x;
            float _794 = abs((mad(_788, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_788, View_View_InvDeviceZToWorldZTransform.z, _770))) - _662);
            bool _795 = _794 < 100000000.0f;
            bool2 _796 = _795.xx;
            float2 _797 = float2(_796.x ? _783.x : _742.x, _796.y ? _783.y : _742.y);
            float _798 = _795 ? _794 : 100000000.0f;
            float2 _801 = _742 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _805 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_754, _755 + 1, 0).xy, 0));
            float _806 = _805.x;
            float _812 = abs((mad(_806, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_806, View_View_InvDeviceZToWorldZTransform.z, _770))) - _662);
            bool _813 = _812 < _798;
            bool2 _814 = _813.xx;
            float2 _815 = float2(_814.x ? _801.x : _797.x, _814.y ? _801.y : _797.y);
            float _816 = _813 ? _812 : _798;
            float2 _818 = _742 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _822 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_754 + 1, _755, 0).xy, 0));
            float _823 = _822.x;
            float _829 = abs((mad(_823, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_823, View_View_InvDeviceZToWorldZTransform.z, _770))) - _662);
            bool _830 = _829 < _816;
            bool2 _831 = _830.xx;
            float2 _832 = float2(_831.x ? _818.x : _815.x, _831.y ? _818.y : _815.y);
            float2 _836 = _742 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _840 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_754, _755 - 1, 0).xy, 0));
            float _841 = _840.x;
            bool2 _849 = (abs((mad(_841, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_841, View_View_InvDeviceZToWorldZTransform.z, _770))) - _662) < (_830 ? _829 : _816)).xx;
            _851 = float2(_849.x ? _836.x : _832.x, _849.y ? _836.y : _832.y);
        }
        else
        {
            _851 = _742;
        }
        _852 = _851;
    }
    else
    {
        _852 = _742;
    }
    uint _858_dummy_parameter;
    uint2 _858 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _858_dummy_parameter);
    float _876 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_852 * float2(float(_858.x), float(_858.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _885 = _608.xxx;
    uint2 _917 = uint2(_396 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _945 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _945 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_852 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _945 = 1.0f.xxxx;
    }
    float4 _946 = _945 * _945;
    uint _959 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1251 = 0.0f.xxxx;
    float4 _1252 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _985 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1000 = dot(float4(float(_985 & 1u), float((_985 & 2u) >> 1u), float((_985 & 4u) >> 2u), float((_985 & 8u) >> 3u)), _946);
        bool _1002 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1003 = _1002 ? 1.0f : _1000;
        float _1016 = 0.0f;
        float _1017 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1010 = clamp(mad(_662, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1012 = lerp(_1002 ? _1000 : 1.0f, 1.0f, _1010 * _1010);
            _1016 = min(_1012, _1003) * _1003;
            _1017 = _1012 * _1003;
        }
        else
        {
            _1016 = 1.0f;
            _1017 = 1.0f;
        }
        float3 _1233 = 0.0f.xxx;
        float3 _1234 = 0.0f.xxx;
        [branch]
        if ((_1017 + _1016) > 0.0f)
        {
            float _1024 = max(_651, View_View_MinRoughness);
            float _1025 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1028 = rsqrt(_1025);
            float3 _1029 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1028;
            float _1030 = dot(_650, _1029);
            float _1048 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1037 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1025 + 1.0f)), 0.0f, 1.0f));
                float _1047 = 0.0f;
                if (_1030 < _1037)
                {
                    float _1043 = _1037 + max(_1030, -_1037);
                    _1047 = (_1043 * _1043) / (4.0f * _1037);
                }
                else
                {
                    _1047 = _1030;
                }
                _1048 = _1047;
            }
            else
            {
                _1048 = _1030;
            }
            float _1049 = clamp(_1048, 0.0f, 1.0f);
            float _1050 = max(_1024, View_View_MinRoughness);
            float _1055 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1028) * mad(-_1050, _1050, 1.0f), 0.0f, 1.0f);
            float _1057 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1028, 0.0f, 1.0f);
            float3 _1226 = 0.0f.xxx;
            float3 _1227 = 0.0f.xxx;
            [branch]
            if (_1049 > 0.0f)
            {
                float _1068 = dot(_650, _428);
                float _1069 = dot(_428, _1029);
                float _1071 = rsqrt(mad(2.0f, _1069, 2.0f));
                bool _1077 = _1055 > 0.0f;
                float _1156 = 0.0f;
                float _1157 = 0.0f;
                if (_1077)
                {
                    float _1082 = sqrt(mad(-_1055, _1055, 1.0f));
                    float _1083 = 2.0f * _1030;
                    float _1084 = -_1069;
                    float _1085 = mad(_1083, _1068, _1084);
                    float _1154 = 0.0f;
                    float _1155 = 0.0f;
                    if (_1085 >= _1082)
                    {
                        _1154 = 1.0f;
                        _1155 = abs(_1068);
                    }
                    else
                    {
                        float _1090 = -_1085;
                        float _1093 = _1055 * rsqrt(mad(_1090, _1085, 1.0f));
                        float _1094 = mad(_1090, _1030, _1068);
                        float _1098 = mad(_1090, _1069, mad(2.0f * _1068, _1068, -1.0f));
                        float _1109 = _1093 * sqrt(clamp(mad(_1083 * _1068, _1069, mad(_1084, _1069, mad(-_1068, _1068, mad(-_1030, _1030, 1.0f)))), 0.0f, 1.0f));
                        float _1111 = (_1109 * 2.0f) * _1068;
                        float _1112 = mad(_1030, _1082, _1068);
                        float _1113 = mad(_1093, _1094, _1112);
                        float _1115 = mad(_1093, _1098, mad(_1069, _1082, 1.0f));
                        float _1116 = _1109 * _1115;
                        float _1117 = _1113 * _1115;
                        float _1122 = _1117 * mad(-0.5f, _1116, (0.25f * _1111) * _1113);
                        float _1132 = mad(_1113, mad(_1112, _1115 * _1115, _1117 * mad(-0.5f, mad(_1069, _1082, _1115), -0.5f)), mad(_1116, _1116, (_1111 * _1113) * mad(_1111, _1113, _1116 * (-2.0f))));
                        float _1136 = (2.0f * _1122) / mad(_1132, _1132, _1122 * _1122);
                        float _1137 = _1136 * _1132;
                        float _1139 = mad(-_1136, _1122, 1.0f);
                        float _1145 = mad(_1069, _1082, mad(_1139, _1093 * _1098, _1137 * _1111));
                        float _1147 = rsqrt(mad(2.0f, _1145, 2.0f));
                        _1154 = clamp((mad(_1030, _1082, mad(_1139, _1093 * _1094, _1137 * _1109)) + _1068) * _1147, 0.0f, 1.0f);
                        _1155 = clamp(mad(_1147, _1145, _1147), 0.0f, 1.0f);
                    }
                    _1156 = _1154;
                    _1157 = _1155;
                }
                else
                {
                    _1156 = clamp((_1030 + _1068) * _1071, 0.0f, 1.0f);
                    _1157 = clamp(mad(_1071, _1069, _1071), 0.0f, 1.0f);
                }
                float _1160 = clamp(abs(_1068) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1162 = 1.0f.xxx * _1049;
                float3 _1224 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1224 = 0.0f.xxx;
                }
                else
                {
                    float _1169 = _1024 * _1024;
                    float _1179 = 0.0f;
                    if (_1057 > 0.0f)
                    {
                        _1179 = clamp(mad(_1169, _1169, (_1057 * _1057) / mad(_1157, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1179 = _1169 * _1169;
                    }
                    float _1193 = 0.0f;
                    if (_1077)
                    {
                        _1193 = _1179 / (_1179 + (((0.25f * _1055) * mad(3.0f, asfloat(532487669 + (asint(_1179) >> 1)), _1055)) / (_1157 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1193 = 1.0f;
                    }
                    float _1196 = mad(mad(_1156, _1179, -_1156), _1156, 1.0f);
                    float _1201 = sqrt(_1179);
                    float _1202 = 1.0f - _1201;
                    float _1208 = 1.0f - _1157;
                    float _1209 = _1208 * _1208;
                    float _1210 = _1209 * _1209;
                    _1224 = _1162 * (((clamp(50.0f * _690.y, 0.0f, 1.0f) * (_1210 * _1208)).xxx + (_690 * mad(-_1210, _1208, 1.0f))) * (((_1179 / ((3.1415927410125732421875f * _1196) * _1196)) * _1193) * (0.5f / mad(_1049, mad(_1160, _1202, _1201), _1160 * mad(_1049, _1202, _1201)))));
                }
                _1226 = ((_688 * 0.3183098733425140380859375f) * _1162) * 1.0f;
                _1227 = _1224;
            }
            else
            {
                _1226 = 0.0f.xxx;
                _1227 = 0.0f.xxx;
            }
            float3 _1230 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1017;
            _1233 = mad(_1226 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1230, 0.0f.xxx);
            _1234 = (_1227 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1230;
        }
        else
        {
            _1233 = 0.0f.xxx;
            _1234 = 0.0f.xxx;
        }
        float4 _1238 = float4(_1233, 0.0f);
        float4 _1242 = float4(_1234, 0.0f);
        float4 _1249 = 0.0f.xxxx;
        float4 _1250 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _959) != 0u)
        {
            _1249 = float4(_1238.x, _1238.y, _1238.z, _1238.w);
            _1250 = float4(_1242.x, _1242.y, _1242.z, _1242.w);
        }
        else
        {
            _1249 = 0.0f.xxxx;
            _1250 = 0.0f.xxxx;
        }
        _1251 = _1249;
        _1252 = _1250;
    }
    else
    {
        _1251 = 0.0f.xxxx;
        _1252 = 0.0f.xxxx;
    }
    uint _1253 = ((((min(uint(max(0.0f, log2(mad(_319, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _917.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _917.x) * 2u;
    uint _1263 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1253 + 1u] & 1073741823u;
    uint _1266 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1253] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1268 = 0.0f.xxxx;
    float4 _1271 = 0.0f.xxxx;
    _1268 = _1251;
    _1271 = _1252;
    float4 _1269 = 0.0f.xxxx;
    float4 _1272 = 0.0f.xxxx;
    [loop]
    for (uint _1273 = 0u; _1273 < _1266; _1268 = _1269, _1271 = _1272, _1273++)
    {
        uint _1282 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1263 + _1273).x * 6u;
        uint _1285 = _1282 + 1u;
        uint _1288 = _1282 + 2u;
        uint _1291 = _1282 + 3u;
        uint _1294 = _1282 + 4u;
        uint _1298 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].w);
        uint _1304 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].y);
        uint _1320 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].z);
        float2 _1322 = spvUnpackHalf2x16(_1320 & 65535u);
        float _1323 = _1322.x;
        float2 _1326 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].w));
        float _1327 = _1326.x;
        bool _1332 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].w == 0.0f;
        uint _1334 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1294].w);
        uint _1347 = _1298 >> 4u;
        float3 _1363 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].xyz - _412;
        float _1364 = dot(_1363, _1363);
        float _1381 = 0.0f;
        if (_1332)
        {
            float _1376 = _1364 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].w);
            float _1379 = clamp(mad(-_1376, _1376, 1.0f), 0.0f, 1.0f);
            _1381 = _1379 * _1379;
        }
        else
        {
            float3 _1370 = _1363 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1282].w;
            _1381 = pow(1.0f - clamp(dot(_1370, _1370), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].w);
        }
        float _1392 = 0.0f;
        if (((_1298 >> 16u) & 3u) == 2u)
        {
            float _1389 = clamp((dot(_1363 * rsqrt(_1364), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].y, 0.0f, 1.0f);
            _1392 = _1381 * (_1389 * _1389);
        }
        else
        {
            _1392 = _1381;
        }
        float3 _1689 = 0.0f.xxx;
        float3 _1690 = 0.0f.xxx;
        [branch]
        if (_1392 > 0.0f)
        {
            float _1400 = 0.0f;
            [branch]
            if (uint(int((_1298 & 255u) != 0u)) != 0u)
            {
                _1400 = dot(float4(float(_1347 & 1u), float((_1347 & 2u) >> 1u), float((_1347 & 4u) >> 2u), float((_1347 & 8u) >> 3u)), _946);
            }
            else
            {
                _1400 = 1.0f;
            }
            float3 _1687 = 0.0f.xxx;
            float3 _1688 = 0.0f.xxx;
            [branch]
            if ((_1400 + _1400) > 0.0f)
            {
                float3 _1406 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1294].xyz * (0.5f * _1327);
                float3 _1407 = _1363 - _1406;
                float3 _1408 = _1363 + _1406;
                float _1411 = max(_651, View_View_MinRoughness);
                bool _1412 = _1327 > 0.0f;
                float _1437 = 0.0f;
                float _1438 = 0.0f;
                float _1439 = 0.0f;
                [branch]
                if (_1412)
                {
                    float _1424 = rsqrt(dot(_1407, _1407));
                    float _1425 = rsqrt(dot(_1408, _1408));
                    float _1426 = _1424 * _1425;
                    float _1428 = dot(_1407, _1408) * _1426;
                    _1437 = _1428;
                    _1438 = 0.5f * mad(dot(_650, _1407), _1424, dot(_650, _1408) * _1425);
                    _1439 = _1426 / mad(_1424, _1425, mad(_1428, 0.5f, 0.5f));
                }
                else
                {
                    float _1416 = dot(_1407, _1407);
                    _1437 = 1.0f;
                    _1438 = dot(_650, _1407 * rsqrt(_1416));
                    _1439 = 1.0f / (_1416 + 1.0f);
                }
                float _1457 = 0.0f;
                if (_1323 > 0.0f)
                {
                    float _1446 = sqrt(clamp((_1323 * _1323) * _1439, 0.0f, 1.0f));
                    float _1456 = 0.0f;
                    if (_1438 < _1446)
                    {
                        float _1452 = _1446 + max(_1438, -_1446);
                        _1456 = (_1452 * _1452) / (4.0f * _1446);
                    }
                    else
                    {
                        _1456 = _1438;
                    }
                    _1457 = _1456;
                }
                else
                {
                    _1457 = _1438;
                }
                float _1458 = clamp(_1457, 0.0f, 1.0f);
                float3 _1476 = 0.0f.xxx;
                if (_1412)
                {
                    float3 _1463 = reflect(-_428, _650);
                    float3 _1464 = _1408 - _1407;
                    float _1465 = dot(_1463, _1464);
                    _1476 = _1407 + (_1464 * clamp(dot(_1407, (_1463 * _1465) - _1464) / mad(_1327, _1327, -(_1465 * _1465)), 0.0f, 1.0f));
                }
                else
                {
                    _1476 = _1407;
                }
                float _1478 = rsqrt(dot(_1476, _1476));
                float3 _1479 = _1476 * _1478;
                float _1480 = max(_1411, View_View_MinRoughness);
                float _1485 = clamp((_1323 * _1478) * mad(-_1480, _1480, 1.0f), 0.0f, 1.0f);
                float _1487 = clamp(spvUnpackHalf2x16(_1320 >> 16u).x * _1478, 0.0f, 1.0f);
                float3 _1680 = 0.0f.xxx;
                float3 _1681 = 0.0f.xxx;
                [branch]
                if (_1458 > 0.0f)
                {
                    float _1498 = dot(_650, _1479);
                    float _1499 = dot(_650, _428);
                    float _1500 = dot(_428, _1479);
                    float _1502 = rsqrt(mad(2.0f, _1500, 2.0f));
                    bool _1508 = _1485 > 0.0f;
                    float _1587 = 0.0f;
                    float _1588 = 0.0f;
                    if (_1508)
                    {
                        float _1513 = sqrt(mad(-_1485, _1485, 1.0f));
                        float _1514 = 2.0f * _1498;
                        float _1515 = -_1500;
                        float _1516 = mad(_1514, _1499, _1515);
                        float _1585 = 0.0f;
                        float _1586 = 0.0f;
                        if (_1516 >= _1513)
                        {
                            _1585 = 1.0f;
                            _1586 = abs(_1499);
                        }
                        else
                        {
                            float _1521 = -_1516;
                            float _1524 = _1485 * rsqrt(mad(_1521, _1516, 1.0f));
                            float _1525 = mad(_1521, _1498, _1499);
                            float _1529 = mad(_1521, _1500, mad(2.0f * _1499, _1499, -1.0f));
                            float _1540 = _1524 * sqrt(clamp(mad(_1514 * _1499, _1500, mad(_1515, _1500, mad(-_1499, _1499, mad(-_1498, _1498, 1.0f)))), 0.0f, 1.0f));
                            float _1542 = (_1540 * 2.0f) * _1499;
                            float _1543 = mad(_1498, _1513, _1499);
                            float _1544 = mad(_1524, _1525, _1543);
                            float _1546 = mad(_1524, _1529, mad(_1500, _1513, 1.0f));
                            float _1547 = _1540 * _1546;
                            float _1548 = _1544 * _1546;
                            float _1553 = _1548 * mad(-0.5f, _1547, (0.25f * _1542) * _1544);
                            float _1563 = mad(_1544, mad(_1543, _1546 * _1546, _1548 * mad(-0.5f, mad(_1500, _1513, _1546), -0.5f)), mad(_1547, _1547, (_1542 * _1544) * mad(_1542, _1544, _1547 * (-2.0f))));
                            float _1567 = (2.0f * _1553) / mad(_1563, _1563, _1553 * _1553);
                            float _1568 = _1567 * _1563;
                            float _1570 = mad(-_1567, _1553, 1.0f);
                            float _1576 = mad(_1500, _1513, mad(_1570, _1524 * _1529, _1568 * _1542));
                            float _1578 = rsqrt(mad(2.0f, _1576, 2.0f));
                            _1585 = clamp((mad(_1498, _1513, mad(_1570, _1524 * _1525, _1568 * _1540)) + _1499) * _1578, 0.0f, 1.0f);
                            _1586 = clamp(mad(_1578, _1576, _1578), 0.0f, 1.0f);
                        }
                        _1587 = _1585;
                        _1588 = _1586;
                    }
                    else
                    {
                        _1587 = clamp((_1498 + _1499) * _1502, 0.0f, 1.0f);
                        _1588 = clamp(mad(_1502, _1500, _1502), 0.0f, 1.0f);
                    }
                    float _1591 = clamp(abs(_1499) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1594 = 1.0f.xxx * ((_1332 ? _1439 : 1.0f) * _1458);
                    float3 _1678 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1327, _1323), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1678 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1601 = _1411 * _1411;
                        float _1611 = 0.0f;
                        if (_1487 > 0.0f)
                        {
                            _1611 = clamp(mad(_1601, _1601, (_1487 * _1487) / mad(_1588, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1611 = _1601 * _1601;
                        }
                        float _1625 = 0.0f;
                        float _1626 = 0.0f;
                        if (_1508)
                        {
                            float _1623 = _1611 + (((0.25f * _1485) * mad(3.0f, asfloat(532487669 + (asint(_1611) >> 1)), _1485)) / (_1588 + 0.001000000047497451305389404296875f));
                            _1625 = _1611 / _1623;
                            _1626 = _1623;
                        }
                        else
                        {
                            _1625 = 1.0f;
                            _1626 = _1611;
                        }
                        float _1647 = 0.0f;
                        if (_1437 < 1.0f)
                        {
                            float _1633 = sqrt((1.00010001659393310546875f - _1437) / (1.0f + _1437));
                            _1647 = _1625 * sqrt(_1626 / (_1626 + (((0.25f * _1633) * mad(3.0f, asfloat(532487669 + (asint(_1626) >> 1)), _1633)) / (_1588 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1647 = _1625;
                        }
                        float _1650 = mad(mad(_1587, _1611, -_1587), _1587, 1.0f);
                        float _1655 = sqrt(_1611);
                        float _1656 = 1.0f - _1655;
                        float _1662 = 1.0f - _1588;
                        float _1663 = _1662 * _1662;
                        float _1664 = _1663 * _1663;
                        _1678 = _1594 * (((clamp(50.0f * _690.y, 0.0f, 1.0f) * (_1664 * _1662)).xxx + (_690 * mad(-_1664, _1662, 1.0f))) * (((_1611 / ((3.1415927410125732421875f * _1650) * _1650)) * _1647) * (0.5f / mad(_1458, mad(_1591, _1656, _1655), _1591 * mad(_1458, _1656, _1655)))));
                    }
                    _1680 = ((_688 * 0.3183098733425140380859375f) * _1594) * 1.0f;
                    _1681 = _1678;
                }
                else
                {
                    _1680 = 0.0f.xxx;
                    _1681 = 0.0f.xxx;
                }
                float3 _1684 = ((float3(float((_1304 >> 0u) & 1023u), float((_1304 >> 10u) & 1023u), float((_1304 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].x) * _1392) * _1400;
                _1687 = mad(_1680 * (float((_1334 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1684, 0.0f.xxx);
                _1688 = (_1681 * (float(_1334 & 1023u) * 0.000977517105638980865478515625f)) * _1684;
            }
            else
            {
                _1687 = 0.0f.xxx;
                _1688 = 0.0f.xxx;
            }
            _1689 = _1687;
            _1690 = _1688;
        }
        else
        {
            _1689 = 0.0f.xxx;
            _1690 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1298 >> 8u) & 7u) & _959) != 0u)
        {
            _1269 = _1268 + float4(_1689, 0.0f);
            _1272 = _1271 + float4(_1690, 0.0f);
        }
        else
        {
            _1269 = _1268;
            _1272 = _1271;
        }
    }
    bool4 _1708 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1717 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1721 = (_650 * (2.0f * dot(_428, _650))) - _428;
    float _1728 = mad(-1.2000000476837158203125f, log2(max(_651, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1742 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1721, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1717].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1728);
    float _1746 = 1.0f - _1742.w;
    float3 _1773 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1773 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1721, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1728).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1773 = 0.0f.xxx;
    }
    float4 _1779 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _651) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1780 = _1779.x;
    float2 _1789 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1780 * _1780, exp2((-9.27999973297119140625f) * clamp(dot(_650, _428), 0.0f, 1.0f))), _1780, _1779.y)) + _1779.zw;
    bool _1816 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2240 = 0.0f.xxxx;
    if (_1816)
    {
        uint2 _1828 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1830 = normalize(_412 - View_View_TranslatedWorldCameraOrigin);
        uint _1831 = _1828.x;
        uint4 _1835 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1831, _1828.y, 0u), 0u));
        uint _1836 = _1835.x;
        float4 _1838 = 0.0f.xxxx;
        _1838 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1839 = 0.0f.xxxx;
        for (int _1841 = 0; uint(_1841) < _1836; _1838 = _1839, _1841++)
        {
            uint _1852 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1831, _1828.y, uint(1 + _1841)), 0u)).x * 3u;
            float4 _1854 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1852);
            float4 _1856 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1852 + 1u);
            float4 _1858 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1852 + 2u);
            float3 _1859 = _1854.xyz;
            float _1860 = _1854.w;
            float _1861 = 1.0f / _1860;
            uint _1863 = asuint(_1856.x);
            float2 _1869 = float2(spvUnpackHalf2x16(_1863).x, spvUnpackHalf2x16(_1863 >> 16u).x);
            float3 _1870 = float3(_1869.x, _1869.y, _288.z);
            uint _1872 = asuint(_1856.y);
            _1870.z = spvUnpackHalf2x16(_1872).x;
            float3 _1879 = 0.0f.xxx;
            _1879.x = spvUnpackHalf2x16(_1872 >> 16u).x;
            uint _1881 = asuint(_1856.z);
            float2 _1887 = float2(spvUnpackHalf2x16(_1881).x, spvUnpackHalf2x16(_1881 >> 16u).x);
            float3 _1888 = float3(_1879.x, _1887.x, _1887.y);
            float3x3 _1893 = float3x3(_1870 * _1861, _1888 * _1861, cross(_1870, _1888) * _1861);
            uint _1895 = asuint(_1858.x);
            float2 _1898 = spvUnpackHalf2x16((_1895 >> 17u) & 32752u);
            float _1899 = _1898.x;
            float2 _1902 = spvUnpackHalf2x16((_1895 >> 6u) & 32752u);
            float _1903 = _1902.x;
            float2 _1906 = spvUnpackHalf2x16((_1895 << 5u) & 32736u);
            float _1907 = _1906.x;
            uint _1909 = asuint(_1858.y);
            float3 _1927 = 0.0f.xxx;
            if (_1909 > 0u)
            {
                _1927 = float3(spvUnpackHalf2x16((_1909 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1909 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1909 << 5u) & 32736u).x);
            }
            else
            {
                _1927 = 0.0f.xxx;
            }
            uint _1929 = asuint(_1858.z);
            float _1944 = float((_1929 >> 24u) & 255u);
            float _1945 = _1944 * 0.0039215688593685626983642578125f;
            float3 _1952 = mul(View_View_TranslatedWorldCameraOrigin - _1859, _1893);
            float3 _1954 = normalize(mul(_1830, _1893));
            float _1956 = dot(_1954, _1954);
            float _1957 = dot(_1954, _1952);
            float _1958 = 2.0f * _1957;
            float _1963 = mad(_1958, _1958, -((4.0f * _1956) * mad(-1.0f, 1.0f, dot(_1952, _1952))));
            float2 _1975 = 0.0f.xx;
            [flatten]
            if (_1963 >= 0.0f)
            {
                _1975 = ((_1957 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1963))) / (2.0f * _1956).xx;
            }
            else
            {
                _1975 = (-1.0f).xx;
            }
            float3 _1981 = mul(_412 - _1859, _1893) - _1952;
            float2 _1985 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1861, _1975), sqrt(dot(_1981, _1981)).xx);
            float _2135 = 0.0f;
            float3 _2136 = 0.0f.xxx;
            if (any(bool2(_1985.x > 0.0f.xx.x, _1985.y > 0.0f.xx.y)))
            {
                float2 _2006 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1996 = dot(_1830, View_View_ViewForward);
                    _2006 = max(_1985, ((View_View_VolumetricFogMaxDistance * ((_1996 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1996) : 0.0f)) * _1861).xx);
                }
                else
                {
                    _2006 = _1985;
                }
                float _2011 = max(0.0f, abs(_2006.y - _2006.x));
                float _2133 = 0.0f;
                float3 _2134 = 0.0f.xxx;
                if (_2011 > 0.0f)
                {
                    float3 _2016 = _1952 + (_1954 * _2006.x);
                    float _2052 = 0.0f;
                    if (_1899 > 0.0f)
                    {
                        float _2020 = dot(_1954, _2016);
                        float _2021 = dot(_2016, _2016);
                        float _2022 = _2021 - 1.0f;
                        float _2024 = mad(_2020, _2020, 1.0f - _2021);
                        float _2051 = 0.0f;
                        if (_2024 >= 0.0f)
                        {
                            float _2028 = sqrt(_2024);
                            float _2029 = -_2020;
                            float _2032 = max(_2029 - _2028, 0.0f);
                            float _2034 = min(max(_2029 + _2028, 0.0f), _2011);
                            float _2035 = _2032 * _2032;
                            float _2036 = _2034 * _2034;
                            _2051 = max(0.0f, (_1899 * ((-mad(_2036 * _2034, 0.3333333432674407958984375f, mad(_2022, _2034, _2020 * _2036))) - (-mad(_2035 * _2032, 0.3333333432674407958984375f, mad(_2022, _2032, _2020 * _2035))))) * 0.75f);
                        }
                        else
                        {
                            _2051 = 0.0f;
                        }
                        _2052 = _2051;
                    }
                    else
                    {
                        _2052 = 0.0f;
                    }
                    float _2077 = 0.0f;
                    if (_1903 > 0.0f)
                    {
                        float _2058 = _1954.z;
                        float _2064 = (abs(_2058) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2058 >= 0.0f) ? 1.0f : (-1.0f))) : _2058;
                        float _2067 = max(-80.0f, (_2016.z - _1858.w) * _1907);
                        _2077 = (_1903 / (_1907 * _2064)) * (exp(-_2067) - exp(-mad(_2064 * _2011, _1907, _2067)));
                    }
                    else
                    {
                        _2077 = 0.0f;
                    }
                    float _2088 = exp((log(mad(exp(-_2052) - 1.0f, 1.0f - exp(-_2077), 1.0f)) * _1860) * 0.00999999977648258209228515625f);
                    float _2092 = _1944 * (-0.0039215688593685626983642578125f);
                    float _2099 = mad(_1944 * (-0.007843137718737125396728515625f), dot(_1830, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2092, _2092, 1.0f));
                    float3 _2104 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1945, _2092, 1.0f) / ((12.56637096405029296875f * _2099) * sqrt(_2099)));
                    float3 _2130 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2115 = float4(_1830 * _2092, 1.0f);
                        _2130 = _2104 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2115), dot(View_SkyIrradianceEnvironmentMap[1u], _2115), dot(View_SkyIrradianceEnvironmentMap[2u], _2115)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2130 = _2104;
                    }
                    _2133 = _2088;
                    _2134 = mad(_2130, float4(float((_1929 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1929 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1929 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1945).xyz, _1927) * (1.0f - _2088);
                }
                else
                {
                    _2133 = 1.0f;
                    _2134 = 0.0f.xxx;
                }
                _2135 = _2133;
                _2136 = _2134;
            }
            else
            {
                _2135 = 1.0f;
                _2136 = 0.0f.xxx;
            }
            _1839 = float4((_1838.xyz * _2135) + float4(_2136, _2135).xyz, _1838.w * _2135);
        }
        float _2156 = _1838.w * in_var_TEXCOORD7.w;
        float4 _2164 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2164 + _91;
        precise float4 _93 = _92 - _2164;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2164 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2175 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2176 = _2175.w;
        float4 _2239 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2239 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2222 = 0.0f.xxxx;
            float _2223 = 0.0f;
            if (_1816)
            {
                float4 _2218 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2175.xy / _2176.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2176, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2220 = _2218.xyz * View_View_OneOverPreExposure;
                _2222 = float4(_2220.x, _2220.y, _2220.z, _2218.w);
                _2223 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2222 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2223 = 0.0f;
            }
            float4 _2228 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2222, clamp((_662 - _2223) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2231 = _2228.w;
            _2239 = float4(_2228.xyz + (float4(_1838.xyz + (in_var_TEXCOORD7.xyz * _1838.w), _2156).xyz * _2231), _2231 * _2156);
            break;
        } while(false);
        _2240 = _2239;
    }
    else
    {
        _2240 = in_var_TEXCOORD7;
    }
    float3 _2247 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].xyz, Material_Material_PreshaderBuffer[4].y.xxx), 0.0f.xxx);
    float3 _2305 = 0.0f.xxx;
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
        float3 _2267 = abs(_104);
        float3 _2268 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2304 = 0.0f.xxx;
        if (any(bool3(_2267.x > _2268.x, _2267.y > _2268.y, _2267.z > _2268.z)))
        {
            float3 _2300 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2304 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2300.x > 0.5f.xxx.x, _2300.y > 0.5f.xxx.y, _2300.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2290 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2278 = abs(_412 - in_var_TEXCOORD9);
                _2290 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2278.x, max(_2278.y, _2278.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2290 = _2247;
            }
            _2304 = _2290;
        }
        _2305 = _2304;
    }
    else
    {
        _2305 = _2247;
    }
    float3 _2307 = mad((_736 * _876) * _688, max(_885, ((((((_654 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _608) + ((_654 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _608) + ((_654 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _608), lerp(mad((((float4(_1742.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1717].x, _1746).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1773 * _1746)).xyz * ((_690 * _1789.x) + (clamp(50.0f * _690.y, 0.0f, 1.0f) * _1789.y).xxx)) * _876, max(_885, ((((((_690 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _608) + ((_690 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _608) + ((_690 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _608), float4(_1708.x ? 0.0f.xxxx.x : _1268.x, _1708.y ? 0.0f.xxxx.y : _1268.y, _1708.z ? 0.0f.xxxx.z : _1268.z, _1708.w ? 0.0f.xxxx.w : _1268.w).xyz + float4(_1708.x ? 0.0f.xxxx.x : _1271.x, _1708.y ? 0.0f.xxxx.y : _1271.y, _1708.z ? 0.0f.xxxx.z : _1271.z, _1708.w ? 0.0f.xxxx.w : _1271.w).xyz), _688 + (_690 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2305;
    float4 _2315 = float4((_2307 * _2240.w) + _2240.xyz, 0.0f);
    _2315.w = 0.0f;
    float4 _2319 = _2315 * View_View_PreExposure;
    float3 _2324 = min(_2319.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2324.x, _2324.y, _2324.z, _2319.w);
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
