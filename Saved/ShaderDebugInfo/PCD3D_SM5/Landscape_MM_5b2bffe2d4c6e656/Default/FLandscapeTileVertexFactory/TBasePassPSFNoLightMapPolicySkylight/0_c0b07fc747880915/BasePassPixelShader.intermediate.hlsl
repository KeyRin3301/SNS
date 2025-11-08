#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
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
    float4 Material_Material_PreshaderBuffer[7] : packoffset(c0);
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
    float _326 = 1.0f / gl_FragCoord.w;
    float4 _374 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _378 = mad(float2(_374.zw), 2.0f.xx, (-1.0f).xx);
    float _382 = sqrt(max(1.0f - dot(_378, _378), 0.0f));
    float _383 = _378.x;
    float3 _385 = float3(_383, _378.y, _382);
    float3 _388 = normalize(float3(_382, 0.0f, -_383));
    float2 _403 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _410 = float4(mad(_403, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _294, 1.0f) * _326;
    float4 _415 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _419 = _415.xyz / _415.w.xxx;
    float3 _420 = _419 - View_View_RelativePreViewTranslationTO;
    precise float3 _93 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _420);
    precise float3 _96 = _420 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _93);
    bool _422 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _423 = -View_View_ViewForward;
    float3 _425 = normalize(-_419);
    float3 _435 = float3(_422 ? _423.x : _425.x, _422 ? _423.y : _425.y, _422 ? _423.z : _425.z);
    float4 _439 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _442 = dot(_439, Material_Material_PreshaderBuffer[0]);
    float _445 = dot(_439, Material_Material_PreshaderBuffer[1]);
    float _448 = dot(_439, Material_Material_PreshaderBuffer[2]);
    float _451 = dot(_439, Material_Material_PreshaderBuffer[3]);
    float2 _454 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _466 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _454 * Material_Material_PreshaderBuffer[4].x.xx).x * Material_Material_PreshaderBuffer[4].y;
    float4 _478 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_466) + Material_Material_PreshaderBuffer[4].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _482 = Material_Material_PreshaderBuffer[4].w.xx;
    float2 _483 = mad(_478.xy, _482, _454);
    float2 _485 = mad(_478.zw, _482, _454);
    float2 _487 = ddy(_454);
    float2 _488 = ddx(_454);
    float2 _500 = lerp(_483, _485, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _485, _488, _487) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _483, _488, _487)).x, frac(_466))), 0.0f, 1.0f).xx);
    float2 _506 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _500, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _515 = _442.xxx;
    float2 _521 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _500, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _530 = _445.xxx;
    float2 _536 = _500 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _542 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _536, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _551 = _448.xxx;
    float2 _558 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _500, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _567 = _451.xxx;
    float3 _575 = normalize(mul(normalize((mad(float4(_558, sqrt(clamp(1.0f - dot(_558, _558), 0.0f, 1.0f)), 1.0f).xyz, _567, mad(float4(_542, sqrt(clamp(1.0f - dot(_542, _542), 0.0f, 1.0f)), 1.0f).xyz, _551, mad(float4(_506, sqrt(clamp(1.0f - dot(_506, _506), 0.0f, 1.0f)), 1.0f).xyz, _515, float4(_521, sqrt(clamp(1.0f - dot(_521, _521), 0.0f, 1.0f)), 1.0f).xyz * _530))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_388, cross(_385, _388), _385), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _576 = _575 * 1.0f;
    float4 _611 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _616 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _623 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _536, View_View_MaterialTextureMipBias);
    float4 _629 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _500, View_View_MaterialTextureMipBias);
    float3 _643 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _500, View_View_MaterialTextureMipBias).xyz, _567, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _536, View_View_MaterialTextureMipBias).xyz, _551, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _500, View_View_MaterialTextureMipBias).xyz, _515, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _500, View_View_MaterialTextureMipBias).xyz * _530))), 0.0f.xxx, 1.0f.xxx);
    float _647 = mad(clamp(mad(_629.y * Material_Material_PreshaderBuffer[6].w, _451, mad(_623.y, _448, mad(_611.y, _442, _616.y * _445))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _648 = clamp(mad(_629.x, _451, mad(_623.x, _448, mad(_611.x, _442, _616.x * _445))), 0.0f, 1.0f);
    float3 _690 = 0.0f.xxx;
    float _691 = 0.0f;
    float _692 = 0.0f;
    float _693 = 0.0f;
    float3 _694 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _662 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _666 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _662, 0.0f);
        float4 _669 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _662, 0.0f);
        float4 _672 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _662, 0.0f);
        float _682 = _672.w;
        _690 = normalize((_576 * _669.w) + ((_669.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _691 = mad(_647, _682, _672.z);
        _692 = mad(0.5f, _682, _672.y);
        _693 = _672.x;
        _694 = (_643 * _666.w) + _666.xyz;
    }
    else
    {
        _690 = _576;
        _691 = _647;
        _692 = 0.5f;
        _693 = 0.0f;
        _694 = _643;
    }
    float _702 = _410.w;
    float3 _715 = ((_694 - (_694 * _693)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _722 = (lerp((0.07999999821186065673828125f * _692).xxx, _694, _693.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _723 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _728 = 0.0f.xxx;
    if (_723)
    {
        _728 = _715 + (_722 * 0.449999988079071044921875f);
    }
    else
    {
        _728 = _715;
    }
    bool3 _729 = _723.xxx;
    float3 _730 = float3(_729.x ? 0.0f.xxx.x : _722.x, _729.y ? 0.0f.xxx.y : _722.y, _729.z ? 0.0f.xxx.z : _722.z);
    float3 _776 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _739 = float4(_690, 1.0f);
        float4 _752 = _739.xyzz * _739.yzzx;
        _776 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _739), dot(View_SkyIrradianceEnvironmentMap[1u], _739), dot(View_SkyIrradianceEnvironmentMap[2u], _739)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _752), dot(View_SkyIrradianceEnvironmentMap[4u], _752), dot(View_SkyIrradianceEnvironmentMap[5u], _752))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_690.x, _690.x, -(_690.y * _690.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _776 = 0.0f.xxx;
    }
    float2 _782 = mad(_410.xy / _702.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _892 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _793 = int2(trunc(_782 * View_View_BufferSizeAndInvSize.xy));
        int _794 = _793.x;
        int _795 = _793.y;
        float4 _799 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794, _795, 0).xy, 0));
        float _800 = _799.x;
        float _810 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _891 = 0.0f.xx;
        if ((abs((mad(_800, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_800, View_View_InvDeviceZToWorldZTransform.z, _810))) - _702) / _702) > 0.00999999977648258209228515625f)
        {
            float2 _823 = _782 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _827 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794 - 1, _795, 0).xy, 0));
            float _828 = _827.x;
            float _834 = abs((mad(_828, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_828, View_View_InvDeviceZToWorldZTransform.z, _810))) - _702);
            bool _835 = _834 < 100000000.0f;
            bool2 _836 = _835.xx;
            float2 _837 = float2(_836.x ? _823.x : _782.x, _836.y ? _823.y : _782.y);
            float _838 = _835 ? _834 : 100000000.0f;
            float2 _841 = _782 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _845 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794, _795 + 1, 0).xy, 0));
            float _846 = _845.x;
            float _852 = abs((mad(_846, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_846, View_View_InvDeviceZToWorldZTransform.z, _810))) - _702);
            bool _853 = _852 < _838;
            bool2 _854 = _853.xx;
            float2 _855 = float2(_854.x ? _841.x : _837.x, _854.y ? _841.y : _837.y);
            float _856 = _853 ? _852 : _838;
            float2 _858 = _782 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _862 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794 + 1, _795, 0).xy, 0));
            float _863 = _862.x;
            float _869 = abs((mad(_863, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_863, View_View_InvDeviceZToWorldZTransform.z, _810))) - _702);
            bool _870 = _869 < _856;
            bool2 _871 = _870.xx;
            float2 _872 = float2(_871.x ? _858.x : _855.x, _871.y ? _858.y : _855.y);
            float2 _876 = _782 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _880 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_794, _795 - 1, 0).xy, 0));
            float _881 = _880.x;
            bool2 _889 = (abs((mad(_881, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_881, View_View_InvDeviceZToWorldZTransform.z, _810))) - _702) < (_870 ? _869 : _856)).xx;
            _891 = float2(_889.x ? _876.x : _872.x, _889.y ? _876.y : _872.y);
        }
        else
        {
            _891 = _782;
        }
        _892 = _891;
    }
    else
    {
        _892 = _782;
    }
    uint _898_dummy_parameter;
    uint2 _898 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _898_dummy_parameter);
    float _916 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_892 * float2(float(_898.x), float(_898.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _925 = _648.xxx;
    uint2 _957 = uint2(_403 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _985 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _985 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_892 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _985 = 1.0f.xxxx;
    }
    float4 _986 = _985 * _985;
    uint _999 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1291 = 0.0f.xxxx;
    float4 _1292 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1025 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1040 = dot(float4(float(_1025 & 1u), float((_1025 & 2u) >> 1u), float((_1025 & 4u) >> 2u), float((_1025 & 8u) >> 3u)), _986);
        bool _1042 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1043 = _1042 ? 1.0f : _1040;
        float _1056 = 0.0f;
        float _1057 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1050 = clamp(mad(_702, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1052 = lerp(_1042 ? _1040 : 1.0f, 1.0f, _1050 * _1050);
            _1056 = min(_1052, _1043) * _1043;
            _1057 = _1052 * _1043;
        }
        else
        {
            _1056 = 1.0f;
            _1057 = 1.0f;
        }
        float3 _1273 = 0.0f.xxx;
        float3 _1274 = 0.0f.xxx;
        [branch]
        if ((_1057 + _1056) > 0.0f)
        {
            float _1064 = max(_691, View_View_MinRoughness);
            float _1065 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1068 = rsqrt(_1065);
            float3 _1069 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1068;
            float _1070 = dot(_690, _1069);
            float _1088 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1077 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1065 + 1.0f)), 0.0f, 1.0f));
                float _1087 = 0.0f;
                if (_1070 < _1077)
                {
                    float _1083 = _1077 + max(_1070, -_1077);
                    _1087 = (_1083 * _1083) / (4.0f * _1077);
                }
                else
                {
                    _1087 = _1070;
                }
                _1088 = _1087;
            }
            else
            {
                _1088 = _1070;
            }
            float _1089 = clamp(_1088, 0.0f, 1.0f);
            float _1090 = max(_1064, View_View_MinRoughness);
            float _1095 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1068) * mad(-_1090, _1090, 1.0f), 0.0f, 1.0f);
            float _1097 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1068, 0.0f, 1.0f);
            float3 _1266 = 0.0f.xxx;
            float3 _1267 = 0.0f.xxx;
            [branch]
            if (_1089 > 0.0f)
            {
                float _1108 = dot(_690, _435);
                float _1109 = dot(_435, _1069);
                float _1111 = rsqrt(mad(2.0f, _1109, 2.0f));
                bool _1117 = _1095 > 0.0f;
                float _1196 = 0.0f;
                float _1197 = 0.0f;
                if (_1117)
                {
                    float _1122 = sqrt(mad(-_1095, _1095, 1.0f));
                    float _1123 = 2.0f * _1070;
                    float _1124 = -_1109;
                    float _1125 = mad(_1123, _1108, _1124);
                    float _1194 = 0.0f;
                    float _1195 = 0.0f;
                    if (_1125 >= _1122)
                    {
                        _1194 = 1.0f;
                        _1195 = abs(_1108);
                    }
                    else
                    {
                        float _1130 = -_1125;
                        float _1133 = _1095 * rsqrt(mad(_1130, _1125, 1.0f));
                        float _1134 = mad(_1130, _1070, _1108);
                        float _1138 = mad(_1130, _1109, mad(2.0f * _1108, _1108, -1.0f));
                        float _1149 = _1133 * sqrt(clamp(mad(_1123 * _1108, _1109, mad(_1124, _1109, mad(-_1108, _1108, mad(-_1070, _1070, 1.0f)))), 0.0f, 1.0f));
                        float _1151 = (_1149 * 2.0f) * _1108;
                        float _1152 = mad(_1070, _1122, _1108);
                        float _1153 = mad(_1133, _1134, _1152);
                        float _1155 = mad(_1133, _1138, mad(_1109, _1122, 1.0f));
                        float _1156 = _1149 * _1155;
                        float _1157 = _1153 * _1155;
                        float _1162 = _1157 * mad(-0.5f, _1156, (0.25f * _1151) * _1153);
                        float _1172 = mad(_1153, mad(_1152, _1155 * _1155, _1157 * mad(-0.5f, mad(_1109, _1122, _1155), -0.5f)), mad(_1156, _1156, (_1151 * _1153) * mad(_1151, _1153, _1156 * (-2.0f))));
                        float _1176 = (2.0f * _1162) / mad(_1172, _1172, _1162 * _1162);
                        float _1177 = _1176 * _1172;
                        float _1179 = mad(-_1176, _1162, 1.0f);
                        float _1185 = mad(_1109, _1122, mad(_1179, _1133 * _1138, _1177 * _1151));
                        float _1187 = rsqrt(mad(2.0f, _1185, 2.0f));
                        _1194 = clamp((mad(_1070, _1122, mad(_1179, _1133 * _1134, _1177 * _1149)) + _1108) * _1187, 0.0f, 1.0f);
                        _1195 = clamp(mad(_1187, _1185, _1187), 0.0f, 1.0f);
                    }
                    _1196 = _1194;
                    _1197 = _1195;
                }
                else
                {
                    _1196 = clamp((_1070 + _1108) * _1111, 0.0f, 1.0f);
                    _1197 = clamp(mad(_1111, _1109, _1111), 0.0f, 1.0f);
                }
                float _1200 = clamp(abs(_1108) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1202 = 1.0f.xxx * _1089;
                float3 _1264 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1264 = 0.0f.xxx;
                }
                else
                {
                    float _1209 = _1064 * _1064;
                    float _1219 = 0.0f;
                    if (_1097 > 0.0f)
                    {
                        _1219 = clamp(mad(_1209, _1209, (_1097 * _1097) / mad(_1197, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1219 = _1209 * _1209;
                    }
                    float _1233 = 0.0f;
                    if (_1117)
                    {
                        _1233 = _1219 / (_1219 + (((0.25f * _1095) * mad(3.0f, asfloat(532487669 + (asint(_1219) >> 1)), _1095)) / (_1197 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1233 = 1.0f;
                    }
                    float _1236 = mad(mad(_1196, _1219, -_1196), _1196, 1.0f);
                    float _1241 = sqrt(_1219);
                    float _1242 = 1.0f - _1241;
                    float _1248 = 1.0f - _1197;
                    float _1249 = _1248 * _1248;
                    float _1250 = _1249 * _1249;
                    _1264 = _1202 * (((clamp(50.0f * _730.y, 0.0f, 1.0f) * (_1250 * _1248)).xxx + (_730 * mad(-_1250, _1248, 1.0f))) * (((_1219 / ((3.1415927410125732421875f * _1236) * _1236)) * _1233) * (0.5f / mad(_1089, mad(_1200, _1242, _1241), _1200 * mad(_1089, _1242, _1241)))));
                }
                _1266 = ((_728 * 0.3183098733425140380859375f) * _1202) * 1.0f;
                _1267 = _1264;
            }
            else
            {
                _1266 = 0.0f.xxx;
                _1267 = 0.0f.xxx;
            }
            float3 _1270 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1057;
            _1273 = mad(_1266 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1270, 0.0f.xxx);
            _1274 = (_1267 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1270;
        }
        else
        {
            _1273 = 0.0f.xxx;
            _1274 = 0.0f.xxx;
        }
        float4 _1278 = float4(_1273, 0.0f);
        float4 _1282 = float4(_1274, 0.0f);
        float4 _1289 = 0.0f.xxxx;
        float4 _1290 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _999) != 0u)
        {
            _1289 = float4(_1278.x, _1278.y, _1278.z, _1278.w);
            _1290 = float4(_1282.x, _1282.y, _1282.z, _1282.w);
        }
        else
        {
            _1289 = 0.0f.xxxx;
            _1290 = 0.0f.xxxx;
        }
        _1291 = _1289;
        _1292 = _1290;
    }
    else
    {
        _1291 = 0.0f.xxxx;
        _1292 = 0.0f.xxxx;
    }
    uint _1293 = ((((min(uint(max(0.0f, log2(mad(_326, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _957.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _957.x) * 2u;
    uint _1303 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1293 + 1u] & 1073741823u;
    uint _1306 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1293] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1308 = 0.0f.xxxx;
    float4 _1311 = 0.0f.xxxx;
    _1308 = _1291;
    _1311 = _1292;
    float4 _1309 = 0.0f.xxxx;
    float4 _1312 = 0.0f.xxxx;
    [loop]
    for (uint _1313 = 0u; _1313 < _1306; _1308 = _1309, _1311 = _1312, _1313++)
    {
        uint _1322 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1303 + _1313).x * 6u;
        uint _1325 = _1322 + 1u;
        uint _1328 = _1322 + 2u;
        uint _1331 = _1322 + 3u;
        uint _1334 = _1322 + 4u;
        uint _1338 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1328].w);
        uint _1344 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1325].y);
        uint _1360 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1331].z);
        float2 _1362 = spvUnpackHalf2x16(_1360 & 65535u);
        float _1363 = _1362.x;
        float2 _1366 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1331].w));
        float _1367 = _1366.x;
        bool _1372 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1325].w == 0.0f;
        uint _1374 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1334].w);
        uint _1387 = _1338 >> 4u;
        float3 _1403 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].xyz - _419;
        float _1404 = dot(_1403, _1403);
        float _1421 = 0.0f;
        if (_1372)
        {
            float _1416 = _1404 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].w);
            float _1419 = clamp(mad(-_1416, _1416, 1.0f), 0.0f, 1.0f);
            _1421 = _1419 * _1419;
        }
        else
        {
            float3 _1410 = _1403 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].w;
            _1421 = pow(1.0f - clamp(dot(_1410, _1410), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1325].w);
        }
        float _1432 = 0.0f;
        if (((_1338 >> 16u) & 3u) == 2u)
        {
            float _1429 = clamp((dot(_1403 * rsqrt(_1404), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1328].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1331].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1331].y, 0.0f, 1.0f);
            _1432 = _1421 * (_1429 * _1429);
        }
        else
        {
            _1432 = _1421;
        }
        float3 _1729 = 0.0f.xxx;
        float3 _1730 = 0.0f.xxx;
        [branch]
        if (_1432 > 0.0f)
        {
            float _1440 = 0.0f;
            [branch]
            if (uint(int((_1338 & 255u) != 0u)) != 0u)
            {
                _1440 = dot(float4(float(_1387 & 1u), float((_1387 & 2u) >> 1u), float((_1387 & 4u) >> 2u), float((_1387 & 8u) >> 3u)), _986);
            }
            else
            {
                _1440 = 1.0f;
            }
            float3 _1727 = 0.0f.xxx;
            float3 _1728 = 0.0f.xxx;
            [branch]
            if ((_1440 + _1440) > 0.0f)
            {
                float3 _1446 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1334].xyz * (0.5f * _1367);
                float3 _1447 = _1403 - _1446;
                float3 _1448 = _1403 + _1446;
                float _1451 = max(_691, View_View_MinRoughness);
                bool _1452 = _1367 > 0.0f;
                float _1477 = 0.0f;
                float _1478 = 0.0f;
                float _1479 = 0.0f;
                [branch]
                if (_1452)
                {
                    float _1464 = rsqrt(dot(_1447, _1447));
                    float _1465 = rsqrt(dot(_1448, _1448));
                    float _1466 = _1464 * _1465;
                    float _1468 = dot(_1447, _1448) * _1466;
                    _1477 = _1468;
                    _1478 = 0.5f * mad(dot(_690, _1447), _1464, dot(_690, _1448) * _1465);
                    _1479 = _1466 / mad(_1464, _1465, mad(_1468, 0.5f, 0.5f));
                }
                else
                {
                    float _1456 = dot(_1447, _1447);
                    _1477 = 1.0f;
                    _1478 = dot(_690, _1447 * rsqrt(_1456));
                    _1479 = 1.0f / (_1456 + 1.0f);
                }
                float _1497 = 0.0f;
                if (_1363 > 0.0f)
                {
                    float _1486 = sqrt(clamp((_1363 * _1363) * _1479, 0.0f, 1.0f));
                    float _1496 = 0.0f;
                    if (_1478 < _1486)
                    {
                        float _1492 = _1486 + max(_1478, -_1486);
                        _1496 = (_1492 * _1492) / (4.0f * _1486);
                    }
                    else
                    {
                        _1496 = _1478;
                    }
                    _1497 = _1496;
                }
                else
                {
                    _1497 = _1478;
                }
                float _1498 = clamp(_1497, 0.0f, 1.0f);
                float3 _1516 = 0.0f.xxx;
                if (_1452)
                {
                    float3 _1503 = reflect(-_435, _690);
                    float3 _1504 = _1448 - _1447;
                    float _1505 = dot(_1503, _1504);
                    _1516 = _1447 + (_1504 * clamp(dot(_1447, (_1503 * _1505) - _1504) / mad(_1367, _1367, -(_1505 * _1505)), 0.0f, 1.0f));
                }
                else
                {
                    _1516 = _1447;
                }
                float _1518 = rsqrt(dot(_1516, _1516));
                float3 _1519 = _1516 * _1518;
                float _1520 = max(_1451, View_View_MinRoughness);
                float _1525 = clamp((_1363 * _1518) * mad(-_1520, _1520, 1.0f), 0.0f, 1.0f);
                float _1527 = clamp(spvUnpackHalf2x16(_1360 >> 16u).x * _1518, 0.0f, 1.0f);
                float3 _1720 = 0.0f.xxx;
                float3 _1721 = 0.0f.xxx;
                [branch]
                if (_1498 > 0.0f)
                {
                    float _1538 = dot(_690, _1519);
                    float _1539 = dot(_690, _435);
                    float _1540 = dot(_435, _1519);
                    float _1542 = rsqrt(mad(2.0f, _1540, 2.0f));
                    bool _1548 = _1525 > 0.0f;
                    float _1627 = 0.0f;
                    float _1628 = 0.0f;
                    if (_1548)
                    {
                        float _1553 = sqrt(mad(-_1525, _1525, 1.0f));
                        float _1554 = 2.0f * _1538;
                        float _1555 = -_1540;
                        float _1556 = mad(_1554, _1539, _1555);
                        float _1625 = 0.0f;
                        float _1626 = 0.0f;
                        if (_1556 >= _1553)
                        {
                            _1625 = 1.0f;
                            _1626 = abs(_1539);
                        }
                        else
                        {
                            float _1561 = -_1556;
                            float _1564 = _1525 * rsqrt(mad(_1561, _1556, 1.0f));
                            float _1565 = mad(_1561, _1538, _1539);
                            float _1569 = mad(_1561, _1540, mad(2.0f * _1539, _1539, -1.0f));
                            float _1580 = _1564 * sqrt(clamp(mad(_1554 * _1539, _1540, mad(_1555, _1540, mad(-_1539, _1539, mad(-_1538, _1538, 1.0f)))), 0.0f, 1.0f));
                            float _1582 = (_1580 * 2.0f) * _1539;
                            float _1583 = mad(_1538, _1553, _1539);
                            float _1584 = mad(_1564, _1565, _1583);
                            float _1586 = mad(_1564, _1569, mad(_1540, _1553, 1.0f));
                            float _1587 = _1580 * _1586;
                            float _1588 = _1584 * _1586;
                            float _1593 = _1588 * mad(-0.5f, _1587, (0.25f * _1582) * _1584);
                            float _1603 = mad(_1584, mad(_1583, _1586 * _1586, _1588 * mad(-0.5f, mad(_1540, _1553, _1586), -0.5f)), mad(_1587, _1587, (_1582 * _1584) * mad(_1582, _1584, _1587 * (-2.0f))));
                            float _1607 = (2.0f * _1593) / mad(_1603, _1603, _1593 * _1593);
                            float _1608 = _1607 * _1603;
                            float _1610 = mad(-_1607, _1593, 1.0f);
                            float _1616 = mad(_1540, _1553, mad(_1610, _1564 * _1569, _1608 * _1582));
                            float _1618 = rsqrt(mad(2.0f, _1616, 2.0f));
                            _1625 = clamp((mad(_1538, _1553, mad(_1610, _1564 * _1565, _1608 * _1580)) + _1539) * _1618, 0.0f, 1.0f);
                            _1626 = clamp(mad(_1618, _1616, _1618), 0.0f, 1.0f);
                        }
                        _1627 = _1625;
                        _1628 = _1626;
                    }
                    else
                    {
                        _1627 = clamp((_1538 + _1539) * _1542, 0.0f, 1.0f);
                        _1628 = clamp(mad(_1542, _1540, _1542), 0.0f, 1.0f);
                    }
                    float _1631 = clamp(abs(_1539) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1634 = 1.0f.xxx * ((_1372 ? _1479 : 1.0f) * _1498);
                    float3 _1718 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1367, _1363), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1718 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1641 = _1451 * _1451;
                        float _1651 = 0.0f;
                        if (_1527 > 0.0f)
                        {
                            _1651 = clamp(mad(_1641, _1641, (_1527 * _1527) / mad(_1628, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1651 = _1641 * _1641;
                        }
                        float _1665 = 0.0f;
                        float _1666 = 0.0f;
                        if (_1548)
                        {
                            float _1663 = _1651 + (((0.25f * _1525) * mad(3.0f, asfloat(532487669 + (asint(_1651) >> 1)), _1525)) / (_1628 + 0.001000000047497451305389404296875f));
                            _1665 = _1651 / _1663;
                            _1666 = _1663;
                        }
                        else
                        {
                            _1665 = 1.0f;
                            _1666 = _1651;
                        }
                        float _1687 = 0.0f;
                        if (_1477 < 1.0f)
                        {
                            float _1673 = sqrt((1.00010001659393310546875f - _1477) / (1.0f + _1477));
                            _1687 = _1665 * sqrt(_1666 / (_1666 + (((0.25f * _1673) * mad(3.0f, asfloat(532487669 + (asint(_1666) >> 1)), _1673)) / (_1628 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1687 = _1665;
                        }
                        float _1690 = mad(mad(_1627, _1651, -_1627), _1627, 1.0f);
                        float _1695 = sqrt(_1651);
                        float _1696 = 1.0f - _1695;
                        float _1702 = 1.0f - _1628;
                        float _1703 = _1702 * _1702;
                        float _1704 = _1703 * _1703;
                        _1718 = _1634 * (((clamp(50.0f * _730.y, 0.0f, 1.0f) * (_1704 * _1702)).xxx + (_730 * mad(-_1704, _1702, 1.0f))) * (((_1651 / ((3.1415927410125732421875f * _1690) * _1690)) * _1687) * (0.5f / mad(_1498, mad(_1631, _1696, _1695), _1631 * mad(_1498, _1696, _1695)))));
                    }
                    _1720 = ((_728 * 0.3183098733425140380859375f) * _1634) * 1.0f;
                    _1721 = _1718;
                }
                else
                {
                    _1720 = 0.0f.xxx;
                    _1721 = 0.0f.xxx;
                }
                float3 _1724 = ((float3(float((_1344 >> 0u) & 1023u), float((_1344 >> 10u) & 1023u), float((_1344 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1325].x) * _1432) * _1440;
                _1727 = mad(_1720 * (float((_1374 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1724, 0.0f.xxx);
                _1728 = (_1721 * (float(_1374 & 1023u) * 0.000977517105638980865478515625f)) * _1724;
            }
            else
            {
                _1727 = 0.0f.xxx;
                _1728 = 0.0f.xxx;
            }
            _1729 = _1727;
            _1730 = _1728;
        }
        else
        {
            _1729 = 0.0f.xxx;
            _1730 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1338 >> 8u) & 7u) & _999) != 0u)
        {
            _1309 = _1308 + float4(_1729, 0.0f);
            _1312 = _1311 + float4(_1730, 0.0f);
        }
        else
        {
            _1309 = _1308;
            _1312 = _1311;
        }
    }
    bool4 _1748 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1757 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1761 = (_690 * (2.0f * dot(_435, _690))) - _435;
    float _1768 = mad(-1.2000000476837158203125f, log2(max(_691, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1782 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1761, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1757].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1768);
    float _1786 = 1.0f - _1782.w;
    float3 _1813 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1813 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1761, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1768).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1813 = 0.0f.xxx;
    }
    float4 _1819 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _691) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1820 = _1819.x;
    float2 _1829 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1820 * _1820, exp2((-9.27999973297119140625f) * clamp(dot(_690, _435), 0.0f, 1.0f))), _1820, _1819.y)) + _1819.zw;
    bool _1856 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2280 = 0.0f.xxxx;
    if (_1856)
    {
        uint2 _1868 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1870 = normalize(_419 - View_View_TranslatedWorldCameraOrigin);
        uint _1871 = _1868.x;
        uint4 _1875 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1871, _1868.y, 0u), 0u));
        uint _1876 = _1875.x;
        float4 _1878 = 0.0f.xxxx;
        _1878 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1879 = 0.0f.xxxx;
        for (int _1881 = 0; uint(_1881) < _1876; _1878 = _1879, _1881++)
        {
            uint _1892 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1871, _1868.y, uint(1 + _1881)), 0u)).x * 3u;
            float4 _1894 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1892);
            float4 _1896 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1892 + 1u);
            float4 _1898 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1892 + 2u);
            float3 _1899 = _1894.xyz;
            float _1900 = _1894.w;
            float _1901 = 1.0f / _1900;
            uint _1903 = asuint(_1896.x);
            float2 _1909 = float2(spvUnpackHalf2x16(_1903).x, spvUnpackHalf2x16(_1903 >> 16u).x);
            float3 _1910 = float3(_1909.x, _1909.y, _295.z);
            uint _1912 = asuint(_1896.y);
            _1910.z = spvUnpackHalf2x16(_1912).x;
            float3 _1919 = 0.0f.xxx;
            _1919.x = spvUnpackHalf2x16(_1912 >> 16u).x;
            uint _1921 = asuint(_1896.z);
            float2 _1927 = float2(spvUnpackHalf2x16(_1921).x, spvUnpackHalf2x16(_1921 >> 16u).x);
            float3 _1928 = float3(_1919.x, _1927.x, _1927.y);
            float3x3 _1933 = float3x3(_1910 * _1901, _1928 * _1901, cross(_1910, _1928) * _1901);
            uint _1935 = asuint(_1898.x);
            float2 _1938 = spvUnpackHalf2x16((_1935 >> 17u) & 32752u);
            float _1939 = _1938.x;
            float2 _1942 = spvUnpackHalf2x16((_1935 >> 6u) & 32752u);
            float _1943 = _1942.x;
            float2 _1946 = spvUnpackHalf2x16((_1935 << 5u) & 32736u);
            float _1947 = _1946.x;
            uint _1949 = asuint(_1898.y);
            float3 _1967 = 0.0f.xxx;
            if (_1949 > 0u)
            {
                _1967 = float3(spvUnpackHalf2x16((_1949 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1949 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1949 << 5u) & 32736u).x);
            }
            else
            {
                _1967 = 0.0f.xxx;
            }
            uint _1969 = asuint(_1898.z);
            float _1984 = float((_1969 >> 24u) & 255u);
            float _1985 = _1984 * 0.0039215688593685626983642578125f;
            float3 _1992 = mul(View_View_TranslatedWorldCameraOrigin - _1899, _1933);
            float3 _1994 = normalize(mul(_1870, _1933));
            float _1996 = dot(_1994, _1994);
            float _1997 = dot(_1994, _1992);
            float _1998 = 2.0f * _1997;
            float _2003 = mad(_1998, _1998, -((4.0f * _1996) * mad(-1.0f, 1.0f, dot(_1992, _1992))));
            float2 _2015 = 0.0f.xx;
            [flatten]
            if (_2003 >= 0.0f)
            {
                _2015 = ((_1997 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2003))) / (2.0f * _1996).xx;
            }
            else
            {
                _2015 = (-1.0f).xx;
            }
            float3 _2021 = mul(_419 - _1899, _1933) - _1992;
            float2 _2025 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1901, _2015), sqrt(dot(_2021, _2021)).xx);
            float _2175 = 0.0f;
            float3 _2176 = 0.0f.xxx;
            if (any(bool2(_2025.x > 0.0f.xx.x, _2025.y > 0.0f.xx.y)))
            {
                float2 _2046 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2036 = dot(_1870, View_View_ViewForward);
                    _2046 = max(_2025, ((View_View_VolumetricFogMaxDistance * ((_2036 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2036) : 0.0f)) * _1901).xx);
                }
                else
                {
                    _2046 = _2025;
                }
                float _2051 = max(0.0f, abs(_2046.y - _2046.x));
                float _2173 = 0.0f;
                float3 _2174 = 0.0f.xxx;
                if (_2051 > 0.0f)
                {
                    float3 _2056 = _1992 + (_1994 * _2046.x);
                    float _2092 = 0.0f;
                    if (_1939 > 0.0f)
                    {
                        float _2060 = dot(_1994, _2056);
                        float _2061 = dot(_2056, _2056);
                        float _2062 = _2061 - 1.0f;
                        float _2064 = mad(_2060, _2060, 1.0f - _2061);
                        float _2091 = 0.0f;
                        if (_2064 >= 0.0f)
                        {
                            float _2068 = sqrt(_2064);
                            float _2069 = -_2060;
                            float _2072 = max(_2069 - _2068, 0.0f);
                            float _2074 = min(max(_2069 + _2068, 0.0f), _2051);
                            float _2075 = _2072 * _2072;
                            float _2076 = _2074 * _2074;
                            _2091 = max(0.0f, (_1939 * ((-mad(_2076 * _2074, 0.3333333432674407958984375f, mad(_2062, _2074, _2060 * _2076))) - (-mad(_2075 * _2072, 0.3333333432674407958984375f, mad(_2062, _2072, _2060 * _2075))))) * 0.75f);
                        }
                        else
                        {
                            _2091 = 0.0f;
                        }
                        _2092 = _2091;
                    }
                    else
                    {
                        _2092 = 0.0f;
                    }
                    float _2117 = 0.0f;
                    if (_1943 > 0.0f)
                    {
                        float _2098 = _1994.z;
                        float _2104 = (abs(_2098) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2098 >= 0.0f) ? 1.0f : (-1.0f))) : _2098;
                        float _2107 = max(-80.0f, (_2056.z - _1898.w) * _1947);
                        _2117 = (_1943 / (_1947 * _2104)) * (exp(-_2107) - exp(-mad(_2104 * _2051, _1947, _2107)));
                    }
                    else
                    {
                        _2117 = 0.0f;
                    }
                    float _2128 = exp((log(mad(exp(-_2092) - 1.0f, 1.0f - exp(-_2117), 1.0f)) * _1900) * 0.00999999977648258209228515625f);
                    float _2132 = _1984 * (-0.0039215688593685626983642578125f);
                    float _2139 = mad(_1984 * (-0.007843137718737125396728515625f), dot(_1870, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2132, _2132, 1.0f));
                    float3 _2144 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1985, _2132, 1.0f) / ((12.56637096405029296875f * _2139) * sqrt(_2139)));
                    float3 _2170 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2155 = float4(_1870 * _2132, 1.0f);
                        _2170 = _2144 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2155), dot(View_SkyIrradianceEnvironmentMap[1u], _2155), dot(View_SkyIrradianceEnvironmentMap[2u], _2155)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2170 = _2144;
                    }
                    _2173 = _2128;
                    _2174 = mad(_2170, float4(float((_1969 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1969 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1969 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1985).xyz, _1967) * (1.0f - _2128);
                }
                else
                {
                    _2173 = 1.0f;
                    _2174 = 0.0f.xxx;
                }
                _2175 = _2173;
                _2176 = _2174;
            }
            else
            {
                _2175 = 1.0f;
                _2176 = 0.0f.xxx;
            }
            _1879 = float4((_1878.xyz * _2175) + float4(_2176, _2175).xyz, _1878.w * _2175);
        }
        float _2196 = _1878.w * in_var_TEXCOORD7.w;
        float4 _2204 = float4(_93, 1.0f);
        precise float4 _97 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _98 = _2204 + _97;
        precise float4 _99 = _98 - _2204;
        precise float4 _100 = _98 - _99;
        precise float4 _101 = _2204 - _100;
        precise float4 _102 = _97 - _99;
        precise float4 _103 = _101 + _102;
        float4 _2215 = mul(_98 + (float4(_96, 0.0f) + _103), View_View_RelativeWorldToClip);
        float _2216 = _2215.w;
        float4 _2279 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2279 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2262 = 0.0f.xxxx;
            float _2263 = 0.0f;
            if (_1856)
            {
                float4 _2258 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2215.xy / _2216.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2216, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2260 = _2258.xyz * View_View_OneOverPreExposure;
                _2262 = float4(_2260.x, _2260.y, _2260.z, _2258.w);
                _2263 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2262 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2263 = 0.0f;
            }
            float4 _2268 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2262, clamp((_702 - _2263) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2271 = _2268.w;
            _2279 = float4(_2268.xyz + (float4(_1878.xyz + (in_var_TEXCOORD7.xyz * _1878.w), _2196).xyz * _2271), _2271 * _2196);
            break;
        } while(false);
        _2280 = _2279;
    }
    else
    {
        _2280 = in_var_TEXCOORD7;
    }
    float3 _2287 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2345 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _104 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _105 = _104 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _106 = _105 - _104;
        precise float3 _107 = Primitive_Primitive_ObjectWorldPositionLow - _106;
        precise float3 _108 = _93 - _105;
        precise float3 _109 = _96 - _107;
        precise float3 _110 = _108 + _109;
        float3 _2307 = abs(_110);
        float3 _2308 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2344 = 0.0f.xxx;
        if (any(bool3(_2307.x > _2308.x, _2307.y > _2308.y, _2307.z > _2308.z)))
        {
            float3 _2340 = frac(dot(frac(frac(_93 * 1.52587890625e-05f.xxx) + frac(_96 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2344 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2340.x > 0.5f.xxx.x, _2340.y > 0.5f.xxx.y, _2340.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2330 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2318 = abs(_419 - in_var_TEXCOORD9);
                _2330 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2318.x, max(_2318.y, _2318.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2330 = _2287;
            }
            _2344 = _2330;
        }
        _2345 = _2344;
    }
    else
    {
        _2345 = _2287;
    }
    float3 _2347 = mad((_776 * _916) * _728, max(_925, ((((((_694 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _648) + ((_694 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _648) + ((_694 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _648), lerp(mad((((float4(_1782.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1757].x, _1786).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1813 * _1786)).xyz * ((_730 * _1829.x) + (clamp(50.0f * _730.y, 0.0f, 1.0f) * _1829.y).xxx)) * _916, max(_925, ((((((_730 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _648) + ((_730 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _648) + ((_730 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _648), float4(_1748.x ? 0.0f.xxxx.x : _1308.x, _1748.y ? 0.0f.xxxx.y : _1308.y, _1748.z ? 0.0f.xxxx.z : _1308.z, _1748.w ? 0.0f.xxxx.w : _1308.w).xyz + float4(_1748.x ? 0.0f.xxxx.x : _1311.x, _1748.y ? 0.0f.xxxx.y : _1311.y, _1748.z ? 0.0f.xxxx.z : _1311.z, _1748.w ? 0.0f.xxxx.w : _1311.w).xyz), _728 + (_730 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2345;
    float4 _2355 = float4((_2347 * _2280.w) + _2280.xyz, 0.0f);
    _2355.w = 0.0f;
    float4 _2359 = _2355 * View_View_PreExposure;
    float3 _2364 = min(_2359.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2364.x, _2364.y, _2364.z, _2359.w);
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
