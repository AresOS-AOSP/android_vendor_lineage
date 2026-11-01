PRODUCT_VERSION_MAJOR = 17
PRODUCT_VERSION_MINOR = 0

# Internal version
LINEAGE_VERSION := AresOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)

# Display version
LINEAGE_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)

# LineageOS version properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lineage.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.lineage.build.version=$(LINEAGE_VERSION)
