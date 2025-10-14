package vendor.qti.hardware.wifi.wificfr;

import vendor.qti.hardware.wifi.wificfr.CaptureStatus;
import vendor.qti.hardware.wifi.wificfr.IWificfrDataCallback;

@VintfStability
interface IWificfr {
    CaptureStatus csiCaptureStart();
    CaptureStatus csiCaptureStop();
    CaptureStatus registerEventCallback(in IWificfrDataCallback callback);
    CaptureStatus unregisterEventCallback(in IWificfrDataCallback callback);
}
