#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _302 = 0.0f;
static float3 _303 = 0.0f.xxx;

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
    float4 Material_Material_PreshaderBuffer[8] : packoffset(c0);
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
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
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
Texture2D<float4> Material_Texture2D_16;
SamplerState Material_Texture2D_16Sampler;
Texture2D<float4> Material_Texture2D_17;
SamplerState Material_Texture2D_17Sampler;
Texture2D<float4> Material_Texture2D_18;
SamplerState Material_Texture2D_18Sampler;
Texture2D<float4> Material_Texture2D_19;
SamplerState Material_Texture2D_19Sampler;

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
    float _334 = 1.0f / gl_FragCoord.w;
    float4 _382 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _386 = mad(float2(_382.zw), 2.0f.xx, (-1.0f).xx);
    float _390 = sqrt(max(1.0f - dot(_386, _386), 0.0f));
    float _391 = _386.x;
    float3 _393 = float3(_391, _386.y, _390);
    float3 _396 = normalize(float3(_390, 0.0f, -_391));
    float2 _411 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _418 = float4(mad(_411, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _302, 1.0f) * _334;
    float4 _423 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _427 = _423.xyz / _423.w.xxx;
    float3 _428 = _427 - View_View_RelativePreViewTranslationTO;
    precise float3 _100 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _428);
    precise float3 _103 = _428 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _100);
    bool _430 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _431 = -View_View_ViewForward;
    float3 _433 = normalize(-_427);
    float3 _443 = float3(_430 ? _431.x : _433.x, _430 ? _431.y : _433.y, _430 ? _431.z : _433.z);
    float _450 = dot(Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy), Material_Material_PreshaderBuffer[0]);
    float4 _453 = Material_Texture2D_1.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _456 = dot(_453, Material_Material_PreshaderBuffer[1]);
    float _459 = dot(_453, Material_Material_PreshaderBuffer[2]);
    float _462 = dot(_453, Material_Material_PreshaderBuffer[3]);
    float _465 = dot(_453, Material_Material_PreshaderBuffer[4]);
    float2 _468 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float4 _476 = Material_Texture2D_2.Sample(View_MaterialTextureBilinearWrapedSampler, _468 * Material_Material_PreshaderBuffer[5].x.xx);
    float _480 = _476.x * Material_Material_PreshaderBuffer[5].y;
    float4 _492 = Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, float2(mad(floor(_480) + Material_Material_PreshaderBuffer[5].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _496 = Material_Material_PreshaderBuffer[5].w.xx;
    float2 _497 = mad(_492.xy, _496, _468);
    float2 _499 = mad(_492.zw, _496, _468);
    float2 _501 = ddy(_468);
    float2 _502 = ddx(_468);
    float2 _514 = lerp(_497, _499, clamp(round(mad(0.5f, (Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _499, _502, _501) - Material_Texture2D_4.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _497, _502, _501)).x, frac(_480))), 0.0f, 1.0f).xx);
    float2 _520 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _514, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _529 = _450.xxx;
    float2 _535 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _514, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _544 = _456.xxx;
    float2 _552 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _514, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _561 = _459.xxx;
    float2 _566 = _514 * Material_Material_PreshaderBuffer[6].x.xx;
    float2 _572 = mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _566, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _581 = _462.xxx;
    float2 _588 = mad(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _514, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _597 = _465.xxx;
    float3 _605 = normalize(mul(normalize((mad(float4(_588, sqrt(clamp(1.0f - dot(_588, _588), 0.0f, 1.0f)), 1.0f).xyz, _597, mad(float4(_572, sqrt(clamp(1.0f - dot(_572, _572), 0.0f, 1.0f)), 1.0f).xyz, _581, mad(float4(_552, sqrt(clamp(1.0f - dot(_552, _552), 0.0f, 1.0f)), 1.0f).xyz, _561, mad(float4(_520, sqrt(clamp(1.0f - dot(_520, _520), 0.0f, 1.0f)), 1.0f).xyz, _529, float4(_535, sqrt(clamp(1.0f - dot(_535, _535), 0.0f, 1.0f)), 1.0f).xyz * _544)))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_396, cross(_393, _396), _393), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _606 = _605 * 1.0f;
    float4 _641 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _514, View_View_MaterialTextureMipBias);
    float4 _647 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _514, View_View_MaterialTextureMipBias);
    float4 _652 = Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, _514, View_View_MaterialTextureMipBias);
    float4 _659 = Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, _514, View_View_MaterialTextureMipBias);
    float4 _665 = Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _566, View_View_MaterialTextureMipBias);
    float4 _671 = Material_Texture2D_19.SampleBias(Material_Texture2D_19Sampler, _514, View_View_MaterialTextureMipBias);
    float3 _687 = clamp(mad(_641.xyz, _597, mad(Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _566, View_View_MaterialTextureMipBias).xyz, _581, mad(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _514, View_View_MaterialTextureMipBias).xyz, _561, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _514, View_View_MaterialTextureMipBias).xyz, _529, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _514, View_View_MaterialTextureMipBias).xyz * _544)))), 0.0f.xxx, 1.0f.xxx);
    float _691 = mad(clamp(mad(_671.y * Material_Material_PreshaderBuffer[7].w, _465, mad(_665.y, _462, mad(_659.y, _459, mad(_647.y, _450, _652.y * _456)))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _692 = clamp(mad(_671.x, _465, mad(_665.x, _462, mad(_659.x, _459, mad(_647.x, _450, _652.x * _456)))), 0.0f, 1.0f);
    float3 _734 = 0.0f.xxx;
    float _735 = 0.0f;
    float _736 = 0.0f;
    float _737 = 0.0f;
    float3 _738 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _706 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _710 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _706, 0.0f);
        float4 _713 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _706, 0.0f);
        float4 _716 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _706, 0.0f);
        float _726 = _716.w;
        _734 = normalize((_606 * _713.w) + ((_713.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _735 = mad(_691, _726, _716.z);
        _736 = mad(0.5f, _726, _716.y);
        _737 = _716.x;
        _738 = (_687 * _710.w) + _710.xyz;
    }
    else
    {
        _734 = _606;
        _735 = _691;
        _736 = 0.5f;
        _737 = 0.0f;
        _738 = _687;
    }
    float _746 = _418.w;
    float3 _759 = ((_738 - (_738 * _737)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _766 = (lerp((0.07999999821186065673828125f * _736).xxx, _738, _737.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _767 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _772 = 0.0f.xxx;
    if (_767)
    {
        _772 = _759 + (_766 * 0.449999988079071044921875f);
    }
    else
    {
        _772 = _759;
    }
    bool3 _773 = _767.xxx;
    float3 _774 = float3(_773.x ? 0.0f.xxx.x : _766.x, _773.y ? 0.0f.xxx.y : _766.y, _773.z ? 0.0f.xxx.z : _766.z);
    float3 _820 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float4 _783 = float4(_734, 1.0f);
        float4 _796 = _783.xyzz * _783.yzzx;
        _820 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _783), dot(View_SkyIrradianceEnvironmentMap[1u], _783), dot(View_SkyIrradianceEnvironmentMap[2u], _783)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _796), dot(View_SkyIrradianceEnvironmentMap[4u], _796), dot(View_SkyIrradianceEnvironmentMap[5u], _796))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_734.x, _734.x, -(_734.y * _734.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _820 = 0.0f.xxx;
    }
    float2 _826 = mad(_418.xy / _746.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _936 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _837 = int2(trunc(_826 * View_View_BufferSizeAndInvSize.xy));
        int _838 = _837.x;
        int _839 = _837.y;
        float4 _843 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_838, _839, 0).xy, 0));
        float _844 = _843.x;
        float _854 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _935 = 0.0f.xx;
        if ((abs((mad(_844, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_844, View_View_InvDeviceZToWorldZTransform.z, _854))) - _746) / _746) > 0.00999999977648258209228515625f)
        {
            float2 _867 = _826 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _871 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_838 - 1, _839, 0).xy, 0));
            float _872 = _871.x;
            float _878 = abs((mad(_872, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_872, View_View_InvDeviceZToWorldZTransform.z, _854))) - _746);
            bool _879 = _878 < 100000000.0f;
            bool2 _880 = _879.xx;
            float2 _881 = float2(_880.x ? _867.x : _826.x, _880.y ? _867.y : _826.y);
            float _882 = _879 ? _878 : 100000000.0f;
            float2 _885 = _826 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _889 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_838, _839 + 1, 0).xy, 0));
            float _890 = _889.x;
            float _896 = abs((mad(_890, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_890, View_View_InvDeviceZToWorldZTransform.z, _854))) - _746);
            bool _897 = _896 < _882;
            bool2 _898 = _897.xx;
            float2 _899 = float2(_898.x ? _885.x : _881.x, _898.y ? _885.y : _881.y);
            float _900 = _897 ? _896 : _882;
            float2 _902 = _826 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _906 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_838 + 1, _839, 0).xy, 0));
            float _907 = _906.x;
            float _913 = abs((mad(_907, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_907, View_View_InvDeviceZToWorldZTransform.z, _854))) - _746);
            bool _914 = _913 < _900;
            bool2 _915 = _914.xx;
            float2 _916 = float2(_915.x ? _902.x : _899.x, _915.y ? _902.y : _899.y);
            float2 _920 = _826 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _924 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_838, _839 - 1, 0).xy, 0));
            float _925 = _924.x;
            bool2 _933 = (abs((mad(_925, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_925, View_View_InvDeviceZToWorldZTransform.z, _854))) - _746) < (_914 ? _913 : _900)).xx;
            _935 = float2(_933.x ? _920.x : _916.x, _933.y ? _920.y : _916.y);
        }
        else
        {
            _935 = _826;
        }
        _936 = _935;
    }
    else
    {
        _936 = _826;
    }
    uint _942_dummy_parameter;
    uint2 _942 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _942_dummy_parameter);
    float _960 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_936 * float2(float(_942.x), float(_942.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _969 = _692.xxx;
    uint2 _1001 = uint2(_411 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _1029 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _1029 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_936 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _1029 = 1.0f.xxxx;
    }
    float4 _1030 = _1029 * _1029;
    uint _1043 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1335 = 0.0f.xxxx;
    float4 _1336 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _1069 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1084 = dot(float4(float(_1069 & 1u), float((_1069 & 2u) >> 1u), float((_1069 & 4u) >> 2u), float((_1069 & 8u) >> 3u)), _1030);
        bool _1086 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1087 = _1086 ? 1.0f : _1084;
        float _1100 = 0.0f;
        float _1101 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1094 = clamp(mad(_746, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1096 = lerp(_1086 ? _1084 : 1.0f, 1.0f, _1094 * _1094);
            _1100 = min(_1096, _1087) * _1087;
            _1101 = _1096 * _1087;
        }
        else
        {
            _1100 = 1.0f;
            _1101 = 1.0f;
        }
        float3 _1317 = 0.0f.xxx;
        float3 _1318 = 0.0f.xxx;
        [branch]
        if ((_1101 + _1100) > 0.0f)
        {
            float _1108 = max(_735, View_View_MinRoughness);
            float _1109 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1112 = rsqrt(_1109);
            float3 _1113 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1112;
            float _1114 = dot(_734, _1113);
            float _1132 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1121 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1109 + 1.0f)), 0.0f, 1.0f));
                float _1131 = 0.0f;
                if (_1114 < _1121)
                {
                    float _1127 = _1121 + max(_1114, -_1121);
                    _1131 = (_1127 * _1127) / (4.0f * _1121);
                }
                else
                {
                    _1131 = _1114;
                }
                _1132 = _1131;
            }
            else
            {
                _1132 = _1114;
            }
            float _1133 = clamp(_1132, 0.0f, 1.0f);
            float _1134 = max(_1108, View_View_MinRoughness);
            float _1139 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1112) * mad(-_1134, _1134, 1.0f), 0.0f, 1.0f);
            float _1141 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1112, 0.0f, 1.0f);
            float3 _1310 = 0.0f.xxx;
            float3 _1311 = 0.0f.xxx;
            [branch]
            if (_1133 > 0.0f)
            {
                float _1152 = dot(_734, _443);
                float _1153 = dot(_443, _1113);
                float _1155 = rsqrt(mad(2.0f, _1153, 2.0f));
                bool _1161 = _1139 > 0.0f;
                float _1240 = 0.0f;
                float _1241 = 0.0f;
                if (_1161)
                {
                    float _1166 = sqrt(mad(-_1139, _1139, 1.0f));
                    float _1167 = 2.0f * _1114;
                    float _1168 = -_1153;
                    float _1169 = mad(_1167, _1152, _1168);
                    float _1238 = 0.0f;
                    float _1239 = 0.0f;
                    if (_1169 >= _1166)
                    {
                        _1238 = 1.0f;
                        _1239 = abs(_1152);
                    }
                    else
                    {
                        float _1174 = -_1169;
                        float _1177 = _1139 * rsqrt(mad(_1174, _1169, 1.0f));
                        float _1178 = mad(_1174, _1114, _1152);
                        float _1182 = mad(_1174, _1153, mad(2.0f * _1152, _1152, -1.0f));
                        float _1193 = _1177 * sqrt(clamp(mad(_1167 * _1152, _1153, mad(_1168, _1153, mad(-_1152, _1152, mad(-_1114, _1114, 1.0f)))), 0.0f, 1.0f));
                        float _1195 = (_1193 * 2.0f) * _1152;
                        float _1196 = mad(_1114, _1166, _1152);
                        float _1197 = mad(_1177, _1178, _1196);
                        float _1199 = mad(_1177, _1182, mad(_1153, _1166, 1.0f));
                        float _1200 = _1193 * _1199;
                        float _1201 = _1197 * _1199;
                        float _1206 = _1201 * mad(-0.5f, _1200, (0.25f * _1195) * _1197);
                        float _1216 = mad(_1197, mad(_1196, _1199 * _1199, _1201 * mad(-0.5f, mad(_1153, _1166, _1199), -0.5f)), mad(_1200, _1200, (_1195 * _1197) * mad(_1195, _1197, _1200 * (-2.0f))));
                        float _1220 = (2.0f * _1206) / mad(_1216, _1216, _1206 * _1206);
                        float _1221 = _1220 * _1216;
                        float _1223 = mad(-_1220, _1206, 1.0f);
                        float _1229 = mad(_1153, _1166, mad(_1223, _1177 * _1182, _1221 * _1195));
                        float _1231 = rsqrt(mad(2.0f, _1229, 2.0f));
                        _1238 = clamp((mad(_1114, _1166, mad(_1223, _1177 * _1178, _1221 * _1193)) + _1152) * _1231, 0.0f, 1.0f);
                        _1239 = clamp(mad(_1231, _1229, _1231), 0.0f, 1.0f);
                    }
                    _1240 = _1238;
                    _1241 = _1239;
                }
                else
                {
                    _1240 = clamp((_1114 + _1152) * _1155, 0.0f, 1.0f);
                    _1241 = clamp(mad(_1155, _1153, _1155), 0.0f, 1.0f);
                }
                float _1244 = clamp(abs(_1152) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1246 = 1.0f.xxx * _1133;
                float3 _1308 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1308 = 0.0f.xxx;
                }
                else
                {
                    float _1253 = _1108 * _1108;
                    float _1263 = 0.0f;
                    if (_1141 > 0.0f)
                    {
                        _1263 = clamp(mad(_1253, _1253, (_1141 * _1141) / mad(_1241, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1263 = _1253 * _1253;
                    }
                    float _1277 = 0.0f;
                    if (_1161)
                    {
                        _1277 = _1263 / (_1263 + (((0.25f * _1139) * mad(3.0f, asfloat(532487669 + (asint(_1263) >> 1)), _1139)) / (_1241 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1277 = 1.0f;
                    }
                    float _1280 = mad(mad(_1240, _1263, -_1240), _1240, 1.0f);
                    float _1285 = sqrt(_1263);
                    float _1286 = 1.0f - _1285;
                    float _1292 = 1.0f - _1241;
                    float _1293 = _1292 * _1292;
                    float _1294 = _1293 * _1293;
                    _1308 = _1246 * (((clamp(50.0f * _774.y, 0.0f, 1.0f) * (_1294 * _1292)).xxx + (_774 * mad(-_1294, _1292, 1.0f))) * (((_1263 / ((3.1415927410125732421875f * _1280) * _1280)) * _1277) * (0.5f / mad(_1133, mad(_1244, _1286, _1285), _1244 * mad(_1133, _1286, _1285)))));
                }
                _1310 = ((_772 * 0.3183098733425140380859375f) * _1246) * 1.0f;
                _1311 = _1308;
            }
            else
            {
                _1310 = 0.0f.xxx;
                _1311 = 0.0f.xxx;
            }
            float3 _1314 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1101;
            _1317 = mad(_1310 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1314, 0.0f.xxx);
            _1318 = (_1311 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1314;
        }
        else
        {
            _1317 = 0.0f.xxx;
            _1318 = 0.0f.xxx;
        }
        float4 _1322 = float4(_1317, 0.0f);
        float4 _1326 = float4(_1318, 0.0f);
        float4 _1333 = 0.0f.xxxx;
        float4 _1334 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _1043) != 0u)
        {
            _1333 = float4(_1322.x, _1322.y, _1322.z, _1322.w);
            _1334 = float4(_1326.x, _1326.y, _1326.z, _1326.w);
        }
        else
        {
            _1333 = 0.0f.xxxx;
            _1334 = 0.0f.xxxx;
        }
        _1335 = _1333;
        _1336 = _1334;
    }
    else
    {
        _1335 = 0.0f.xxxx;
        _1336 = 0.0f.xxxx;
    }
    uint _1337 = ((((min(uint(max(0.0f, log2(mad(_334, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _1001.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _1001.x) * 2u;
    uint _1347 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1337 + 1u] & 1073741823u;
    uint _1350 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1337] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1352 = 0.0f.xxxx;
    float4 _1355 = 0.0f.xxxx;
    _1352 = _1335;
    _1355 = _1336;
    float4 _1353 = 0.0f.xxxx;
    float4 _1356 = 0.0f.xxxx;
    [loop]
    for (uint _1357 = 0u; _1357 < _1350; _1352 = _1353, _1355 = _1356, _1357++)
    {
        uint _1366 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1347 + _1357).x * 6u;
        uint _1369 = _1366 + 1u;
        uint _1372 = _1366 + 2u;
        uint _1375 = _1366 + 3u;
        uint _1378 = _1366 + 4u;
        uint _1382 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1372].w);
        uint _1388 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1369].y);
        uint _1404 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1375].z);
        float2 _1406 = spvUnpackHalf2x16(_1404 & 65535u);
        float _1407 = _1406.x;
        float2 _1410 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1375].w));
        float _1411 = _1410.x;
        bool _1416 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1369].w == 0.0f;
        uint _1418 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1378].w);
        uint _1431 = _1382 >> 4u;
        float3 _1447 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1366].xyz - _427;
        float _1448 = dot(_1447, _1447);
        float _1465 = 0.0f;
        if (_1416)
        {
            float _1460 = _1448 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1366].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1366].w);
            float _1463 = clamp(mad(-_1460, _1460, 1.0f), 0.0f, 1.0f);
            _1465 = _1463 * _1463;
        }
        else
        {
            float3 _1454 = _1447 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1366].w;
            _1465 = pow(1.0f - clamp(dot(_1454, _1454), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1369].w);
        }
        float _1476 = 0.0f;
        if (((_1382 >> 16u) & 3u) == 2u)
        {
            float _1473 = clamp((dot(_1447 * rsqrt(_1448), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1372].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1375].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1375].y, 0.0f, 1.0f);
            _1476 = _1465 * (_1473 * _1473);
        }
        else
        {
            _1476 = _1465;
        }
        float3 _1773 = 0.0f.xxx;
        float3 _1774 = 0.0f.xxx;
        [branch]
        if (_1476 > 0.0f)
        {
            float _1484 = 0.0f;
            [branch]
            if (uint(int((_1382 & 255u) != 0u)) != 0u)
            {
                _1484 = dot(float4(float(_1431 & 1u), float((_1431 & 2u) >> 1u), float((_1431 & 4u) >> 2u), float((_1431 & 8u) >> 3u)), _1030);
            }
            else
            {
                _1484 = 1.0f;
            }
            float3 _1771 = 0.0f.xxx;
            float3 _1772 = 0.0f.xxx;
            [branch]
            if ((_1484 + _1484) > 0.0f)
            {
                float3 _1490 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1378].xyz * (0.5f * _1411);
                float3 _1491 = _1447 - _1490;
                float3 _1492 = _1447 + _1490;
                float _1495 = max(_735, View_View_MinRoughness);
                bool _1496 = _1411 > 0.0f;
                float _1521 = 0.0f;
                float _1522 = 0.0f;
                float _1523 = 0.0f;
                [branch]
                if (_1496)
                {
                    float _1508 = rsqrt(dot(_1491, _1491));
                    float _1509 = rsqrt(dot(_1492, _1492));
                    float _1510 = _1508 * _1509;
                    float _1512 = dot(_1491, _1492) * _1510;
                    _1521 = _1512;
                    _1522 = 0.5f * mad(dot(_734, _1491), _1508, dot(_734, _1492) * _1509);
                    _1523 = _1510 / mad(_1508, _1509, mad(_1512, 0.5f, 0.5f));
                }
                else
                {
                    float _1500 = dot(_1491, _1491);
                    _1521 = 1.0f;
                    _1522 = dot(_734, _1491 * rsqrt(_1500));
                    _1523 = 1.0f / (_1500 + 1.0f);
                }
                float _1541 = 0.0f;
                if (_1407 > 0.0f)
                {
                    float _1530 = sqrt(clamp((_1407 * _1407) * _1523, 0.0f, 1.0f));
                    float _1540 = 0.0f;
                    if (_1522 < _1530)
                    {
                        float _1536 = _1530 + max(_1522, -_1530);
                        _1540 = (_1536 * _1536) / (4.0f * _1530);
                    }
                    else
                    {
                        _1540 = _1522;
                    }
                    _1541 = _1540;
                }
                else
                {
                    _1541 = _1522;
                }
                float _1542 = clamp(_1541, 0.0f, 1.0f);
                float3 _1560 = 0.0f.xxx;
                if (_1496)
                {
                    float3 _1547 = reflect(-_443, _734);
                    float3 _1548 = _1492 - _1491;
                    float _1549 = dot(_1547, _1548);
                    _1560 = _1491 + (_1548 * clamp(dot(_1491, (_1547 * _1549) - _1548) / mad(_1411, _1411, -(_1549 * _1549)), 0.0f, 1.0f));
                }
                else
                {
                    _1560 = _1491;
                }
                float _1562 = rsqrt(dot(_1560, _1560));
                float3 _1563 = _1560 * _1562;
                float _1564 = max(_1495, View_View_MinRoughness);
                float _1569 = clamp((_1407 * _1562) * mad(-_1564, _1564, 1.0f), 0.0f, 1.0f);
                float _1571 = clamp(spvUnpackHalf2x16(_1404 >> 16u).x * _1562, 0.0f, 1.0f);
                float3 _1764 = 0.0f.xxx;
                float3 _1765 = 0.0f.xxx;
                [branch]
                if (_1542 > 0.0f)
                {
                    float _1582 = dot(_734, _1563);
                    float _1583 = dot(_734, _443);
                    float _1584 = dot(_443, _1563);
                    float _1586 = rsqrt(mad(2.0f, _1584, 2.0f));
                    bool _1592 = _1569 > 0.0f;
                    float _1671 = 0.0f;
                    float _1672 = 0.0f;
                    if (_1592)
                    {
                        float _1597 = sqrt(mad(-_1569, _1569, 1.0f));
                        float _1598 = 2.0f * _1582;
                        float _1599 = -_1584;
                        float _1600 = mad(_1598, _1583, _1599);
                        float _1669 = 0.0f;
                        float _1670 = 0.0f;
                        if (_1600 >= _1597)
                        {
                            _1669 = 1.0f;
                            _1670 = abs(_1583);
                        }
                        else
                        {
                            float _1605 = -_1600;
                            float _1608 = _1569 * rsqrt(mad(_1605, _1600, 1.0f));
                            float _1609 = mad(_1605, _1582, _1583);
                            float _1613 = mad(_1605, _1584, mad(2.0f * _1583, _1583, -1.0f));
                            float _1624 = _1608 * sqrt(clamp(mad(_1598 * _1583, _1584, mad(_1599, _1584, mad(-_1583, _1583, mad(-_1582, _1582, 1.0f)))), 0.0f, 1.0f));
                            float _1626 = (_1624 * 2.0f) * _1583;
                            float _1627 = mad(_1582, _1597, _1583);
                            float _1628 = mad(_1608, _1609, _1627);
                            float _1630 = mad(_1608, _1613, mad(_1584, _1597, 1.0f));
                            float _1631 = _1624 * _1630;
                            float _1632 = _1628 * _1630;
                            float _1637 = _1632 * mad(-0.5f, _1631, (0.25f * _1626) * _1628);
                            float _1647 = mad(_1628, mad(_1627, _1630 * _1630, _1632 * mad(-0.5f, mad(_1584, _1597, _1630), -0.5f)), mad(_1631, _1631, (_1626 * _1628) * mad(_1626, _1628, _1631 * (-2.0f))));
                            float _1651 = (2.0f * _1637) / mad(_1647, _1647, _1637 * _1637);
                            float _1652 = _1651 * _1647;
                            float _1654 = mad(-_1651, _1637, 1.0f);
                            float _1660 = mad(_1584, _1597, mad(_1654, _1608 * _1613, _1652 * _1626));
                            float _1662 = rsqrt(mad(2.0f, _1660, 2.0f));
                            _1669 = clamp((mad(_1582, _1597, mad(_1654, _1608 * _1609, _1652 * _1624)) + _1583) * _1662, 0.0f, 1.0f);
                            _1670 = clamp(mad(_1662, _1660, _1662), 0.0f, 1.0f);
                        }
                        _1671 = _1669;
                        _1672 = _1670;
                    }
                    else
                    {
                        _1671 = clamp((_1582 + _1583) * _1586, 0.0f, 1.0f);
                        _1672 = clamp(mad(_1586, _1584, _1586), 0.0f, 1.0f);
                    }
                    float _1675 = clamp(abs(_1583) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1678 = 1.0f.xxx * ((_1416 ? _1523 : 1.0f) * _1542);
                    float3 _1762 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1411, _1407), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1762 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1685 = _1495 * _1495;
                        float _1695 = 0.0f;
                        if (_1571 > 0.0f)
                        {
                            _1695 = clamp(mad(_1685, _1685, (_1571 * _1571) / mad(_1672, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1695 = _1685 * _1685;
                        }
                        float _1709 = 0.0f;
                        float _1710 = 0.0f;
                        if (_1592)
                        {
                            float _1707 = _1695 + (((0.25f * _1569) * mad(3.0f, asfloat(532487669 + (asint(_1695) >> 1)), _1569)) / (_1672 + 0.001000000047497451305389404296875f));
                            _1709 = _1695 / _1707;
                            _1710 = _1707;
                        }
                        else
                        {
                            _1709 = 1.0f;
                            _1710 = _1695;
                        }
                        float _1731 = 0.0f;
                        if (_1521 < 1.0f)
                        {
                            float _1717 = sqrt((1.00010001659393310546875f - _1521) / (1.0f + _1521));
                            _1731 = _1709 * sqrt(_1710 / (_1710 + (((0.25f * _1717) * mad(3.0f, asfloat(532487669 + (asint(_1710) >> 1)), _1717)) / (_1672 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1731 = _1709;
                        }
                        float _1734 = mad(mad(_1671, _1695, -_1671), _1671, 1.0f);
                        float _1739 = sqrt(_1695);
                        float _1740 = 1.0f - _1739;
                        float _1746 = 1.0f - _1672;
                        float _1747 = _1746 * _1746;
                        float _1748 = _1747 * _1747;
                        _1762 = _1678 * (((clamp(50.0f * _774.y, 0.0f, 1.0f) * (_1748 * _1746)).xxx + (_774 * mad(-_1748, _1746, 1.0f))) * (((_1695 / ((3.1415927410125732421875f * _1734) * _1734)) * _1731) * (0.5f / mad(_1542, mad(_1675, _1740, _1739), _1675 * mad(_1542, _1740, _1739)))));
                    }
                    _1764 = ((_772 * 0.3183098733425140380859375f) * _1678) * 1.0f;
                    _1765 = _1762;
                }
                else
                {
                    _1764 = 0.0f.xxx;
                    _1765 = 0.0f.xxx;
                }
                float3 _1768 = ((float3(float((_1388 >> 0u) & 1023u), float((_1388 >> 10u) & 1023u), float((_1388 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1369].x) * _1476) * _1484;
                _1771 = mad(_1764 * (float((_1418 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1768, 0.0f.xxx);
                _1772 = (_1765 * (float(_1418 & 1023u) * 0.000977517105638980865478515625f)) * _1768;
            }
            else
            {
                _1771 = 0.0f.xxx;
                _1772 = 0.0f.xxx;
            }
            _1773 = _1771;
            _1774 = _1772;
        }
        else
        {
            _1773 = 0.0f.xxx;
            _1774 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1382 >> 8u) & 7u) & _1043) != 0u)
        {
            _1353 = _1352 + float4(_1773, 0.0f);
            _1356 = _1355 + float4(_1774, 0.0f);
        }
        else
        {
            _1353 = _1352;
            _1356 = _1355;
        }
    }
    bool4 _1792 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1801 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float3 _1805 = (_734 * (2.0f * dot(_443, _734))) - _443;
    float _1812 = mad(-1.2000000476837158203125f, log2(max(_735, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1826 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1805, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1801].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1812);
    float _1830 = 1.0f - _1826.w;
    float3 _1857 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1857 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1805, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1812).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1857 = 0.0f.xxx;
    }
    float4 _1863 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _735) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1864 = _1863.x;
    float2 _1873 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1864 * _1864, exp2((-9.27999973297119140625f) * clamp(dot(_734, _443), 0.0f, 1.0f))), _1864, _1863.y)) + _1863.zw;
    bool _1900 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2324 = 0.0f.xxxx;
    if (_1900)
    {
        uint2 _1912 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1914 = normalize(_427 - View_View_TranslatedWorldCameraOrigin);
        uint _1915 = _1912.x;
        uint4 _1919 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1915, _1912.y, 0u), 0u));
        uint _1920 = _1919.x;
        float4 _1922 = 0.0f.xxxx;
        _1922 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1923 = 0.0f.xxxx;
        for (int _1925 = 0; uint(_1925) < _1920; _1922 = _1923, _1925++)
        {
            uint _1936 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1915, _1912.y, uint(1 + _1925)), 0u)).x * 3u;
            float4 _1938 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1936);
            float4 _1940 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1936 + 1u);
            float4 _1942 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1936 + 2u);
            float3 _1943 = _1938.xyz;
            float _1944 = _1938.w;
            float _1945 = 1.0f / _1944;
            uint _1947 = asuint(_1940.x);
            float2 _1953 = float2(spvUnpackHalf2x16(_1947).x, spvUnpackHalf2x16(_1947 >> 16u).x);
            float3 _1954 = float3(_1953.x, _1953.y, _303.z);
            uint _1956 = asuint(_1940.y);
            _1954.z = spvUnpackHalf2x16(_1956).x;
            float3 _1963 = 0.0f.xxx;
            _1963.x = spvUnpackHalf2x16(_1956 >> 16u).x;
            uint _1965 = asuint(_1940.z);
            float2 _1971 = float2(spvUnpackHalf2x16(_1965).x, spvUnpackHalf2x16(_1965 >> 16u).x);
            float3 _1972 = float3(_1963.x, _1971.x, _1971.y);
            float3x3 _1977 = float3x3(_1954 * _1945, _1972 * _1945, cross(_1954, _1972) * _1945);
            uint _1979 = asuint(_1942.x);
            float2 _1982 = spvUnpackHalf2x16((_1979 >> 17u) & 32752u);
            float _1983 = _1982.x;
            float2 _1986 = spvUnpackHalf2x16((_1979 >> 6u) & 32752u);
            float _1987 = _1986.x;
            float2 _1990 = spvUnpackHalf2x16((_1979 << 5u) & 32736u);
            float _1991 = _1990.x;
            uint _1993 = asuint(_1942.y);
            float3 _2011 = 0.0f.xxx;
            if (_1993 > 0u)
            {
                _2011 = float3(spvUnpackHalf2x16((_1993 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1993 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1993 << 5u) & 32736u).x);
            }
            else
            {
                _2011 = 0.0f.xxx;
            }
            uint _2013 = asuint(_1942.z);
            float _2028 = float((_2013 >> 24u) & 255u);
            float _2029 = _2028 * 0.0039215688593685626983642578125f;
            float3 _2036 = mul(View_View_TranslatedWorldCameraOrigin - _1943, _1977);
            float3 _2038 = normalize(mul(_1914, _1977));
            float _2040 = dot(_2038, _2038);
            float _2041 = dot(_2038, _2036);
            float _2042 = 2.0f * _2041;
            float _2047 = mad(_2042, _2042, -((4.0f * _2040) * mad(-1.0f, 1.0f, dot(_2036, _2036))));
            float2 _2059 = 0.0f.xx;
            [flatten]
            if (_2047 >= 0.0f)
            {
                _2059 = ((_2041 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_2047))) / (2.0f * _2040).xx;
            }
            else
            {
                _2059 = (-1.0f).xx;
            }
            float3 _2065 = mul(_427 - _1943, _1977) - _2036;
            float2 _2069 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1945, _2059), sqrt(dot(_2065, _2065)).xx);
            float _2219 = 0.0f;
            float3 _2220 = 0.0f.xxx;
            if (any(bool2(_2069.x > 0.0f.xx.x, _2069.y > 0.0f.xx.y)))
            {
                float2 _2090 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2080 = dot(_1914, View_View_ViewForward);
                    _2090 = max(_2069, ((View_View_VolumetricFogMaxDistance * ((_2080 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2080) : 0.0f)) * _1945).xx);
                }
                else
                {
                    _2090 = _2069;
                }
                float _2095 = max(0.0f, abs(_2090.y - _2090.x));
                float _2217 = 0.0f;
                float3 _2218 = 0.0f.xxx;
                if (_2095 > 0.0f)
                {
                    float3 _2100 = _2036 + (_2038 * _2090.x);
                    float _2136 = 0.0f;
                    if (_1983 > 0.0f)
                    {
                        float _2104 = dot(_2038, _2100);
                        float _2105 = dot(_2100, _2100);
                        float _2106 = _2105 - 1.0f;
                        float _2108 = mad(_2104, _2104, 1.0f - _2105);
                        float _2135 = 0.0f;
                        if (_2108 >= 0.0f)
                        {
                            float _2112 = sqrt(_2108);
                            float _2113 = -_2104;
                            float _2116 = max(_2113 - _2112, 0.0f);
                            float _2118 = min(max(_2113 + _2112, 0.0f), _2095);
                            float _2119 = _2116 * _2116;
                            float _2120 = _2118 * _2118;
                            _2135 = max(0.0f, (_1983 * ((-mad(_2120 * _2118, 0.3333333432674407958984375f, mad(_2106, _2118, _2104 * _2120))) - (-mad(_2119 * _2116, 0.3333333432674407958984375f, mad(_2106, _2116, _2104 * _2119))))) * 0.75f);
                        }
                        else
                        {
                            _2135 = 0.0f;
                        }
                        _2136 = _2135;
                    }
                    else
                    {
                        _2136 = 0.0f;
                    }
                    float _2161 = 0.0f;
                    if (_1987 > 0.0f)
                    {
                        float _2142 = _2038.z;
                        float _2148 = (abs(_2142) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2142 >= 0.0f) ? 1.0f : (-1.0f))) : _2142;
                        float _2151 = max(-80.0f, (_2100.z - _1942.w) * _1991);
                        _2161 = (_1987 / (_1991 * _2148)) * (exp(-_2151) - exp(-mad(_2148 * _2095, _1991, _2151)));
                    }
                    else
                    {
                        _2161 = 0.0f;
                    }
                    float _2172 = exp((log(mad(exp(-_2136) - 1.0f, 1.0f - exp(-_2161), 1.0f)) * _1944) * 0.00999999977648258209228515625f);
                    float _2176 = _2028 * (-0.0039215688593685626983642578125f);
                    float _2183 = mad(_2028 * (-0.007843137718737125396728515625f), dot(_1914, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2176, _2176, 1.0f));
                    float3 _2188 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_2029, _2176, 1.0f) / ((12.56637096405029296875f * _2183) * sqrt(_2183)));
                    float3 _2214 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2199 = float4(_1914 * _2176, 1.0f);
                        _2214 = _2188 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2199), dot(View_SkyIrradianceEnvironmentMap[1u], _2199), dot(View_SkyIrradianceEnvironmentMap[2u], _2199)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2214 = _2188;
                    }
                    _2217 = _2172;
                    _2218 = mad(_2214, float4(float((_2013 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_2013 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_2013 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _2029).xyz, _2011) * (1.0f - _2172);
                }
                else
                {
                    _2217 = 1.0f;
                    _2218 = 0.0f.xxx;
                }
                _2219 = _2217;
                _2220 = _2218;
            }
            else
            {
                _2219 = 1.0f;
                _2220 = 0.0f.xxx;
            }
            _1923 = float4((_1922.xyz * _2219) + float4(_2220, _2219).xyz, _1922.w * _2219);
        }
        float _2240 = _1922.w * in_var_TEXCOORD7.w;
        float4 _2248 = float4(_100, 1.0f);
        precise float4 _104 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _105 = _2248 + _104;
        precise float4 _106 = _105 - _2248;
        precise float4 _107 = _105 - _106;
        precise float4 _108 = _2248 - _107;
        precise float4 _109 = _104 - _106;
        precise float4 _110 = _108 + _109;
        float4 _2259 = mul(_105 + (float4(_103, 0.0f) + _110), View_View_RelativeWorldToClip);
        float _2260 = _2259.w;
        float4 _2323 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2323 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2306 = 0.0f.xxxx;
            float _2307 = 0.0f;
            if (_1900)
            {
                float4 _2302 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2259.xy / _2260.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2260, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2304 = _2302.xyz * View_View_OneOverPreExposure;
                _2306 = float4(_2304.x, _2304.y, _2304.z, _2302.w);
                _2307 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2306 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2307 = 0.0f;
            }
            float4 _2312 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2306, clamp((_746 - _2307) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2315 = _2312.w;
            _2323 = float4(_2312.xyz + (float4(_1922.xyz + (in_var_TEXCOORD7.xyz * _1922.w), _2240).xyz * _2315), _2315 * _2240);
            break;
        } while(false);
        _2324 = _2323;
    }
    else
    {
        _2324 = in_var_TEXCOORD7;
    }
    float3 _2331 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[7].xyz, Material_Material_PreshaderBuffer[6].y.xxx), 0.0f.xxx);
    float3 _2389 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _111 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _112 = _111 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _113 = _112 - _111;
        precise float3 _114 = Primitive_Primitive_ObjectWorldPositionLow - _113;
        precise float3 _115 = _100 - _112;
        precise float3 _116 = _103 - _114;
        precise float3 _117 = _115 + _116;
        float3 _2351 = abs(_117);
        float3 _2352 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2388 = 0.0f.xxx;
        if (any(bool3(_2351.x > _2352.x, _2351.y > _2352.y, _2351.z > _2352.z)))
        {
            float3 _2384 = frac(dot(frac(frac(_100 * 1.52587890625e-05f.xxx) + frac(_103 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2388 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2384.x > 0.5f.xxx.x, _2384.y > 0.5f.xxx.y, _2384.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2374 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2362 = abs(_427 - in_var_TEXCOORD9);
                _2374 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2362.x, max(_2362.y, _2362.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2374 = _2331;
            }
            _2388 = _2374;
        }
        _2389 = _2388;
    }
    else
    {
        _2389 = _2331;
    }
    float3 _2391 = mad((_820 * _960) * _772, max(_969, ((((((_738 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _692) + ((_738 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _692) + ((_738 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _692), lerp(mad((((float4(_1826.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1801].x, _1830).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1857 * _1830)).xyz * ((_774 * _1873.x) + (clamp(50.0f * _774.y, 0.0f, 1.0f) * _1873.y).xxx)) * _960, max(_969, ((((((_774 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _692) + ((_774 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _692) + ((_774 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _692), float4(_1792.x ? 0.0f.xxxx.x : _1352.x, _1792.y ? 0.0f.xxxx.y : _1352.y, _1792.z ? 0.0f.xxxx.z : _1352.z, _1792.w ? 0.0f.xxxx.w : _1352.w).xyz + float4(_1792.x ? 0.0f.xxxx.x : _1355.x, _1792.y ? 0.0f.xxxx.y : _1355.y, _1792.z ? 0.0f.xxxx.z : _1355.z, _1792.w ? 0.0f.xxxx.w : _1355.w).xyz), _772 + (_774 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2389;
    float4 _2399 = float4((_2391 * _2324.w) + _2324.xyz, 0.0f);
    _2399.w = 0.0f;
    float4 _2403 = _2399 * View_View_PreExposure;
    float3 _2408 = min(_2403.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2408.x, _2408.y, _2408.z, _2403.w);
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
