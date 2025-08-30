// Copyright Epic Games, Inc. All Rights Reserved.
/*===========================================================================
	Generated code exported from UnrealHeaderTool.
	DO NOT modify this manually! Edit the corresponding .h files instead!
===========================================================================*/

#include "UObject/GeneratedCppIncludes.h"
PRAGMA_DISABLE_DEPRECATION_WARNINGS
void EmptyLinkFunctionForGeneratedCodeueGear_init() {}
	static FPackageRegistrationInfo Z_Registration_Info_UPackage__Script_ueGear;
	FORCENOINLINE UPackage* Z_Construct_UPackage__Script_ueGear()
	{
		if (!Z_Registration_Info_UPackage__Script_ueGear.OuterSingleton)
		{
			static const UECodeGen_Private::FPackageParams PackageParams = {
				"/Script/ueGear",
				nullptr,
				0,
				PKG_CompiledIn | 0x00000040,
				0xA3BA5273,
				0xCCE5ECA7,
				METADATA_PARAMS(0, nullptr)
			};
			UECodeGen_Private::ConstructUPackage(Z_Registration_Info_UPackage__Script_ueGear.OuterSingleton, PackageParams);
		}
		return Z_Registration_Info_UPackage__Script_ueGear.OuterSingleton;
	}
	static FRegisterCompiledInInfo Z_CompiledInDeferPackage_UPackage__Script_ueGear(Z_Construct_UPackage__Script_ueGear, TEXT("/Script/ueGear"), Z_Registration_Info_UPackage__Script_ueGear, CONSTRUCT_RELOAD_VERSION_INFO(FPackageReloadVersionInfo, 0xA3BA5273, 0xCCE5ECA7));
PRAGMA_ENABLE_DEPRECATION_WARNINGS
