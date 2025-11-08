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
    float2 _546 = _494 * Material_Material_PreshaderBuffer[5].x.xx;
    float2 _552 = mad(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _546, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _561 = _445.xxx;
    float3 _569 = normalize(mul(normalize((mad(float4(_552, sqrt(clamp(1.0f - dot(_552, _552), 0.0f, 1.0f)), 1.0f).xyz, _561, mad(float4(_532, sqrt(clamp(1.0f - dot(_532, _532), 0.0f, 1.0f)), 1.0f).xyz, _541, mad(float4(_500, sqrt(clamp(1.0f - dot(_500, _500), 0.0f, 1.0f)), 1.0f).xyz, _509, float4(_515, sqrt(clamp(1.0f - dot(_515, _515), 0.0f, 1.0f)), 1.0f).xyz * _524))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_382, cross(_379, _382), _379), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz))));
    float3 _570 = _569 * 1.0f;
    float4 _605 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _610 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _617 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _494, View_View_MaterialTextureMipBias);
    float4 _623 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _546, View_View_MaterialTextureMipBias);
    float3 _634 = clamp(mad(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _546, View_View_MaterialTextureMipBias).xyz, _561, mad(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _494, View_View_MaterialTextureMipBias).xyz, _541, mad(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _494, View_View_MaterialTextureMipBias).xyz, _509, Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _494, View_View_MaterialTextureMipBias).xyz * _524))), 0.0f.xxx, 1.0f.xxx);
    float _638 = mad(clamp(mad(_623.y, _445, mad(_617.y, _442, mad(_605.y, _436, _610.y * _439))), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _639 = clamp(mad(_623.x, _445, mad(_617.x, _442, mad(_605.x, _436, _610.x * _439))), 0.0f, 1.0f);
    float3 _681 = 0.0f.xxx;
    float _682 = 0.0f;
    float _683 = 0.0f;
    float _684 = 0.0f;
    float3 _685 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _653 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _657 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _653, 0.0f);
        float4 _660 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _653, 0.0f);
        float4 _663 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _653, 0.0f);
        float _673 = _663.w;
        _681 = normalize((_570 * _660.w) + ((_660.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _682 = mad(_638, _673, _663.z);
        _683 = mad(0.5f, _673, _663.y);
        _684 = _663.x;
        _685 = (_634 * _657.w) + _657.xyz;
    }
    else
    {
        _681 = _570;
        _682 = _638;
        _683 = 0.5f;
        _684 = 0.0f;
        _685 = _634;
    }
    float _693 = _404.w;
    float3 _706 = ((_685 - (_685 * _684)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _713 = (lerp((0.07999999821186065673828125f * _683).xxx, _685, _684.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _714 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _719 = 0.0f.xxx;
    if (_714)
    {
        _719 = _706 + (_713 * 0.449999988079071044921875f);
    }
    else
    {
        _719 = _706;
    }
    bool3 _720 = _714.xxx;
    float3 _721 = float3(_720.x ? 0.0f.xxx.x : _713.x, _720.y ? 0.0f.xxx.y : _713.y, _720.z ? 0.0f.xxx.z : _713.z);
    float2 _727 = mad(_404.xy / _693.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
    float2 _837 = 0.0f.xx;
    if (View_View_NumSceneColorMSAASamples > 1)
    {
        int2 _738 = int2(trunc(_727 * View_View_BufferSizeAndInvSize.xy));
        int _739 = _738.x;
        int _740 = _738.y;
        float4 _744 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_739, _740, 0).xy, 0));
        float _745 = _744.x;
        float _755 = -View_View_InvDeviceZToWorldZTransform.w;
        float2 _836 = 0.0f.xx;
        if ((abs((mad(_745, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_745, View_View_InvDeviceZToWorldZTransform.z, _755))) - _693) / _693) > 0.00999999977648258209228515625f)
        {
            float2 _768 = _727 + float2(-View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _772 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_739 - 1, _740, 0).xy, 0));
            float _773 = _772.x;
            float _779 = abs((mad(_773, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_773, View_View_InvDeviceZToWorldZTransform.z, _755))) - _693);
            bool _780 = _779 < 100000000.0f;
            bool2 _781 = _780.xx;
            float2 _782 = float2(_781.x ? _768.x : _727.x, _781.y ? _768.y : _727.y);
            float _783 = _780 ? _779 : 100000000.0f;
            float2 _786 = _727 + float2(0.0f, View_View_BufferSizeAndInvSize.w);
            float4 _790 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_739, _740 + 1, 0).xy, 0));
            float _791 = _790.x;
            float _797 = abs((mad(_791, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_791, View_View_InvDeviceZToWorldZTransform.z, _755))) - _693);
            bool _798 = _797 < _783;
            bool2 _799 = _798.xx;
            float2 _800 = float2(_799.x ? _786.x : _782.x, _799.y ? _786.y : _782.y);
            float _801 = _798 ? _797 : _783;
            float2 _803 = _727 + float2(View_View_BufferSizeAndInvSize.z, 0.0f);
            float4 _807 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_739 + 1, _740, 0).xy, 0));
            float _808 = _807.x;
            float _814 = abs((mad(_808, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_808, View_View_InvDeviceZToWorldZTransform.z, _755))) - _693);
            bool _815 = _814 < _801;
            bool2 _816 = _815.xx;
            float2 _817 = float2(_816.x ? _803.x : _800.x, _816.y ? _803.y : _800.y);
            float2 _821 = _727 + float2(0.0f, -View_View_BufferSizeAndInvSize.w);
            float4 _825 = OpaqueBasePass_ResolvedSceneDepthTexture.Load(int3(int3(_739, _740 - 1, 0).xy, 0));
            float _826 = _825.x;
            bool2 _834 = (abs((mad(_826, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_826, View_View_InvDeviceZToWorldZTransform.z, _755))) - _693) < (_815 ? _814 : _801)).xx;
            _836 = float2(_834.x ? _821.x : _817.x, _834.y ? _821.y : _817.y);
        }
        else
        {
            _836 = _727;
        }
        _837 = _836;
    }
    else
    {
        _837 = _727;
    }
    uint _843_dummy_parameter;
    uint2 _843 = spvTextureSize(OpaqueBasePass_IndirectOcclusionTexture, uint(0), _843_dummy_parameter);
    uint2 _887 = uint2(_397 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
    float4 _915 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_UseForwardScreenSpaceShadowMask != 0)
    {
        _915 = OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture.Load(int3(int3(int2(trunc(_837 * View_View_BufferSizeAndInvSize.xy)), 0).xy, 0));
    }
    else
    {
        _915 = 1.0f.xxxx;
    }
    float4 _916 = _915 * _915;
    uint _929 = (uint((Primitive_Primitive_Flags & 2048u) != 0u) | (uint((Primitive_Primitive_Flags & 4096u) != 0u) << 1u)) | (uint((Primitive_Primitive_Flags & 8192u) != 0u) << 2u);
    float4 _1221 = 0.0f.xxxx;
    float4 _1222 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _955 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _970 = dot(float4(float(_955 & 1u), float((_955 & 2u) >> 1u), float((_955 & 4u) >> 2u), float((_955 & 8u) >> 3u)), _916);
        bool _972 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _973 = _972 ? 1.0f : _970;
        float _986 = 0.0f;
        float _987 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _980 = clamp(mad(_693, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _982 = lerp(_972 ? _970 : 1.0f, 1.0f, _980 * _980);
            _986 = min(_982, _973) * _973;
            _987 = _982 * _973;
        }
        else
        {
            _986 = 1.0f;
            _987 = 1.0f;
        }
        float3 _1203 = 0.0f.xxx;
        float3 _1204 = 0.0f.xxx;
        [branch]
        if ((_987 + _986) > 0.0f)
        {
            float _994 = max(_682, View_View_MinRoughness);
            float _995 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _998 = rsqrt(_995);
            float3 _999 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _998;
            float _1000 = dot(_681, _999);
            float _1018 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1007 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_995 + 1.0f)), 0.0f, 1.0f));
                float _1017 = 0.0f;
                if (_1000 < _1007)
                {
                    float _1013 = _1007 + max(_1000, -_1007);
                    _1017 = (_1013 * _1013) / (4.0f * _1007);
                }
                else
                {
                    _1017 = _1000;
                }
                _1018 = _1017;
            }
            else
            {
                _1018 = _1000;
            }
            float _1019 = clamp(_1018, 0.0f, 1.0f);
            float _1020 = max(_994, View_View_MinRoughness);
            float _1025 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _998) * mad(-_1020, _1020, 1.0f), 0.0f, 1.0f);
            float _1027 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _998, 0.0f, 1.0f);
            float3 _1196 = 0.0f.xxx;
            float3 _1197 = 0.0f.xxx;
            [branch]
            if (_1019 > 0.0f)
            {
                float _1038 = dot(_681, _429);
                float _1039 = dot(_429, _999);
                float _1041 = rsqrt(mad(2.0f, _1039, 2.0f));
                bool _1047 = _1025 > 0.0f;
                float _1126 = 0.0f;
                float _1127 = 0.0f;
                if (_1047)
                {
                    float _1052 = sqrt(mad(-_1025, _1025, 1.0f));
                    float _1053 = 2.0f * _1000;
                    float _1054 = -_1039;
                    float _1055 = mad(_1053, _1038, _1054);
                    float _1124 = 0.0f;
                    float _1125 = 0.0f;
                    if (_1055 >= _1052)
                    {
                        _1124 = 1.0f;
                        _1125 = abs(_1038);
                    }
                    else
                    {
                        float _1060 = -_1055;
                        float _1063 = _1025 * rsqrt(mad(_1060, _1055, 1.0f));
                        float _1064 = mad(_1060, _1000, _1038);
                        float _1068 = mad(_1060, _1039, mad(2.0f * _1038, _1038, -1.0f));
                        float _1079 = _1063 * sqrt(clamp(mad(_1053 * _1038, _1039, mad(_1054, _1039, mad(-_1038, _1038, mad(-_1000, _1000, 1.0f)))), 0.0f, 1.0f));
                        float _1081 = (_1079 * 2.0f) * _1038;
                        float _1082 = mad(_1000, _1052, _1038);
                        float _1083 = mad(_1063, _1064, _1082);
                        float _1085 = mad(_1063, _1068, mad(_1039, _1052, 1.0f));
                        float _1086 = _1079 * _1085;
                        float _1087 = _1083 * _1085;
                        float _1092 = _1087 * mad(-0.5f, _1086, (0.25f * _1081) * _1083);
                        float _1102 = mad(_1083, mad(_1082, _1085 * _1085, _1087 * mad(-0.5f, mad(_1039, _1052, _1085), -0.5f)), mad(_1086, _1086, (_1081 * _1083) * mad(_1081, _1083, _1086 * (-2.0f))));
                        float _1106 = (2.0f * _1092) / mad(_1102, _1102, _1092 * _1092);
                        float _1107 = _1106 * _1102;
                        float _1109 = mad(-_1106, _1092, 1.0f);
                        float _1115 = mad(_1039, _1052, mad(_1109, _1063 * _1068, _1107 * _1081));
                        float _1117 = rsqrt(mad(2.0f, _1115, 2.0f));
                        _1124 = clamp((mad(_1000, _1052, mad(_1109, _1063 * _1064, _1107 * _1079)) + _1038) * _1117, 0.0f, 1.0f);
                        _1125 = clamp(mad(_1117, _1115, _1117), 0.0f, 1.0f);
                    }
                    _1126 = _1124;
                    _1127 = _1125;
                }
                else
                {
                    _1126 = clamp((_1000 + _1038) * _1041, 0.0f, 1.0f);
                    _1127 = clamp(mad(_1041, _1039, _1041), 0.0f, 1.0f);
                }
                float _1130 = clamp(abs(_1038) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1132 = 1.0f.xxx * _1019;
                float3 _1194 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1194 = 0.0f.xxx;
                }
                else
                {
                    float _1139 = _994 * _994;
                    float _1149 = 0.0f;
                    if (_1027 > 0.0f)
                    {
                        _1149 = clamp(mad(_1139, _1139, (_1027 * _1027) / mad(_1127, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1149 = _1139 * _1139;
                    }
                    float _1163 = 0.0f;
                    if (_1047)
                    {
                        _1163 = _1149 / (_1149 + (((0.25f * _1025) * mad(3.0f, asfloat(532487669 + (asint(_1149) >> 1)), _1025)) / (_1127 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1163 = 1.0f;
                    }
                    float _1166 = mad(mad(_1126, _1149, -_1126), _1126, 1.0f);
                    float _1171 = sqrt(_1149);
                    float _1172 = 1.0f - _1171;
                    float _1178 = 1.0f - _1127;
                    float _1179 = _1178 * _1178;
                    float _1180 = _1179 * _1179;
                    _1194 = _1132 * (((clamp(50.0f * _721.y, 0.0f, 1.0f) * (_1180 * _1178)).xxx + (_721 * mad(-_1180, _1178, 1.0f))) * (((_1149 / ((3.1415927410125732421875f * _1166) * _1166)) * _1163) * (0.5f / mad(_1019, mad(_1130, _1172, _1171), _1130 * mad(_1019, _1172, _1171)))));
                }
                _1196 = ((_719 * 0.3183098733425140380859375f) * _1132) * 1.0f;
                _1197 = _1194;
            }
            else
            {
                _1196 = 0.0f.xxx;
                _1197 = 0.0f.xxx;
            }
            float3 _1200 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _987;
            _1203 = mad(_1196 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1200, 0.0f.xxx);
            _1204 = (_1197 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1200;
        }
        else
        {
            _1203 = 0.0f.xxx;
            _1204 = 0.0f.xxx;
        }
        float4 _1208 = float4(_1203, 0.0f);
        float4 _1212 = float4(_1204, 0.0f);
        float4 _1219 = 0.0f.xxxx;
        float4 _1220 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _929) != 0u)
        {
            _1219 = float4(_1208.x, _1208.y, _1208.z, _1208.w);
            _1220 = float4(_1212.x, _1212.y, _1212.z, _1212.w);
        }
        else
        {
            _1219 = 0.0f.xxxx;
            _1220 = 0.0f.xxxx;
        }
        _1221 = _1219;
        _1222 = _1220;
    }
    else
    {
        _1221 = 0.0f.xxxx;
        _1222 = 0.0f.xxxx;
    }
    uint _1223 = ((((min(uint(max(0.0f, log2(mad(_322, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _887.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _887.x) * 2u;
    uint _1233 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1223 + 1u] & 1073741823u;
    uint _1236 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1223] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1238 = 0.0f.xxxx;
    float4 _1241 = 0.0f.xxxx;
    _1238 = _1221;
    _1241 = _1222;
    float4 _1239 = 0.0f.xxxx;
    float4 _1242 = 0.0f.xxxx;
    [loop]
    for (uint _1243 = 0u; _1243 < _1236; _1238 = _1239, _1241 = _1242, _1243++)
    {
        uint _1252 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1233 + _1243).x * 6u;
        uint _1255 = _1252 + 1u;
        uint _1258 = _1252 + 2u;
        uint _1261 = _1252 + 3u;
        uint _1264 = _1252 + 4u;
        uint _1268 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1258].w);
        uint _1274 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].y);
        uint _1290 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1261].z);
        float2 _1292 = spvUnpackHalf2x16(_1290 & 65535u);
        float _1293 = _1292.x;
        float2 _1296 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1261].w));
        float _1297 = _1296.x;
        bool _1302 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].w == 0.0f;
        uint _1304 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1264].w);
        uint _1317 = _1268 >> 4u;
        float3 _1333 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1252].xyz - _413;
        float _1334 = dot(_1333, _1333);
        float _1351 = 0.0f;
        if (_1302)
        {
            float _1346 = _1334 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1252].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1252].w);
            float _1349 = clamp(mad(-_1346, _1346, 1.0f), 0.0f, 1.0f);
            _1351 = _1349 * _1349;
        }
        else
        {
            float3 _1340 = _1333 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1252].w;
            _1351 = pow(1.0f - clamp(dot(_1340, _1340), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].w);
        }
        float _1362 = 0.0f;
        if (((_1268 >> 16u) & 3u) == 2u)
        {
            float _1359 = clamp((dot(_1333 * rsqrt(_1334), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1258].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1261].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1261].y, 0.0f, 1.0f);
            _1362 = _1351 * (_1359 * _1359);
        }
        else
        {
            _1362 = _1351;
        }
        float3 _1659 = 0.0f.xxx;
        float3 _1660 = 0.0f.xxx;
        [branch]
        if (_1362 > 0.0f)
        {
            float _1370 = 0.0f;
            [branch]
            if (uint(int((_1268 & 255u) != 0u)) != 0u)
            {
                _1370 = dot(float4(float(_1317 & 1u), float((_1317 & 2u) >> 1u), float((_1317 & 4u) >> 2u), float((_1317 & 8u) >> 3u)), _916);
            }
            else
            {
                _1370 = 1.0f;
            }
            float3 _1657 = 0.0f.xxx;
            float3 _1658 = 0.0f.xxx;
            [branch]
            if ((_1370 + _1370) > 0.0f)
            {
                float3 _1376 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1264].xyz * (0.5f * _1297);
                float3 _1377 = _1333 - _1376;
                float3 _1378 = _1333 + _1376;
                float _1381 = max(_682, View_View_MinRoughness);
                bool _1382 = _1297 > 0.0f;
                float _1407 = 0.0f;
                float _1408 = 0.0f;
                float _1409 = 0.0f;
                [branch]
                if (_1382)
                {
                    float _1394 = rsqrt(dot(_1377, _1377));
                    float _1395 = rsqrt(dot(_1378, _1378));
                    float _1396 = _1394 * _1395;
                    float _1398 = dot(_1377, _1378) * _1396;
                    _1407 = _1398;
                    _1408 = 0.5f * mad(dot(_681, _1377), _1394, dot(_681, _1378) * _1395);
                    _1409 = _1396 / mad(_1394, _1395, mad(_1398, 0.5f, 0.5f));
                }
                else
                {
                    float _1386 = dot(_1377, _1377);
                    _1407 = 1.0f;
                    _1408 = dot(_681, _1377 * rsqrt(_1386));
                    _1409 = 1.0f / (_1386 + 1.0f);
                }
                float _1427 = 0.0f;
                if (_1293 > 0.0f)
                {
                    float _1416 = sqrt(clamp((_1293 * _1293) * _1409, 0.0f, 1.0f));
                    float _1426 = 0.0f;
                    if (_1408 < _1416)
                    {
                        float _1422 = _1416 + max(_1408, -_1416);
                        _1426 = (_1422 * _1422) / (4.0f * _1416);
                    }
                    else
                    {
                        _1426 = _1408;
                    }
                    _1427 = _1426;
                }
                else
                {
                    _1427 = _1408;
                }
                float _1428 = clamp(_1427, 0.0f, 1.0f);
                float3 _1446 = 0.0f.xxx;
                if (_1382)
                {
                    float3 _1433 = reflect(-_429, _681);
                    float3 _1434 = _1378 - _1377;
                    float _1435 = dot(_1433, _1434);
                    _1446 = _1377 + (_1434 * clamp(dot(_1377, (_1433 * _1435) - _1434) / mad(_1297, _1297, -(_1435 * _1435)), 0.0f, 1.0f));
                }
                else
                {
                    _1446 = _1377;
                }
                float _1448 = rsqrt(dot(_1446, _1446));
                float3 _1449 = _1446 * _1448;
                float _1450 = max(_1381, View_View_MinRoughness);
                float _1455 = clamp((_1293 * _1448) * mad(-_1450, _1450, 1.0f), 0.0f, 1.0f);
                float _1457 = clamp(spvUnpackHalf2x16(_1290 >> 16u).x * _1448, 0.0f, 1.0f);
                float3 _1650 = 0.0f.xxx;
                float3 _1651 = 0.0f.xxx;
                [branch]
                if (_1428 > 0.0f)
                {
                    float _1468 = dot(_681, _1449);
                    float _1469 = dot(_681, _429);
                    float _1470 = dot(_429, _1449);
                    float _1472 = rsqrt(mad(2.0f, _1470, 2.0f));
                    bool _1478 = _1455 > 0.0f;
                    float _1557 = 0.0f;
                    float _1558 = 0.0f;
                    if (_1478)
                    {
                        float _1483 = sqrt(mad(-_1455, _1455, 1.0f));
                        float _1484 = 2.0f * _1468;
                        float _1485 = -_1470;
                        float _1486 = mad(_1484, _1469, _1485);
                        float _1555 = 0.0f;
                        float _1556 = 0.0f;
                        if (_1486 >= _1483)
                        {
                            _1555 = 1.0f;
                            _1556 = abs(_1469);
                        }
                        else
                        {
                            float _1491 = -_1486;
                            float _1494 = _1455 * rsqrt(mad(_1491, _1486, 1.0f));
                            float _1495 = mad(_1491, _1468, _1469);
                            float _1499 = mad(_1491, _1470, mad(2.0f * _1469, _1469, -1.0f));
                            float _1510 = _1494 * sqrt(clamp(mad(_1484 * _1469, _1470, mad(_1485, _1470, mad(-_1469, _1469, mad(-_1468, _1468, 1.0f)))), 0.0f, 1.0f));
                            float _1512 = (_1510 * 2.0f) * _1469;
                            float _1513 = mad(_1468, _1483, _1469);
                            float _1514 = mad(_1494, _1495, _1513);
                            float _1516 = mad(_1494, _1499, mad(_1470, _1483, 1.0f));
                            float _1517 = _1510 * _1516;
                            float _1518 = _1514 * _1516;
                            float _1523 = _1518 * mad(-0.5f, _1517, (0.25f * _1512) * _1514);
                            float _1533 = mad(_1514, mad(_1513, _1516 * _1516, _1518 * mad(-0.5f, mad(_1470, _1483, _1516), -0.5f)), mad(_1517, _1517, (_1512 * _1514) * mad(_1512, _1514, _1517 * (-2.0f))));
                            float _1537 = (2.0f * _1523) / mad(_1533, _1533, _1523 * _1523);
                            float _1538 = _1537 * _1533;
                            float _1540 = mad(-_1537, _1523, 1.0f);
                            float _1546 = mad(_1470, _1483, mad(_1540, _1494 * _1499, _1538 * _1512));
                            float _1548 = rsqrt(mad(2.0f, _1546, 2.0f));
                            _1555 = clamp((mad(_1468, _1483, mad(_1540, _1494 * _1495, _1538 * _1510)) + _1469) * _1548, 0.0f, 1.0f);
                            _1556 = clamp(mad(_1548, _1546, _1548), 0.0f, 1.0f);
                        }
                        _1557 = _1555;
                        _1558 = _1556;
                    }
                    else
                    {
                        _1557 = clamp((_1468 + _1469) * _1472, 0.0f, 1.0f);
                        _1558 = clamp(mad(_1472, _1470, _1472), 0.0f, 1.0f);
                    }
                    float _1561 = clamp(abs(_1469) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1564 = 1.0f.xxx * ((_1302 ? _1409 : 1.0f) * _1428);
                    float3 _1648 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1297, _1293), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1648 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1571 = _1381 * _1381;
                        float _1581 = 0.0f;
                        if (_1457 > 0.0f)
                        {
                            _1581 = clamp(mad(_1571, _1571, (_1457 * _1457) / mad(_1558, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1581 = _1571 * _1571;
                        }
                        float _1595 = 0.0f;
                        float _1596 = 0.0f;
                        if (_1478)
                        {
                            float _1593 = _1581 + (((0.25f * _1455) * mad(3.0f, asfloat(532487669 + (asint(_1581) >> 1)), _1455)) / (_1558 + 0.001000000047497451305389404296875f));
                            _1595 = _1581 / _1593;
                            _1596 = _1593;
                        }
                        else
                        {
                            _1595 = 1.0f;
                            _1596 = _1581;
                        }
                        float _1617 = 0.0f;
                        if (_1407 < 1.0f)
                        {
                            float _1603 = sqrt((1.00010001659393310546875f - _1407) / (1.0f + _1407));
                            _1617 = _1595 * sqrt(_1596 / (_1596 + (((0.25f * _1603) * mad(3.0f, asfloat(532487669 + (asint(_1596) >> 1)), _1603)) / (_1558 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1617 = _1595;
                        }
                        float _1620 = mad(mad(_1557, _1581, -_1557), _1557, 1.0f);
                        float _1625 = sqrt(_1581);
                        float _1626 = 1.0f - _1625;
                        float _1632 = 1.0f - _1558;
                        float _1633 = _1632 * _1632;
                        float _1634 = _1633 * _1633;
                        _1648 = _1564 * (((clamp(50.0f * _721.y, 0.0f, 1.0f) * (_1634 * _1632)).xxx + (_721 * mad(-_1634, _1632, 1.0f))) * (((_1581 / ((3.1415927410125732421875f * _1620) * _1620)) * _1617) * (0.5f / mad(_1428, mad(_1561, _1626, _1625), _1561 * mad(_1428, _1626, _1625)))));
                    }
                    _1650 = ((_719 * 0.3183098733425140380859375f) * _1564) * 1.0f;
                    _1651 = _1648;
                }
                else
                {
                    _1650 = 0.0f.xxx;
                    _1651 = 0.0f.xxx;
                }
                float3 _1654 = ((float3(float((_1274 >> 0u) & 1023u), float((_1274 >> 10u) & 1023u), float((_1274 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1255].x) * _1362) * _1370;
                _1657 = mad(_1650 * (float((_1304 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1654, 0.0f.xxx);
                _1658 = (_1651 * (float(_1304 & 1023u) * 0.000977517105638980865478515625f)) * _1654;
            }
            else
            {
                _1657 = 0.0f.xxx;
                _1658 = 0.0f.xxx;
            }
            _1659 = _1657;
            _1660 = _1658;
        }
        else
        {
            _1659 = 0.0f.xxx;
            _1660 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1268 >> 8u) & 7u) & _929) != 0u)
        {
            _1239 = _1238 + float4(_1659, 0.0f);
            _1242 = _1241 + float4(_1660, 0.0f);
        }
        else
        {
            _1239 = _1238;
            _1242 = _1241;
        }
    }
    bool4 _1678 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1687 = int(uint(Primitive_Primitive_SingleCaptureIndex));
    float4 _1725 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _682) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1726 = _1725.x;
    float2 _1735 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1726 * _1726, exp2((-9.27999973297119140625f) * clamp(dot(_681, _429), 0.0f, 1.0f))), _1726, _1725.y)) + _1725.zw;
    float3 _1760 = mad(((float4(OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4((_681 * (2.0f * dot(_429, _681))) - _429, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1687].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - mad(-1.2000000476837158203125f, log2(max(_682, 0.001000000047497451305389404296875f)), 1.0f)).xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1687].x, _287).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz * ((_721 * _1735.x) + (clamp(50.0f * _721.y, 0.0f, 1.0f) * _1735.y).xxx)) * lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_837 * float2(float(_843.x), float(_843.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f), max(_639.xxx, ((((((_721 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _639) + ((_721 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _639) + ((_721 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _639), float4(_1678.x ? 0.0f.xxxx.x : _1238.x, _1678.y ? 0.0f.xxxx.y : _1238.y, _1678.z ? 0.0f.xxxx.z : _1238.z, _1678.w ? 0.0f.xxxx.w : _1238.w).xyz + float4(_1678.x ? 0.0f.xxxx.x : _1241.x, _1678.y ? 0.0f.xxxx.y : _1241.y, _1678.z ? 0.0f.xxxx.z : _1241.z, _1678.w ? 0.0f.xxxx.w : _1241.w).xyz);
    bool _1763 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2189 = 0.0f.xxxx;
    if (_1763)
    {
        uint2 _1775 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1777 = normalize(_413 - View_View_TranslatedWorldCameraOrigin);
        uint _1778 = _1775.x;
        uint4 _1782 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1778, _1775.y, 0u), 0u));
        uint _1783 = _1782.x;
        float4 _1785 = 0.0f.xxxx;
        _1785 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1786 = 0.0f.xxxx;
        for (int _1788 = 0; uint(_1788) < _1783; _1785 = _1786, _1788++)
        {
            uint _1799 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1778, _1775.y, uint(1 + _1788)), 0u)).x * 3u;
            float4 _1801 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1799);
            float4 _1803 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1799 + 1u);
            float4 _1805 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1799 + 2u);
            float3 _1806 = _1801.xyz;
            float _1807 = _1801.w;
            float _1808 = 1.0f / _1807;
            uint _1810 = asuint(_1803.x);
            float2 _1816 = float2(spvUnpackHalf2x16(_1810).x, spvUnpackHalf2x16(_1810 >> 16u).x);
            float3 _1817 = float3(_1816.x, _1816.y, _291.z);
            uint _1819 = asuint(_1803.y);
            _1817.z = spvUnpackHalf2x16(_1819).x;
            float3 _1826 = 0.0f.xxx;
            _1826.x = spvUnpackHalf2x16(_1819 >> 16u).x;
            uint _1828 = asuint(_1803.z);
            float2 _1834 = float2(spvUnpackHalf2x16(_1828).x, spvUnpackHalf2x16(_1828 >> 16u).x);
            float3 _1835 = float3(_1826.x, _1834.x, _1834.y);
            float3x3 _1840 = float3x3(_1817 * _1808, _1835 * _1808, cross(_1817, _1835) * _1808);
            uint _1842 = asuint(_1805.x);
            float2 _1845 = spvUnpackHalf2x16((_1842 >> 17u) & 32752u);
            float _1846 = _1845.x;
            float2 _1849 = spvUnpackHalf2x16((_1842 >> 6u) & 32752u);
            float _1850 = _1849.x;
            float2 _1853 = spvUnpackHalf2x16((_1842 << 5u) & 32736u);
            float _1854 = _1853.x;
            uint _1856 = asuint(_1805.y);
            float3 _1874 = 0.0f.xxx;
            if (_1856 > 0u)
            {
                _1874 = float3(spvUnpackHalf2x16((_1856 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1856 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1856 << 5u) & 32736u).x);
            }
            else
            {
                _1874 = 0.0f.xxx;
            }
            uint _1876 = asuint(_1805.z);
            float _1891 = float((_1876 >> 24u) & 255u);
            float _1892 = _1891 * 0.0039215688593685626983642578125f;
            float3 _1899 = mul(View_View_TranslatedWorldCameraOrigin - _1806, _1840);
            float3 _1901 = normalize(mul(_1777, _1840));
            float _1903 = dot(_1901, _1901);
            float _1904 = dot(_1901, _1899);
            float _1905 = 2.0f * _1904;
            float _1910 = mad(_1905, _1905, -((4.0f * _1903) * mad(-1.0f, 1.0f, dot(_1899, _1899))));
            float2 _1922 = 0.0f.xx;
            [flatten]
            if (_1910 >= 0.0f)
            {
                _1922 = ((_1904 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1910))) / (2.0f * _1903).xx;
            }
            else
            {
                _1922 = (-1.0f).xx;
            }
            float3 _1928 = mul(_413 - _1806, _1840) - _1899;
            float2 _1932 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1808, _1922), sqrt(dot(_1928, _1928)).xx);
            float _2084 = 0.0f;
            float3 _2085 = 0.0f.xxx;
            if (any(bool2(_1932.x > 0.0f.xx.x, _1932.y > 0.0f.xx.y)))
            {
                float2 _1953 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _1943 = dot(_1777, View_View_ViewForward);
                    _1953 = max(_1932, ((View_View_VolumetricFogMaxDistance * ((_1943 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _1943) : 0.0f)) * _1808).xx);
                }
                else
                {
                    _1953 = _1932;
                }
                float _1958 = max(0.0f, abs(_1953.y - _1953.x));
                float _2082 = 0.0f;
                float3 _2083 = 0.0f.xxx;
                if (_1958 > 0.0f)
                {
                    float3 _1963 = _1899 + (_1901 * _1953.x);
                    float _1999 = 0.0f;
                    if (_1846 > 0.0f)
                    {
                        float _1967 = dot(_1901, _1963);
                        float _1968 = dot(_1963, _1963);
                        float _1969 = _1968 - 1.0f;
                        float _1971 = mad(_1967, _1967, 1.0f - _1968);
                        float _1998 = 0.0f;
                        if (_1971 >= 0.0f)
                        {
                            float _1975 = sqrt(_1971);
                            float _1976 = -_1967;
                            float _1979 = max(_1976 - _1975, 0.0f);
                            float _1981 = min(max(_1976 + _1975, 0.0f), _1958);
                            float _1982 = _1979 * _1979;
                            float _1983 = _1981 * _1981;
                            _1998 = max(0.0f, (_1846 * ((-mad(_1983 * _1981, 0.3333333432674407958984375f, mad(_1969, _1981, _1967 * _1983))) - (-mad(_1982 * _1979, 0.3333333432674407958984375f, mad(_1969, _1979, _1967 * _1982))))) * 0.75f);
                        }
                        else
                        {
                            _1998 = 0.0f;
                        }
                        _1999 = _1998;
                    }
                    else
                    {
                        _1999 = 0.0f;
                    }
                    float _2024 = 0.0f;
                    if (_1850 > 0.0f)
                    {
                        float _2005 = _1901.z;
                        float _2011 = (abs(_2005) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2005 >= 0.0f) ? 1.0f : (-1.0f))) : _2005;
                        float _2014 = max(-80.0f, (_1963.z - _1805.w) * _1854);
                        _2024 = (_1850 / (_1854 * _2011)) * (exp(-_2014) - exp(-mad(_2011 * _1958, _1854, _2014)));
                    }
                    else
                    {
                        _2024 = 0.0f;
                    }
                    float _2035 = exp((log(mad(exp(-_1999) - 1.0f, 1.0f - exp(-_2024), 1.0f)) * _1807) * 0.00999999977648258209228515625f);
                    float _2039 = _1891 * (-0.0039215688593685626983642578125f);
                    float _2046 = mad(_1891 * (-0.007843137718737125396728515625f), dot(_1777, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2039, _2039, 1.0f));
                    float3 _2051 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1892, _2039, 1.0f) / ((12.56637096405029296875f * _2046) * sqrt(_2046)));
                    float3 _2079 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2064 = float4(_1777 * _2039, 1.0f);
                        _2079 = _2051 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2064), dot(View_SkyIrradianceEnvironmentMap[1u], _2064), dot(View_SkyIrradianceEnvironmentMap[2u], _2064)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2079 = _2051;
                    }
                    _2082 = _2035;
                    _2083 = mad(_2079, float4(float((_1876 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1876 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1876 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1892).xyz, _1874) * (1.0f - _2035);
                }
                else
                {
                    _2082 = 1.0f;
                    _2083 = 0.0f.xxx;
                }
                _2084 = _2082;
                _2085 = _2083;
            }
            else
            {
                _2084 = 1.0f;
                _2085 = 0.0f.xxx;
            }
            _1786 = float4((_1785.xyz * _2084) + float4(_2085, _2084).xyz, _1785.w * _2084);
        }
        float _2105 = _1785.w * in_var_TEXCOORD7.w;
        float4 _2113 = float4(_89, 1.0f);
        precise float4 _93 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _94 = _2113 + _93;
        precise float4 _95 = _94 - _2113;
        precise float4 _96 = _94 - _95;
        precise float4 _97 = _2113 - _96;
        precise float4 _98 = _93 - _95;
        precise float4 _99 = _97 + _98;
        float4 _2124 = mul(_94 + (float4(_92, 0.0f) + _99), View_View_RelativeWorldToClip);
        float _2125 = _2124.w;
        float4 _2188 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2188 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2171 = 0.0f.xxxx;
            float _2172 = 0.0f;
            if (_1763)
            {
                float4 _2167 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2124.xy / _2125.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2125, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2169 = _2167.xyz * View_View_OneOverPreExposure;
                _2171 = float4(_2169.x, _2169.y, _2169.z, _2167.w);
                _2172 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2171 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2172 = 0.0f;
            }
            float4 _2177 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2171, clamp((_693 - _2172) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2180 = _2177.w;
            _2188 = float4(_2177.xyz + (float4(_1785.xyz + (in_var_TEXCOORD7.xyz * _1785.w), _2105).xyz * _2180), _2180 * _2105);
            break;
        } while(false);
        _2189 = _2188;
    }
    else
    {
        _2189 = in_var_TEXCOORD7;
    }
    float3 _2196 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[6].xyz, Material_Material_PreshaderBuffer[5].y.xxx), 0.0f.xxx);
    float3 _2254 = 0.0f.xxx;
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
        float3 _2216 = abs(_106);
        float3 _2217 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _2253 = 0.0f.xxx;
        if (any(bool3(_2216.x > _2217.x, _2216.y > _2217.y, _2216.z > _2217.z)))
        {
            float3 _2249 = frac(dot(frac(frac(_89 * 1.52587890625e-05f.xxx) + frac(_92 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2253 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2249.x > 0.5f.xxx.x, _2249.y > 0.5f.xxx.y, _2249.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2239 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _2227 = abs(_413 - in_var_TEXCOORD9);
                _2239 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2227.x, max(_2227.y, _2227.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2239 = _2196;
            }
            _2253 = _2239;
        }
        _2254 = _2253;
    }
    else
    {
        _2254 = _2196;
    }
    float4 _2263 = float4(((lerp(_1760, _719 + (_721 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _2254) * _2189.w) + _2189.xyz, 0.0f);
    _2263.w = 0.0f;
    float4 _2267 = _2263 * View_View_PreExposure;
    float3 _2272 = min(_2267.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2272.x, _2272.y, _2272.z, _2267.w);
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
