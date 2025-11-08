#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
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
    float4 Material_Material_PreshaderBuffer[5] : packoffset(c0);
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
    float _320 = 1.0f / gl_FragCoord.w;
    float4 _368 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _372 = mad(float2(_368.zw), 2.0f.xx, (-1.0f).xx);
    float _376 = sqrt(max(1.0f - dot(_372, _372), 0.0f));
    float _377 = _372.x;
    float3 _379 = float3(_377, _372.y, _376);
    float3 _382 = normalize(float3(_376, 0.0f, -_377));
    float2 _397 = gl_FragCoord.xy - View_View_ViewRectMin.xy;
    float4 _404 = float4(mad(_397, View_View_ViewSizeAndInvSize.zw, (-0.5f).xx) * float2(2.0f, -2.0f), _290, 1.0f) * _320;
    float4 _409 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _413 = _409.xyz / _409.w.xxx;
    float3 _414 = _413 - View_View_RelativePreViewTranslationTO;
    precise float3 _87 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _414);
    precise float3 _90 = _414 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _87);
    bool _416 = View_View_ViewToClip[3].w >= 1.0f;
    float3 _417 = -View_View_ViewForward;
    float3 _419 = normalize(-_413);
    float3 _429 = float3(_416 ? _417.x : _419.x, _416 ? _417.y : _419.y, _416 ? _417.z : _419.z);
    float4 _433 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _436 = dot(_433, Material_Material_PreshaderBuffer[0]);
    float _439 = dot(_433, Material_Material_PreshaderBuffer[1]);
    float _442 = dot(_433, Material_Material_PreshaderBuffer[2]);
    float2 _445 = float2(dot(in_var_TEXCOORD0, float2(0.039999999105930328369140625f, 0.0f)), dot(in_var_TEXCOORD0, float2(-0.0f, 0.039999999105930328369140625f)));
    float4 _453 = Material_Texture2D_1.Sample(View_MaterialTextureBilinearWrapedSampler, _445 * Material_Material_PreshaderBuffer[3].x.xx);
    float _457 = _453.x * Material_Material_PreshaderBuffer[3].y;
    float4 _469 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, float2(mad(floor(_457) + Material_Material_PreshaderBuffer[3].z, 0.03125f, 0.015625f), 0.5f), View_View_MaterialTextureMipBias);
    float2 _473 = Material_Material_PreshaderBuffer[3].w.xx;
    float2 _474 = mad(_469.xy, _473, _445);
    float2 _476 = mad(_469.zw, _473, _445);
    float2 _478 = ddy(_445);
    float2 _479 = ddx(_445);
    float2 _491 = lerp(_474, _476, clamp(round(mad(0.5f, (Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _476, _479, _478) - Material_Texture2D_3.SampleGrad(View_MaterialTextureBilinearWrapedSampler, _474, _479, _478)).x, frac(_457))), 0.0f, 1.0f).xx);
    float2 _497 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _491, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _506 = _436.xxx;
    float2 _512 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _491, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _521 = _439.xxx;
    float2 _529 = mad(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _491, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _538 = _442.xxx;
    float3 _547 = normalize(mul(normalize((mad(float4(_529, sqrt(clamp(1.0f - dot(_529, _529), 0.0f, 1.0f)), 1.0f).xyz, _538, mad(float4(_497, sqrt(clamp(1.0f - dot(_497, _497), 0.0f, 1.0f)), 1.0f).xyz, _506, float4(_512, sqrt(clamp(1.0f - dot(_512, _512), 0.0f, 1.0f)), 1.0f).xyz * _521)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_382, cross(_379, _382), _379), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _558 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _491, View_View_MaterialTextureMipBias);
    float4 _563 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _491, View_View_MaterialTextureMipBias);
    float4 _570 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _491, View_View_MaterialTextureMipBias);
    float4 _576 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _491, View_View_MaterialTextureMipBias);
    float4 _581 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _491, View_View_MaterialTextureMipBias);
    float4 _588 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _491, View_View_MaterialTextureMipBias);
    float3 _597 = clamp(mad(_570.xyz, _538, mad(_558.xyz, _506, _563.xyz * _521)), 0.0f.xxx, 1.0f.xxx);
    float _601 = mad(clamp(mad(_588.y, _442, mad(_576.y, _436, _581.y * _439)), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _602 = clamp(mad(_588.x, _442, mad(_576.x, _436, _581.x * _439)), 0.0f, 1.0f);
    uint _603 = in_var_PRIMITIVE_ID * 43u;
    float3 _647 = 0.0f.xxx;
    float _648 = 0.0f;
    float _649 = 0.0f;
    float _650 = 0.0f;
    float3 _651 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_603].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _619 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _623 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _619, 0.0f);
        float4 _626 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _619, 0.0f);
        float4 _629 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _619, 0.0f);
        float _639 = _629.w;
        _647 = normalize((_547 * _626.w) + ((_626.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
        _648 = mad(_601, _639, _629.z);
        _649 = mad(0.5f, _639, _629.y);
        _650 = _629.x;
        _651 = (_597 * _623.w) + _623.xyz;
    }
    else
    {
        _647 = _547;
        _648 = _601;
        _649 = 0.5f;
        _650 = 0.0f;
        _651 = _597;
    }
    uint _654 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_603].x);
    float _662 = _404.w;
    float3 _675 = ((_651 - (_651 * _650)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _682 = (lerp((0.07999999821186065673828125f * _649).xxx, _651, _650.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
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
        float4 _699 = float4(_647, 1.0f);
        float4 _712 = _699.xyzz * _699.yzzx;
        _736 = (max(0.0f.xxx, (float3(dot(View_SkyIrradianceEnvironmentMap[0u], _699), dot(View_SkyIrradianceEnvironmentMap[1u], _699), dot(View_SkyIrradianceEnvironmentMap[2u], _699)) + float3(dot(View_SkyIrradianceEnvironmentMap[3u], _712), dot(View_SkyIrradianceEnvironmentMap[4u], _712), dot(View_SkyIrradianceEnvironmentMap[5u], _712))) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_647.x, _647.x, -(_647.y * _647.y)))) * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _736 = 0.0f.xxx;
    }
    float2 _742 = mad(_404.xy / _662.xx, View_View_ScreenPositionScaleBias.xy, View_View_ScreenPositionScaleBias.wz);
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
    float _876 = lerp(1.0f, OpaqueBasePass_IndirectOcclusionTexture.Load(int3(int3(int2(trunc(_852 * float2(float(_858.x), float(_858.y)))), 0).xy, 0)).x, ((uint(mad(2.0f, float((_654 & 256u) != 0u), float((_654 & 512u) != 0u)) * 1.33300006389617919921875f) & 2u) != 0u) ? View_View_IndirectCapsuleSelfShadowingIntensity : 1.0f);
    float3 _885 = _602.xxx;
    uint2 _917 = uint2(_397 * View_View_LightProbeSizeRatioAndInvSizeRatio.zw) >> (OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift.xx & uint2(31u, 31u));
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
    uint _949 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_603].x);
    uint _962 = (uint((_949 & 2048u) != 0u) | (uint((_949 & 4096u) != 0u) << 1u)) | (uint((_949 & 8192u) != 0u) << 2u);
    float4 _1254 = 0.0f.xxxx;
    float4 _1255 = 0.0f.xxxx;
    [branch]
    if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_HasDirectionalLight != 0u)
    {
        uint _988 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 4u;
        float _1003 = dot(float4(float(_988 & 1u), float((_988 & 2u) >> 1u), float((_988 & 4u) >> 2u), float((_988 & 8u) >> 3u)), _946);
        bool _1005 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y < 0.0f;
        float _1006 = _1005 ? 1.0f : _1003;
        float _1019 = 0.0f;
        float _1020 = 0.0f;
        [branch]
        if (uint(int((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask & 255u) != 0u)) != 0u)
        {
            float _1013 = clamp(mad(_662, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD.y), 0.0f, 1.0f);
            float _1015 = lerp(_1005 ? _1003 : 1.0f, 1.0f, _1013 * _1013);
            _1019 = min(_1015, _1006) * _1006;
            _1020 = _1015 * _1006;
        }
        else
        {
            _1019 = 1.0f;
            _1020 = 1.0f;
        }
        float3 _1236 = 0.0f.xxx;
        float3 _1237 = 0.0f.xxx;
        [branch]
        if ((_1020 + _1019) > 0.0f)
        {
            float _1027 = max(_648, View_View_MinRoughness);
            float _1028 = dot(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection);
            float _1031 = rsqrt(_1028);
            float3 _1032 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDirection * _1031;
            float _1033 = dot(_647, _1032);
            float _1051 = 0.0f;
            if (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius > 0.0f)
            {
                float _1040 = sqrt(clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius) * (1.0f / (_1028 + 1.0f)), 0.0f, 1.0f));
                float _1050 = 0.0f;
                if (_1033 < _1040)
                {
                    float _1046 = _1040 + max(_1033, -_1040);
                    _1050 = (_1046 * _1046) / (4.0f * _1040);
                }
                else
                {
                    _1050 = _1033;
                }
                _1051 = _1050;
            }
            else
            {
                _1051 = _1033;
            }
            float _1052 = clamp(_1051, 0.0f, 1.0f);
            float _1053 = max(_1027, View_View_MinRoughness);
            float _1058 = clamp((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius * _1031) * mad(-_1053, _1053, 1.0f), 0.0f, 1.0f);
            float _1060 = clamp(OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius * _1031, 0.0f, 1.0f);
            float3 _1229 = 0.0f.xxx;
            float3 _1230 = 0.0f.xxx;
            [branch]
            if (_1052 > 0.0f)
            {
                float _1071 = dot(_647, _429);
                float _1072 = dot(_429, _1032);
                float _1074 = rsqrt(mad(2.0f, _1072, 2.0f));
                bool _1080 = _1058 > 0.0f;
                float _1159 = 0.0f;
                float _1160 = 0.0f;
                if (_1080)
                {
                    float _1085 = sqrt(mad(-_1058, _1058, 1.0f));
                    float _1086 = 2.0f * _1033;
                    float _1087 = -_1072;
                    float _1088 = mad(_1086, _1071, _1087);
                    float _1157 = 0.0f;
                    float _1158 = 0.0f;
                    if (_1088 >= _1085)
                    {
                        _1157 = 1.0f;
                        _1158 = abs(_1071);
                    }
                    else
                    {
                        float _1093 = -_1088;
                        float _1096 = _1058 * rsqrt(mad(_1093, _1088, 1.0f));
                        float _1097 = mad(_1093, _1033, _1071);
                        float _1101 = mad(_1093, _1072, mad(2.0f * _1071, _1071, -1.0f));
                        float _1112 = _1096 * sqrt(clamp(mad(_1086 * _1071, _1072, mad(_1087, _1072, mad(-_1071, _1071, mad(-_1033, _1033, 1.0f)))), 0.0f, 1.0f));
                        float _1114 = (_1112 * 2.0f) * _1071;
                        float _1115 = mad(_1033, _1085, _1071);
                        float _1116 = mad(_1096, _1097, _1115);
                        float _1118 = mad(_1096, _1101, mad(_1072, _1085, 1.0f));
                        float _1119 = _1112 * _1118;
                        float _1120 = _1116 * _1118;
                        float _1125 = _1120 * mad(-0.5f, _1119, (0.25f * _1114) * _1116);
                        float _1135 = mad(_1116, mad(_1115, _1118 * _1118, _1120 * mad(-0.5f, mad(_1072, _1085, _1118), -0.5f)), mad(_1119, _1119, (_1114 * _1116) * mad(_1114, _1116, _1119 * (-2.0f))));
                        float _1139 = (2.0f * _1125) / mad(_1135, _1135, _1125 * _1125);
                        float _1140 = _1139 * _1135;
                        float _1142 = mad(-_1139, _1125, 1.0f);
                        float _1148 = mad(_1072, _1085, mad(_1142, _1096 * _1101, _1140 * _1114));
                        float _1150 = rsqrt(mad(2.0f, _1148, 2.0f));
                        _1157 = clamp((mad(_1033, _1085, mad(_1142, _1096 * _1097, _1140 * _1112)) + _1071) * _1150, 0.0f, 1.0f);
                        _1158 = clamp(mad(_1150, _1148, _1150), 0.0f, 1.0f);
                    }
                    _1159 = _1157;
                    _1160 = _1158;
                }
                else
                {
                    _1159 = clamp((_1033 + _1071) * _1074, 0.0f, 1.0f);
                    _1160 = clamp(mad(_1074, _1072, _1074), 0.0f, 1.0f);
                }
                float _1163 = clamp(abs(_1071) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                float3 _1165 = 1.0f.xxx * _1052;
                float3 _1227 = 0.0f.xxx;
                if (((0u | (asuint(clamp(mad(-max(0.0f, OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                {
                    _1227 = 0.0f.xxx;
                }
                else
                {
                    float _1172 = _1027 * _1027;
                    float _1182 = 0.0f;
                    if (_1060 > 0.0f)
                    {
                        _1182 = clamp(mad(_1172, _1172, (_1060 * _1060) / mad(_1160, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                    }
                    else
                    {
                        _1182 = _1172 * _1172;
                    }
                    float _1196 = 0.0f;
                    if (_1080)
                    {
                        _1196 = _1182 / (_1182 + (((0.25f * _1058) * mad(3.0f, asfloat(532487669 + (asint(_1182) >> 1)), _1058)) / (_1160 + 0.001000000047497451305389404296875f)));
                    }
                    else
                    {
                        _1196 = 1.0f;
                    }
                    float _1199 = mad(mad(_1159, _1182, -_1159), _1159, 1.0f);
                    float _1204 = sqrt(_1182);
                    float _1205 = 1.0f - _1204;
                    float _1211 = 1.0f - _1160;
                    float _1212 = _1211 * _1211;
                    float _1213 = _1212 * _1212;
                    _1227 = _1165 * (((clamp(50.0f * _690.y, 0.0f, 1.0f) * (_1213 * _1211)).xxx + (_690 * mad(-_1213, _1211, 1.0f))) * (((_1182 / ((3.1415927410125732421875f * _1199) * _1199)) * _1196) * (0.5f / mad(_1052, mad(_1163, _1205, _1204), _1163 * mad(_1052, _1205, _1204)))));
                }
                _1229 = ((_688 * 0.3183098733425140380859375f) * _1165) * 1.0f;
                _1230 = _1227;
            }
            else
            {
                _1229 = 0.0f.xxx;
                _1230 = 0.0f.xxx;
            }
            float3 _1233 = OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightColor * _1020;
            _1236 = mad(_1229 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale, _1233, 0.0f.xxx);
            _1237 = (_1230 * OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale) * _1233;
        }
        else
        {
            _1236 = 0.0f.xxx;
            _1237 = 0.0f.xxx;
        }
        float4 _1241 = float4(_1236, 0.0f);
        float4 _1245 = float4(_1237, 0.0f);
        float4 _1252 = 0.0f.xxxx;
        float4 _1253 = 0.0f.xxxx;
        [flatten]
        if ((((OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask >> 8u) & 7u) & _962) != 0u)
        {
            _1252 = float4(_1241.x, _1241.y, _1241.z, _1241.w);
            _1253 = float4(_1245.x, _1245.y, _1245.z, _1245.w);
        }
        else
        {
            _1252 = 0.0f.xxxx;
            _1253 = 0.0f.xxxx;
        }
        _1254 = _1252;
        _1255 = _1253;
    }
    else
    {
        _1254 = 0.0f.xxxx;
        _1255 = 0.0f.xxxx;
    }
    uint _1256 = ((((min(uint(max(0.0f, log2(mad(_320, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.x, OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.y)) * OpaqueBasePass_OpaqueBasePass_Shared_Forward_LightGridZParams.z)), uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.z - 1)) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.y)) + _917.y) * uint(OpaqueBasePass_OpaqueBasePass_Shared_Forward_CulledGridSize.x)) + _917.x) * 2u;
    uint _1266 = OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1256 + 1u] & 1073741823u;
    uint _1269 = min(min((OpaqueBasePass_Shared_Forward_NumCulledLightsGrid[_1256] & 65535u), OpaqueBasePass_OpaqueBasePass_Shared_Forward_NumLocalLights), OpaqueBasePass_OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell);
    float4 _1271 = 0.0f.xxxx;
    float4 _1274 = 0.0f.xxxx;
    _1271 = _1254;
    _1274 = _1255;
    float4 _1272 = 0.0f.xxxx;
    float4 _1275 = 0.0f.xxxx;
    [loop]
    for (uint _1276 = 0u; _1276 < _1269; _1271 = _1272, _1274 = _1275, _1276++)
    {
        uint _1285 = OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit.Load(_1266 + _1276).x * 6u;
        uint _1288 = _1285 + 1u;
        uint _1291 = _1285 + 2u;
        uint _1294 = _1285 + 3u;
        uint _1297 = _1285 + 4u;
        uint _1301 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].w);
        uint _1307 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].y);
        uint _1323 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1294].z);
        float2 _1325 = spvUnpackHalf2x16(_1323 & 65535u);
        float _1326 = _1325.x;
        float2 _1329 = spvUnpackHalf2x16(asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1294].w));
        float _1330 = _1329.x;
        bool _1335 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].w == 0.0f;
        uint _1337 = asuint(OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1297].w);
        uint _1350 = _1301 >> 4u;
        float3 _1366 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].xyz - _413;
        float _1367 = dot(_1366, _1366);
        float _1384 = 0.0f;
        if (_1335)
        {
            float _1379 = _1367 * (OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].w * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].w);
            float _1382 = clamp(mad(-_1379, _1379, 1.0f), 0.0f, 1.0f);
            _1384 = _1382 * _1382;
        }
        else
        {
            float3 _1373 = _1366 * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1285].w;
            _1384 = pow(1.0f - clamp(dot(_1373, _1373), 0.0f, 1.0f), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].w);
        }
        float _1395 = 0.0f;
        if (((_1301 >> 16u) & 3u) == 2u)
        {
            float _1392 = clamp((dot(_1366 * rsqrt(_1367), OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1291].xyz) - OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1294].x) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1294].y, 0.0f, 1.0f);
            _1395 = _1384 * (_1392 * _1392);
        }
        else
        {
            _1395 = _1384;
        }
        float3 _1692 = 0.0f.xxx;
        float3 _1693 = 0.0f.xxx;
        [branch]
        if (_1395 > 0.0f)
        {
            float _1403 = 0.0f;
            [branch]
            if (uint(int((_1301 & 255u) != 0u)) != 0u)
            {
                _1403 = dot(float4(float(_1350 & 1u), float((_1350 & 2u) >> 1u), float((_1350 & 4u) >> 2u), float((_1350 & 8u) >> 3u)), _946);
            }
            else
            {
                _1403 = 1.0f;
            }
            float3 _1690 = 0.0f.xxx;
            float3 _1691 = 0.0f.xxx;
            [branch]
            if ((_1403 + _1403) > 0.0f)
            {
                float3 _1409 = OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1297].xyz * (0.5f * _1330);
                float3 _1410 = _1366 - _1409;
                float3 _1411 = _1366 + _1409;
                float _1414 = max(_648, View_View_MinRoughness);
                bool _1415 = _1330 > 0.0f;
                float _1440 = 0.0f;
                float _1441 = 0.0f;
                float _1442 = 0.0f;
                [branch]
                if (_1415)
                {
                    float _1427 = rsqrt(dot(_1410, _1410));
                    float _1428 = rsqrt(dot(_1411, _1411));
                    float _1429 = _1427 * _1428;
                    float _1431 = dot(_1410, _1411) * _1429;
                    _1440 = _1431;
                    _1441 = 0.5f * mad(dot(_647, _1410), _1427, dot(_647, _1411) * _1428);
                    _1442 = _1429 / mad(_1427, _1428, mad(_1431, 0.5f, 0.5f));
                }
                else
                {
                    float _1419 = dot(_1410, _1410);
                    _1440 = 1.0f;
                    _1441 = dot(_647, _1410 * rsqrt(_1419));
                    _1442 = 1.0f / (_1419 + 1.0f);
                }
                float _1460 = 0.0f;
                if (_1326 > 0.0f)
                {
                    float _1449 = sqrt(clamp((_1326 * _1326) * _1442, 0.0f, 1.0f));
                    float _1459 = 0.0f;
                    if (_1441 < _1449)
                    {
                        float _1455 = _1449 + max(_1441, -_1449);
                        _1459 = (_1455 * _1455) / (4.0f * _1449);
                    }
                    else
                    {
                        _1459 = _1441;
                    }
                    _1460 = _1459;
                }
                else
                {
                    _1460 = _1441;
                }
                float _1461 = clamp(_1460, 0.0f, 1.0f);
                float3 _1479 = 0.0f.xxx;
                if (_1415)
                {
                    float3 _1466 = reflect(-_429, _647);
                    float3 _1467 = _1411 - _1410;
                    float _1468 = dot(_1466, _1467);
                    _1479 = _1410 + (_1467 * clamp(dot(_1410, (_1466 * _1468) - _1467) / mad(_1330, _1330, -(_1468 * _1468)), 0.0f, 1.0f));
                }
                else
                {
                    _1479 = _1410;
                }
                float _1481 = rsqrt(dot(_1479, _1479));
                float3 _1482 = _1479 * _1481;
                float _1483 = max(_1414, View_View_MinRoughness);
                float _1488 = clamp((_1326 * _1481) * mad(-_1483, _1483, 1.0f), 0.0f, 1.0f);
                float _1490 = clamp(spvUnpackHalf2x16(_1323 >> 16u).x * _1481, 0.0f, 1.0f);
                float3 _1683 = 0.0f.xxx;
                float3 _1684 = 0.0f.xxx;
                [branch]
                if (_1461 > 0.0f)
                {
                    float _1501 = dot(_647, _1482);
                    float _1502 = dot(_647, _429);
                    float _1503 = dot(_429, _1482);
                    float _1505 = rsqrt(mad(2.0f, _1503, 2.0f));
                    bool _1511 = _1488 > 0.0f;
                    float _1590 = 0.0f;
                    float _1591 = 0.0f;
                    if (_1511)
                    {
                        float _1516 = sqrt(mad(-_1488, _1488, 1.0f));
                        float _1517 = 2.0f * _1501;
                        float _1518 = -_1503;
                        float _1519 = mad(_1517, _1502, _1518);
                        float _1588 = 0.0f;
                        float _1589 = 0.0f;
                        if (_1519 >= _1516)
                        {
                            _1588 = 1.0f;
                            _1589 = abs(_1502);
                        }
                        else
                        {
                            float _1524 = -_1519;
                            float _1527 = _1488 * rsqrt(mad(_1524, _1519, 1.0f));
                            float _1528 = mad(_1524, _1501, _1502);
                            float _1532 = mad(_1524, _1503, mad(2.0f * _1502, _1502, -1.0f));
                            float _1543 = _1527 * sqrt(clamp(mad(_1517 * _1502, _1503, mad(_1518, _1503, mad(-_1502, _1502, mad(-_1501, _1501, 1.0f)))), 0.0f, 1.0f));
                            float _1545 = (_1543 * 2.0f) * _1502;
                            float _1546 = mad(_1501, _1516, _1502);
                            float _1547 = mad(_1527, _1528, _1546);
                            float _1549 = mad(_1527, _1532, mad(_1503, _1516, 1.0f));
                            float _1550 = _1543 * _1549;
                            float _1551 = _1547 * _1549;
                            float _1556 = _1551 * mad(-0.5f, _1550, (0.25f * _1545) * _1547);
                            float _1566 = mad(_1547, mad(_1546, _1549 * _1549, _1551 * mad(-0.5f, mad(_1503, _1516, _1549), -0.5f)), mad(_1550, _1550, (_1545 * _1547) * mad(_1545, _1547, _1550 * (-2.0f))));
                            float _1570 = (2.0f * _1556) / mad(_1566, _1566, _1556 * _1556);
                            float _1571 = _1570 * _1566;
                            float _1573 = mad(-_1570, _1556, 1.0f);
                            float _1579 = mad(_1503, _1516, mad(_1573, _1527 * _1532, _1571 * _1545));
                            float _1581 = rsqrt(mad(2.0f, _1579, 2.0f));
                            _1588 = clamp((mad(_1501, _1516, mad(_1573, _1527 * _1528, _1571 * _1543)) + _1502) * _1581, 0.0f, 1.0f);
                            _1589 = clamp(mad(_1581, _1579, _1581), 0.0f, 1.0f);
                        }
                        _1590 = _1588;
                        _1591 = _1589;
                    }
                    else
                    {
                        _1590 = clamp((_1501 + _1502) * _1505, 0.0f, 1.0f);
                        _1591 = clamp(mad(_1505, _1503, _1505), 0.0f, 1.0f);
                    }
                    float _1594 = clamp(abs(_1502) + 9.9999997473787516355514526367188e-06f, 0.0f, 1.0f);
                    float3 _1597 = 1.0f.xxx * ((_1335 ? _1442 : 1.0f) * _1461);
                    float3 _1681 = 0.0f.xxx;
                    if (((0u | (asuint(clamp(mad(-max(_1330, _1326), 0.0500000007450580596923828125f, 1.0f), 0.0f, 1.0f)) << 1u)) & 1u) == 1u)
                    {
                        _1681 = 0.0f.xxx;
                    }
                    else
                    {
                        float _1604 = _1414 * _1414;
                        float _1614 = 0.0f;
                        if (_1490 > 0.0f)
                        {
                            _1614 = clamp(mad(_1604, _1604, (_1490 * _1490) / mad(_1591, 3.599999904632568359375f, 0.4000000059604644775390625f)), 0.0f, 1.0f);
                        }
                        else
                        {
                            _1614 = _1604 * _1604;
                        }
                        float _1628 = 0.0f;
                        float _1629 = 0.0f;
                        if (_1511)
                        {
                            float _1626 = _1614 + (((0.25f * _1488) * mad(3.0f, asfloat(532487669 + (asint(_1614) >> 1)), _1488)) / (_1591 + 0.001000000047497451305389404296875f));
                            _1628 = _1614 / _1626;
                            _1629 = _1626;
                        }
                        else
                        {
                            _1628 = 1.0f;
                            _1629 = _1614;
                        }
                        float _1650 = 0.0f;
                        if (_1440 < 1.0f)
                        {
                            float _1636 = sqrt((1.00010001659393310546875f - _1440) / (1.0f + _1440));
                            _1650 = _1628 * sqrt(_1629 / (_1629 + (((0.25f * _1636) * mad(3.0f, asfloat(532487669 + (asint(_1629) >> 1)), _1636)) / (_1591 + 0.001000000047497451305389404296875f))));
                        }
                        else
                        {
                            _1650 = _1628;
                        }
                        float _1653 = mad(mad(_1590, _1614, -_1590), _1590, 1.0f);
                        float _1658 = sqrt(_1614);
                        float _1659 = 1.0f - _1658;
                        float _1665 = 1.0f - _1591;
                        float _1666 = _1665 * _1665;
                        float _1667 = _1666 * _1666;
                        _1681 = _1597 * (((clamp(50.0f * _690.y, 0.0f, 1.0f) * (_1667 * _1665)).xxx + (_690 * mad(-_1667, _1665, 1.0f))) * (((_1614 / ((3.1415927410125732421875f * _1653) * _1653)) * _1650) * (0.5f / mad(_1461, mad(_1594, _1659, _1658), _1594 * mad(_1461, _1659, _1658)))));
                    }
                    _1683 = ((_688 * 0.3183098733425140380859375f) * _1597) * 1.0f;
                    _1684 = _1681;
                }
                else
                {
                    _1683 = 0.0f.xxx;
                    _1684 = 0.0f.xxx;
                }
                float3 _1687 = ((float3(float((_1307 >> 0u) & 1023u), float((_1307 >> 10u) & 1023u), float((_1307 >> 20u) & 1023u)) * OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer[_1288].x) * _1395) * _1403;
                _1690 = mad(_1683 * (float((_1337 >> 10u) & 1023u) * 0.000977517105638980865478515625f), _1687, 0.0f.xxx);
                _1691 = (_1684 * (float(_1337 & 1023u) * 0.000977517105638980865478515625f)) * _1687;
            }
            else
            {
                _1690 = 0.0f.xxx;
                _1691 = 0.0f.xxx;
            }
            _1692 = _1690;
            _1693 = _1691;
        }
        else
        {
            _1692 = 0.0f.xxx;
            _1693 = 0.0f.xxx;
        }
        [flatten]
        if ((((_1301 >> 8u) & 7u) & _962) != 0u)
        {
            _1272 = _1271 + float4(_1692, 0.0f);
            _1275 = _1274 + float4(_1693, 0.0f);
        }
        else
        {
            _1272 = _1271;
            _1275 = _1274;
        }
    }
    bool4 _1711 = (OpaqueBasePass_OpaqueBasePass_Shared_Forward_DirectLightingShowFlag == 0u).xxxx;
    int _1721 = int(asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_603].w) & 65535u);
    float3 _1725 = (_647 * (2.0f * dot(_429, _647))) - _429;
    float _1732 = mad(-1.2000000476837158203125f, log2(max(_648, 0.001000000047497451305389404296875f)), 1.0f);
    float4 _1746 = OpaqueBasePass_Shared_Reflection_ReflectionCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler, float4(_1725, ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1721].y), (View_View_ReflectionCubemapMaxMip - 1.0f) - _1732);
    float _1750 = 1.0f - _1746.w;
    float3 _1777 = 0.0f.xxx;
    [branch]
    if ((OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.y > 0.0f) && true)
    {
        _1777 = (OpaqueBasePass_Shared_Reflection_SkyLightCubemap.SampleLevel(OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler, _1725, (OpaqueBasePass_OpaqueBasePass_Shared_Reflection_SkyLightParameters.x - 1.0f) - _1732).xyz * View_View_SkyLightColor.xyz) * 1.0f;
    }
    else
    {
        _1777 = 0.0f.xxx;
    }
    float4 _1783 = (float4(-1.0f, -0.0274999998509883880615234375f, -0.572000026702880859375f, 0.02199999988079071044921875f) * _648) + float4(1.0f, 0.0425000004470348358154296875f, 1.03999996185302734375f, -0.039999999105930328369140625f);
    float _1784 = _1783.x;
    float2 _1793 = (float2(-1.03999996185302734375f, 1.03999996185302734375f) * mad(min(_1784 * _1784, exp2((-9.27999973297119140625f) * clamp(dot(_647, _429), 0.0f, 1.0f))), _1784, _1783.y)) + _1783.zw;
    bool _1820 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_ApplyVolumetricFog > 0.0f;
    float4 _2244 = 0.0f.xxxx;
    if (_1820)
    {
        uint2 _1832 = clamp(uint2(gl_FragCoord.xy / float(OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize).xx), uint2(0u, 0u), OpaqueBasePass_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution - uint2(1u, 1u));
        float3 _1834 = normalize(_413 - View_View_TranslatedWorldCameraOrigin);
        uint _1835 = _1832.x;
        uint4 _1839 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1835, _1832.y, 0u), 0u));
        uint _1840 = _1839.x;
        float4 _1842 = 0.0f.xxxx;
        _1842 = float4(0.0f, 0.0f, 0.0f, 1.0f);
        float4 _1843 = 0.0f.xxxx;
        for (int _1845 = 0; uint(_1845) < _1840; _1842 = _1843, _1845++)
        {
            uint _1856 = OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture.Load(int4(uint3(_1835, _1832.y, uint(1 + _1845)), 0u)).x * 3u;
            float4 _1858 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1856);
            float4 _1860 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1856 + 1u);
            float4 _1862 = OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances.Load(_1856 + 2u);
            float3 _1863 = _1858.xyz;
            float _1864 = _1858.w;
            float _1865 = 1.0f / _1864;
            uint _1867 = asuint(_1860.x);
            float2 _1873 = float2(spvUnpackHalf2x16(_1867).x, spvUnpackHalf2x16(_1867 >> 16u).x);
            float3 _1874 = float3(_1873.x, _1873.y, _291.z);
            uint _1876 = asuint(_1860.y);
            _1874.z = spvUnpackHalf2x16(_1876).x;
            float3 _1883 = 0.0f.xxx;
            _1883.x = spvUnpackHalf2x16(_1876 >> 16u).x;
            uint _1885 = asuint(_1860.z);
            float2 _1891 = float2(spvUnpackHalf2x16(_1885).x, spvUnpackHalf2x16(_1885 >> 16u).x);
            float3 _1892 = float3(_1883.x, _1891.x, _1891.y);
            float3x3 _1897 = float3x3(_1874 * _1865, _1892 * _1865, cross(_1874, _1892) * _1865);
            uint _1899 = asuint(_1862.x);
            float2 _1902 = spvUnpackHalf2x16((_1899 >> 17u) & 32752u);
            float _1903 = _1902.x;
            float2 _1906 = spvUnpackHalf2x16((_1899 >> 6u) & 32752u);
            float _1907 = _1906.x;
            float2 _1910 = spvUnpackHalf2x16((_1899 << 5u) & 32736u);
            float _1911 = _1910.x;
            uint _1913 = asuint(_1862.y);
            float3 _1931 = 0.0f.xxx;
            if (_1913 > 0u)
            {
                _1931 = float3(spvUnpackHalf2x16((_1913 >> 17u) & 32752u).x, spvUnpackHalf2x16((_1913 >> 6u) & 32752u).x, spvUnpackHalf2x16((_1913 << 5u) & 32736u).x);
            }
            else
            {
                _1931 = 0.0f.xxx;
            }
            uint _1933 = asuint(_1862.z);
            float _1948 = float((_1933 >> 24u) & 255u);
            float _1949 = _1948 * 0.0039215688593685626983642578125f;
            float3 _1956 = mul(View_View_TranslatedWorldCameraOrigin - _1863, _1897);
            float3 _1958 = normalize(mul(_1834, _1897));
            float _1960 = dot(_1958, _1958);
            float _1961 = dot(_1958, _1956);
            float _1962 = 2.0f * _1961;
            float _1967 = mad(_1962, _1962, -((4.0f * _1960) * mad(-1.0f, 1.0f, dot(_1956, _1956))));
            float2 _1979 = 0.0f.xx;
            [flatten]
            if (_1967 >= 0.0f)
            {
                _1979 = ((_1961 * (-2.0f)).xx + (float2(-1.0f, 1.0f) * sqrt(_1967))) / (2.0f * _1960).xx;
            }
            else
            {
                _1979 = (-1.0f).xx;
            }
            float3 _1985 = mul(_413 - _1863, _1897) - _1956;
            float2 _1989 = min(max(OpaqueBasePass_OpaqueBasePass_Shared_LFV_GlobalStartDistance.xx * _1865, _1979), sqrt(dot(_1985, _1985)).xx);
            float _2139 = 0.0f;
            float3 _2140 = 0.0f.xxx;
            if (any(bool2(_1989.x > 0.0f.xx.x, _1989.y > 0.0f.xx.y)))
            {
                float2 _2010 = 0.0f.xx;
                if ((OpaqueBasePass_OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog != 0u) && true)
                {
                    float _2000 = dot(_1834, View_View_ViewForward);
                    _2010 = max(_1989, ((View_View_VolumetricFogMaxDistance * ((_2000 > 9.9999997473787516355514526367188e-05f) ? (1.0f / _2000) : 0.0f)) * _1865).xx);
                }
                else
                {
                    _2010 = _1989;
                }
                float _2015 = max(0.0f, abs(_2010.y - _2010.x));
                float _2137 = 0.0f;
                float3 _2138 = 0.0f.xxx;
                if (_2015 > 0.0f)
                {
                    float3 _2020 = _1956 + (_1958 * _2010.x);
                    float _2056 = 0.0f;
                    if (_1903 > 0.0f)
                    {
                        float _2024 = dot(_1958, _2020);
                        float _2025 = dot(_2020, _2020);
                        float _2026 = _2025 - 1.0f;
                        float _2028 = mad(_2024, _2024, 1.0f - _2025);
                        float _2055 = 0.0f;
                        if (_2028 >= 0.0f)
                        {
                            float _2032 = sqrt(_2028);
                            float _2033 = -_2024;
                            float _2036 = max(_2033 - _2032, 0.0f);
                            float _2038 = min(max(_2033 + _2032, 0.0f), _2015);
                            float _2039 = _2036 * _2036;
                            float _2040 = _2038 * _2038;
                            _2055 = max(0.0f, (_1903 * ((-mad(_2040 * _2038, 0.3333333432674407958984375f, mad(_2026, _2038, _2024 * _2040))) - (-mad(_2039 * _2036, 0.3333333432674407958984375f, mad(_2026, _2036, _2024 * _2039))))) * 0.75f);
                        }
                        else
                        {
                            _2055 = 0.0f;
                        }
                        _2056 = _2055;
                    }
                    else
                    {
                        _2056 = 0.0f;
                    }
                    float _2081 = 0.0f;
                    if (_1907 > 0.0f)
                    {
                        float _2062 = _1958.z;
                        float _2068 = (abs(_2062) < 9.9999997473787516355514526367188e-05f) ? (9.9999997473787516355514526367188e-05f * ((_2062 >= 0.0f) ? 1.0f : (-1.0f))) : _2062;
                        float _2071 = max(-80.0f, (_2020.z - _1862.w) * _1911);
                        _2081 = (_1907 / (_1911 * _2068)) * (exp(-_2071) - exp(-mad(_2068 * _2015, _1911, _2071)));
                    }
                    else
                    {
                        _2081 = 0.0f;
                    }
                    float _2092 = exp((log(mad(exp(-_2056) - 1.0f, 1.0f - exp(-_2081), 1.0f)) * _1864) * 0.00999999977648258209228515625f);
                    float _2096 = _1948 * (-0.0039215688593685626983642578125f);
                    float _2103 = mad(_1948 * (-0.007843137718737125396728515625f), dot(_1834, OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightDirection), mad(_2096, _2096, 1.0f));
                    float3 _2108 = OpaqueBasePass_OpaqueBasePass_Shared_LFV_DirectionalLightColor * (mad(_1949, _2096, 1.0f) / ((12.56637096405029296875f * _2103) * sqrt(_2103)));
                    float3 _2134 = 0.0f.xxx;
                    if (View_View_SkyLightVolumetricScatteringIntensity > 0.0f)
                    {
                        float4 _2119 = float4(_1834 * _2096, 1.0f);
                        _2134 = _2108 + ((View_View_SkyLightColor.xyz * max(0.0f.xxx, float3(dot(View_SkyIrradianceEnvironmentMap[0u], _2119), dot(View_SkyIrradianceEnvironmentMap[1u], _2119), dot(View_SkyIrradianceEnvironmentMap[2u], _2119)))) * View_View_SkyLightVolumetricScatteringIntensity);
                    }
                    else
                    {
                        _2134 = _2108;
                    }
                    _2137 = _2092;
                    _2138 = mad(_2134, float4(float((_1933 >> 0u) & 255u) * 0.0039215688593685626983642578125f, float((_1933 >> 8u) & 255u) * 0.0039215688593685626983642578125f, float((_1933 >> 16u) & 255u) * 0.0039215688593685626983642578125f, _1949).xyz, _1931) * (1.0f - _2092);
                }
                else
                {
                    _2137 = 1.0f;
                    _2138 = 0.0f.xxx;
                }
                _2139 = _2137;
                _2140 = _2138;
            }
            else
            {
                _2139 = 1.0f;
                _2140 = 0.0f.xxx;
            }
            _1843 = float4((_1842.xyz * _2139) + float4(_2140, _2139).xyz, _1842.w * _2139);
        }
        float _2160 = _1842.w * in_var_TEXCOORD7.w;
        float4 _2168 = float4(_87, 1.0f);
        precise float4 _91 = -float4(View_View_ViewOriginHigh, 0.0f);
        precise float4 _92 = _2168 + _91;
        precise float4 _93 = _92 - _2168;
        precise float4 _94 = _92 - _93;
        precise float4 _95 = _2168 - _94;
        precise float4 _96 = _91 - _93;
        precise float4 _97 = _95 + _96;
        float4 _2179 = mul(_92 + (float4(_90, 0.0f) + _97), View_View_RelativeWorldToClip);
        float _2180 = _2179.w;
        float4 _2243 = 0.0f.xxxx;
        do
        {
            if ((View_View_RenderingReflectionCaptureMask == 0.0f) && (!((View_View_EnvironmentComponentsFlags.x & 32) > 0)))
            {
                _2243 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                break;
            }
            float4 _2226 = 0.0f.xxxx;
            float _2227 = 0.0f;
            if (_1820)
            {
                float4 _2222 = OpaqueBasePass_Shared_Fog_IntegratedLightScattering.SampleLevel(View_SharedBilinearClampedSampler, min(float3(mad((_2179.xy / _2180.xx).xy, float2(0.5f, -0.5f), 0.5f.xx), (log2(mad(_2180, View_View_VolumetricFogGridZParams.x, View_View_VolumetricFogGridZParams.y)) * View_View_VolumetricFogGridZParams.z) * View_View_VolumetricFogInvGridSize.z) * float3(View_View_VolumetricFogScreenToResourceUV, 1.0f), float3(View_View_VolumetricFogUVMax, 1.0f)), 0.0f);
                float3 _2224 = _2222.xyz * View_View_OneOverPreExposure;
                _2226 = float4(_2224.x, _2224.y, _2224.z, _2222.w);
                _2227 = OpaqueBasePass_OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance;
            }
            else
            {
                _2226 = float4(0.0f, 0.0f, 0.0f, 1.0f);
                _2227 = 0.0f;
            }
            float4 _2232 = lerp(float4(0.0f, 0.0f, 0.0f, 1.0f), _2226, clamp((_662 - _2227) * 100000000.0f, 0.0f, 1.0f).xxxx);
            float _2235 = _2232.w;
            _2243 = float4(_2232.xyz + (float4(_1842.xyz + (in_var_TEXCOORD7.xyz * _1842.w), _2160).xyz * _2235), _2235 * _2160);
            break;
        } while(false);
        _2244 = _2243;
    }
    else
    {
        _2244 = in_var_TEXCOORD7;
    }
    float3 _2251 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _2320 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _98 = Scene_GPUScene_GPUScenePrimitiveSceneData[_603 + 18u].xyz * 2097152.0f;
        precise float3 _99 = _98 + Scene_GPUScene_GPUScenePrimitiveSceneData[_603 + 19u].xyz;
        precise float3 _100 = _99 - _98;
        precise float3 _101 = Scene_GPUScene_GPUScenePrimitiveSceneData[_603 + 19u].xyz - _100;
        uint _2277 = _603 + 32u;
        precise float3 _102 = _87 - _99;
        precise float3 _103 = _90 - _101;
        precise float3 _104 = _102 + _103;
        float3 _2282 = abs(_104);
        float3 _2283 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_603 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_603 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_603 + 27u].w) + 1.0f.xxx;
        float3 _2319 = 0.0f.xxx;
        if (any(bool3(_2282.x > _2283.x, _2282.y > _2283.y, _2282.z > _2283.z)))
        {
            float3 _2315 = frac(dot(frac(frac(_87 * 1.52587890625e-05f.xxx) + frac(_90 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _2319 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_2315.x > 0.5f.xxx.x, _2315.y > 0.5f.xxx.y, _2315.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _2305 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_2277].x > 0.0f)
            {
                float3 _2293 = abs(_413 - in_var_TEXCOORD9);
                _2305 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_2293.x, max(_2293.y, _2293.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_2277].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _2305 = _2251;
            }
            _2319 = _2305;
        }
        _2320 = _2319;
    }
    else
    {
        _2320 = _2251;
    }
    float3 _2322 = mad((_736 * _876) * _688, max(_885, ((((((_651 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _602) + ((_651 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _602) + ((_651 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _602), lerp(mad((((float4(_1746.xyz * ReflectionCaptureSM5_ReflectionCaptureSM5_CaptureProperties[_1721].x, _1750).xyz * View_View_PrecomputedIndirectSpecularColorScale).xyz + (_1777 * _1750)).xyz * ((_690 * _1793.x) + (clamp(50.0f * _690.y, 0.0f, 1.0f) * _1793.y).xxx)) * _876, max(_885, ((((((_690 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * _602) + ((_690 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * _602) + ((_690 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * _602), float4(_1711.x ? 0.0f.xxxx.x : _1271.x, _1711.y ? 0.0f.xxxx.y : _1271.y, _1711.z ? 0.0f.xxxx.z : _1271.z, _1711.w ? 0.0f.xxxx.w : _1271.w).xyz + float4(_1711.x ? 0.0f.xxxx.x : _1274.x, _1711.y ? 0.0f.xxxx.y : _1274.y, _1711.z ? 0.0f.xxxx.z : _1274.z, _1711.w ? 0.0f.xxxx.w : _1274.w).xyz), _688 + (_690 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _2320;
    float4 _2330 = float4((_2322 * _2244.w) + _2244.xyz, 0.0f);
    _2330.w = 0.0f;
    float4 _2334 = _2330 * View_View_PreExposure;
    float3 _2339 = min(_2334.xyz, View_View_MaterialMaxEmissiveValue.xxx);
    out_var_SV_Target0 = float4(_2339.x, _2339.y, _2339.z, _2334.w);
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
