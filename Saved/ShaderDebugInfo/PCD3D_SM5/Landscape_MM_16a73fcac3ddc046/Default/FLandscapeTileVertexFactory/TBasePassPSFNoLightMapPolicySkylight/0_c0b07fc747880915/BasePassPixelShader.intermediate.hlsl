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
    float2 _554 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _500, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _563 = _451.xxx;
    float3 _571 = normalize(mul(normalize((mad(float4(_554, sqrt(clamp(1.0f - dot(_554, _554), 0.0f, 1.0f)), 1.0f).xyz, _563, mad(float4(_538, sqrt(clamp(1.0f - dot(_538, _538), 0.0f, 1.0f)), 1.0f).xyz, _547, mad(float4(_506, sqrt(clamp(1.0f - dot(_506, _506), 0.0f, 1.0f)), 1.0f).xyz, _515, float4(_521, sqrt(clamp(1.0f - dot(_521, _521), 0.0f, 1.0f)), 1.0f).xyz * _530))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_388, cross(_385, _388), _385), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _572 = _571 * 1.0f;
    float4 _607 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _612 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _619 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _500, View_View_MaterialTextureMipBias);
    float4 _625 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _500, View_View_MaterialTextureMipBias);
    float3 _639 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _500, View_View_MaterialTextureMipBias).xyz, _563, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _500, View_View_MaterialTextureMipBias).xyz, _547, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _500, View_View_MaterialTextureMipBias).xyz, _515, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _500, View_View_MaterialTextureMipBias).xyz * _530))), 0.0f.xxx, 1.0f.xxx);
    float _643 = mad(clamp(mad(_625.y * Material_Material_PreshaderBuffer[6].x, _451, mad(_619.y, _448, mad(_607.y, _442, _612.y * _445))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _644 = clamp(mad(_625.x, _451, mad(_619.x, _448, mad(_607.x, _442, _612.x * _445))), 0.0f, 1.0f);
    float3 _686 = 0.0f.xxx;
    float _687 = 0.0f;
    float _688 = 0.0f;
    float _689 = 0.0f;
    float3 _690 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _658 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _662 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _658, 0.0f);
        float4 _665 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _658, 0.0f);
        float4 _668 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _658, 0.0f);
        float _678 = _668.w;
        _686 = normalize((_572 * _665.w) + ((_665.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _687 = mad(_643, _678, _668.z);
        _688 = mad(0.5f, _678, _668.y);
        _689 = _668.x;
        _690 = (_639 * _662.w) + _662.xyz;
    }
    else
    {
        _686 = _572;
        _687 = _643;
        _688 = 0.5f;
        _689 = 0.0f;
        _690 = _639;
    }
    float _698 = _410.w;
    float3 _711 = ((_690 - (_690 * _689)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _718 = (lerp((0.07999999821186065673828125f * _688).xxx, _690, _689.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _719 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _724 = 0.0f.xxx;
    if (_719)
    {
        _724 = _711 + (_718 * 0.449999988079071044921875f);
    }
    else
    {
        _724 = _711;
    }
    bool3 _725 = _719.xxx;
    float3 _726 = float3(_725.x ? 0.0f.xxx.x : _718.x, _725.y ? 0.0f.xxx.y : _718.y, _725.z ? 0.0f.xxx.z : _718.z);
    float3 _772 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _735 = float4(_686, 1.0f);
        float4 _748 = _735.xyzz * _735.yzzx;
        _772 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _735), dot(View_SkyIrradianceEnvironmentMap[1u], _735), dot(View_SkyIrradianceEnvironmentMap[2u], _735)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _748), dot(View_SkyIrradianceEnvironmentMap[4u], _748), dot(View_SkyIrradianceEnvironmentMap[5u], _748))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_686.x, _686.x, -(_686.y * _686.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _772 = 0.0f.xxx;
    }
    float2 _778 = mad(_410.xy / _698.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _888 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _789 = int2(trunc(_778 * View_View_BufferSizeAndInvSize.xy));
        int _790 = _789.x;
        int _791 = _789.y;
        float4 _795 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_790, _791, 0).xy, 0));
        float _796 = _795.x;
        float _806 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _887 = 0.0f.xx;
        if ((abs((mad(_796, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_796, View_View_InvDeviceZToWorldZTransform.z, _806))) - _698) / _698) > 0.00999999977648258209228515625f)
        {
            float2 _819 = _778 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _823 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_790 - 1, _791, 0).xy, 0));
            float _824 = _823.x;
            float _830 = abs((mad(_824, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_824, View_View_InvDeviceZToWorldZTransform.z, _806))) - _698);
            bool _831 = _830 < 100000000.0f;
            bool2 _832 = _831.xx;
            float2 _833 = float2(_832.x ? _819.x : _778.x, _832.y ? _819.y : _778.y);
            float _834 = _831 ? _830 : 100000000.0f;
            float2 _837 = _778 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _841 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_790, _791 + 1, 0).xy, 0));
            float _842 = _841.x;
            float _848 = abs((mad(_842, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_842, View_View_InvDeviceZToWorldZTransform.z, _806))) - _698);
            bool _849 = _848 < _834;
            bool2 _850 = _849.xx;
            float2 _851 = float2(_850.x ? _837.x : _833.x, _850.y ? _837.y : _833.y);
            float _852 = _849 ? _848 : _834;
            float2 _854 = _778 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _858 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_790 + 1, _791, 0).xy, 0));
            float _859 = _858.x;
            float _865 = abs((mad(_859, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_859, View_View_InvDeviceZToWorldZTransform.z, _806))) - _698);
            bool _866 = _865 < _852;
            bool2 _867 = _866.xx;
            float2 _868 = float2(_867.x ? _854.x : _851.x, _867.y ? _854.y : _851.y);
            float2 _872 = _778 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _876 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_790, _791 - 1, 0).xy, 0));
            float _877 = _876.x;
            bool2 _885 = (abs((mad(_877, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_877, View_View_InvDeviceZToWorldZTransform.z, _806))) - _698) < (_866 ? _865 : _852)).xx;
            _887 = float2(_885.x ? _872.x : _868.x, _885.y ? _872.y : _868.y);
        }
        else
        {
            _887 = _778;
        }
        _888 = _887;
    }
    else
    {
        _888 = _778;
    }
    uint _894_dummy_parameter;
    uint2 _894 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _894_dummy_parameter);
    float _912 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_888 * float2(float(_894.x), float(_894.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _921 = _644.xxx;
    uint2 _953 = uint2(_403 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _981 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _981 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_888 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _981 = 1.0f.xxxx;
    }
    float4 _982 = _981 * _981;
    uint _995 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1287 = 0.0f.xxxx;
    float4 _1288 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1021 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1036 = dot(float4(float(_1021 & 1u), float((_1021 & 2u) >> 1u), float((_1021 & 4u) >> 2u), float((_1021 & 8u) >> 3u)), _982);
        bool _1038 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1039 = _1038 ? 1.0f : _1036;
        float _1052 = 0.0f;
        float _1053 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1046 = clamp(mad(_698, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1048 = lerp(_1038 ? _1036 : 1.0f, 1.0f, _1046 * _1046);
            _1052 = min(_1048, _1039) * _1039;
            _1053 = _1048 * _1039;
        }
        else
        {
            _1052 = 1.0f;
            _1053 = 1.0f;
        }
        float3 _1269 = 0.0f.xxx;
        float3 _1270 = 0.0f.xxx;
        [branch]
        if ((_1053 + _1052) > 0.0f)
        {
            float _1060 = max(_687, View_View_MinRoughness);
            float _1061 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1064 = rsqrt(_1061);
            float3 _1065 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1064;
            float _1066 = dot(_686, _1065);
            float _1084 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1073 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1061 + 1.0f)), 0.0f, 1.0f));
                float _1083 = 0.0f;
                if (_1066 < _1073)
                {
                    float _1079 = _1073 + max(_1066, -_1073);
                    _1083 = (_1079 * _1079) / (4.0f * _1073);
                }
                else
                {
                    _1083 = _1066;
                }
                _1084 = _1083;
            }
            else
            {
                _1084 = _1066;
            }
            float _1085 = clamp(_1084, 0.0f, 1.0f);
            float _1086 = max(_1060, View_View_MinRoughness);
            float _1091 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1064) * mad(-_1086, _1086, 1.0f), 0.0f, 1.0f);
            float _1093 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1064, 0.0f, 1.0f);
            float3 _1262 = 0.0f.xxx;
            float3 _1263 = 0.0f.xxx;
            [branch]
            if (_1085 > 0.0f)
            {
                float _1104 = dot(_686, _435);
                float _1105 = dot(_435, _1065);
                float _1107 = rsqrt(mad(2.0f, _1105, 2.0f));
                bool _1113 = _1091 > 0.0f;
                float _1192 = 0.0f;
                float _1193 = 0.0f;
                if (_1113)
                {
                    float _1118 = sqrt(mad(-_1091, _1091, 1.0f));
                    float _1119 = 2.0f * _1066;
                    float _1120 = -_1105;
                    float _1121 = mad(_1119, _1104, _1120);
                    float _1190 = 0.0f;
                    float _1191 = 0.0f;
                    if (_1121 >= _1118)
                    {
                        _1190 = 1.0f;
                        _1191 = abs(_1104);
                    }
                    else
                    {
                        float _1126 = -_1121;
                        float _1129 = _1091 * rsqrt(mad(_1126, _1121, 1.0f));
                        float _1130 = mad(_1126, _1066, _1104);
                        float _1134 = mad(_1126, _1105, mad(2.0f * _1104, _1104, -1.0f));
                        float _1145 = _1129 * sqrt(clamp(mad(_1119 * _1104, _1105, mad(_1120, _1105, mad(-_1104, _1104, mad(-_1066, _1066, 1.0f)))), 0.0f, 1.0f));
                        float _1147 = (_1145 * 2.0f) * _1104;
                        float _1148 = mad(_1066, _1118, _1104);
                        float _1149 = mad(_1129, _1130, _1148);
                        float _1151 = mad(_1129, _1134, mad(_1105, _1118, 1.0f));
                        float _1152 = _1145 * _1151;
                        float _1153 = _1149 * _1151;
                        float _1158 = _1153 * mad(-0.5f, _1152, (0.25f * _1147) * _1149);
                        float _1168 = mad(_1149, mad(_1148, _1151 * _1151, _1153 * mad(-0.5f, mad(_1105, _1118, _1151), -0.5f)), mad(_1152, _1152, (_1147 * _1149) * mad(_1147, _1149, _1152 * (-2.0f))));
                        float _1172 = (2.0f * _1158) / mad(_1168, _1168, _1158 * _1158);
                        float _1173 = _1172 * _1168;
                        float _1175 = mad(-_1172, _1158, 1.0f);
                        float _1181 = mad(_1105, _1118, mad(_1175, _1129 * _1134, _1173 * _1147));
                        float _1183 = rsqrt(mad(2.0f, _1181, 2.0f));
                        _1190 = clamp((mad(_1066, _1118, mad(_1175, _1129 * _1130, _1173 * _1145)) + _1104) * _1183, 0.0f, 1.0f);
                        _1191 = clamp(mad(_1183, _1181, _1183), 0.0f, 1.0f);
                    }
                    _1192 = _1190;
                    _1193 = _1191;
                }
                else
                {
                    _1192 = clamp((_1066 + _1104) * _1107, 0.0f, 1.0f);
                    _1193 = clamp(mad(_1107, _1105, _1107), 0.0f, 1.0f);
                }
                float _1196 = clamp(abs(_1104) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1198 = 1.0f.xxx * _1085;
                float3 _1260 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1260 = 0.0f.xxx;
                }
                else
                {
                    float _1205 = _1060 * _1060;
                    float _1215 = 0.0f;
                    if (_1093 > 0.0f)
                    {
                        _1215 = clamp(mad(_1205, _1205, (_1093 * _1093) / mad(_1193, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1215 = _1205 * _1205;
                    }
                    float _1229 = 0.0f;
                    if (_1113)
                    {
                        _1229 = _1215 / (_1215 + (((0.25f * _1091) * mad(3.0f, asfloat(532487669 + (asint(_1215) >> 1)), _1091)) / (_1193 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1229 = 1.0f;
                    }
                    float _1232 = mad(mad(_1192, _1215, -_1192), _1192, 1.0f);
                    float _1237 = sqrt(_1215);
                    float _1238 = 1.0f - _1237;
                    float _1244 = 1.0f - _1193;
                    float _1245 = _1244 * _1244;
                    float _1246 = _1245 * _1245;
                    _1260 = _1198 * (((clamp(50.0f * _726.y, 0.0f, 1.0f) * (_1246 * _1244)).xxx + (_726 * mad(-_1246, _1244, 1.0f))) * (((_1215 / ((3.1415927410125732421875f * _1232) * _1232)) * _1229) * (0.5f / mad(_1085, mad(_1196, _1238, _1237), _1196 * mad(_1085, _1238, _1237)))));
                }
                _1262 = ((_724 * 0.3183098733425140380859375f) * _1198) * 1.0f;
                _1263 = _1260;
            }
            else
            {
                _1262 = 0.0f.xxx;
                _1263 = 0.0f.xxx;
            }
            float3 _1266 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1053;
            _1269 = mad(_1262 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1266, 0.0f.xxx);
            _1270 = (_1263 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1266;
        }
        else
        {
            _1269 = 0.0f.xxx;
            _1270 = 0.0f.xxx;
        }
        float4 _1274 = float4(_1269, 0.0f);
        float4 _1278 = float4(_1270, 0.0f);
        float4 _1285 = 0.0f.xxxx;
        float4 _1286 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _995) != 0u)
        {
            _1285 = float4(_1274.x, _1274.y, _1274.z, _1274.w);
            _1286 = float4(_1278.x, _1278.y, _1278.z, _1278.w);
        }
        else
        {
            _1285 = 0.0f.xxxx;
            _1286 = 0.0f.xxxx;
        }
        _1287 = _1285;
        _1288 = _1286;
    }
    else
    {
        _1287 = 0.0f.xxxx;
        _1288 = 0.0f.xxxx;
    }
    uint _1289 = ((((min(uint(max(0.0f, log2(mad(_326, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _953.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _953.x) * 2u;
    uint _1299 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1289 + 1u] & 1073741823u;
    uint _1302 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1289] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1304 = 0.0f.xxxx;
    float4 _1307 = 0.0f.xxxx;
    _1304 = _1287;
    _1307 = _1288;
    float4 _1305 = 0.0f.xxxx;
    float4 _1308 = 0.0f.xxxx;
    [loop]
    for (uint _1309 = 0u; _1309 < _1302; _1304 = _1305, _1307 = _1308, _1309++)
    {
        uint _1318 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1299 + _1309).x * 6u;
        uint _1321 = _1318 + 1u;
        uint _1324 = _1318 + 2u;
        uint _1327 = _1318 + 3u;
        uint _1330 = _1318 + 4u;
        uint _1334 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1324].w);
        uint _1340 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1321].y);
        uint _1356 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1327].z);
        float2 _1358 = spvUnpackHalf2x16(_1356 & 65535u);
        float _1359 = _1358.x;
        float2 _1362 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1327].w));
        float _1363 = _1362.x;
        bool _1368 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1321].w == 0.0f;
        uint _1370 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1330].w);
        uint _1383 = _1334 >> 4u;
        float3 _1399 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1318].xyz - _419;
        float _1400 = dot(_1399, _1399);
        float _1417 = 0.0f;
        if (_1368)
        {
            float _1412 = _1400 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1318].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1318].w);
            float _1415 = clamp(mad(-_1412, _1412, 1.0f), 0.0f, 1.0f);
            _1417 = _1415 * _1415;
        }
        else
        {
            float3 _1406 = _1399 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1318].w;
            _1417 = pow(1.0f - clamp(dot(_1406, _1406), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1321].w);
        }
        float _1428 = 0.0f;
        if (((_1334 >> 16u) & 3u) == 2u)
        {
            float _1425 = clamp((dot(_1399 * rsqrt(_1400), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1324].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1327].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1327].y, 0.0f, 1.0f);
            _1428 = _1417 * (_1425 * _1425);
        }
        else
        {
            _1428 = _1417;
        }
        float3 _1725 = 0.0f.xxx;
        float3 _1726 = 0.0f.xxx;
        [branch]
        if (_1428 > 0.0f)
        {
            float _1436 = 0.0f;
            [branch]
            if (uint(int((_1334 & 255u) != 0u)) != 0u)
            {
                _1436 = dot(float4(float(_1383 & 1u), float((_1383 & 2u) >> 1u), float((_1383 & 4u) >> 2u), float((_1383 & 8u) >> 3u)), _982);
            }
            else
            {
                _1436 = 1.0f;
            }
            float3 _1723 = 0.0f.xxx;
            float3 _1724 = 0.0f.xxx;
            [branch]
            if ((_1436 + _1436) > 0.0f)
            {
                float3 _1442 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1330].xyz * (0.5f * _1363);
                float3 _1443 = _1399 - _1442;
                float3 _1444 = _1399 + _1442;
                float _1447 = max(_687, View_View_MinRoughness);
                bool _1448 = _1363 > 0.0f;
                float _1473 = 0.0f;
                float _1474 = 0.0f;
                float _1475 = 0.0f;
                [branch]
                if (_1448)
                {
                    float _1460 = rsqrt(dot(_1443, _1443));
                    float _1461 = rsqrt(dot(_1444, _1444));
                    float _1462 = _1460 * _1461;
                    float _1464 = dot(_1443, _1444) * _1462;
                    _1473 = _1464;
                    _1474 = 0.5f * mad(dot(_686, _1443), _1460, dot(_686, _1444) * _1461);
                    _1475 = _1462 / mad(_1460, _1461, mad(_1464, 0.5f, 0.5f));
                }
                else
                {
                    float _1452 = dot(_1443, _1443);
                    _1473 = 1.0f;
                    _1474 = dot(_686, _1443 * rsqrt(_1452));
                    _1475 = 1.0f / (_1452 + 1.0f);
                }
                float _1493 = 0.0f;
                if (_1359 > 0.0f)
                {
                    float _1482 = sqrt(clamp((_1359 * _1359) * _1475, 0.0f, 1.0f));
                    float _1492 = 0.0f;
                    if (_1474 < _1482)
                    {
                        float _1488 = _1482 + max(_1474, -_1482);
                        _1492 = (_1488 * _1488) / (4.0f * _1482);
                    }
                    else
                    {
                        _1492 = _1474;
                    }
                    _1493 = _1492;
                }
                else
                {
                    _1493 = _1474;
                }
                float _1494 = clamp(_1493, 0.0f, 1.0f);
                float3 _1512 = 0.0f.xxx;
                if (_1448)
                {
                    float3 _1499 = reflect(-_435, _686);
                    float3 _1500 = _1444 - _1443;
                    float _1501 = dot(_1499, _1500);
                    _1512 = _1443 + (_1500 * clamp(dot(_1443, (_1499 * _1501) - _1500) / mad(_1363, _1363, -(_1501 * _1501)), 0.0f, 1.0f));
                }
                else
                {
                    _1512 = _1443;
                }
                float _1514 = rsqrt(dot(_1512, _1512));
                float3 _1515 = _1512 * _1514;
                float _1516 = max(_1447, View_View_MinRoughness);
                float _1521 = clamp((_1359 * _1514) * mad(-_1516, _1516, 1.0f), 0.0f, 1.0f);
                float _1523 = clamp(spvUnpackHalf2x16(_1356 >> 16u).x * _1514, 0.0f, 1.0f);
                float3 _1716 = 0.0f.xxx;
                float3 _1717 = 0.0f.xxx;
                [branch]
                if (_1494 > 0.0f)
                {
                    float _1534 = dot(_686, _1515);
                    float _1535 = dot(_686, _435);
                    float _1536 = dot(_435, _1515);
                    float _1538 = rsqrt(mad(2.0f, _1536, 2.0f));
                    bool _1544 = _1521 > 0.0f;
                    float _1623 = 0.0f;
                    float _1624 = 0.0f;
                    if (_1544)
                    {
                        float _1549 = sqrt(mad(-_1521, _1521, 1.0f));
                        float _1550 = 2.0f * _1534;
                        float _1551 = -_1536;
                        float _1552 = mad(_1550, _1535, _1551);
                        float _1621 = 0.0f;
                        float _1622 = 0.0f;
                        if (_1552 >= _1549)
                        {
                            _1621 = 1.0f;
                            _1622 = abs(_1535);
                        }
                        else
                        {
                            float _1557 = -_1552;
                            float _1560 = _1521 * rsqrt(mad(_1557, _1552, 1.0f));
                            float _1561 = mad(_1557, _1534, _1535);
                            float _1565 = mad(_1557, _1536, mad(2.0f * _1535, _1535, -1.0f));
                            float _1576 = _1560 * sqrt(clamp(mad(_1550 * _1535, _1536, mad(_1551, _1536, mad(-_1535, _1535, mad(-_1534, _1534, 1.0f)))), 0.0f, 1.0f));
                            float _1578 = (_1576 * 2.0f) * _1535;
                            float _1579 = mad(_1534, _1549, _1535);
                            float _1580 = mad(_1560, _1561, _1579);
                            float _1582 = mad(_1560, _1565, mad(_1536, _1549, 1.0f));
                            float _1583 = _1576 * _1582;
                            float _1584 = _1580 * _1582;
                            float _1589 = _1584 * mad(-0.5f, _1583, (0.25f * _1578) * _1580);
                            float _1599 = mad(_1580, mad(_1579, _1582 * _1582, _1584 * mad(-0.5f, mad(_1536, _1549, _1582), -0.5f)), mad(_1583, _1583, (_1578 * _1580) * mad(_1578, _1580, _1583 * (-2.0f))));
                            float _1603 = (2.0f * _1589) / mad(_1599, _1599, _1589 * _1589);
                            float _1604 = _1603 * _1599;
                            float _1606 = mad(-_1603, _1589, 1.0f);
                            float _1612 = mad(_1536, _1549, mad(_1606, _1560 * _1565, _1604 * _1578));
                            float _1614 = rsqrt(mad(2.0f, _1612, 2.0f));
                            _1621 = clamp((mad(_1534, _1549, mad(_1606, _1560 * _1561, _1604 * _1576)) + _1535) * _1614, 0.0f, 1.0f);
                            _1622 = clamp(mad(_1614, _1612, _1614), 0.0f, 1.0f);
                        }
                        _1623 = _1621;
                        _1624 = _1622;
                    }
                    else
                    {
                        _1623 = clamp((_1534 + _1535) * _1538, 0.0f, 1.0f);
                        _1624 = clamp(mad(_1538, _1536, _1538), 0.0f, 1.0f);
                    }
                    float _1627 = clamp(abs(_1535) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1630 = 1.0f.xxx * ((_1368 ? _1475 : 1.0f) * _1494);
                    float3 _1714 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1363, _1359), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1714 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1637 = _1447 * _1447;
                        float _1647 = 0.0f;
                        if (_1523 > 0.0f)
                        {
                            _1647 = clamp(mad(_1637, _1637, (_1523 * _1523) / mad(_1624, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1647 = _1637 * _1637;
                        }
                        float _1661 = 0.0f;
                        float _1662 = 0.0f;
                        if (_1544)
                        {
                            float _1659 = _1647 + (((0.25f * _1521) * mad(3.0f, asfloat(532487669 + (asint(_1647) >> 1)), _1521)) / (_1624 + 0.001000000047497451305389404296875f));
                            _1661 = _1647 / _1659;
                            _1662 = _1659;
                        }
                        else
                        {
                            _1661 = 1.0f;
                            _1662 = _1647;
                        }
                        float _1683 = 0.0f;
                        if (_1473 < 1.0f)
                        {
                            float _1669 = sqrt((1.00010001659393310546875f - _1473) / (1.0f + _1473));
                            _1683 = _1661 * sqrt(_1662 / (_1662 + (((0.25f * _1669) * mad(3.0f, asfloat(532487669 + (asint(_1662) >> 1)), _1669)) / (_1624 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1683 = _1661;
                        }
                        float _1686 = mad(mad(_1623, _1647, -_1623), _1623, 1.0f);
                        float _1691 = sqrt(_1647);
                        float _1692 = 1.0f - _1691;
                        float _1698 = 1.0f - _1624;
                        float _1699 = _1698 * _1698;
                        float _1700 = _1699 * _1699;
                        _1714 = _1630 * (((clamp(50.0f * _726.y, 0.0f, 1.0f) * (_1700 * _1698)).xxx + (_726 * mad(-_1700, _1698, 1.0f))) * (((_1647 / ((3.1415927410125732421875f * _1686) * _1686)) * _1683) * (0.5f / mad(_1494, mad(_1627, _1692, _1691), _1627 * mad(_1494, _1692, _1691)))));
                    }
                    _1716 = ((_724 * 0.3183098733425140380859375f) * _1630) * 1.0f;
                    _1717 = _1714;
                }
                else
                {
                    _1716 = 0.0f.xxx;
                    _1717 = 0.0f.xxx;
                }
                float3 _1720 = ((float3(float((_1340 >> 0u) & 1023u), float((_1340 >> 10u) & 1023u), float((_1340 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1321].x) * _1428) * _1436;
                _1723 = mad(_1716 * (float((_1370 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1720, 0.0f.xxx);
                _1724 = (_1717 * (float(_1370 & 1023u) * 0.000977517105638980865478515625f)) * _1720;
            }
            else
            {
                _1723 = 0.0f.xxx;
                _1724 = 0.0f.xxx;
            }
            _1725 = _1723;
            _1726 = _1724;
        }
        else
        {
            _1725 = 0.0f.xxx;
            _1726 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1334 >> 8u) & 7u) & _995) != 0u)
        {
            _1305 = _1304 + float4(_1725, 0.0f);
            _1308 = _1307 + float4(_1726, 0.0f);
        }
        else
        {
            _1305 = _1304;
            _1308 = _1307;
        }
    }
    bool4 _1744 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1753 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1757 = (_686 * (2.0f * dot(_435, _686))) - _435;
    float _1764 = mad(-1.2000000476837158203125f, log2(max(_687, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1778 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1757, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1753].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1764);
    float _1782 = 1.0f - _1778.w;
    float3 _1809 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1809 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1757, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1764).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1809 = 0.0f.xxx;
    }
    float4 _1815 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _687) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1816 = _1815.x;
    float2 _1825 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1816 * _1816, exp2((-9.27999973297119140625f) * clamp(dot(_686, _435), 0.0f, 1.0f))), _1816, _1815.y)) + _1815.zw;
    bool _1852 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2276 = 0.0f.xxxx;
    if (_1852)
    {
        uint2 _1864 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1866 = normalize(_419 - View_View_TranslatedWorldCameraOrigin);
        uint _1867 = _1864.x;
        uint4 _1871 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1867, _1864.y, 0u), 0u));
        uint _1872 = _1871.x;
        float4 _1874 = 0.0f.xxxx;
        _1874 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1875 = 0.0f.xxxx;
        for (int _1877 = 0; uint(_1877) < _1872; _1874 = _1875, _1877++)
        {
            uint _1888 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1867, _1864.y, uint(1 + _1877)), 0u)).x * 3u;
            float4 _1890 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1888);
            float4 _1892 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1888 + 1u);
            float4 _1894 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1888 + 2u);
            float3 _1895 = _1890.xyz;
            float _1896 = _1890.w;
            float _1897 = 1.0f / _1896;
            uint _1899 = asuint(_1892.x);
            float2 _1905 = float2(spvUnpackHalf2x16(_1899).x, spvUnpackHalf2x16(_1899 >> 16u).x);
            float3 _1906 = float3(_1905.x, _1905.y, _295.z);
            uint _1908 = asuint(_1892.y);
            _1906.z = spvUnpackHalf2x16(_1908).x;
            float3 _1915 = 0.0f.xxx;
            _1915.x = spvUnpackHalf2x16(_1908 >> 16u).x;
            uint _1917 = asuint(_1892.z);
            float2 _1923 = float2(spvUnpackHalf2x16(_1917).x, spvUnpackHalf2x16(_1917 >> 16u).x);
            float3 _1924 = float3(_1915.x, _1923.x, _1923.y);
            float3x3 _1929 = float3x3(_1906 * _1897, _1924 * _1897, cross(_1906, _1924) * _1897);
            uint _1931 = asuint(_1894.x);
            float2 _1934 = spvUnpackHalf2x16((_1931 >> 17u) & 32752u);
            float _1935 = _1934.x;
            float2 _1938 = spvUnpackHalf2x16((_1931 >> 6u) & 32752u);
            float _1939 = _1938.x;
            float2 _1942 = spvUnpackHalf2x16((_1931 << 5u) & 32736u);
            float _1943 = _1942.x;
            uint _1945 = asuint(_1894.y);
            float3 _1963 = 0.0f.xxx;
            if (_1945 > 0u)
            {
                _1963 = float3(spvUnpackHalf2x16((_1945 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1945 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1945 << 5u) & 32736u).x);
            }
            else
            {
                _1963 = 0.0f.xxx;
            }
            uint _1965 = asuint(_1894.z);
            float _1980 = float((_1965 >> 24u) & 255u);
            float _1981 = _1980 * 0.0039215688593685626983642578125f;
            float3 _1988 = mul(View_View_TranslatedWorldCameraOrigin - _1895, _1929);
            float3 _1990 = normalize(mul(_1866, _1929));
            float _1992 = dot(_1990, _1990);
            float _1993 = dot(_1990, _1988);
            float _1994 = 2.0f * _1993;
            float _1999 = mad(_1994, _1994, -((4.0f * _1992) * mad(-1.0f, 1.0f, dot(_1988, _1988))));
            float2 _2011 = 0.0f.xx;
            [flatten]
            if (_1999 >= 0.0f)
            {
                _2011 = ((_1993 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1999))) / (2.0f * _1992).xx;
            }
            else
            {
                _2011 = (-1.0f).xx;
            }
            float3 _2017 = mul(_419 - _1895, _1929) - _1988;
            float2 _2021 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1897, _2011), sqrt(dot(_2017, _2017)).xx);
            float _2171 = 0.0f;
            float3 _2172 = 0.0f.xxx;
            if (any(bool2(_2021.x > 0.0f.xx.x, _2021.y > 0.0f.xx.y)))
            {
                float2 _2042 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2032 = dot(_1866, View_View_ViewForward);
                    _2042 = max(_2021, ((View_View_VolumetricFogMaxDistance * ((_2032 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2032) : 0.0f)) * _1897).xx);
                }
                else
                {
                    _2042 = _2021;
                }
                float _2047 = max(0.0f, abs(_2042.y - _2042.x));
                float _2169 = 0.0f;
                float3 _2170 = 0.0f.xxx;
                if (_2047 > 0.0f)
                {
                    float3 _2052 = _1988 + (_1990 * _2042.x);
                    float _2088 = 0.0f;
                    if (_1935 > 0.0f)
                    {
                        float _2056 = dot(_1990, _2052);
                        float _2057 = dot(_2052, _2052);
                        float _2058 = _2057 - 1.0f;
                        float _2060 = mad(_2056, _2056, 1.0f - _2057);
                        float _2087 = 0.0f;
                        if (_2060 >= 0.0f)
                        {
                            float _2064 = sqrt(_2060);
                            float _2065 = -_2056;
                            float _2068 = max(_2065 - _2064, 0.0f);
                            float _2070 = min(max(_2065 + _2064, 0.0f), _2047);
                            float _2071 = _2068 * _2068;
                            float _2072 = _2070 * _2070;
                            _2087 = max(0.0f, (_1935 * ((-mad(_2072 * _2070, 0.3333333432674407958984375f, mad(_2058, _2070, _2056 * _2072))) - (-mad(_2071 * _2068, 0.3333333432674407958984375f, mad(_2058, _2068, _2056 * _2071))))) * 0.75f);
                        }
                        else
                        {
                            _2087 = 0.0f;
                        }
                        _2088 = _2087;
                    }
                    else
                    {
                        _2088 = 0.0f;
                    }
                    float _2113 = 0.0f;
                    if (_1939 > 0.0f)
                    {
                        float _2094 = _1990.z;
                        float _2100 = (abs(_2094) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2094 >= 0.0f) ? 1.0f : (-1.0f))) : _2094;
                        float _2103 = max(-80.0f, (_2052.z - _1894.w) * _1943);
                        _2113 = (_1939 / (_1943 * _2100)) * (exp(-_2103) - exp(-mad(_2100 * _2047, _1943, _2103)));
                    }
                    else
                    {
                        _2113 = 0.0f;
                    }
                    float _2124 = exp((log(mad(exp(-_2088) - 1.0f, 1.0f - exp(-_2113), 1.0f)) * _1896) * 0.00999999977648258209228515625f);
                    float _2128 = _1980 * (-0.0039215688593685626983642578125f);
                    float _2135 = mad(_1980 * (-0.007843137718737125396728515625f), dot(_1866, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2128, _2128, 1.0f));
                    float3 _2140 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1981, _2128, 1.0f) / ((12.56637096405029296875f * _2135) * sqrt(_2135)));
                    float3 _2166 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2151 = float4(_1866 * _2128, 1.0f);
                        _2166 = _2140 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2151), dot(View_SkyIrradianceEnvironmentMap[1u], _2151), dot(View_SkyIrradianceEnvironmentMap[2u], _2151)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2166 = _2140;
                    }
                    _2169 = _2124;
                    _2170 = mad(_2166, float4(float((_1965 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1965 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1965 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1981).xyz, _1963) * (1.0f - _2124);
                }
                else
                {
                    _2169 = 1.0f;
                    _2170 = 0.0f.xxx;
                }
                _2171 = _2169;
                _2172 = _2170;
            }
            else
            {
                _2171 = 1.0f;
                _2172 = 0.0f.xxx;
            }
            _1875 = float4((_1874.xyz * _2171) + float4(_2172, _2171).xyz, _1874.w * _2171);
        }
        float _2192 = _1874.w * in_var_TEXCOORD7.w;
        float4 _2200 = float4(_93, 1.0f);
        precise float4 _97 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _98 = _2200 + _97;
        precise float4 _99 = _98 - _2200;
        precise float4 _100 = _98 - _99;
        precise float4 _101 = _2200 - _100;
        precise float4 _102 = _97 - _99;
        precise float4 _103 = _101 + _102;
        float4 _2211 = mul(_98 + (float4(_96, 0.0f) + _103), View_View_RelativeWorldToClip);
        float _2212 = _2211.w;
        float4 _2275 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2275 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2258 = 0.0f.xxxx;
            float _2259 = 0.0f;
            if (_1852)
            {
                float4 _2254 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2211.xy / _2212.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2212, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2256 = _2254.xyz * View_View_OneOverPreExposure;
                _2258 = float4(_2256.x, _2256.y, _2256.z, _2254.w);
                _2259 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2258 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2259 = 0.0f;
            }
            float4 _2264 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2258, clamp((_698 - _2259) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2267 = _2264.w;
            _2275 = float4(_2264.xyz + (float4(_1874.xyz + (in_var_TEXCOORD7.xyz * _1874.w), _2192).xyz * _2267), _2267 * _2192);
            break;
        } while(false);
        _2276 = _2275;
    }
    else
    {
        _2276 = in_var_TEXCOORD7;
    }
    float3 _2283 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].yzw, Material_Material_PreshaderBuffer[5].x.xxx), 0.0f.xxx);
    float3 _2341 = 0.0f.xxx;
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
        float3 _2303 = abs(_110);
        float3 _2304 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2340 = 0.0f.xxx;
        if (any(bool3(_2303.x > _2304.x, _2303.y > _2304.y, _2303.z > _2304.z)))
        {
            float3 _2336 = frac(dot(frac(frac(_93 * 1.52587890625e-05f.xxx) + frac(_96 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2340 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2336.x > 0.5f.xxx.x, _2336.y > 0.5f.xxx.y, _2336.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2326 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2314 = abs(_419 - in_var_TEXCOORD9);
                _2326 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2314.x, max(_2314.y, _2314.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2326 = _2283;
            }
            _2340 = _2326;
        }
        _2341 = _2340;
    }
    else
    {
        _2341 = _2283;
    }
    float3 _2343 = mad((_772 * _912) * _724, max(_921, ((((((_690 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _644) + ((_690 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _644) + ((_690 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _644), lerp(mad((((float4(_1778.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1753].x, _1782).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1809 * _1782)).xyz * ((_726 * _1825.x) + (clamp(50.0f * _726.y, 0.0f, 1.0f) * _1825.y).xxx)) * _912, max(_921, ((((((_726 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _644) + ((_726 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _644) + ((_726 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _644), float4(_1744.x ? 0.0f.xxxx.x : _1304.x, _1744.y ? 0.0f.xxxx.y : _1304.y, _1744.z ? 0.0f.xxxx.z : _1304.z, _1744.w ? 0.0f.xxxx.w : _1304.w).xyz + float4(_1744.x ? 0.0f.xxxx.x : _1307.x, _1744.y ? 0.0f.xxxx.y : _1307.y, _1744.z ? 0.0f.xxxx.z : _1307.z, _1744.w ? 0.0f.xxxx.w : _1307.w).xyz), _724 + (_726 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2341;
    float4 _2351 = float4((_2343 * _2276.w) + _2276.xyz, 0.0f);
    _2351.w = 0.0f;
    float4 _2355 = _2351 * View_View_PreExposure;
    float3 _2360 = min(_2355.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2360.x, _2360.y, _2360.z, _2355.w);
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
