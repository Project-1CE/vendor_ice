package vendor.qti.hardware.wifi.wificfr;

@VintfStability
interface IWificfrDataCallback {
    oneway void onCfrDataAvailable(in byte[] captureInfo);
}
