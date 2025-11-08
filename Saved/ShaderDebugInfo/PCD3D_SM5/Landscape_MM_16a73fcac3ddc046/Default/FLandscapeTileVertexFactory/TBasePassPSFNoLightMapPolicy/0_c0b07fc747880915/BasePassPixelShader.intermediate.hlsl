#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _287 = 0.0f;
static float _290 = 0.0f;
static float3 _291 = 0.0f.xxx;

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
    float _322 = 1.0f / gl_FragCoord.w;
    float4 _368 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _372 = mad(float2(_368.zw), 2.0f.xx, (-1.0f).xx);
    float _376 = sqrt(max(1.0f - dot(_372, _372), 0.0f));
    float _377 = _372.x;
    float3 _379 = float3(_377, _372.y, _376);
    float3 _382 = normalize(float3(_376, 0.0f, -_377));
    float2 _397 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _404 = float4(mad(_397, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _290, 1.0f) * _322;
    float4 _409 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _413 = _409.xyz / _409.w.xxx;
    float3 _414 = _413 - View_View_RelativePreViewTranslationTO;
    precise float3 _89 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _414);
    precise float3 _92 = _414 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _89);
    bool _416 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _417 = -View_View_ViewForward;
    float3 _419 = normalize(-_413);
    float3 _429 = float3(_416 ? _417.x : _419.x, _416 ? _417.y : _419.y, _416 ? _417.z : _419.z);
    float4 _433 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _436 = dot(_433, Material_Material_PreshaderBuffer[0]);
    float _439 = dot(_433, Material_Material_PreshaderBuffer[1]);
    float _442 = dot(_433, Material_Material_PreshaderBuffer[2]);
    float _445 = dot(_433, Material_Material_PreshaderBuffer[3]);
    float2 _448 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float _460 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _448 * Material_Material_PreshaderBuffer[4].x.xx).x * Material_Material_PreshaderBuffer[4].y;
    float4 _472 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_460) + Material_Material_PreshaderBuffer[4].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _476 = Material_Material_PreshaderBuffer[4].w.xx;
    float2 _477 = mad(_472.xy, _476, _448);
    float2 _479 = mad(_472.zw, _476, _448);
    float2 _481 = ddy(_448);
    float2 _482 = ddx(_448);
    float2 _494 = lerp(_477, _479, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _479, _482, _481) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _477, _482, _481)).x, frac(_460))), 0.0f, 1.0f).xx);
    float2 _500 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _509 = _436.xxx;
    float2 _515 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _524 = _439.xxx;
    float2 _532 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _541 = _442.xxx;
    float2 _548 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _494, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _557 = _445.xxx;
    float3 _565 = normalize(mul(normalize((mad(float4(_548, sqrt(clamp(1.0f - dot(_548, _548), 0.0f, 1.0f)), 1.0f).xyz, _557, mad(float4(_532, sqrt(clamp(1.0f - dot(_532, _532), 0.0f, 1.0f)), 1.0f).xyz, _541, mad(float4(_500, sqrt(clamp(1.0f - dot(_500, _500), 0.0f, 1.0f)), 1.0f).xyz, _509, float4(_515, sqrt(clamp(1.0f - dot(_515, _515), 0.0f, 1.0f)), 1.0f).xyz * _524))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_382, cross(_379, _382), _379), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _566 = _565 * 1.0f;
    float4 _601 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _606 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _613 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _619 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _494, View_View_MaterialTextureMipBias);
    float3 _633 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _494, View_View_MaterialTextureMipBias).xyz, _557, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _494, View_View_MaterialTextureMipBias).xyz, _541, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _494, View_View_MaterialTextureMipBias).xyz, _509, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _494, View_View_MaterialTextureMipBias).xyz * _524))), 0.0f.xxx, 1.0f.xxx);
    float _637 = mad(clamp(mad(_619.y * Material_Material_PreshaderBuffer[6].x, _445, mad(_613.y, _442, mad(_601.y, _436, _606.y * _439))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _638 = clamp(mad(_619.x, _445, mad(_613.x, _442, mad(_601.x, _436, _606.x * _439))), 0.0f, 1.0f);
    float3 _680 = 0.0f.xxx;
    float _681 = 0.0f;
    float _682 = 0.0f;
    float _683 = 0.0f;
    float3 _684 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _652 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _656 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _652, 0.0f);
        float4 _659 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _652, 0.0f);
        float4 _662 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _652, 0.0f);
        float _672 = _662.w;
        _680 = normalize((_566 * _659.w) + ((_659.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _681 = mad(_637, _672, _662.z);
        _682 = mad(0.5f, _672, _662.y);
        _683 = _662.x;
        _684 = (_633 * _656.w) + _656.xyz;
    }
    else
    {
        _680 = _566;
        _681 = _637;
        _682 = 0.5f;
        _683 = 0.0f;
        _684 = _633;
    }
    float _692 = _404.w;
    float3 _705 = ((_684 - (_684 * _683)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _712 = (lerp((0.07999999821186065673828125f * _682).xxx, _684, _683.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _713 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _718 = 0.0f.xxx;
    if (_713)
    {
        _718 = _705 + (_712 * 0.449999988079071044921875f);
    }
    else
    {
        _718 = _705;
    }
    bool3 _719 = _713.xxx;
    float3 _720 = float3(_719.x ? 0.0f.xxx.x : _712.x, _719.y ? 0.0f.xxx.y : _712.y, _719.z ? 0.0f.xxx.z : _712.z);
    float2 _726 = mad(_404.xy / _692.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _836 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _737 = int2(trunc(_726 * View_View_BufferSizeAndInvSize.xy));
        int _738 = _737.x;
        int _739 = _737.y;
        float4 _743 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_738, _739, 0).xy, 0));
        float _744 = _743.x;
        float _754 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _835 = 0.0f.xx;
        if ((abs((mad(_744, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_744, View_View_InvDeviceZToWorldZTransform.z, _754))) - _692) / _692) > 0.00999999977648258209228515625f)
        {
            float2 _767 = _726 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _771 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_738 - 1, _739, 0).xy, 0));
            float _772 = _771.x;
            float _778 = abs((mad(_772, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_772, View_View_InvDeviceZToWorldZTransform.z, _754))) - _692);
            bool _779 = _778 < 100000000.0f;
            bool2 _780 = _779.xx;
            float2 _781 = float2(_780.x ? _767.x : _726.x, _780.y ? _767.y : _726.y);
            float _782 = _779 ? _778 : 100000000.0f;
            float2 _785 = _726 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _789 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_738, _739 + 1, 0).xy, 0));
            float _790 = _789.x;
            float _796 = abs((mad(_790, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_790, View_View_InvDeviceZToWorldZTransform.z, _754))) - _692);
            bool _797 = _796 < _782;
            bool2 _798 = _797.xx;
            float2 _799 = float2(_798.x ? _785.x : _781.x, _798.y ? _785.y : _781.y);
            float _800 = _797 ? _796 : _782;
            float2 _802 = _726 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _806 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_738 + 1, _739, 0).xy, 0));
            float _807 = _806.x;
            float _813 = abs((mad(_807, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_807, View_View_InvDeviceZToWorldZTransform.z, _754))) - _692);
            bool _814 = _813 < _800;
            bool2 _815 = _814.xx;
            float2 _816 = float2(_815.x ? _802.x : _799.x, _815.y ? _802.y : _799.y);
            float2 _820 = _726 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _824 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_738, _739 - 1, 0).xy, 0));
            float _825 = _824.x;
            bool2 _833 = (abs((mad(_825, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_825, View_View_InvDeviceZToWorldZTransform.z, _754))) - _692) < (_814 ? _813 : _800)).xx;
            _835 = float2(_833.x ? _820.x : _816.x, _833.y ? _820.y : _816.y);
        }
        else
        {
            _835 = _726;
        }
        _836 = _835;
    }
    else
    {
        _836 = _726;
    }
    uint _842_dummy_parameter;
    uint2 _842 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _842_dummy_parameter);
    uint2 _886 = uint2(_397 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _914 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _914 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_836 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _914 = 1.0f.xxxx;
    }
    float4 _915 = _914 * _914;
    uint _928 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1220 = 0.0f.xxxx;
    float4 _1221 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _954 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _969 = dot(float4(float(_954 & 1u), float((_954 & 2u) >> 1u), float((_954 & 4u) >> 2u), float((_954 & 8u) >> 3u)), _915);
        bool _971 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _972 = _971 ? 1.0f : _969;
        float _985 = 0.0f;
        float _986 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _979 = clamp(mad(_692, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _981 = lerp(_971 ? _969 : 1.0f, 1.0f, _979 * _979);
            _985 = min(_981, _972) * _972;
            _986 = _981 * _972;
        }
        else
        {
            _985 = 1.0f;
            _986 = 1.0f;
        }
        float3 _1202 = 0.0f.xxx;
        float3 _1203 = 0.0f.xxx;
        [branch]
        if ((_986 + _985) > 0.0f)
        {
            float _993 = max(_681, View_View_MinRoughness);
            float _994 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _997 = rsqrt(_994);
            float3 _998 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _997;
            float _999 = dot(_680, _998);
            float _1017 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1006 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_994 + 1.0f)), 0.0f, 1.0f));
                float _1016 = 0.0f;
                if (_999 < _1006)
                {
                    float _1012 = _1006 + max(_999, -_1006);
                    _1016 = (_1012 * _1012) / (4.0f * _1006);
                }
                else
                {
                    _1016 = _999;
                }
                _1017 = _1016;
            }
            else
            {
                _1017 = _999;
            }
            float _1018 = clamp(_1017, 0.0f, 1.0f);
            float _1019 = max(_993, View_View_MinRoughness);
            float _1024 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _997) * mad(-_1019, _1019, 1.0f), 0.0f, 1.0f);
            float _1026 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _997, 0.0f, 1.0f);
            float3 _1195 = 0.0f.xxx;
            float3 _1196 = 0.0f.xxx;
            [branch]
            if (_1018 > 0.0f)
            {
                float _1037 = dot(_680, _429);
                float _1038 = dot(_429, _998);
                float _1040 = rsqrt(mad(2.0f, _1038, 2.0f));
                bool _1046 = _1024 > 0.0f;
                float _1125 = 0.0f;
                float _1126 = 0.0f;
                if (_1046)
                {
                    float _1051 = sqrt(mad(-_1024, _1024, 1.0f));
                    float _1052 = 2.0f * _999;
                    float _1053 = -_1038;
                    float _1054 = mad(_1052, _1037, _1053);
                    float _1123 = 0.0f;
                    float _1124 = 0.0f;
                    if (_1054 >= _1051)
                    {
                        _1123 = 1.0f;
                        _1124 = abs(_1037);
                    }
                    else
                    {
                        float _1059 = -_1054;
                        float _1062 = _1024 * rsqrt(mad(_1059, _1054, 1.0f));
                        float _1063 = mad(_1059, _999, _1037);
                        float _1067 = mad(_1059, _1038, mad(2.0f * _1037, _1037, -1.0f));
                        float _1078 = _1062 * sqrt(clamp(mad(_1052 * _1037, _1038, mad(_1053, _1038, mad(-_1037, _1037, mad(-_999, _999, 1.0f)))), 0.0f, 1.0f));
                        float _1080 = (_1078 * 2.0f) * _1037;
                        float _1081 = mad(_999, _1051, _1037);
                        float _1082 = mad(_1062, _1063, _1081);
                        float _1084 = mad(_1062, _1067, mad(_1038, _1051, 1.0f));
                        float _1085 = _1078 * _1084;
                        float _1086 = _1082 * _1084;
                        float _1091 = _1086 * mad(-0.5f, _1085, (0.25f * _1080) * _1082);
                        float _1101 = mad(_1082, mad(_1081, _1084 * _1084, _1086 * mad(-0.5f, mad(_1038, _1051, _1084), -0.5f)), mad(_1085, _1085, (_1080 * _1082) * mad(_1080, _1082, _1085 * (-2.0f))));
                        float _1105 = (2.0f * _1091) / mad(_1101, _1101, _1091 * _1091);
                        float _1106 = _1105 * _1101;
                        float _1108 = mad(-_1105, _1091, 1.0f);
                        float _1114 = mad(_1038, _1051, mad(_1108, _1062 * _1067, _1106 * _1080));
                        float _1116 = rsqrt(mad(2.0f, _1114, 2.0f));
                        _1123 = clamp((mad(_999, _1051, mad(_1108, _1062 * _1063, _1106 * _1078)) + _1037) * _1116, 0.0f, 1.0f);
                        _1124 = clamp(mad(_1116, _1114, _1116), 0.0f, 1.0f);
                    }
                    _1125 = _1123;
                    _1126 = _1124;
                }
                else
                {
                    _1125 = clamp((_999 + _1037) * _1040, 0.0f, 1.0f);
                    _1126 = clamp(mad(_1040, _1038, _1040), 0.0f, 1.0f);
                }
                float _1129 = clamp(abs(_1037) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1131 = 1.0f.xxx * _1018;
                float3 _1193 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1193 = 0.0f.xxx;
                }
                else
                {
                    float _1138 = _993 * _993;
                    float _1148 = 0.0f;
                    if (_1026 > 0.0f)
                    {
                        _1148 = clamp(mad(_1138, _1138, (_1026 * _1026) / mad(_1126, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1148 = _1138 * _1138;
                    }
                    float _1162 = 0.0f;
                    if (_1046)
                    {
                        _1162 = _1148 / (_1148 + (((0.25f * _1024) * mad(3.0f, asfloat(532487669 + (asint(_1148) >> 1)), _1024)) / (_1126 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1162 = 1.0f;
                    }
                    float _1165 = mad(mad(_1125, _1148, -_1125), _1125, 1.0f);
                    float _1170 = sqrt(_1148);
                    float _1171 = 1.0f - _1170;
                    float _1177 = 1.0f - _1126;
                    float _1178 = _1177 * _1177;
                    float _1179 = _1178 * _1178;
                    _1193 = _1131 * (((clamp(50.0f * _720.y, 0.0f, 1.0f) * (_1179 * _1177)).xxx + (_720 * mad(-_1179, _1177, 1.0f))) * (((_1148 / ((3.1415927410125732421875f * _1165) * _1165)) * _1162) * (0.5f / mad(_1018, mad(_1129, _1171, _1170), _1129 * mad(_1018, _1171, _1170)))));
                }
                _1195 = ((_718 * 0.3183098733425140380859375f) * _1131) * 1.0f;
                _1196 = _1193;
            }
            else
            {
                _1195 = 0.0f.xxx;
                _1196 = 0.0f.xxx;
            }
            float3 _1199 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _986;
            _1202 = mad(_1195 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1199, 0.0f.xxx);
            _1203 = (_1196 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1199;
        }
        else
        {
            _1202 = 0.0f.xxx;
            _1203 = 0.0f.xxx;
        }
        float4 _1207 = float4(_1202, 0.0f);
        float4 _1211 = float4(_1203, 0.0f);
        float4 _1218 = 0.0f.xxxx;
        float4 _1219 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _928) != 0u)
        {
            _1218 = float4(_1207.x, _1207.y, _1207.z, _1207.w);
            _1219 = float4(_1211.x, _1211.y, _1211.z, _1211.w);
        }
        else
        {
            _1218 = 0.0f.xxxx;
            _1219 = 0.0f.xxxx;
        }
        _1220 = _1218;
        _1221 = _1219;
    }
    else
    {
        _1220 = 0.0f.xxxx;
        _1221 = 0.0f.xxxx;
    }
    uint _1222 = ((((min(uint(max(0.0f, log2(mad(_322, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _886.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _886.x) * 2u;
    uint _1232 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1222 + 1u] & 1073741823u;
    uint _1235 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1222] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1237 = 0.0f.xxxx;
    float4 _1240 = 0.0f.xxxx;
    _1237 = _1220;
    _1240 = _1221;
    float4 _1238 = 0.0f.xxxx;
    float4 _1241 = 0.0f.xxxx;
    [loop]
    for (uint _1242 = 0u; _1242 < _1235; _1237 = _1238, _1240 = _1241, _1242++)
    {
        uint _1251 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1232 + _1242).x * 6u;
        uint _1254 = _1251 + 1u;
        uint _1257 = _1251 + 2u;
        uint _1260 = _1251 + 3u;
        uint _1263 = _1251 + 4u;
        uint _1267 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1257].w);
        uint _1273 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1254].y);
        uint _1289 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1260].z);
        float2 _1291 = spvUnpackHalf2x16(_1289 & 65535u);
        float _1292 = _1291.x;
        float2 _1295 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1260].w));
        float _1296 = _1295.x;
        bool _1301 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1254].w == 0.0f;
        uint _1303 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1263].w);
        uint _1316 = _1267 >> 4u;
        float3 _1332 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1251].xyz - _413;
        float _1333 = dot(_1332, _1332);
        float _1350 = 0.0f;
        if (_1301)
        {
            float _1345 = _1333 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1251].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1251].w);
            float _1348 = clamp(mad(-_1345, _1345, 1.0f), 0.0f, 1.0f);
            _1350 = _1348 * _1348;
        }
        else
        {
            float3 _1339 = _1332 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1251].w;
            _1350 = pow(1.0f - clamp(dot(_1339, _1339), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1254].w);
        }
        float _1361 = 0.0f;
        if (((_1267 >> 16u) & 3u) == 2u)
        {
            float _1358 = clamp((dot(_1332 * rsqrt(_1333), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1257].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1260].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1260].y, 0.0f, 1.0f);
            _1361 = _1350 * (_1358 * _1358);
        }
        else
        {
            _1361 = _1350;
        }
        float3 _1658 = 0.0f.xxx;
        float3 _1659 = 0.0f.xxx;
        [branch]
        if (_1361 > 0.0f)
        {
            float _1369 = 0.0f;
            [branch]
            if (uint(int((_1267 & 255u) != 0u)) != 0u)
            {
                _1369 = dot(float4(float(_1316 & 1u), float((_1316 & 2u) >> 1u), float((_1316 & 4u) >> 2u), float((_1316 & 8u) >> 3u)), _915);
            }
            else
            {
                _1369 = 1.0f;
            }
            float3 _1656 = 0.0f.xxx;
            float3 _1657 = 0.0f.xxx;
            [branch]
            if ((_1369 + _1369) > 0.0f)
            {
                float3 _1375 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1263].xyz * (0.5f * _1296);
                float3 _1376 = _1332 - _1375;
                float3 _1377 = _1332 + _1375;
                float _1380 = max(_681, View_View_MinRoughness);
                bool _1381 = _1296 > 0.0f;
                float _1406 = 0.0f;
                float _1407 = 0.0f;
                float _1408 = 0.0f;
                [branch]
                if (_1381)
                {
                    float _1393 = rsqrt(dot(_1376, _1376));
                    float _1394 = rsqrt(dot(_1377, _1377));
                    float _1395 = _1393 * _1394;
                    float _1397 = dot(_1376, _1377) * _1395;
                    _1406 = _1397;
                    _1407 = 0.5f * mad(dot(_680, _1376), _1393, dot(_680, _1377) * _1394);
                    _1408 = _1395 / mad(_1393, _1394, mad(_1397, 0.5f, 0.5f));
                }
                else
                {
                    float _1385 = dot(_1376, _1376);
                    _1406 = 1.0f;
                    _1407 = dot(_680, _1376 * rsqrt(_1385));
                    _1408 = 1.0f / (_1385 + 1.0f);
                }
                float _1426 = 0.0f;
                if (_1292 > 0.0f)
                {
                    float _1415 = sqrt(clamp((_1292 * _1292) * _1408, 0.0f, 1.0f));
                    float _1425 = 0.0f;
                    if (_1407 < _1415)
                    {
                        float _1421 = _1415 + max(_1407, -_1415);
                        _1425 = (_1421 * _1421) / (4.0f * _1415);
                    }
                    else
                    {
                        _1425 = _1407;
                    }
                    _1426 = _1425;
                }
                else
                {
                    _1426 = _1407;
                }
                float _1427 = clamp(_1426, 0.0f, 1.0f);
                float3 _1445 = 0.0f.xxx;
                if (_1381)
                {
                    float3 _1432 = reflect(-_429, _680);
                    float3 _1433 = _1377 - _1376;
                    float _1434 = dot(_1432, _1433);
                    _1445 = _1376 + (_1433 * clamp(dot(_1376, (_1432 * _1434) - _1433) / mad(_1296, _1296, -(_1434 * _1434)), 0.0f, 1.0f));
                }
                else
                {
                    _1445 = _1376;
                }
                float _1447 = rsqrt(dot(_1445, _1445));
                float3 _1448 = _1445 * _1447;
                float _1449 = max(_1380, View_View_MinRoughness);
                float _1454 = clamp((_1292 * _1447) * mad(-_1449, _1449, 1.0f), 0.0f, 1.0f);
                float _1456 = clamp(spvUnpackHalf2x16(_1289 >> 16u).x * _1447, 0.0f, 1.0f);
                float3 _1649 = 0.0f.xxx;
                float3 _1650 = 0.0f.xxx;
                [branch]
                if (_1427 > 0.0f)
                {
                    float _1467 = dot(_680, _1448);
                    float _1468 = dot(_680, _429);
                    float _1469 = dot(_429, _1448);
                    float _1471 = rsqrt(mad(2.0f, _1469, 2.0f));
                    bool _1477 = _1454 > 0.0f;
                    float _1556 = 0.0f;
                    float _1557 = 0.0f;
                    if (_1477)
                    {
                        float _1482 = sqrt(mad(-_1454, _1454, 1.0f));
                        float _1483 = 2.0f * _1467;
                        float _1484 = -_1469;
                        float _1485 = mad(_1483, _1468, _1484);
                        float _1554 = 0.0f;
                        float _1555 = 0.0f;
                        if (_1485 >= _1482)
                        {
                            _1554 = 1.0f;
                            _1555 = abs(_1468);
                        }
                        else
                        {
                            float _1490 = -_1485;
                            float _1493 = _1454 * rsqrt(mad(_1490, _1485, 1.0f));
                            float _1494 = mad(_1490, _1467, _1468);
                            float _1498 = mad(_1490, _1469, mad(2.0f * _1468, _1468, -1.0f));
                            float _1509 = _1493 * sqrt(clamp(mad(_1483 * _1468, _1469, mad(_1484, _1469, mad(-_1468, _1468, mad(-_1467, _1467, 1.0f)))), 0.0f, 1.0f));
                            float _1511 = (_1509 * 2.0f) * _1468;
                            float _1512 = mad(_1467, _1482, _1468);
                            float _1513 = mad(_1493, _1494, _1512);
                            float _1515 = mad(_1493, _1498, mad(_1469, _1482, 1.0f));
                            float _1516 = _1509 * _1515;
                            float _1517 = _1513 * _1515;
                            float _1522 = _1517 * mad(-0.5f, _1516, (0.25f * _1511) * _1513);
                            float _1532 = mad(_1513, mad(_1512, _1515 * _1515, _1517 * mad(-0.5f, mad(_1469, _1482, _1515), -0.5f)), mad(_1516, _1516, (_1511 * _1513) * mad(_1511, _1513, _1516 * (-2.0f))));
                            float _1536 = (2.0f * _1522) / mad(_1532, _1532, _1522 * _1522);
                            float _1537 = _1536 * _1532;
                            float _1539 = mad(-_1536, _1522, 1.0f);
                            float _1545 = mad(_1469, _1482, mad(_1539, _1493 * _1498, _1537 * _1511));
                            float _1547 = rsqrt(mad(2.0f, _1545, 2.0f));
                            _1554 = clamp((mad(_1467, _1482, mad(_1539, _1493 * _1494, _1537 * _1509)) + _1468) * _1547, 0.0f, 1.0f);
                            _1555 = clamp(mad(_1547, _1545, _1547), 0.0f, 1.0f);
                        }
                        _1556 = _1554;
                        _1557 = _1555;
                    }
                    else
                    {
                        _1556 = clamp((_1467 + _1468) * _1471, 0.0f, 1.0f);
                        _1557 = clamp(mad(_1471, _1469, _1471), 0.0f, 1.0f);
                    }
                    float _1560 = clamp(abs(_1468) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1563 = 1.0f.xxx * ((_1301 ? _1408 : 1.0f) * _1427);
                    float3 _1647 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1296, _1292), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1647 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1570 = _1380 * _1380;
                        float _1580 = 0.0f;
                        if (_1456 > 0.0f)
                        {
                            _1580 = clamp(mad(_1570, _1570, (_1456 * _1456) / mad(_1557, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1580 = _1570 * _1570;
                        }
                        float _1594 = 0.0f;
                        float _1595 = 0.0f;
                        if (_1477)
                        {
                            float _1592 = _1580 + (((0.25f * _1454) * mad(3.0f, asfloat(532487669 + (asint(_1580) >> 1)), _1454)) / (_1557 + 0.001000000047497451305389404296875f));
                            _1594 = _1580 / _1592;
                            _1595 = _1592;
                        }
                        else
                        {
                            _1594 = 1.0f;
                            _1595 = _1580;
                        }
                        float _1616 = 0.0f;
                        if (_1406 < 1.0f)
                        {
                            float _1602 = sqrt((1.00010001659393310546875f - _1406) / (1.0f + _1406));
                            _1616 = _1594 * sqrt(_1595 / (_1595 + (((0.25f * _1602) * mad(3.0f, asfloat(532487669 + (asint(_1595) >> 1)), _1602)) / (_1557 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1616 = _1594;
                        }
                        float _1619 = mad(mad(_1556, _1580, -_1556), _1556, 1.0f);
                        float _1624 = sqrt(_1580);
                        float _1625 = 1.0f - _1624;
                        float _1631 = 1.0f - _1557;
                        float _1632 = _1631 * _1631;
                        float _1633 = _1632 * _1632;
                        _1647 = _1563 * (((clamp(50.0f * _720.y, 0.0f, 1.0f) * (_1633 * _1631)).xxx + (_720 * mad(-_1633, _1631, 1.0f))) * (((_1580 / ((3.1415927410125732421875f * _1619) * _1619)) * _1616) * (0.5f / mad(_1427, mad(_1560, _1625, _1624), _1560 * mad(_1427, _1625, _1624)))));
                    }
                    _1649 = ((_718 * 0.3183098733425140380859375f) * _1563) * 1.0f;
                    _1650 = _1647;
                }
                else
                {
                    _1649 = 0.0f.xxx;
                    _1650 = 0.0f.xxx;
                }
                float3 _1653 = ((float3(float((_1273 >> 0u) & 1023u), float((_1273 >> 10u) & 1023u), float((_1273 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1254].x) * _1361) * _1369;
                _1656 = mad(_1649 * (float((_1303 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1653, 0.0f.xxx);
                _1657 = (_1650 * (float(_1303 & 1023u) * 0.000977517105638980865478515625f)) * _1653;
            }
            else
            {
                _1656 = 0.0f.xxx;
                _1657 = 0.0f.xxx;
            }
            _1658 = _1656;
            _1659 = _1657;
        }
        else
        {
            _1658 = 0.0f.xxx;
            _1659 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1267 >> 8u) & 7u) & _928) != 0u)
        {
            _1238 = _1237 + float4(_1658, 0.0f);
            _1241 = _1240 + float4(_1659, 0.0f);
        }
        else
        {
            _1238 = _1237;
            _1241 = _1240;
        }
    }
    bool4 _1677 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1686 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1724 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _681) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1725 = _1724.x;
    float2 _1734 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1725 * _1725, exp2((-9.27999973297119140625f) * clamp(dot(_680, _429), 0.0f, 1.0f))), _1725, _1724.y)) + _1724.zw;
    float3 _1759 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_680 * (2.0f * dot(_429, _680))) - _429, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1686].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_681, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1686].x, _287).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_720 * _1734.x) + (clamp(50.0f * _720.y, 0.0f, 1.0f) * _1734.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_836 * float2(float(_842.x), float(_842.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_638.xxx, ((((((_720 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _638) + ((_720 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _638) + ((_720 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _638), float4(_1677.x ? 0.0f.xxxx.x : _1237.x, _1677.y ? 0.0f.xxxx.y : _1237.y, _1677.z ? 0.0f.xxxx.z : _1237.z, _1677.w ? 0.0f.xxxx.w : _1237.w).xyz + float4(_1677.x ? 0.0f.xxxx.x : _1240.x, _1677.y ? 0.0f.xxxx.y : _1240.y, _1677.z ? 0.0f.xxxx.z : _1240.z, _1677.w ? 0.0f.xxxx.w : _1240.w).xyz);
    bool _1762 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2188 = 0.0f.xxxx;
    if (_1762)
    {
        uint2 _1774 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1776 = normalize(_413 - View_View_TranslatedWorldCameraOrigin);
        uint _1777 = _1774.x;
        uint4 _1781 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1777, _1774.y, 0u), 0u));
        uint _1782 = _1781.x;
        float4 _1784 = 0.0f.xxxx;
        _1784 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1785 = 0.0f.xxxx;
        for (int _1787 = 0; uint(_1787) < _1782; _1784 = _1785, _1787++)
        {
            uint _1798 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1777, _1774.y, uint(1 + _1787)), 0u)).x * 3u;
            float4 _1800 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1798);
            float4 _1802 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1798 + 1u);
            float4 _1804 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1798 + 2u);
            float3 _1805 = _1800.xyz;
            float _1806 = _1800.w;
            float _1807 = 1.0f / _1806;
            uint _1809 = asuint(_1802.x);
            float2 _1815 = float2(spvUnpackHalf2x16(_1809).x, spvUnpackHalf2x16(_1809 >> 16u).x);
            float3 _1816 = float3(_1815.x, _1815.y, _291.z);
            uint _1818 = asuint(_1802.y);
            _1816.z = spvUnpackHalf2x16(_1818).x;
            float3 _1825 = 0.0f.xxx;
            _1825.x = spvUnpackHalf2x16(_1818 >> 16u).x;
            uint _1827 = asuint(_1802.z);
            float2 _1833 = float2(spvUnpackHalf2x16(_1827).x, spvUnpackHalf2x16(_1827 >> 16u).x);
            float3 _1834 = float3(_1825.x, _1833.x, _1833.y);
            float3x3 _1839 = float3x3(_1816 * _1807, _1834 * _1807, cross(_1816, _1834) * _1807);
            uint _1841 = asuint(_1804.x);
            float2 _1844 = spvUnpackHalf2x16((_1841 >> 17u) & 32752u);
            float _1845 = _1844.x;
            float2 _1848 = spvUnpackHalf2x16((_1841 >> 6u) & 32752u);
            float _1849 = _1848.x;
            float2 _1852 = spvUnpackHalf2x16((_1841 << 5u) & 32736u);
            float _1853 = _1852.x;
            uint _1855 = asuint(_1804.y);
            float3 _1873 = 0.0f.xxx;
            if (_1855 > 0u)
            {
                _1873 = float3(spvUnpackHalf2x16((_1855 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1855 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1855 << 5u) & 32736u).x);
            }
            else
            {
                _1873 = 0.0f.xxx;
            }
            uint _1875 = asuint(_1804.z);
            float _1890 = float((_1875 >> 24u) & 255u);
            float _1891 = _1890 * 0.0039215688593685626983642578125f;
            float3 _1898 = mul(View_View_TranslatedWorldCameraOrigin - _1805, _1839);
            float3 _1900 = normalize(mul(_1776, _1839));
            float _1902 = dot(_1900, _1900);
            float _1903 = dot(_1900, _1898);
            float _1904 = 2.0f * _1903;
            float _1909 = mad(_1904, _1904, -((4.0f * _1902) * mad(-1.0f, 1.0f, dot(_1898, _1898))));
            float2 _1921 = 0.0f.xx;
            [flatten]
            if (_1909 >= 0.0f)
            {
                _1921 = ((_1903 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1909))) / (2.0f * _1902).xx;
            }
            else
            {
                _1921 = (-1.0f).xx;
            }
            float3 _1927 = mul(_413 - _1805, _1839) - _1898;
            float2 _1931 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1807, _1921), sqrt(dot(_1927, _1927)).xx);
            float _2083 = 0.0f;
            float3 _2084 = 0.0f.xxx;
            if (any(bool2(_1931.x > 0.0f.xx.x, _1931.y > 0.0f.xx.y)))
            {
                float2 _1952 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1942 = dot(_1776, View_View_ViewForward);
                    _1952 = max(_1931, ((View_View_VolumetricFogMaxDistance * ((_1942 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1942) : 0.0f)) * _1807).xx);
                }
                else
                {
                    _1952 = _1931;
                }
                float _1957 = max(0.0f, abs(_1952.y - _1952.x));
                float _2081 = 0.0f;
                float3 _2082 = 0.0f.xxx;
                if (_1957 > 0.0f)
                {
                    float3 _1962 = _1898 + (_1900 * _1952.x);
                    float _1998 = 0.0f;
                    if (_1845 > 0.0f)
                    {
                        float _1966 = dot(_1900, _1962);
                        float _1967 = dot(_1962, _1962);
                        float _1968 = _1967 - 1.0f;
                        float _1970 = mad(_1966, _1966, 1.0f - _1967);
                        float _1997 = 0.0f;
                        if (_1970 >= 0.0f)
                        {
                            float _1974 = sqrt(_1970);
                            float _1975 = -_1966;
                            float _1978 = max(_1975 - _1974, 0.0f);
                            float _1980 = min(max(_1975 + _1974, 0.0f), _1957);
                            float _1981 = _1978 * _1978;
                            float _1982 = _1980 * _1980;
                            _1997 = max(0.0f, (_1845 * ((-mad(_1982 * _1980, 0.3333333432674407958984375f, mad(_1968, _1980, _1966 * _1982))) - (-mad(_1981 * _1978, 0.3333333432674407958984375f, mad(_1968, _1978, _1966 * _1981))))) * 0.75f);
                        }
                        else
                        {
                            _1997 = 0.0f;
                        }
                        _1998 = _1997;
                    }
                    else
                    {
                        _1998 = 0.0f;
                    }
                    float _2023 = 0.0f;
                    if (_1849 > 0.0f)
                    {
                        float _2004 = _1900.z;
                        float _2010 = (abs(_2004) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2004 >= 0.0f) ? 1.0f : (-1.0f))) : _2004;
                        float _2013 = max(-80.0f, (_1962.z - _1804.w) * _1853);
                        _2023 = (_1849 / (_1853 * _2010)) * (exp(-_2013) - exp(-mad(_2010 * _1957, _1853, _2013)));
                    }
                    else
                    {
                        _2023 = 0.0f;
                    }
                    float _2034 = exp((log(mad(exp(-_1998) - 1.0f, 1.0f - exp(-_2023), 1.0f)) * _1806) * 0.00999999977648258209228515625f);
                    float _2038 = _1890 * (-0.0039215688593685626983642578125f);
                    float _2045 = mad(_1890 * (-0.007843137718737125396728515625f), dot(_1776, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2038, _2038, 1.0f));
                    float3 _2050 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1891, _2038, 1.0f) / ((12.56637096405029296875f * _2045) * sqrt(_2045)));
                    float3 _2078 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2063 = float4(_1776 * _2038, 1.0f);
                        _2078 = _2050 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2063), dot(View_SkyIrradianceEnvironmentMap[1u], _2063), dot(View_SkyIrradianceEnvironmentMap[2u], _2063)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2078 = _2050;
                    }
                    _2081 = _2034;
                    _2082 = mad(_2078, float4(float((_1875 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1875 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1875 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1891).xyz, _1873) * (1.0f - _2034);
                }
                else
                {
                    _2081 = 1.0f;
                    _2082 = 0.0f.xxx;
                }
                _2083 = _2081;
                _2084 = _2082;
            }
            else
            {
                _2083 = 1.0f;
                _2084 = 0.0f.xxx;
            }
            _1785 = float4((_1784.xyz * _2083) + float4(_2084, _2083).xyz, _1784.w * _2083);
        }
        float _2104 = _1784.w * in_var_TEXCOORD7.w;
        float4 _2112 = float4(_89, 1.0f);
        precise float4 _93 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _94 = _2112 + _93;
        precise float4 _95 = _94 - _2112;
        precise float4 _96 = _94 - _95;
        precise float4 _97 = _2112 - _96;
        precise float4 _98 = _93 - _95;
        precise float4 _99 = _97 + _98;
        float4 _2123 = mul(_94 + (float4(_92, 0.0f) + _99), View_View_RelativeWorldToClip);
        float _2124 = _2123.w;
        float4 _2187 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2187 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2170 = 0.0f.xxxx;
            float _2171 = 0.0f;
            if (_1762)
            {
                float4 _2166 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2123.xy / _2124.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2124, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2168 = _2166.xyz * View_View_OneOverPreExposure;
                _2170 = float4(_2168.x, _2168.y, _2168.z, _2166.w);
                _2171 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2170 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2171 = 0.0f;
            }
            float4 _2176 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2170, clamp((_692 - _2171) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2179 = _2176.w;
            _2187 = float4(_2176.xyz + (float4(_1784.xyz + (in_var_TEXCOORD7.xyz * _1784.w), _2104).xyz * _2179), _2179 * _2104);
            break;
        } while(false);
        _2188 = _2187;
    }
    else
    {
        _2188 = in_var_TEXCOORD7;
    }
    float3 _2195 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[5].yzw, Material_Material_PreshaderBuffer[5].x.xxx), 0.0f.xxx);
    float3 _2253 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _100 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _101 = _100 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _102 = _101 - _100;
        precise float3 _103 = Primitive_Primitive_ObjectWorldPositionLow - _102;
        precise float3 _104 = _89 - _101;
        precise float3 _105 = _92 - _103;
        precise float3 _106 = _104 + _105;
        float3 _2215 = abs(_106);
        float3 _2216 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2252 = 0.0f.xxx;
        if (any(bool3(_2215.x > _2216.x, _2215.y > _2216.y, _2215.z > _2216.z)))
        {
            float3 _2248 = frac(dot(frac(frac(_89 * 1.52587890625e-05f.xxx) + frac(_92 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2252 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2248.x > 0.5f.xxx.x, _2248.y > 0.5f.xxx.y, _2248.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2238 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2226 = abs(_413 - in_var_TEXCOORD9);
                _2238 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2226.x, max(_2226.y, _2226.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2238 = _2195;
            }
            _2252 = _2238;
        }
        _2253 = _2252;
    }
    else
    {
        _2253 = _2195;
    }
    float4 _2262 = float4(((lerp(_1759, _718 + (_720 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2253) * _2188.w) + _2188.xyz, 0.0f);
    _2262.w = 0.0f;
    float4 _2266 = _2262 * View_View_PreExposure;
    float3 _2271 = min(_2266.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2271.x, _2271.y, _2271.z, _2266.w);
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
