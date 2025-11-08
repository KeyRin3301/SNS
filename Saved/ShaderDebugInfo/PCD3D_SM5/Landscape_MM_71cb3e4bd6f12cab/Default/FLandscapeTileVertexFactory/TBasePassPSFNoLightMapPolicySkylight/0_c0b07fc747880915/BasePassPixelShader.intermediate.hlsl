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
    float2 _538 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _500, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _547 = _448.xxx;
    float2 _552 = _500 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _558 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _552, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _567 = _451.xxx;
    float3 _575 = normalize(mul(normalize((mad(float4(_558, sqrt(clamp(1.0f - dot(_558, _558), 0.0f, 1.0f)), 1.0f).xyz, _567, mad(float4(_538, sqrt(clamp(1.0f - dot(_538, _538), 0.0f, 1.0f)), 1.0f).xyz, _547, mad(float4(_506, sqrt(clamp(1.0f - dot(_506, _506), 0.0f, 1.0f)), 1.0f).xyz, _515, float4(_521, sqrt(clamp(1.0f - dot(_521, _521), 0.0f, 1.0f)), 1.0f).xyz * _530))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_388, cross(_385, _388), _385), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _576 = _575 * 1.0f;
    float4 _611 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _616 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _623 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _629 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _552, View_View_MaterialTextureMipBias);
    float3 _640 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _552, View_View_MaterialTextureMipBias).xyz, _567, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _500, View_View_MaterialTextureMipBias).xyz, _547, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _500, View_View_MaterialTextureMipBias).xyz, _515, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _500, View_View_MaterialTextureMipBias).xyz * _530))), 0.0f.xxx, 1.0f.xxx);
    float _644 = mad(clamp(mad(_629.y, _451, mad(_623.y, _448, mad(_611.y, _442, _616.y * _445))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _645 = clamp(mad(_629.x, _451, mad(_623.x, _448, mad(_611.x, _442, _616.x * _445))), 0.0f, 1.0f);
    float3 _687 = 0.0f.xxx;
    float _688 = 0.0f;
    float _689 = 0.0f;
    float _690 = 0.0f;
    float3 _691 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _659 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _663 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _659, 0.0f);
        float4 _666 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _659, 0.0f);
        float4 _669 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _659, 0.0f);
        float _679 = _669.w;
        _687 = normalize((_576 * _666.w) + ((_666.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _688 = mad(_644, _679, _669.z);
        _689 = mad(0.5f, _679, _669.y);
        _690 = _669.x;
        _691 = (_640 * _663.w) + _663.xyz;
    }
    else
    {
        _687 = _576;
        _688 = _644;
        _689 = 0.5f;
        _690 = 0.0f;
        _691 = _640;
    }
    float _699 = _410.w;
    float3 _712 = ((_691 - (_691 * _690)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _719 = (lerp((0.07999999821186065673828125f * _689).xxx, _691, _690.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _720 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _725 = 0.0f.xxx;
    if (_720)
    {
        _725 = _712 + (_719 * 0.449999988079071044921875f);
    }
    else
    {
        _725 = _712;
    }
    bool3 _726 = _720.xxx;
    float3 _727 = float3(_726.x ? 0.0f.xxx.x : _719.x, _726.y ? 0.0f.xxx.y : _719.y, _726.z ? 0.0f.xxx.z : _719.z);
    float3 _773 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _736 = float4(_687, 1.0f);
        float4 _749 = _736.xyzz * _736.yzzx;
        _773 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _736), dot(View_SkyIrradianceEnvironmentMap[1u], _736), dot(View_SkyIrradianceEnvironmentMap[2u], _736)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _749), dot(View_SkyIrradianceEnvironmentMap[4u], _749), dot(View_SkyIrradianceEnvironmentMap[5u], _749))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_687.x, _687.x, -(_687.y * _687.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _773 = 0.0f.xxx;
    }
    float2 _779 = mad(_410.xy / _699.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _889 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _790 = int2(trunc(_779 * View_View_BufferSizeAndInvSize.xy));
        int _791 = _790.x;
        int _792 = _790.y;
        float4 _796 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_791, _792, 0).xy, 0));
        float _797 = _796.x;
        float _807 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _888 = 0.0f.xx;
        if ((abs((mad(_797, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_797, View_View_InvDeviceZToWorldZTransform.z, _807))) - _699) / _699) > 0.00999999977648258209228515625f)
        {
            float2 _820 = _779 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _824 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_791 - 1, _792, 0).xy, 0));
            float _825 = _824.x;
            float _831 = abs((mad(_825, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_825, View_View_InvDeviceZToWorldZTransform.z, _807))) - _699);
            bool _832 = _831 < 100000000.0f;
            bool2 _833 = _832.xx;
            float2 _834 = float2(_833.x ? _820.x : _779.x, _833.y ? _820.y : _779.y);
            float _835 = _832 ? _831 : 100000000.0f;
            float2 _838 = _779 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _842 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_791, _792 + 1, 0).xy, 0));
            float _843 = _842.x;
            float _849 = abs((mad(_843, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_843, View_View_InvDeviceZToWorldZTransform.z, _807))) - _699);
            bool _850 = _849 < _835;
            bool2 _851 = _850.xx;
            float2 _852 = float2(_851.x ? _838.x : _834.x, _851.y ? _838.y : _834.y);
            float _853 = _850 ? _849 : _835;
            float2 _855 = _779 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _859 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_791 + 1, _792, 0).xy, 0));
            float _860 = _859.x;
            float _866 = abs((mad(_860, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_860, View_View_InvDeviceZToWorldZTransform.z, _807))) - _699);
            bool _867 = _866 < _853;
            bool2 _868 = _867.xx;
            float2 _869 = float2(_868.x ? _855.x : _852.x, _868.y ? _855.y : _852.y);
            float2 _873 = _779 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _877 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_791, _792 - 1, 0).xy, 0));
            float _878 = _877.x;
            bool2 _886 = (abs((mad(_878, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_878, View_View_InvDeviceZToWorldZTransform.z, _807))) - _699) < (_867 ? _866 : _853)).xx;
            _888 = float2(_886.x ? _873.x : _869.x, _886.y ? _873.y : _869.y);
        }
        else
        {
            _888 = _779;
        }
        _889 = _888;
    }
    else
    {
        _889 = _779;
    }
    uint _895_dummy_parameter;
    uint2 _895 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _895_dummy_parameter);
    float _913 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_889 * float2(float(_895.x), float(_895.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _922 = _645.xxx;
    uint2 _954 = uint2(_403 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _982 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _982 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_889 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _982 = 1.0f.xxxx;
    }
    float4 _983 = _982 * _982;
    uint _996 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1288 = 0.0f.xxxx;
    float4 _1289 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1022 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1037 = dot(float4(float(_1022 & 1u), float((_1022 & 2u) >> 1u), float((_1022 & 4u) >> 2u), float((_1022 & 8u) >> 3u)), _983);
        bool _1039 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1040 = _1039 ? 1.0f : _1037;
        float _1053 = 0.0f;
        float _1054 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1047 = clamp(mad(_699, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1049 = lerp(_1039 ? _1037 : 1.0f, 1.0f, _1047 * _1047);
            _1053 = min(_1049, _1040) * _1040;
            _1054 = _1049 * _1040;
        }
        else
        {
            _1053 = 1.0f;
            _1054 = 1.0f;
        }
        float3 _1270 = 0.0f.xxx;
        float3 _1271 = 0.0f.xxx;
        [branch]
        if ((_1054 + _1053) > 0.0f)
        {
            float _1061 = max(_688, View_View_MinRoughness);
            float _1062 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1065 = rsqrt(_1062);
            float3 _1066 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1065;
            float _1067 = dot(_687, _1066);
            float _1085 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1074 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1062 + 1.0f)), 0.0f, 1.0f));
                float _1084 = 0.0f;
                if (_1067 < _1074)
                {
                    float _1080 = _1074 + max(_1067, -_1074);
                    _1084 = (_1080 * _1080) / (4.0f * _1074);
                }
                else
                {
                    _1084 = _1067;
                }
                _1085 = _1084;
            }
            else
            {
                _1085 = _1067;
            }
            float _1086 = clamp(_1085, 0.0f, 1.0f);
            float _1087 = max(_1061, View_View_MinRoughness);
            float _1092 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1065) * mad(-_1087, _1087, 1.0f), 0.0f, 1.0f);
            float _1094 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1065, 0.0f, 1.0f);
            float3 _1263 = 0.0f.xxx;
            float3 _1264 = 0.0f.xxx;
            [branch]
            if (_1086 > 0.0f)
            {
                float _1105 = dot(_687, _435);
                float _1106 = dot(_435, _1066);
                float _1108 = rsqrt(mad(2.0f, _1106, 2.0f));
                bool _1114 = _1092 > 0.0f;
                float _1193 = 0.0f;
                float _1194 = 0.0f;
                if (_1114)
                {
                    float _1119 = sqrt(mad(-_1092, _1092, 1.0f));
                    float _1120 = 2.0f * _1067;
                    float _1121 = -_1106;
                    float _1122 = mad(_1120, _1105, _1121);
                    float _1191 = 0.0f;
                    float _1192 = 0.0f;
                    if (_1122 >= _1119)
                    {
                        _1191 = 1.0f;
                        _1192 = abs(_1105);
                    }
                    else
                    {
                        float _1127 = -_1122;
                        float _1130 = _1092 * rsqrt(mad(_1127, _1122, 1.0f));
                        float _1131 = mad(_1127, _1067, _1105);
                        float _1135 = mad(_1127, _1106, mad(2.0f * _1105, _1105, -1.0f));
                        float _1146 = _1130 * sqrt(clamp(mad(_1120 * _1105, _1106, mad(_1121, _1106, mad(-_1105, _1105, mad(-_1067, _1067, 1.0f)))), 0.0f, 1.0f));
                        float _1148 = (_1146 * 2.0f) * _1105;
                        float _1149 = mad(_1067, _1119, _1105);
                        float _1150 = mad(_1130, _1131, _1149);
                        float _1152 = mad(_1130, _1135, mad(_1106, _1119, 1.0f));
                        float _1153 = _1146 * _1152;
                        float _1154 = _1150 * _1152;
                        float _1159 = _1154 * mad(-0.5f, _1153, (0.25f * _1148) * _1150);
                        float _1169 = mad(_1150, mad(_1149, _1152 * _1152, _1154 * mad(-0.5f, mad(_1106, _1119, _1152), -0.5f)), mad(_1153, _1153, (_1148 * _1150) * mad(_1148, _1150, _1153 * (-2.0f))));
                        float _1173 = (2.0f * _1159) / mad(_1169, _1169, _1159 * _1159);
                        float _1174 = _1173 * _1169;
                        float _1176 = mad(-_1173, _1159, 1.0f);
                        float _1182 = mad(_1106, _1119, mad(_1176, _1130 * _1135, _1174 * _1148));
                        float _1184 = rsqrt(mad(2.0f, _1182, 2.0f));
                        _1191 = clamp((mad(_1067, _1119, mad(_1176, _1130 * _1131, _1174 * _1146)) + _1105) * _1184, 0.0f, 1.0f);
                        _1192 = clamp(mad(_1184, _1182, _1184), 0.0f, 1.0f);
                    }
                    _1193 = _1191;
                    _1194 = _1192;
                }
                else
                {
                    _1193 = clamp((_1067 + _1105) * _1108, 0.0f, 1.0f);
                    _1194 = clamp(mad(_1108, _1106, _1108), 0.0f, 1.0f);
                }
                float _1197 = clamp(abs(_1105) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1199 = 1.0f.xxx * _1086;
                float3 _1261 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1261 = 0.0f.xxx;
                }
                else
                {
                    float _1206 = _1061 * _1061;
                    float _1216 = 0.0f;
                    if (_1094 > 0.0f)
                    {
                        _1216 = clamp(mad(_1206, _1206, (_1094 * _1094) / mad(_1194, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1216 = _1206 * _1206;
                    }
                    float _1230 = 0.0f;
                    if (_1114)
                    {
                        _1230 = _1216 / (_1216 + (((0.25f * _1092) * mad(3.0f, asfloat(532487669 + (asint(_1216) >> 1)), _1092)) / (_1194 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1230 = 1.0f;
                    }
                    float _1233 = mad(mad(_1193, _1216, -_1193), _1193, 1.0f);
                    float _1238 = sqrt(_1216);
                    float _1239 = 1.0f - _1238;
                    float _1245 = 1.0f - _1194;
                    float _1246 = _1245 * _1245;
                    float _1247 = _1246 * _1246;
                    _1261 = _1199 * (((clamp(50.0f * _727.y, 0.0f, 1.0f) * (_1247 * _1245)).xxx + (_727 * mad(-_1247, _1245, 1.0f))) * (((_1216 / ((3.1415927410125732421875f * _1233) * _1233)) * _1230) * (0.5f / mad(_1086, mad(_1197, _1239, _1238), _1197 * mad(_1086, _1239, _1238)))));
                }
                _1263 = ((_725 * 0.3183098733425140380859375f) * _1199) * 1.0f;
                _1264 = _1261;
            }
            else
            {
                _1263 = 0.0f.xxx;
                _1264 = 0.0f.xxx;
            }
            float3 _1267 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1054;
            _1270 = mad(_1263 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1267, 0.0f.xxx);
            _1271 = (_1264 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1267;
        }
        else
        {
            _1270 = 0.0f.xxx;
            _1271 = 0.0f.xxx;
        }
        float4 _1275 = float4(_1270, 0.0f);
        float4 _1279 = float4(_1271, 0.0f);
        float4 _1286 = 0.0f.xxxx;
        float4 _1287 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _996) != 0u)
        {
            _1286 = float4(_1275.x, _1275.y, _1275.z, _1275.w);
            _1287 = float4(_1279.x, _1279.y, _1279.z, _1279.w);
        }
        else
        {
            _1286 = 0.0f.xxxx;
            _1287 = 0.0f.xxxx;
        }
        _1288 = _1286;
        _1289 = _1287;
    }
    else
    {
        _1288 = 0.0f.xxxx;
        _1289 = 0.0f.xxxx;
    }
    uint _1290 = ((((min(uint(max(0.0f, log2(mad(_326, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _954.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _954.x) * 2u;
    uint _1300 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1290 + 1u] & 1073741823u;
    uint _1303 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1290] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1305 = 0.0f.xxxx;
    float4 _1308 = 0.0f.xxxx;
    _1305 = _1288;
    _1308 = _1289;
    float4 _1306 = 0.0f.xxxx;
    float4 _1309 = 0.0f.xxxx;
    [loop]
    for (uint _1310 = 0u; _1310 < _1303; _1305 = _1306, _1308 = _1309, _1310++)
    {
        uint _1319 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1300 + _1310).x * 6u;
        uint _1322 = _1319 + 1u;
        uint _1325 = _1319 + 2u;
        uint _1328 = _1319 + 3u;
        uint _1331 = _1319 + 4u;
        uint _1335 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1325].w);
        uint _1341 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].y);
        uint _1357 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1328].z);
        float2 _1359 = spvUnpackHalf2x16(_1357 & 65535u);
        float _1360 = _1359.x;
        float2 _1363 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1328].w));
        float _1364 = _1363.x;
        bool _1369 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].w == 0.0f;
        uint _1371 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1331].w);
        uint _1384 = _1335 >> 4u;
        float3 _1400 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].xyz - _419;
        float _1401 = dot(_1400, _1400);
        float _1418 = 0.0f;
        if (_1369)
        {
            float _1413 = _1401 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].w);
            float _1416 = clamp(mad(-_1413, _1413, 1.0f), 0.0f, 1.0f);
            _1418 = _1416 * _1416;
        }
        else
        {
            float3 _1407 = _1400 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1319].w;
            _1418 = pow(1.0f - clamp(dot(_1407, _1407), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].w);
        }
        float _1429 = 0.0f;
        if (((_1335 >> 16u) & 3u) == 2u)
        {
            float _1426 = clamp((dot(_1400 * rsqrt(_1401), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1325].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1328].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1328].y, 0.0f, 1.0f);
            _1429 = _1418 * (_1426 * _1426);
        }
        else
        {
            _1429 = _1418;
        }
        float3 _1726 = 0.0f.xxx;
        float3 _1727 = 0.0f.xxx;
        [branch]
        if (_1429 > 0.0f)
        {
            float _1437 = 0.0f;
            [branch]
            if (uint(int((_1335 & 255u) != 0u)) != 0u)
            {
                _1437 = dot(float4(float(_1384 & 1u), float((_1384 & 2u) >> 1u), float((_1384 & 4u) >> 2u), float((_1384 & 8u) >> 3u)), _983);
            }
            else
            {
                _1437 = 1.0f;
            }
            float3 _1724 = 0.0f.xxx;
            float3 _1725 = 0.0f.xxx;
            [branch]
            if ((_1437 + _1437) > 0.0f)
            {
                float3 _1443 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1331].xyz * (0.5f * _1364);
                float3 _1444 = _1400 - _1443;
                float3 _1445 = _1400 + _1443;
                float _1448 = max(_688, View_View_MinRoughness);
                bool _1449 = _1364 > 0.0f;
                float _1474 = 0.0f;
                float _1475 = 0.0f;
                float _1476 = 0.0f;
                [branch]
                if (_1449)
                {
                    float _1461 = rsqrt(dot(_1444, _1444));
                    float _1462 = rsqrt(dot(_1445, _1445));
                    float _1463 = _1461 * _1462;
                    float _1465 = dot(_1444, _1445) * _1463;
                    _1474 = _1465;
                    _1475 = 0.5f * mad(dot(_687, _1444), _1461, dot(_687, _1445) * _1462);
                    _1476 = _1463 / mad(_1461, _1462, mad(_1465, 0.5f, 0.5f));
                }
                else
                {
                    float _1453 = dot(_1444, _1444);
                    _1474 = 1.0f;
                    _1475 = dot(_687, _1444 * rsqrt(_1453));
                    _1476 = 1.0f / (_1453 + 1.0f);
                }
                float _1494 = 0.0f;
                if (_1360 > 0.0f)
                {
                    float _1483 = sqrt(clamp((_1360 * _1360) * _1476, 0.0f, 1.0f));
                    float _1493 = 0.0f;
                    if (_1475 < _1483)
                    {
                        float _1489 = _1483 + max(_1475, -_1483);
                        _1493 = (_1489 * _1489) / (4.0f * _1483);
                    }
                    else
                    {
                        _1493 = _1475;
                    }
                    _1494 = _1493;
                }
                else
                {
                    _1494 = _1475;
                }
                float _1495 = clamp(_1494, 0.0f, 1.0f);
                float3 _1513 = 0.0f.xxx;
                if (_1449)
                {
                    float3 _1500 = reflect(-_435, _687);
                    float3 _1501 = _1445 - _1444;
                    float _1502 = dot(_1500, _1501);
                    _1513 = _1444 + (_1501 * clamp(dot(_1444, (_1500 * _1502) - _1501) / mad(_1364, _1364, -(_1502 * _1502)), 0.0f, 1.0f));
                }
                else
                {
                    _1513 = _1444;
                }
                float _1515 = rsqrt(dot(_1513, _1513));
                float3 _1516 = _1513 * _1515;
                float _1517 = max(_1448, View_View_MinRoughness);
                float _1522 = clamp((_1360 * _1515) * mad(-_1517, _1517, 1.0f), 0.0f, 1.0f);
                float _1524 = clamp(spvUnpackHalf2x16(_1357 >> 16u).x * _1515, 0.0f, 1.0f);
                float3 _1717 = 0.0f.xxx;
                float3 _1718 = 0.0f.xxx;
                [branch]
                if (_1495 > 0.0f)
                {
                    float _1535 = dot(_687, _1516);
                    float _1536 = dot(_687, _435);
                    float _1537 = dot(_435, _1516);
                    float _1539 = rsqrt(mad(2.0f, _1537, 2.0f));
                    bool _1545 = _1522 > 0.0f;
                    float _1624 = 0.0f;
                    float _1625 = 0.0f;
                    if (_1545)
                    {
                        float _1550 = sqrt(mad(-_1522, _1522, 1.0f));
                        float _1551 = 2.0f * _1535;
                        float _1552 = -_1537;
                        float _1553 = mad(_1551, _1536, _1552);
                        float _1622 = 0.0f;
                        float _1623 = 0.0f;
                        if (_1553 >= _1550)
                        {
                            _1622 = 1.0f;
                            _1623 = abs(_1536);
                        }
                        else
                        {
                            float _1558 = -_1553;
                            float _1561 = _1522 * rsqrt(mad(_1558, _1553, 1.0f));
                            float _1562 = mad(_1558, _1535, _1536);
                            float _1566 = mad(_1558, _1537, mad(2.0f * _1536, _1536, -1.0f));
                            float _1577 = _1561 * sqrt(clamp(mad(_1551 * _1536, _1537, mad(_1552, _1537, mad(-_1536, _1536, mad(-_1535, _1535, 1.0f)))), 0.0f, 1.0f));
                            float _1579 = (_1577 * 2.0f) * _1536;
                            float _1580 = mad(_1535, _1550, _1536);
                            float _1581 = mad(_1561, _1562, _1580);
                            float _1583 = mad(_1561, _1566, mad(_1537, _1550, 1.0f));
                            float _1584 = _1577 * _1583;
                            float _1585 = _1581 * _1583;
                            float _1590 = _1585 * mad(-0.5f, _1584, (0.25f * _1579) * _1581);
                            float _1600 = mad(_1581, mad(_1580, _1583 * _1583, _1585 * mad(-0.5f, mad(_1537, _1550, _1583), -0.5f)), mad(_1584, _1584, (_1579 * _1581) * mad(_1579, _1581, _1584 * (-2.0f))));
                            float _1604 = (2.0f * _1590) / mad(_1600, _1600, _1590 * _1590);
                            float _1605 = _1604 * _1600;
                            float _1607 = mad(-_1604, _1590, 1.0f);
                            float _1613 = mad(_1537, _1550, mad(_1607, _1561 * _1566, _1605 * _1579));
                            float _1615 = rsqrt(mad(2.0f, _1613, 2.0f));
                            _1622 = clamp((mad(_1535, _1550, mad(_1607, _1561 * _1562, _1605 * _1577)) + _1536) * _1615, 0.0f, 1.0f);
                            _1623 = clamp(mad(_1615, _1613, _1615), 0.0f, 1.0f);
                        }
                        _1624 = _1622;
                        _1625 = _1623;
                    }
                    else
                    {
                        _1624 = clamp((_1535 + _1536) * _1539, 0.0f, 1.0f);
                        _1625 = clamp(mad(_1539, _1537, _1539), 0.0f, 1.0f);
                    }
                    float _1628 = clamp(abs(_1536) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1631 = 1.0f.xxx * ((_1369 ? _1476 : 1.0f) * _1495);
                    float3 _1715 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1364, _1360), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1715 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1638 = _1448 * _1448;
                        float _1648 = 0.0f;
                        if (_1524 > 0.0f)
                        {
                            _1648 = clamp(mad(_1638, _1638, (_1524 * _1524) / mad(_1625, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1648 = _1638 * _1638;
                        }
                        float _1662 = 0.0f;
                        float _1663 = 0.0f;
                        if (_1545)
                        {
                            float _1660 = _1648 + (((0.25f * _1522) * mad(3.0f, asfloat(532487669 + (asint(_1648) >> 1)), _1522)) / (_1625 + 0.001000000047497451305389404296875f));
                            _1662 = _1648 / _1660;
                            _1663 = _1660;
                        }
                        else
                        {
                            _1662 = 1.0f;
                            _1663 = _1648;
                        }
                        float _1684 = 0.0f;
                        if (_1474 < 1.0f)
                        {
                            float _1670 = sqrt((1.00010001659393310546875f - _1474) / (1.0f + _1474));
                            _1684 = _1662 * sqrt(_1663 / (_1663 + (((0.25f * _1670) * mad(3.0f, asfloat(532487669 + (asint(_1663) >> 1)), _1670)) / (_1625 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1684 = _1662;
                        }
                        float _1687 = mad(mad(_1624, _1648, -_1624), _1624, 1.0f);
                        float _1692 = sqrt(_1648);
                        float _1693 = 1.0f - _1692;
                        float _1699 = 1.0f - _1625;
                        float _1700 = _1699 * _1699;
                        float _1701 = _1700 * _1700;
                        _1715 = _1631 * (((clamp(50.0f * _727.y, 0.0f, 1.0f) * (_1701 * _1699)).xxx + (_727 * mad(-_1701, _1699, 1.0f))) * (((_1648 / ((3.1415927410125732421875f * _1687) * _1687)) * _1684) * (0.5f / mad(_1495, mad(_1628, _1693, _1692), _1628 * mad(_1495, _1693, _1692)))));
                    }
                    _1717 = ((_725 * 0.3183098733425140380859375f) * _1631) * 1.0f;
                    _1718 = _1715;
                }
                else
                {
                    _1717 = 0.0f.xxx;
                    _1718 = 0.0f.xxx;
                }
                float3 _1721 = ((float3(float((_1341 >> 0u) & 1023u), float((_1341 >> 10u) & 1023u), float((_1341 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1322].x) * _1429) * _1437;
                _1724 = mad(_1717 * (float((_1371 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1721, 0.0f.xxx);
                _1725 = (_1718 * (float(_1371 & 1023u) * 0.000977517105638980865478515625f)) * _1721;
            }
            else
            {
                _1724 = 0.0f.xxx;
                _1725 = 0.0f.xxx;
            }
            _1726 = _1724;
            _1727 = _1725;
        }
        else
        {
            _1726 = 0.0f.xxx;
            _1727 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1335 >> 8u) & 7u) & _996) != 0u)
        {
            _1306 = _1305 + float4(_1726, 0.0f);
            _1309 = _1308 + float4(_1727, 0.0f);
        }
        else
        {
            _1306 = _1305;
            _1309 = _1308;
        }
    }
    bool4 _1745 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1754 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1758 = (_687 * (2.0f * dot(_435, _687))) - _435;
    float _1765 = mad(-1.2000000476837158203125f, log2(max(_688, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1779 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1758, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1754].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1765);
    float _1783 = 1.0f - _1779.w;
    float3 _1810 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1810 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1758, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1765).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1810 = 0.0f.xxx;
    }
    float4 _1816 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _688) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1817 = _1816.x;
    float2 _1826 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1817 * _1817, exp2((-9.27999973297119140625f) * clamp(dot(_687, _435), 0.0f, 1.0f))), _1817, _1816.y)) + _1816.zw;
    bool _1853 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2277 = 0.0f.xxxx;
    if (_1853)
    {
        uint2 _1865 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1867 = normalize(_419 - View_View_TranslatedWorldCameraOrigin);
        uint _1868 = _1865.x;
        uint4 _1872 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1868, _1865.y, 0u), 0u));
        uint _1873 = _1872.x;
        float4 _1875 = 0.0f.xxxx;
        _1875 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1876 = 0.0f.xxxx;
        for (int _1878 = 0; uint(_1878) < _1873; _1875 = _1876, _1878++)
        {
            uint _1889 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1868, _1865.y, uint(1 + _1878)), 0u)).x * 3u;
            float4 _1891 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1889);
            float4 _1893 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1889 + 1u);
            float4 _1895 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1889 + 2u);
            float3 _1896 = _1891.xyz;
            float _1897 = _1891.w;
            float _1898 = 1.0f / _1897;
            uint _1900 = asuint(_1893.x);
            float2 _1906 = float2(spvUnpackHalf2x16(_1900).x, spvUnpackHalf2x16(_1900 >> 16u).x);
            float3 _1907 = float3(_1906.x, _1906.y, _295.z);
            uint _1909 = asuint(_1893.y);
            _1907.z = spvUnpackHalf2x16(_1909).x;
            float3 _1916 = 0.0f.xxx;
            _1916.x = spvUnpackHalf2x16(_1909 >> 16u).x;
            uint _1918 = asuint(_1893.z);
            float2 _1924 = float2(spvUnpackHalf2x16(_1918).x, spvUnpackHalf2x16(_1918 >> 16u).x);
            float3 _1925 = float3(_1916.x, _1924.x, _1924.y);
            float3x3 _1930 = float3x3(_1907 * _1898, _1925 * _1898, cross(_1907, _1925) * _1898);
            uint _1932 = asuint(_1895.x);
            float2 _1935 = spvUnpackHalf2x16((_1932 >> 17u) & 32752u);
            float _1936 = _1935.x;
            float2 _1939 = spvUnpackHalf2x16((_1932 >> 6u) & 32752u);
            float _1940 = _1939.x;
            float2 _1943 = spvUnpackHalf2x16((_1932 << 5u) & 32736u);
            float _1944 = _1943.x;
            uint _1946 = asuint(_1895.y);
            float3 _1964 = 0.0f.xxx;
            if (_1946 > 0u)
            {
                _1964 = float3(spvUnpackHalf2x16((_1946 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1946 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1946 << 5u) & 32736u).x);
            }
            else
            {
                _1964 = 0.0f.xxx;
            }
            uint _1966 = asuint(_1895.z);
            float _1981 = float((_1966 >> 24u) & 255u);
            float _1982 = _1981 * 0.0039215688593685626983642578125f;
            float3 _1989 = mul(View_View_TranslatedWorldCameraOrigin - _1896, _1930);
            float3 _1991 = normalize(mul(_1867, _1930));
            float _1993 = dot(_1991, _1991);
            float _1994 = dot(_1991, _1989);
            float _1995 = 2.0f * _1994;
            float _2000 = mad(_1995, _1995, -((4.0f * _1993) * mad(-1.0f, 1.0f, dot(_1989, _1989))));
            float2 _2012 = 0.0f.xx;
            [flatten]
            if (_2000 >= 0.0f)
            {
                _2012 = ((_1994 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2000))) / (2.0f * _1993).xx;
            }
            else
            {
                _2012 = (-1.0f).xx;
            }
            float3 _2018 = mul(_419 - _1896, _1930) - _1989;
            float2 _2022 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1898, _2012), sqrt(dot(_2018, _2018)).xx);
            float _2172 = 0.0f;
            float3 _2173 = 0.0f.xxx;
            if (any(bool2(_2022.x > 0.0f.xx.x, _2022.y > 0.0f.xx.y)))
            {
                float2 _2043 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2033 = dot(_1867, View_View_ViewForward);
                    _2043 = max(_2022, ((View_View_VolumetricFogMaxDistance * ((_2033 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2033) : 0.0f)) * _1898).xx);
                }
                else
                {
                    _2043 = _2022;
                }
                float _2048 = max(0.0f, abs(_2043.y - _2043.x));
                float _2170 = 0.0f;
                float3 _2171 = 0.0f.xxx;
                if (_2048 > 0.0f)
                {
                    float3 _2053 = _1989 + (_1991 * _2043.x);
                    float _2089 = 0.0f;
                    if (_1936 > 0.0f)
                    {
                        float _2057 = dot(_1991, _2053);
                        float _2058 = dot(_2053, _2053);
                        float _2059 = _2058 - 1.0f;
                        float _2061 = mad(_2057, _2057, 1.0f - _2058);
                        float _2088 = 0.0f;
                        if (_2061 >= 0.0f)
                        {
                            float _2065 = sqrt(_2061);
                            float _2066 = -_2057;
                            float _2069 = max(_2066 - _2065, 0.0f);
                            float _2071 = min(max(_2066 + _2065, 0.0f), _2048);
                            float _2072 = _2069 * _2069;
                            float _2073 = _2071 * _2071;
                            _2088 = max(0.0f, (_1936 * ((-mad(_2073 * _2071, 0.3333333432674407958984375f, mad(_2059, _2071, _2057 * _2073))) - (-mad(_2072 * _2069, 0.3333333432674407958984375f, mad(_2059, _2069, _2057 * _2072))))) * 0.75f);
                        }
                        else
                        {
                            _2088 = 0.0f;
                        }
                        _2089 = _2088;
                    }
                    else
                    {
                        _2089 = 0.0f;
                    }
                    float _2114 = 0.0f;
                    if (_1940 > 0.0f)
                    {
                        float _2095 = _1991.z;
                        float _2101 = (abs(_2095) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2095 >= 0.0f) ? 1.0f : (-1.0f))) : _2095;
                        float _2104 = max(-80.0f, (_2053.z - _1895.w) * _1944);
                        _2114 = (_1940 / (_1944 * _2101)) * (exp(-_2104) - exp(-mad(_2101 * _2048, _1944, _2104)));
                    }
                    else
                    {
                        _2114 = 0.0f;
                    }
                    float _2125 = exp((log(mad(exp(-_2089) - 1.0f, 1.0f - exp(-_2114), 1.0f)) * _1897) * 0.00999999977648258209228515625f);
                    float _2129 = _1981 * (-0.0039215688593685626983642578125f);
                    float _2136 = mad(_1981 * (-0.007843137718737125396728515625f), dot(_1867, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2129, _2129, 1.0f));
                    float3 _2141 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1982, _2129, 1.0f) / ((12.56637096405029296875f * _2136) * sqrt(_2136)));
                    float3 _2167 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2152 = float4(_1867 * _2129, 1.0f);
                        _2167 = _2141 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2152), dot(View_SkyIrradianceEnvironmentMap[1u], _2152), dot(View_SkyIrradianceEnvironmentMap[2u], _2152)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2167 = _2141;
                    }
                    _2170 = _2125;
                    _2171 = mad(_2167, float4(float((_1966 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1966 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1966 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1982).xyz, _1964) * (1.0f - _2125);
                }
                else
                {
                    _2170 = 1.0f;
                    _2171 = 0.0f.xxx;
                }
                _2172 = _2170;
                _2173 = _2171;
            }
            else
            {
                _2172 = 1.0f;
                _2173 = 0.0f.xxx;
            }
            _1876 = float4((_1875.xyz * _2172) + float4(_2173, _2172).xyz, _1875.w * _2172);
        }
        float _2193 = _1875.w * in_var_TEXCOORD7.w;
        float4 _2201 = float4(_93, 1.0f);
        precise float4 _97 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _98 = _2201 + _97;
        precise float4 _99 = _98 - _2201;
        precise float4 _100 = _98 - _99;
        precise float4 _101 = _2201 - _100;
        precise float4 _102 = _97 - _99;
        precise float4 _103 = _101 + _102;
        float4 _2212 = mul(_98 + (float4(_96, 0.0f) + _103), View_View_RelativeWorldToClip);
        float _2213 = _2212.w;
        float4 _2276 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2276 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2259 = 0.0f.xxxx;
            float _2260 = 0.0f;
            if (_1853)
            {
                float4 _2255 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2212.xy / _2213.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2213, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2257 = _2255.xyz * View_View_OneOverPreExposure;
                _2259 = float4(_2257.x, _2257.y, _2257.z, _2255.w);
                _2260 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2259 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2260 = 0.0f;
            }
            float4 _2265 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2259, clamp((_699 - _2260) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2268 = _2265.w;
            _2276 = float4(_2265.xyz + (float4(_1875.xyz + (in_var_TEXCOORD7.xyz * _1875.w), _2193).xyz * _2268), _2268 * _2193);
            break;
        } while(false);
        _2277 = _2276;
    }
    else
    {
        _2277 = in_var_TEXCOORD7;
    }
    float3 _2284 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2342 = 0.0f.xxx;
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
        float3 _2304 = abs(_110);
        float3 _2305 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2341 = 0.0f.xxx;
        if (any(bool3(_2304.x > _2305.x, _2304.y > _2305.y, _2304.z > _2305.z)))
        {
            float3 _2337 = frac(dot(frac(frac(_93 * 1.52587890625e-05f.xxx) + frac(_96 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2341 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2337.x > 0.5f.xxx.x, _2337.y > 0.5f.xxx.y, _2337.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2327 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2315 = abs(_419 - in_var_TEXCOORD9);
                _2327 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2315.x, max(_2315.y, _2315.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2327 = _2284;
            }
            _2341 = _2327;
        }
        _2342 = _2341;
    }
    else
    {
        _2342 = _2284;
    }
    float3 _2344 = mad((_773 * _913) * _725, max(_922, ((((((_691 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _645) + ((_691 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _645) + ((_691 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _645), lerp(mad((((float4(_1779.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1754].x, _1783).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1810 * _1783)).xyz * ((_727 * _1826.x) + (clamp(50.0f * _727.y, 0.0f, 1.0f) * _1826.y).xxx)) * _913, max(_922, ((((((_727 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _645) + ((_727 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _645) + ((_727 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _645), float4(_1745.x ? 0.0f.xxxx.x : _1305.x, _1745.y ? 0.0f.xxxx.y : _1305.y, _1745.z ? 0.0f.xxxx.z : _1305.z, _1745.w ? 0.0f.xxxx.w : _1305.w).xyz + float4(_1745.x ? 0.0f.xxxx.x : _1308.x, _1745.y ? 0.0f.xxxx.y : _1308.y, _1745.z ? 0.0f.xxxx.z : _1308.z, _1745.w ? 0.0f.xxxx.w : _1308.w).xyz), _725 + (_727 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2342;
    float4 _2352 = float4((_2344 * _2277.w) + _2277.xyz, 0.0f);
    _2352.w = 0.0f;
    float4 _2356 = _2352 * View_View_PreExposure;
    float3 _2361 = min(_2356.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2361.x, _2361.y, _2361.z, _2356.w);
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
