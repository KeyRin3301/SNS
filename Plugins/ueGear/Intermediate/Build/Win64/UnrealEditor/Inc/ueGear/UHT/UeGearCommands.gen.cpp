// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
#include "ueGear/Public/UeGearCommands.h"
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeUeGearCommands() {}

// Begin Cross Module References
COREUOBJECT_API UClass* Z_Construct_UClass_UObject();
UEGEAR_API UClass* Z_Construct_UClass_UUeGearCommands();
UEGEAR_API UClass* Z_Construct_UClass_UUeGearCommands_NoRegister();
UPackage* Z_Construct_UPackage__Script_ueGear();
// End Cross Module References

// Begin Class UUeGearCommands Function GenerateUegearUi
static const FName NAME_UUeGearCommands_GenerateUegearUi = FName(TEXT("GenerateUegearUi"));
void UUeGearCommands::GenerateUegearUi()
{
	UFunction* Func = FindFunctionChecked(NAME_UUeGearCommands_GenerateUegearUi);
	ProcessEvent(Func,NULL);
}
struct Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Function_MetaDataParams[] = {
		{ "Category", "ueGear" },
		{ "ModuleRelativePath", "Public/UeGearCommands.h" },
	};
#endif // WITH_METADATA
	static const UECodeGen_Private::FFunctionParams FuncParams;
};
const UECodeGen_Private::FFunctionParams Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUeGearCommands, nullptr, "GenerateUegearUi", nullptr, nullptr, nullptr, 0, 0, RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x08020800, 0, 0, METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi_Statics::Function_MetaDataParams), Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi_Statics::Function_MetaDataParams) };
UFunction* Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi()
{
	static UFunction* ReturnFunction = nullptr;
	if (!ReturnFunction)
	{
		UECodeGen_Private::ConstructUFunction(&ReturnFunction, Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi_Statics::FuncParams);
	}
	return ReturnFunction;
}
// End Class UUeGearCommands Function GenerateUegearUi

// Begin Class UUeGearCommands Function Get
struct Z_Construct_UFunction_UUeGearCommands_Get_Statics
{
	struct UeGearCommands_eventGet_Parms
	{
		UUeGearCommands* ReturnValue;
	};
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Function_MetaDataParams[] = {
		{ "Category", "ueGear" },
		{ "ModuleRelativePath", "Public/UeGearCommands.h" },
	};
#endif // WITH_METADATA
	static const UECodeGen_Private::FObjectPropertyParams NewProp_ReturnValue;
	static const UECodeGen_Private::FPropertyParamsBase* const PropPointers[];
	static const UECodeGen_Private::FFunctionParams FuncParams;
};
const UECodeGen_Private::FObjectPropertyParams Z_Construct_UFunction_UUeGearCommands_Get_Statics::NewProp_ReturnValue = { "ReturnValue", nullptr, (EPropertyFlags)0x0010000000000580, UECodeGen_Private::EPropertyGenFlags::Object, RF_Public|RF_Transient|RF_MarkAsNative, nullptr, nullptr, 1, STRUCT_OFFSET(UeGearCommands_eventGet_Parms, ReturnValue), Z_Construct_UClass_UUeGearCommands_NoRegister, METADATA_PARAMS(0, nullptr) };
const UECodeGen_Private::FPropertyParamsBase* const Z_Construct_UFunction_UUeGearCommands_Get_Statics::PropPointers[] = {
	(const UECodeGen_Private::FPropertyParamsBase*)&Z_Construct_UFunction_UUeGearCommands_Get_Statics::NewProp_ReturnValue,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UFunction_UUeGearCommands_Get_Statics::PropPointers) < 2048);
const UECodeGen_Private::FFunctionParams Z_Construct_UFunction_UUeGearCommands_Get_Statics::FuncParams = { (UObject*(*)())Z_Construct_UClass_UUeGearCommands, nullptr, "Get", nullptr, nullptr, Z_Construct_UFunction_UUeGearCommands_Get_Statics::PropPointers, UE_ARRAY_COUNT(Z_Construct_UFunction_UUeGearCommands_Get_Statics::PropPointers), sizeof(Z_Construct_UFunction_UUeGearCommands_Get_Statics::UeGearCommands_eventGet_Parms), RF_Public|RF_Transient|RF_MarkAsNative, (EFunctionFlags)0x04022401, 0, 0, METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UFunction_UUeGearCommands_Get_Statics::Function_MetaDataParams), Z_Construct_UFunction_UUeGearCommands_Get_Statics::Function_MetaDataParams) };
static_assert(sizeof(Z_Construct_UFunction_UUeGearCommands_Get_Statics::UeGearCommands_eventGet_Parms) < MAX_uint16);
UFunction* Z_Construct_UFunction_UUeGearCommands_Get()
{
	static UFunction* ReturnFunction = nullptr;
	if (!ReturnFunction)
	{
		UECodeGen_Private::ConstructUFunction(&ReturnFunction, Z_Construct_UFunction_UUeGearCommands_Get_Statics::FuncParams);
	}
	return ReturnFunction;
}
DEFINE_FUNCTION(UUeGearCommands::execGet)
{
	P_FINISH;
	P_NATIVE_BEGIN;
	*(UUeGearCommands**)Z_Param__Result=UUeGearCommands::Get();
	P_NATIVE_END;
}
// End Class UUeGearCommands Function Get

// Begin Class UUeGearCommands
void UUeGearCommands::StaticRegisterNativesUUeGearCommands()
{
	UClass* Class = UUeGearCommands::StaticClass();
	static const FNameNativePtrPair Funcs[] = {
		{ "Get", &UUeGearCommands::execGet },
	};
	FNativeFunctionRegistrar::RegisterFunctions(Class, Funcs, UE_ARRAY_COUNT(Funcs));
}
IMPLEMENT_CLASS_NO_AUTO_REGISTRATION(UUeGearCommands);
UClass* Z_Construct_UClass_UUeGearCommands_NoRegister()
{
	return UUeGearCommands::StaticClass();
}
struct Z_Construct_UClass_UUeGearCommands_Statics
{
#if WITH_METADATA
	static constexpr UECodeGen_Private::FMetaDataPairParam Class_MetaDataParams[] = {
		{ "BlueprintType", "true" },
		{ "IncludePath", "UeGearCommands.h" },
		{ "IsBlueprintBase", "true" },
		{ "ModuleRelativePath", "Public/UeGearCommands.h" },
	};
#endif // WITH_METADATA
	static UObject* (*const DependentSingletons[])();
	static constexpr FClassFunctionLinkInfo FuncInfo[] = {
		{ &Z_Construct_UFunction_UUeGearCommands_GenerateUegearUi, "GenerateUegearUi" }, // 3640783475
		{ &Z_Construct_UFunction_UUeGearCommands_Get, "Get" }, // 681804571
	};
	static_assert(UE_ARRAY_COUNT(FuncInfo) < 2048);
	static constexpr FCppClassTypeInfoStatic StaticCppClassTypeInfo = {
		TCppClassTypeTraits<UUeGearCommands>::IsAbstract,
	};
	static const UECodeGen_Private::FClassParams ClassParams;
};
UObject* (*const Z_Construct_UClass_UUeGearCommands_Statics::DependentSingletons[])() = {
	(UObject* (*)())Z_Construct_UClass_UObject,
	(UObject* (*)())Z_Construct_UPackage__Script_ueGear,
};
static_assert(UE_ARRAY_COUNT(Z_Construct_UClass_UUeGearCommands_Statics::DependentSingletons) < 16);
const UECodeGen_Private::FClassParams Z_Construct_UClass_UUeGearCommands_Statics::ClassParams = {
	&UUeGearCommands::StaticClass,
	nullptr,
	&StaticCppClassTypeInfo,
	DependentSingletons,
	FuncInfo,
	nullptr,
	nullptr,
	UE_ARRAY_COUNT(DependentSingletons),
	UE_ARRAY_COUNT(FuncInfo),
	0,
	0,
	0x001000A0u,
	METADATA_PARAMS(UE_ARRAY_COUNT(Z_Construct_UClass_UUeGearCommands_Statics::Class_MetaDataParams), Z_Construct_UClass_UUeGearCommands_Statics::Class_MetaDataParams)
};
UClass* Z_Construct_UClass_UUeGearCommands()
{
	if (!Z_Registration_Info_UClass_UUeGearCommands.OuterSingleton)
	{
		UECodeGen_Private::ConstructUClass(Z_Registration_Info_UClass_UUeGearCommands.OuterSingleton, Z_Construct_UClass_UUeGearCommands_Statics::ClassParams);
	}
	return Z_Registration_Info_UClass_UUeGearCommands.OuterSingleton;
}
template<> UEGEAR_API UClass* StaticClass<UUeGearCommands>()
{
	return UUeGearCommands::StaticClass();
}
UUeGearCommands::UUeGearCommands(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer) {}
DEFINE_VTABLE_PTR_HELPER_CTOR(UUeGearCommands);
UUeGearCommands::~UUeGearCommands() {}
// End Class UUeGearCommands

// Begin Registration
struct Z_CompiledInDeferFile_FID_SIMON_WORK_mGear_repos_ueGear_Package_ueGear_1_0_3_UE5_5_ueGear_HostProject_Plugins_ueGear_Source_ueGear_Public_UeGearCommands_h_Statics
{
	static constexpr FClassRegisterCompiledInInfo ClassInfo[] = {
		{ Z_Construct_UClass_UUeGearCommands, UUeGearCommands::StaticClass, TEXT("UUeGearCommands"), &Z_Registration_Info_UClass_UUeGearCommands, CONSTRUCT_RELOAD_VERSION_INFO(FClassReloadVersionInfo, sizeof(UUeGearCommands), 3732335308U) },
	};
};
static FRegisterCompiledInInfo Z_CompiledInDeferFile_FID_SIMON_WORK_mGear_repos_ueGear_Package_ueGear_1_0_3_UE5_5_ueGear_HostProject_Plugins_ueGear_Source_ueGear_Public_UeGearCommands_h_1240422251(TEXT("/Script/ueGear"),
	Z_CompiledInDeferFile_FID_SIMON_WORK_mGear_repos_ueGear_Package_ueGear_1_0_3_UE5_5_ueGear_HostProject_Plugins_ueGear_Source_ueGear_Public_UeGearCommands_h_Statics::ClassInfo, UE_ARRAY_COUNT(Z_CompiledInDeferFile_FID_SIMON_WORK_mGear_repos_ueGear_Package_ueGear_1_0_3_UE5_5_ueGear_HostProject_Plugins_ueGear_Source_ueGear_Public_UeGearCommands_h_Statics::ClassInfo),
	nullptr, 0,
	nullptr, 0);
// End Registration
PRAGMA_ENABLE_DEPRECATION_WARNINGS
