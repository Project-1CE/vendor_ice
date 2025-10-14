package vendor.qti.hardware.capabilityconfigstore;

import vendor.qti.hardware.capabilityconfigstore.CommandResult;

@VintfStability
interface ICapabilityConfigStore {
    CommandResult getConfig(in String area, in String key);
}
