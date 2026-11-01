PRODUCT_VERSION_MAJOR = 17
PRODUCT_VERSION_MINOR = 0

ifeq ($(WITH_GMS),true)
ARES_BUILD_TYPE := GAPPS
else
ARES_BUILD_TYPE := VANILLA
endif

# Internal version
LINEAGE_VERSION := AresOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(ARES_BUILD_TYPE)-$(LINEAGE_BUILD)

# Display version
LINEAGE_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)

# LineageOS version properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lineage.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.lineage.build.version=$(LINEAGE_VERSION)
