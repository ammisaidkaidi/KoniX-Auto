package com.google.android.apps.auto.aareceiver.compat;

import android.app.Activity;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothSocket;
import android.car.Car;
import android.car.CarInfoManager;
import android.car.CarProjectionManager;
import android.car.CarProjectionManager$ProjectionAccessPointCallback;
import android.car.CarProjectionManager$ProjectionKeyEventHandler;
import android.car.ICar;
import android.car.hardware.CarPropertyConfig;
import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback;
import android.car.projection.ProjectionStatus;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.widget.Toast;
import com.achour.tweaks.P;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class CarCompat {
    private static final String COMPAT_TETHER_CB_CLS = "com.google.android.apps.auto.aareceiver.compat.CompatTetheringCallback";
    private static final String DISAMBIGUATION_CLS = "com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity";
    private static final String NEW_DEVICE_CLS = "com.google.android.apps.auto.aareceiver.transport.usb.NewDeviceActivity";
    private static final String PERSISTENT_SERVICE_CLS = "com.google.android.apps.auto.aareceiver.service.PersistentService";
    private static final String TAG = "AAReceiverCompat";
    private static volatile WifiConfiguration sActiveApConfig;
    private static volatile Context sAppContext;
    private static volatile long sLastRfcommActivityMs;
    private static volatile WifiManager.LocalOnlyHotspotReservation sLohsReservation;
    private static final UUID A2DP_SOURCE_UUID = UUID.fromString("00001112-0000-1000-8000-00805f9b34fb");
    private static volatile boolean sTetheringStartedByUs = false;
    private static volatile boolean sSoftApStartedByUs = false;
    private static volatile boolean sRestoreClientWifi = false;
    private static volatile boolean sStartingAccessPoint = false;
    private static volatile String sLastClientWifiIp = null;
    private static volatile int sCurrentProjectionState = 0;
    private static volatile int sCurrentConnectedDevices = 0;
    private static volatile long sWirelessStartTimestampMs = 0;
    private static final Object sApLock = new Object();
    private static final List<CarProjectionManager$ProjectionAccessPointCallback> sPendingApCallbacks = new ArrayList();
    private static final Set<String> sSwitchingDevices = Collections.newSetFromMap(new ConcurrentHashMap());
    private static final Set<String> sActiveRfcommDevices = Collections.newSetFromMap(new ConcurrentHashMap());
    private static final AtomicBoolean sAutoLaunchPending = new AtomicBoolean(false);
    private static final AtomicBoolean sWaitLoopRunning = new AtomicBoolean(false);
    private static final AtomicBoolean sBtNudgeRunning = new AtomicBoolean(false);
    private static final AtomicBoolean sReceiversRegistered = new AtomicBoolean(false);

    public static List getAvailableWifiChannels(CarProjectionManager carProjectionManager, int i) {
        return P.channels();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasConnectedUsbPhone(Context context) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tryStopWifiTethering(Context context) {
        Log.i(TAG, "keepAP build: skipping stopTethering so the phone has time to join");
    }

    static {
        unlockHiddenApis();
        sLastRfcommActivityMs = 0L;
    }

    private CarCompat() {
    }

    public static void unlockHiddenApis() {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            ((Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class})).invoke(((Method) declaredMethod2.invoke(cls, "getRuntime", null)).invoke(null, new Object[0]), new String[]{"L"});
            Log.i(TAG, "Unlocked Android 9 hidden APIs via VMRuntime.setHiddenApiExemptions");
        } catch (Throwable th) {
            Log.w(TAG, "unlockHiddenApis warning: " + th);
        }
    }

    private static String computeDefaultSsid() {
        String upperCase = getApBssidSafe(null).replace(":", "").toUpperCase(Locale.US);
        String substring = upperCase.length() >= 4 ? upperCase.substring(upperCase.length() - 4) : "AUTO";
        if ("0000".equals(substring)) {
            substring = "CAR9";
        }
        return "AndroidAuto_" + substring;
    }

    private static String computeDefaultPsk() {
        String upperCase = getApBssidSafe(null).replace(":", "").toUpperCase(Locale.US);
        if (upperCase.length() >= 12 && !"020000000000".equals(upperCase)) {
            return "AA" + upperCase.substring(2, 12);
        }
        return "AAWireless2026";
    }

    public static String getPersistentApSsid() {
        String computeDefaultSsid = computeDefaultSsid();
        Context context = sAppContext;
        if (context == null) {
            return computeDefaultSsid;
        }
        try {
            String string = context.createDeviceProtectedStorageContext().getSharedPreferences(context.getPackageName() + "_preferences", 0).getString("aa_v8_ap_ssid", null);
            if (string != null) {
                if (string.length() >= 4) {
                    return string;
                }
            }
        } catch (Throwable th) {
        }
        return computeDefaultSsid;
    }

    public static String getPersistentApPsk() {
        String computeDefaultPsk = computeDefaultPsk();
        Context context = sAppContext;
        if (context == null) {
            return computeDefaultPsk;
        }
        try {
            String string = context.createDeviceProtectedStorageContext().getSharedPreferences(context.getPackageName() + "_preferences", 0).getString("aa_v8_ap_psk", null);
            if (string != null) {
                if (string.length() >= 8) {
                    return string;
                }
            }
        } catch (Throwable th) {
        }
        return computeDefaultPsk;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d A[Catch: all -> 0x00a3, TRY_LEAVE, TryCatch #0 {all -> 0x00a3, blocks: (B:7:0x000c, B:9:0x0013, B:11:0x0019, B:15:0x002f, B:17:0x0036, B:19:0x0045, B:22:0x004d, B:23:0x0051, B:24:0x0058, B:27:0x0060, B:28:0x0064, B:30:0x006d, B:35:0x003e, B:36:0x0042, B:37:0x0022), top: B:6:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003e A[Catch: all -> 0x00a3, TryCatch #0 {all -> 0x00a3, blocks: (B:7:0x000c, B:9:0x0013, B:11:0x0019, B:15:0x002f, B:17:0x0036, B:19:0x0045, B:22:0x004d, B:23:0x0051, B:24:0x0058, B:27:0x0060, B:28:0x0064, B:30:0x006d, B:35:0x003e, B:36:0x0042, B:37:0x0022), top: B:6:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void seedPrefsOnContext(Context context, String str, int i, int i2) {
        SharedPreferences.Editor editor;
        if (context == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            if (sharedPreferences != null) {
                if (sharedPreferences.contains("width") && sharedPreferences.getInt("width", 0) > 0) {
                    editor = null;
                    if (sharedPreferences.contains("car_wifi_enabled") || !sharedPreferences.getBoolean("car_wifi_enabled", true)) {
                        if (editor == null) {
                            editor = sharedPreferences.edit();
                        }
                        editor.putBoolean("car_wifi_enabled", true);
                    }
                    if (!sharedPreferences.contains("aa_v8_ap_ssid")) {
                        if (editor == null) {
                            editor = sharedPreferences.edit();
                        }
                        editor.putString("aa_v8_ap_ssid", computeDefaultSsid());
                    }
                    if (!sharedPreferences.contains("aa_v8_ap_psk")) {
                        if (editor == null) {
                            editor = sharedPreferences.edit();
                        }
                        editor.putString("aa_v8_ap_psk", computeDefaultPsk());
                    }
                    if (editor == null) {
                        editor.apply();
                        Log.i(TAG, "Seeded v8 prefs on " + context + ": width=" + i + " height=" + i2 + " wifi=true");
                        return;
                    }
                    return;
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putInt("width", i);
                edit.putInt("height", i2);
                editor = edit;
                if (sharedPreferences.contains("car_wifi_enabled")) {
                }
                if (editor == null) {
                }
                editor.putBoolean("car_wifi_enabled", true);
                if (!sharedPreferences.contains("aa_v8_ap_ssid")) {
                }
                if (!sharedPreferences.contains("aa_v8_ap_psk")) {
                }
                if (editor == null) {
                }
            }
        } catch (Throwable th) {
        }
    }

    private static void ensureDefaultDisplayPrefs(Context context) {
        if (context == null) {
            return;
        }
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int max = (displayMetrics == null || displayMetrics.widthPixels <= 0) ? 1280 : Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
            int min = (displayMetrics == null || displayMetrics.heightPixels <= 0) ? 720 : Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
            String str = context.getPackageName() + "_preferences";
            try {
                seedPrefsOnContext(context.createDeviceProtectedStorageContext(), str, max, min);
            } catch (Throwable th) {
            }
            seedPrefsOnContext(context, str, max, min);
        } catch (Throwable th2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ensureWirelessSettingsEnabled(Context context) {
        if (context == null) {
            return;
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "com.android.car.projection.DISABLED");
            if (string != null && !string.isEmpty()) {
                Settings.Secure.putString(context.getContentResolver(), "com.android.car.projection.DISABLED", "");
            }
        } catch (Throwable th) {
        }
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "location_mode", 0) == 0) {
                Settings.Secure.putInt(context.getContentResolver(), "location_mode", 3);
                Log.i(TAG, "Enabled Settings.Secure.LOCATION_MODE=3 for Android 9 Wi-Fi AP/LOHS");
            }
        } catch (Throwable th2) {
        }
    }

    private static void grantRuntimePermissionsSelf(Context context) {
        if (context == null) {
            return;
        }
        String[] strArr = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.RECORD_AUDIO", "android.permission.READ_PHONE_STATE", "android.car.permission.CAR_SPEED", "android.car.permission.CAR_ENERGY"};
        Object obj = null;
        Method method = null;
        for (int i = 0; i < 6; i++) {
            try {
                String str = strArr[i];
                if (context.checkSelfPermission(str) != 0) {
                    if (obj == null) {
                        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "package");
                        if (iBinder == null) {
                            return;
                        }
                        obj = Class.forName("android.content.pm.IPackageManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
                        method = obj.getClass().getMethod("grantRuntimePermission", String.class, String.class, Integer.TYPE);
                    }
                    try {
                        method.invoke(obj, context.getPackageName(), str, 0);
                        Log.i(TAG, "Auto-granted runtime permission: " + str);
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                return;
            }
        }
    }

    public static void ensurePersistentServiceRunning(Context context) {
        if (context != null && context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        } else if (context == null) {
            context = sAppContext;
        }
        if (context == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setClassName(context.getPackageName(), PERSISTENT_SERVICE_CLS);
            context.startService(intent);
        } catch (Throwable th) {
            Log.w(TAG, "ensurePersistentServiceRunning warning: " + th);
        }
    }

    public static void captureContext(Context context) {
        if (context != null && sAppContext == null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            sAppContext = context;
            ensureDefaultDisplayPrefs(sAppContext);
            grantRuntimePermissionsSelf(sAppContext);
            ensureWirelessSettingsEnabled(sAppContext);
        }
    }

    public static void initApp(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            sAppContext = context;
            ensureDefaultDisplayPrefs(sAppContext);
            grantRuntimePermissionsSelf(sAppContext);
            ensureWirelessSettingsEnabled(sAppContext);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.1
                @Override // java.lang.Runnable
                public void run() {
                    CarCompat.ensurePersistentServiceRunning(CarCompat.sAppContext);
                }
            });
        }
    }

    public static void onPersistentServiceStart(Service service) {
        captureContext(service);
        scanAndSwitchUsbPhones(service, true);
    }

    public static Car createCar(Context context) {
        captureContext(context);
        try {
            IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "car_service");
            if (iBinder != null) {
                ICar asInterface = ICar.Stub.asInterface(iBinder);
                Constructor declaredConstructor = Car.class.getDeclaredConstructor(Context.class, ICar.class, Handler.class);
                declaredConstructor.setAccessible(true);
                Car car = (Car) declaredConstructor.newInstance(context, asInterface, new Handler(Looper.getMainLooper()));
                Log.i(TAG, "Created synchronous Car instance via ICar binder (connected=" + car.isConnected() + ")");
                return car;
            }
        } catch (Throwable th) {
            Log.e(TAG, "Direct ICar construction failed, falling back to ServiceConnection", th);
        }
        Car createCar = Car.createCar(context, new ServiceConnection() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder2) {
                Log.i(CarCompat.TAG, "Fallback Car ServiceConnection connected");
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                Log.w(CarCompat.TAG, "Fallback Car ServiceConnection disconnected");
            }
        });
        if (createCar != null) {
            createCar.connect();
        }
        return createCar;
    }

    public static boolean registerPropertyCallback(CarPropertyManager carPropertyManager, CarPropertyManager$CarPropertyEventCallback carPropertyManager$CarPropertyEventCallback, int i, float f) {
        if (carPropertyManager == null || carPropertyManager$CarPropertyEventCallback == null) {
            return false;
        }
        try {
            return carPropertyManager.registerListener(carPropertyManager$CarPropertyEventCallback, i, f);
        } catch (Throwable th) {
            Log.w(TAG, "registerListener failed for prop 0x" + Integer.toHexString(i) + ": " + th);
            return false;
        }
    }

    public static void unregisterPropertyCallback(CarPropertyManager carPropertyManager, CarPropertyManager$CarPropertyEventCallback carPropertyManager$CarPropertyEventCallback) {
        if (carPropertyManager == null || carPropertyManager$CarPropertyEventCallback == null) {
            return;
        }
        try {
            carPropertyManager.unregisterListener(carPropertyManager$CarPropertyEventCallback);
        } catch (Throwable th) {
            Log.w(TAG, "unregisterListener failed: " + th);
        }
    }

    public static void unregisterPropertyCallback(CarPropertyManager carPropertyManager, CarPropertyManager$CarPropertyEventCallback carPropertyManager$CarPropertyEventCallback, int i) {
        if (carPropertyManager == null || carPropertyManager$CarPropertyEventCallback == null) {
            return;
        }
        try {
            carPropertyManager.unregisterListener(carPropertyManager$CarPropertyEventCallback, i);
        } catch (Throwable th) {
            Log.w(TAG, "unregisterListener(prop) failed: " + th);
        }
    }

    public static CarPropertyValue<?> getPropertySafe(CarPropertyManager carPropertyManager, int i, int i2) {
        if (carPropertyManager == null) {
            return null;
        }
        try {
            return carPropertyManager.getProperty(i, i2);
        } catch (Throwable th) {
            Log.w(TAG, "getPropertySafe(0x" + Integer.toHexString(i) + ") unsupported: " + th);
            return null;
        }
    }

    public static int getIntPropertySafe(CarPropertyManager carPropertyManager, int i, int i2) {
        if (carPropertyManager == null) {
            return 0;
        }
        try {
            return carPropertyManager.getIntProperty(i, i2);
        } catch (Throwable th) {
            Log.w(TAG, "getIntPropertySafe(0x" + Integer.toHexString(i) + ") unsupported: " + th);
            return 0;
        }
    }

    public static List getPropertyListSafe(CarPropertyManager carPropertyManager) {
        if (carPropertyManager == null) {
            return Collections.emptyList();
        }
        try {
            List<CarPropertyConfig> propertyList = carPropertyManager.getPropertyList();
            return propertyList != null ? propertyList : Collections.emptyList();
        } catch (Throwable th) {
            Log.w(TAG, "getPropertyListSafe failed: " + th);
            return Collections.emptyList();
        }
    }

    public static float getFuelCapacitySafe(CarInfoManager carInfoManager) {
        if (carInfoManager == null) {
            return 0.0f;
        }
        try {
            return carInfoManager.getFuelCapacity();
        } catch (Throwable th) {
            Log.w(TAG, "getFuelCapacitySafe unsupported: " + th);
            return 0.0f;
        }
    }

    public static int[] getEvConnectorTypesSafe(CarInfoManager carInfoManager) {
        if (carInfoManager == null) {
            return new int[0];
        }
        try {
            int[] evConnectorTypes = carInfoManager.getEvConnectorTypes();
            return evConnectorTypes != null ? evConnectorTypes : new int[0];
        } catch (Throwable th) {
            Log.w(TAG, "getEvConnectorTypesSafe unsupported: " + th);
            return new int[0];
        }
    }

    public static Bundle getProjectionOptions(CarProjectionManager carProjectionManager) {
        Bundle bundle = new Bundle();
        bundle.putInt("android.car.projection.uiMode", 0);
        return bundle;
    }

    public static void onWirelessStartRequested() {
        sWirelessStartTimestampMs = SystemClock.elapsedRealtime();
        Log.i(TAG, "Wireless projection start requested (WifiStartRequest pipeline active)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWirelessStartRecentlyActive() {
        long j = sWirelessStartTimestampMs;
        return j > 0 && SystemClock.elapsedRealtime() - j < 18000;
    }

    public static void updateProjectionStatus(CarProjectionManager carProjectionManager, ProjectionStatus projectionStatus) {
        int i;
        int i2 = sCurrentProjectionState;
        if (projectionStatus == null) {
            i = 0;
        } else {
            sCurrentProjectionState = projectionStatus.getState();
            sCurrentConnectedDevices = projectionStatus.getConnectedMobileDevices().size();
            i = projectionStatus.getTransport();
        }
        if (sCurrentProjectionState == 0 || sCurrentProjectionState == 2) {
            sWirelessStartTimestampMs = 0L;
        }
        Log.i(TAG, "updateProjectionStatus: " + projectionStatus);
        if (sCurrentProjectionState == 1 && sCurrentConnectedDevices >= 1 && i2 != 2 && !isWirelessStartRecentlyActive()) {
            scheduleAutoLaunchProjectionIfReady(sAppContext, i == 2 ? 650L : 450L);
        }
    }

    public static boolean requestBluetoothProfileInhibit(CarProjectionManager carProjectionManager, BluetoothDevice bluetoothDevice, int i) {
        Log.i(TAG, "requestBluetoothProfileInhibit device=" + bluetoothDevice + " profile=" + i);
        return true;
    }

    public static boolean releaseBluetoothProfileInhibit(CarProjectionManager carProjectionManager, BluetoothDevice bluetoothDevice, int i) {
        Log.i(TAG, "releaseBluetoothProfileInhibit device=" + bluetoothDevice + " profile=" + i);
        return true;
    }

    public static void onRfcommConnected(BluetoothDevice bluetoothDevice) {
        P.onRfcommUp();
        sLastRfcommActivityMs = SystemClock.elapsedRealtime();
        if (bluetoothDevice != null && bluetoothDevice.getAddress() != null) {
            sActiveRfcommDevices.add(bluetoothDevice.getAddress());
            Log.i(TAG, "Wireless AA RFCOMM connected from " + bluetoothDevice.getName() + " [" + bluetoothDevice.getAddress() + "]");
        }
    }

    public static void onRfcommDisconnected(String str) {
        P.onRfcommDown();
        sLastRfcommActivityMs = SystemClock.elapsedRealtime();
        if (str != null) {
            sActiveRfcommDevices.remove(str);
            Log.i(TAG, "Wireless AA RFCOMM disconnected: " + str);
        }
    }

    public static int getAccessPointTypeNumber() {
        return sLohsReservation != null ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWirelessSessionOrApBusy() {
        if (sCurrentProjectionState != 0 || sStartingAccessPoint || sTetheringStartedByUs || sSoftApStartedByUs || sLohsReservation != null || !sActiveRfcommDevices.isEmpty() || isWirelessStartRecentlyActive()) {
            return true;
        }
        long j = sLastRfcommActivityMs;
        return j > 0 && SystemClock.elapsedRealtime() - j < 25000;
    }

    public static void addKeyEventHandler(CarProjectionManager carProjectionManager, Set<Integer> set, final CarProjectionManager$ProjectionKeyEventHandler carProjectionManager$ProjectionKeyEventHandler) {
        if (carProjectionManager == null || carProjectionManager$ProjectionKeyEventHandler == null) {
            return;
        }
        try {
            carProjectionManager.registerProjectionListener(new CarProjectionManager.CarProjectionListener() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.3
                public void onVoiceAssistantRequest(boolean z) {
                    CarProjectionManager$ProjectionKeyEventHandler.this.onKeyEvent(z ? 2 : 1);
                }
            }, 3);
        } catch (Throwable th) {
            Log.w(TAG, "registerProjectionListener failed: " + th);
        }
    }

    public static void removeKeyEventHandler(CarProjectionManager carProjectionManager, CarProjectionManager$ProjectionKeyEventHandler carProjectionManager$ProjectionKeyEventHandler) {
        if (carProjectionManager == null) {
            return;
        }
        try {
            carProjectionManager.unregisterProjectionListener();
        } catch (Throwable th) {
            Log.w(TAG, "unregisterProjectionListener failed: " + th);
        }
    }

    private static boolean isCandidateUsbPhone(UsbDevice usbDevice) {
        if (usbDevice == null || usbDevice.getVendorId() == 7531 || usbDevice.getDeviceClass() == 9) {
            return false;
        }
        return (usbDevice.getInterfaceCount() == 1 && usbDevice.getInterface(0).getInterfaceClass() == 8) ? false : true;
    }

    public static String getApBssidSafe(String str) {
        BufferedReader bufferedReader;
        byte[] hardwareAddress;
        ArrayList<String> arrayList = new ArrayList();
        if (str != null && !str.isEmpty()) {
            arrayList.add(str);
        }
        arrayList.addAll(Arrays.asList("ap0", "softap0", "wlan0", "wlan1", "p2p0"));
        for (String str2 : arrayList) {
            try {
                NetworkInterface byName = NetworkInterface.getByName(str2);
                if (byName != null && (hardwareAddress = byName.getHardwareAddress()) != null && hardwareAddress.length == 6) {
                    String format = String.format(Locale.US, "%02x:%02x:%02x:%02x:%02x:%02x", Integer.valueOf(hardwareAddress[0] & 255), Integer.valueOf(hardwareAddress[1] & 255), Integer.valueOf(hardwareAddress[2] & 255), Integer.valueOf(hardwareAddress[3] & 255), Integer.valueOf(hardwareAddress[4] & 255), Integer.valueOf(hardwareAddress[5] & 255));
                    if (!"00:00:00:00:00:00".equals(format)) {
                        return format;
                    }
                }
            } catch (Throwable th) {
            }
            try {
                bufferedReader = new BufferedReader(new FileReader("/sys/class/net/" + str2 + "/address"));
            } catch (Throwable th2) {
            }
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null && readLine.trim().length() >= 17 && !"00:00:00:00:00:00".equals(readLine.trim())) {
                    String lowerCase = readLine.trim().toLowerCase(Locale.US);
                    bufferedReader.close();
                    return lowerCase;
                }
                bufferedReader.close();
            } finally {
            }
        }
        return "02:00:00:00:00:00";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getWifiApStateSafe(WifiManager wifiManager) {
        if (wifiManager == null) {
            return -1;
        }
        try {
            Object invoke = wifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(wifiManager, new Object[0]);
            if (invoke instanceof Integer) {
                return ((Integer) invoke).intValue();
            }
        } catch (Throwable th) {
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getCurrentClientWifiIpv4(WifiManager wifiManager) {
        WifiInfo connectionInfo;
        int ipAddress;
        if (wifiManager != null) {
            try {
                if (wifiManager.isWifiEnabled() && (connectionInfo = wifiManager.getConnectionInfo()) != null && (ipAddress = connectionInfo.getIpAddress()) != 0) {
                    return String.format(Locale.US, "%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255));
                }
                return null;
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }

    public static InetAddress getApHostInetAddress(String str) {
        InetAddress findValidApIpv4OnInterface;
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.isEmpty() && !"wlan0".equals(str)) {
            arrayList.add(str);
        }
        arrayList.addAll(Arrays.asList("ap0", "softap0", "wlan1", "p2p-wlan0-0"));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            InetAddress findValidApIpv4OnInterface2 = findValidApIpv4OnInterface((String) it.next(), sLastClientWifiIp);
            if (findValidApIpv4OnInterface2 != null) {
                return findValidApIpv4OnInterface2;
            }
        }
        boolean z = sLohsReservation != null || sTetheringStartedByUs || sSoftApStartedByUs;
        if (!z && sAppContext != null) {
            try {
                z = getWifiApStateSafe((WifiManager) sAppContext.getSystemService(WifiManager.class)) == 13;
            } catch (Throwable th) {
            }
        }
        if ((z || "wlan0".equals(str)) && (findValidApIpv4OnInterface = findValidApIpv4OnInterface("wlan0", sLastClientWifiIp)) != null) {
            return findValidApIpv4OnInterface;
        }
        return null;
    }

    private static InetAddress findValidApIpv4OnInterface(String str, String str2) {
        String hostAddress;
        try {
            NetworkInterface byName = NetworkInterface.getByName(str);
            if (byName != null && byName.isUp()) {
                Enumeration<InetAddress> inetAddresses = byName.getInetAddresses();
                InetAddress inetAddress = null;
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && !nextElement.isLinkLocalAddress() && (nextElement instanceof Inet4Address) && (hostAddress = nextElement.getHostAddress()) != null && !hostAddress.equals(str2)) {
                        if (hostAddress.startsWith("192.168.43.") || hostAddress.startsWith("192.168.49.") || hostAddress.endsWith(".1")) {
                            return nextElement;
                        }
                        if (inetAddress == null) {
                            inetAddress = nextElement;
                        }
                    }
                }
                return inetAddress;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static boolean shouldIgnoreApDisabledBroadcast() {
        return sStartingAccessPoint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WifiConfiguration buildPersistentApWifiConfig(int i) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = getPersistentApSsid();
        wifiConfiguration.preSharedKey = getPersistentApPsk();
        wifiConfiguration.hiddenSSID = false;
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedKeyManagement.set(4);
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedAuthAlgorithms.set(0);
        try {
            wifiConfiguration.getClass().getField("apBand").setInt(wifiConfiguration, 0);
        } catch (Throwable th) {
        }
        try {
            wifiConfiguration.getClass().getField("apChannel").setInt(wifiConfiguration, 6);
        } catch (Throwable th2) {
        }
        wifiConfiguration.BSSID = getApBssidSafe(null);
        return wifiConfiguration;
    }

    public static WifiConfiguration getWifiApConfigurationSafe(WifiManager wifiManager) {
        WifiConfiguration wifiConfiguration = sActiveApConfig;
        if (wifiConfiguration != null && wifiConfiguration.SSID != null && !wifiConfiguration.SSID.isEmpty() && wifiConfiguration.preSharedKey != null && wifiConfiguration.preSharedKey.length() >= 8) {
            if (wifiConfiguration.BSSID == null || wifiConfiguration.BSSID.isEmpty()) {
                wifiConfiguration.BSSID = getApBssidSafe(null);
            }
            return wifiConfiguration;
        }
        if (wifiManager != null) {
            try {
                WifiConfiguration wifiConfiguration2 = (WifiConfiguration) wifiManager.getClass().getMethod("getWifiApConfiguration", new Class[0]).invoke(wifiManager, new Object[0]);
                if (wifiConfiguration2 != null && wifiConfiguration2.SSID != null && !wifiConfiguration2.SSID.isEmpty() && wifiConfiguration2.preSharedKey != null && wifiConfiguration2.preSharedKey.length() >= 8 && !wifiConfiguration2.allowedKeyManagement.get(0)) {
                    if (wifiConfiguration2.BSSID == null || wifiConfiguration2.BSSID.isEmpty()) {
                        wifiConfiguration2.BSSID = getApBssidSafe(null);
                    }
                    return wifiConfiguration2;
                }
            } catch (Throwable th) {
            }
        }
        WifiConfiguration buildPersistentApWifiConfig = buildPersistentApWifiConfig(0);
        sActiveApConfig = buildPersistentApWifiConfig;
        return buildPersistentApWifiConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setWifiApConfigSafe(WifiManager wifiManager, WifiConfiguration wifiConfiguration) {
        if (wifiManager == null || wifiConfiguration == null) {
            return;
        }
        try {
            Log.i(TAG, "setWifiApConfiguration(SSID=" + wifiConfiguration.SSID + ") -> " + wifiManager.getClass().getMethod("setWifiApConfiguration", WifiConfiguration.class).invoke(wifiManager, wifiConfiguration));
        } catch (Throwable th) {
            Log.w(TAG, "setWifiApConfiguration warning: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getIWifiManager() throws Exception {
        IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "wifi");
        if (iBinder == null) {
            return null;
        }
        return Class.forName("android.net.wifi.IWifiManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tryStartWifiTethering(Context context, Handler handler) {
        ConnectivityManager connectivityManager;
        if (!P.wifi()) {
            return false;
        }
        P.onWirelessAttempt();
        try {
            connectivityManager = (ConnectivityManager) context.getSystemService(ConnectivityManager.class);
        } catch (Throwable th) {
            Log.w(TAG, "ConnectivityManager.startTethering unavailable/failed: " + th);
        }
        if (connectivityManager == null) {
            return false;
        }
        Object newInstance = Class.forName(COMPAT_TETHER_CB_CLS).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        for (Method method : connectivityManager.getClass().getMethods()) {
            if ("startTethering".equals(method.getName())) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 4) {
                    method.setAccessible(true);
                    method.invoke(connectivityManager, 0, false, newInstance, handler);
                    Log.i(TAG, "Invoked ConnectivityManager.startTethering(TETHERING_WIFI, false, cb, handler)");
                    return true;
                }
                if (parameterTypes.length == 5) {
                    method.setAccessible(true);
                    method.invoke(connectivityManager, 0, false, newInstance, handler, context.getPackageName());
                    Log.i(TAG, "Invoked ConnectivityManager.startTethering(5-arg)");
                    return true;
                }
            }
        }
        return false;
    }

    private static String runAdbServiceOnce(int i, String str, int i2) throws Exception {
        Socket socket = new Socket();
        try {
            socket.connect(new InetSocketAddress("127.0.0.1", i), 1200);
            socket.setSoTimeout(i2);
            InputStream inputStream = socket.getInputStream();
            OutputStream outputStream = socket.getOutputStream();
            sendAdbPacket(outputStream, 1314410051, 16777216, 262144, "host::features=shell_v2,cmd\u0000".getBytes(StandardCharsets.UTF_8));
            byte[] bArr = new byte[24];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            boolean z = false;
            while (true) {
                int i3 = 0;
                while (i3 < 24) {
                    int read = inputStream.read(bArr, i3, 24 - i3);
                    if (read >= 0) {
                        i3 += read;
                    } else {
                        String str2 = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                        socket.close();
                        return str2;
                    }
                }
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                int i4 = order.getInt();
                int i5 = order.getInt();
                order.getInt();
                int i6 = order.getInt();
                order.getInt();
                order.getInt();
                byte[] bArr2 = new byte[i6];
                int i7 = 0;
                while (i7 < i6) {
                    int read2 = inputStream.read(bArr2, i7, i6 - i7);
                    if (read2 < 0) {
                        break;
                    }
                    i7 += read2;
                }
                if (i4 == 1314410051 && !z) {
                    sendAdbPacket(outputStream, 1313165391, 1, 0, (str + "\u0000").getBytes(StandardCharsets.UTF_8));
                    z = true;
                } else if (i4 == 1163154007) {
                    byteArrayOutputStream.write(bArr2);
                    sendAdbPacket(outputStream, 1497451343, 1, i5, null);
                } else if (i4 == 1163086915) {
                    sendAdbPacket(outputStream, 1163086915, 1, i5, null);
                    String str3 = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                    socket.close();
                    return str3;
                }
            }
        } catch (Throwable th) {
            try {
                socket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void sendAdbPacket(OutputStream outputStream, int i, int i2, int i3, byte[] bArr) throws Exception {
        int i4 = 0;
        int length = bArr == null ? 0 : bArr.length;
        if (bArr != null) {
            int length2 = bArr.length;
            int i5 = 0;
            while (i4 < length2) {
                i5 += bArr[i4] & 255;
                i4++;
            }
            i4 = i5;
        }
        ByteBuffer order = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(i);
        order.putInt(i2);
        order.putInt(i3);
        order.putInt(length);
        order.putInt(i4);
        order.putInt(~i);
        outputStream.write(order.array());
        if (length > 0) {
            outputStream.write(bArr);
        }
        outputStream.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String runLocalRootShell(String str, int i) {
        try {
            if (!runAdbServiceOnce(9527, "shell:id", 2000).contains("uid=0")) {
                runAdbServiceOnce(9527, "root:", 2000);
                Thread.sleep(700L);
            }
            return runAdbServiceOnce(9527, "shell:" + str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void provisionApNetworkViaLocalRoot() {
        String runLocalRootShell = runLocalRootShell("IFACE=$(ip -o link show | awk -F': ' '/ap0|softap0/{print $2; exit}'); test -z $IFACE && IFACE=wlan0; ip link set $IFACE up; ip -4 addr show dev $IFACE | grep -q 192.168.43. || ip addr add 192.168.43.1/24 broadcast 192.168.43.255 dev $IFACE; ip route replace 192.168.43.0/24 dev $IFACE proto kernel scope link src 192.168.43.1 table local_network 2>/dev/null || true; ip rule add to 192.168.43.0/24 lookup main pref 9999 2>/dev/null || true; ps -A | grep -q dnsmasq || dnsmasq --no-daemon --no-resolv --no-poll --interface=$IFACE --bind-interfaces --dhcp-range=192.168.43.20,192.168.43.200,1h --dhcp-option=3,192.168.43.1 --dhcp-option=6,192.168.43.1 >/dev/null 2>&1 &", 3500);
        Log.i(TAG, "provisionApNetworkViaLocalRoot completed (out=" + (runLocalRootShell != null ? runLocalRootShell.trim() : "unavailable") + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyAllPendingApStarted(final WifiConfiguration wifiConfiguration) {
        final ArrayList arrayList;
        synchronized (sApLock) {
            sStartingAccessPoint = false;
            List<CarProjectionManager$ProjectionAccessPointCallback> list = sPendingApCallbacks;
            arrayList = new ArrayList(list);
            list.clear();
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.4
            @Override // java.lang.Runnable
            public void run() {
                for (CarProjectionManager$ProjectionAccessPointCallback carProjectionManager$ProjectionAccessPointCallback : arrayList) {
                    if (carProjectionManager$ProjectionAccessPointCallback != null) {
                        try {
                            carProjectionManager$ProjectionAccessPointCallback.onStarted(wifiConfiguration);
                        } catch (Throwable th) {
                            Log.e(CarCompat.TAG, "callback.onStarted failed", th);
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyAllPendingApFailed(final int i) {
        final ArrayList arrayList;
        synchronized (sApLock) {
            sStartingAccessPoint = false;
            List<CarProjectionManager$ProjectionAccessPointCallback> list = sPendingApCallbacks;
            arrayList = new ArrayList(list);
            list.clear();
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.5
            @Override // java.lang.Runnable
            public void run() {
                for (CarProjectionManager$ProjectionAccessPointCallback carProjectionManager$ProjectionAccessPointCallback : arrayList) {
                    if (carProjectionManager$ProjectionAccessPointCallback != null) {
                        try {
                            carProjectionManager$ProjectionAccessPointCallback.onFailed(i);
                        } catch (Throwable th) {
                            Log.e(CarCompat.TAG, "callback.onFailed error", th);
                        }
                    }
                }
            }
        });
    }

    public static void startProjectionAccessPoint(CarProjectionManager carProjectionManager, final CarProjectionManager$ProjectionAccessPointCallback carProjectionManager$ProjectionAccessPointCallback) {
        Context context = sAppContext;
        if (context == null) {
            if (carProjectionManager$ProjectionAccessPointCallback != null) {
                carProjectionManager$ProjectionAccessPointCallback.onFailed(2);
                return;
            }
            return;
        }
        if (hasConnectedUsbPhone(context)) {
            Log.i(TAG, "USB phone connected/switching -> deferring Wireless AP to keep client Wi-Fi online");
            if (carProjectionManager$ProjectionAccessPointCallback != null) {
                carProjectionManager$ProjectionAccessPointCallback.onFailed(2);
                return;
            }
            return;
        }
        WifiManager wifiManager = (WifiManager) context.getSystemService(WifiManager.class);
        if (wifiManager == null) {
            if (carProjectionManager$ProjectionAccessPointCallback != null) {
                carProjectionManager$ProjectionAccessPointCallback.onFailed(2);
                return;
            }
            return;
        }
        if ((getWifiApStateSafe(wifiManager) == 13 || sLohsReservation != null) && sActiveApConfig != null && getApHostInetAddress(null) != null) {
            sActiveApConfig.BSSID = getApBssidSafe(null);
            Log.i(TAG, "AP already active (" + sActiveApConfig.SSID + " / " + getApHostInetAddress(null) + "), delivering immediately");
            if (carProjectionManager$ProjectionAccessPointCallback != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.6
                    @Override // java.lang.Runnable
                    public void run() {
                        CarProjectionManager$ProjectionAccessPointCallback.this.onStarted(CarCompat.sActiveApConfig);
                    }
                });
                return;
            }
            return;
        }
        synchronized (sApLock) {
            if (carProjectionManager$ProjectionAccessPointCallback != null) {
                sPendingApCallbacks.add(carProjectionManager$ProjectionAccessPointCallback);
            }
            if (sStartingAccessPoint) {
                Log.i(TAG, "AP startup already in progress; coalesced callback");
            } else {
                sStartingAccessPoint = true;
                new Thread(new AnonymousClass7(context, wifiManager, new Handler(Looper.getMainLooper())), "aa-ap-v8").start();
            }
        }
    }

    /* renamed from: com.google.android.apps.auto.aareceiver.compat.CarCompat$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ Context val$ctx;
        final /* synthetic */ Handler val$mainHandler;
        final /* synthetic */ WifiManager val$wm;

        AnonymousClass7(Context context, WifiManager wifiManager, Handler handler) {
            this.val$ctx = context;
            this.val$wm = wifiManager;
            this.val$mainHandler = handler;
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x0138, code lost:
        
            r3 = false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:105:0x0138 A[EDGE_INSN: B:105:0x0138->B:55:0x0138 BREAK  A[LOOP:2: B:45:0x0102->B:101:0x0131], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0106 A[Catch: all -> 0x0248, TryCatch #5 {all -> 0x0248, blocks: (B:3:0x0004, B:10:0x0022, B:12:0x002a, B:13:0x002d, B:15:0x0038, B:18:0x0065, B:20:0x006d, B:22:0x0073, B:27:0x0084, B:32:0x0098, B:34:0x009c, B:43:0x01bc, B:47:0x0106, B:70:0x013b, B:73:0x0154, B:78:0x01cb, B:80:0x01d3, B:84:0x01db, B:87:0x01e8, B:89:0x01f0, B:93:0x01f6, B:97:0x0232, B:57:0x017c, B:59:0x019a, B:67:0x01b9, B:54:0x011a, B:101:0x0131, B:108:0x00d9, B:115:0x0089, B:38:0x00b7), top: B:2:0x0004, inners: #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x017c A[Catch: all -> 0x0248, TryCatch #5 {all -> 0x0248, blocks: (B:3:0x0004, B:10:0x0022, B:12:0x002a, B:13:0x002d, B:15:0x0038, B:18:0x0065, B:20:0x006d, B:22:0x0073, B:27:0x0084, B:32:0x0098, B:34:0x009c, B:43:0x01bc, B:47:0x0106, B:70:0x013b, B:73:0x0154, B:78:0x01cb, B:80:0x01d3, B:84:0x01db, B:87:0x01e8, B:89:0x01f0, B:93:0x01f6, B:97:0x0232, B:57:0x017c, B:59:0x019a, B:67:0x01b9, B:54:0x011a, B:101:0x0131, B:108:0x00d9, B:115:0x0089, B:38:0x00b7), top: B:2:0x0004, inners: #4 }] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x013b A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v46 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            boolean z;
            Object obj;
            WifiConfiguration wifiConfiguration;
            boolean z2;
            int i;
            boolean z3;
            try {
                CarCompat.ensureWirelessSettingsEnabled(this.val$ctx);
                ?? r3 = 0;
                try {
                    if (Settings.Secure.getInt(this.val$ctx.getContentResolver(), "location_mode", 0) == 0) {
                        CarCompat.runLocalRootShell("settings put secure location_mode 3", 2000);
                    }
                } catch (Throwable th) {
                }
                String currentClientWifiIpv4 = CarCompat.getCurrentClientWifiIpv4(this.val$wm);
                if (currentClientWifiIpv4 != null) {
                    String unused = CarCompat.sLastClientWifiIp = currentClientWifiIpv4;
                }
                if (this.val$wm.isWifiEnabled()) {
                    boolean unused2 = CarCompat.sRestoreClientWifi = true;
                    Log.i(CarCompat.TAG, "Disabling client Wi-Fi (prev STA IP=" + CarCompat.sLastClientWifiIp + ") for Wireless AA SoftAP");
                    this.val$wm.setWifiEnabled(false);
                    for (int i2 = 0; i2 < 20 && this.val$wm.isWifiEnabled(); i2++) {
                        Thread.sleep(100L);
                    }
                    Thread.sleep(250L);
                }
                try {
                    z = this.val$wm.is5GHzBandSupported();
                } catch (Throwable th2) {
                    z = false;
                }
                int[] iArr = z ? new int[]{1, 0} : new int[]{0};
                try {
                    obj = CarCompat.getIWifiManager();
                } catch (Throwable th3) {
                    obj = null;
                }
                int length = iArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        wifiConfiguration = null;
                        break;
                    }
                    int i4 = iArr[i3];
                    wifiConfiguration = CarCompat.buildPersistentApWifiConfig(i4);
                    WifiConfiguration unused3 = CarCompat.sActiveApConfig = wifiConfiguration;
                    CarCompat.setWifiApConfigSafe(this.val$wm, wifiConfiguration);
                    boolean tryStartWifiTethering = CarCompat.tryStartWifiTethering(this.val$ctx, this.val$mainHandler);
                    if (!tryStartWifiTethering && obj != null) {
                        try {
                            Class<?> cls = obj.getClass();
                            Class<?>[] clsArr = new Class[1];
                            clsArr[r3] = WifiConfiguration.class;
                            z2 = Boolean.TRUE.equals((Boolean) cls.getMethod("startSoftAp", clsArr).invoke(obj, wifiConfiguration));
                        } catch (Throwable th4) {
                            Log.w(CarCompat.TAG, "IWifiManager.startSoftAp failed on band=" + i4 + ": " + th4);
                        }
                        if (!tryStartWifiTethering || z2) {
                            i = r3;
                            while (true) {
                                if (i >= 36) {
                                    break;
                                }
                                int wifiApStateSafe = CarCompat.getWifiApStateSafe(this.val$wm);
                                if (wifiApStateSafe == 13) {
                                    z3 = true;
                                    break;
                                } else if (wifiApStateSafe == 14 && i >= 3) {
                                    Log.w(CarCompat.TAG, "SoftAP reported WIFI_AP_STATE_FAILED (14) on band=" + i4);
                                    break;
                                } else {
                                    Thread.sleep(100L);
                                    i++;
                                }
                            }
                            if (!z3) {
                                boolean unused4 = CarCompat.sTetheringStartedByUs = tryStartWifiTethering;
                                boolean unused5 = CarCompat.sSoftApStartedByUs = z2;
                                Log.i(CarCompat.TAG, "SoftAP ENABLED on band=" + (i4 == 1 ? "5GHz" : "2.4GHz") + " (tether=" + tryStartWifiTethering + ", ssid=" + wifiConfiguration.SSID + ")");
                            } else {
                                Log.w(CarCompat.TAG, "SoftAP did not reach ENABLED on band=" + i4 + ", cleaning up before fallback");
                                if (tryStartWifiTethering) {
                                    CarCompat.tryStopWifiTethering(this.val$ctx);
                                }
                                if (z2 && obj != null) {
                                    try {
                                        obj.getClass().getMethod("stopSoftAp", new Class[0]).invoke(obj, new Object[0]);
                                    } catch (Throwable th5) {
                                    }
                                }
                                Thread.sleep(350L);
                            }
                        }
                        i3++;
                        r3 = 0;
                    }
                    z2 = r3;
                    if (!tryStartWifiTethering) {
                    }
                    i = r3;
                    while (true) {
                        if (i >= 36) {
                        }
                        Thread.sleep(100L);
                        i++;
                    }
                    if (!z3) {
                    }
                }
                if (wifiConfiguration != null) {
                    InetAddress inetAddress = null;
                    for (int i5 = 0; i5 < 25 && (inetAddress = CarCompat.getApHostInetAddress(null)) == null; i5++) {
                        Thread.sleep(100L);
                    }
                    if (inetAddress == null) {
                        Log.w(CarCompat.TAG, "SoftAP enabled without IPv4 after 2.5s -> provisioning 192.168.43.1 + dnsmasq");
                        CarCompat.provisionApNetworkViaLocalRoot();
                        for (int i6 = 0; i6 < 15 && (inetAddress = CarCompat.getApHostInetAddress(null)) == null; i6++) {
                            Thread.sleep(100L);
                        }
                    }
                    wifiConfiguration.BSSID = CarCompat.getApBssidSafe(null);
                    WifiConfiguration unused6 = CarCompat.sActiveApConfig = wifiConfiguration;
                    Log.i(CarCompat.TAG, "Delivering v8 AP onStarted: SSID=" + wifiConfiguration.SSID + " BSSID=" + wifiConfiguration.BSSID + " hostIp=" + inetAddress);
                    CarCompat.notifyAllPendingApStarted(wifiConfiguration);
                    return;
                }
                Log.w(CarCompat.TAG, "Tethered SoftAP unavailable; trying startLocalOnlyHotspot backup");
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                this.val$mainHandler.post(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AnonymousClass7.this.val$wm.startLocalOnlyHotspot(new WifiManager.LocalOnlyHotspotCallback() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.7.1.1
                                @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
                                public void onStarted(WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation) {
                                    WifiManager.LocalOnlyHotspotReservation unused7 = CarCompat.sLohsReservation = localOnlyHotspotReservation;
                                    WifiConfiguration wifiConfiguration2 = localOnlyHotspotReservation.getWifiConfiguration();
                                    if (wifiConfiguration2 != null) {
                                        wifiConfiguration2.BSSID = CarCompat.getApBssidSafe(null);
                                        WifiConfiguration unused8 = CarCompat.sActiveApConfig = wifiConfiguration2;
                                    }
                                    atomicBoolean.set(true);
                                    CarCompat.notifyAllPendingApStarted(wifiConfiguration2);
                                }

                                @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
                                public void onStopped() {
                                    WifiManager.LocalOnlyHotspotReservation unused7 = CarCompat.sLohsReservation = null;
                                }

                                @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
                                public void onFailed(int i7) {
                                    atomicBoolean.set(true);
                                    CarCompat.restoreWifiAfterFailure(AnonymousClass7.this.val$wm);
                                    CarCompat.notifyAllPendingApFailed(2);
                                }
                            }, AnonymousClass7.this.val$mainHandler);
                        } catch (Throwable th6) {
                            atomicBoolean.set(true);
                            CarCompat.restoreWifiAfterFailure(AnonymousClass7.this.val$wm);
                            CarCompat.notifyAllPendingApFailed(2);
                        }
                    }
                });
            } catch (Throwable th6) {
                Log.e(CarCompat.TAG, "v8 startProjectionAccessPoint failed", th6);
                CarCompat.restoreWifiAfterFailure(this.val$wm);
                CarCompat.notifyAllPendingApFailed(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void restoreWifiAfterFailure(WifiManager wifiManager) {
        if (sRestoreClientWifi && wifiManager != null) {
            sRestoreClientWifi = false;
            try {
                wifiManager.setWifiEnabled(true);
            } catch (Throwable th) {
            }
        }
    }

    public static void stopProjectionAccessPoint(CarProjectionManager carProjectionManager) {
        if (sStartingAccessPoint) {
            Log.i(TAG, "Ignoring stopProjectionAccessPoint while AP startup is in progress");
            return;
        }
        try {
            if (sLohsReservation != null) {
                sLohsReservation.close();
                sLohsReservation = null;
            }
            if (sTetheringStartedByUs && sAppContext != null) {
                tryStopWifiTethering(sAppContext);
                sTetheringStartedByUs = false;
            }
            if (sSoftApStartedByUs) {
                Object iWifiManager = getIWifiManager();
                if (iWifiManager != null) {
                    iWifiManager.getClass().getMethod("stopSoftAp", new Class[0]).invoke(iWifiManager, new Object[0]);
                }
                sSoftApStartedByUs = false;
            }
            if (sRestoreClientWifi && sAppContext != null) {
                sRestoreClientWifi = false;
                final WifiManager wifiManager = (WifiManager) sAppContext.getSystemService(WifiManager.class);
                if (wifiManager != null) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.8
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                wifiManager.setWifiEnabled(true);
                            } catch (Throwable th) {
                            }
                        }
                    }, 350L);
                }
            }
        } catch (Throwable th) {
            Log.w(TAG, "stopProjectionAccessPoint error: " + th);
        }
    }

    public static boolean isAoapDevice(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return false;
        }
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        if (vendorId == 6353) {
            return productId == 11520 || productId == 11521 || productId == 11524 || productId == 11525;
        }
        return false;
    }

    public static void grantUsbPermissionAndDefault(Context context, UsbDevice usbDevice) {
        if (context == null || usbDevice == null) {
            return;
        }
        try {
            Object invoke = Class.forName("android.hardware.usb.IUsbManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "usb"));
            invoke.getClass().getMethod("grantDevicePermission", UsbDevice.class, Integer.TYPE).invoke(invoke, usbDevice, Integer.valueOf(Process.myUid()));
            if (isAoapDevice(usbDevice)) {
                try {
                    invoke.getClass().getMethod("setDevicePackage", UsbDevice.class, String.class, Integer.TYPE).invoke(invoke, usbDevice, context.getPackageName(), 0);
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
            Log.w(TAG, "grantUsbPermissionAndDefault warning: " + th2);
        }
    }

    public static boolean scanAndSwitchUsbPhones(Context context, boolean z) {
        UsbManager usbManager;
        HashMap<String, UsbDevice> deviceList;
        boolean z2 = false;
        if (context == null) {
            return false;
        }
        try {
            usbManager = (UsbManager) context.getSystemService(UsbManager.class);
        } catch (Throwable th) {
            Log.w(TAG, "scanAndSwitchUsbPhones warning: " + th);
        }
        if (usbManager == null || (deviceList = usbManager.getDeviceList()) == null) {
            return false;
        }
        for (UsbDevice usbDevice : deviceList.values()) {
            if (isCandidateUsbPhone(usbDevice)) {
                z2 = true;
                handleAttachedUsbDevice(context, usbDevice, z);
            }
        }
        return z2;
    }

    public static void initPersistentService(Service service) {
        captureContext(service);
        try {
            Car createCar = createCar(service);
            if (createCar != null) {
                CarProjectionManager carProjectionManager = (CarProjectionManager) createCar.getCarManager("projection");
                if (carProjectionManager != null) {
                    try {
                        carProjectionManager.registerProjectionRunner(new Intent(service, service.getClass()));
                    } catch (Throwable th) {
                    }
                }
            }
        } catch (Throwable th2) {
            Log.w(TAG, "initPersistentService car init warning: " + th2);
        }
        if (sReceiversRegistered.compareAndSet(false, true)) {
            Context applicationContext = service.getApplicationContext() != null ? service.getApplicationContext() : service;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.9
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (intent == null) {
                        return;
                    }
                    String action = intent.getAction();
                    if ("android.hardware.usb.action.USB_DEVICE_ATTACHED".equals(action)) {
                        UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
                        if (usbDevice != null) {
                            CarCompat.handleAttachedUsbDevice(context, usbDevice, true);
                            return;
                        }
                        return;
                    }
                    if ("android.hardware.usb.action.USB_DEVICE_DETACHED".equals(action)) {
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.9.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CarCompat.sAppContext != null && !CarCompat.hasConnectedUsbPhone(CarCompat.sAppContext) && CarCompat.sCurrentProjectionState == 0) {
                                    CarCompat.hasConnectedBluetoothPhone(CarCompat.sAppContext, true);
                                }
                            }
                        }, 2000L);
                    }
                }
            }, intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter2.addAction("android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED");
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.10
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    BluetoothDevice bluetoothDevice;
                    if (intent != null && !CarCompat.hasConnectedUsbPhone(context) && "android.bluetooth.device.action.ACL_CONNECTED".equals(intent.getAction()) && (bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")) != null && bluetoothDevice.getBondState() == 12) {
                        CarCompat.nudgeWirelessBluetoothReconnect(context, BluetoothAdapter.getDefaultAdapter(), bluetoothDevice, 3800L);
                    }
                }
            }, intentFilter2);
        }
        if (!scanAndSwitchUsbPhones(service, true)) {
            hasConnectedBluetoothPhone(service, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void launchDisambiguationNow(Context context) {
        if (!P.allowAutoLaunch() || context == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setClassName(context.getPackageName(), DISAMBIGUATION_CLS);
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Throwable th) {
            Log.w(TAG, "launchDisambiguationNow warning: " + th);
        }
    }

    private static void scheduleAutoLaunchProjectionIfReady(final Context context, long j) {
        if (P.allowAutoLaunch() && context != null && sAutoLaunchPending.compareAndSet(false, true)) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.11
                @Override // java.lang.Runnable
                public void run() {
                    CarCompat.sAutoLaunchPending.set(false);
                    if (CarCompat.sCurrentProjectionState == 1 && CarCompat.sCurrentConnectedDevices >= 1 && !CarCompat.isWirelessStartRecentlyActive()) {
                        Log.i(CarCompat.TAG, "Auto-launching Android Auto for READY_TO_PROJECT device");
                        CarCompat.launchDisambiguationNow(context);
                    }
                }
            }, j);
        }
    }

    private static void startAutoLaunchWaitLoop(final Context context) {
        if (P.allowAutoLaunch() && context != null && sWaitLoopRunning.compareAndSet(false, true)) {
            final Handler handler = new Handler(Looper.getMainLooper());
            final int[] iArr = {0};
            handler.postDelayed(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.12
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr2 = iArr;
                    iArr2[0] = iArr2[0] + 1;
                    if (CarCompat.sCurrentProjectionState == 2 || CarCompat.isWirelessStartRecentlyActive()) {
                        CarCompat.sWaitLoopRunning.set(false);
                        return;
                    }
                    if (CarCompat.sCurrentProjectionState == 1 && CarCompat.sCurrentConnectedDevices >= 1) {
                        CarCompat.sWaitLoopRunning.set(false);
                        CarCompat.launchDisambiguationNow(context);
                    } else if (iArr[0] >= 55) {
                        CarCompat.sWaitLoopRunning.set(false);
                    } else {
                        handler.postDelayed(this, 400L);
                    }
                }
            }, 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasConnectedBluetoothPhone(Context context, boolean z) {
        Set<BluetoothDevice> bondedDevices;
        BluetoothDevice bluetoothDevice;
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && defaultAdapter.isEnabled() && (bondedDevices = defaultAdapter.getBondedDevices()) != null && !bondedDevices.isEmpty()) {
                Method method = BluetoothDevice.class.getMethod("isConnected", new Class[0]);
                Iterator<BluetoothDevice> it = bondedDevices.iterator();
                while (it.hasNext()) {
                    bluetoothDevice = it.next();
                    if (bluetoothDevice != null) {
                        if (Boolean.TRUE.equals((Boolean) method.invoke(bluetoothDevice, new Object[0]))) {
                            BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
                            int majorDeviceClass = bluetoothClass != null ? bluetoothClass.getMajorDeviceClass() : 512;
                            if (majorDeviceClass == 512 || majorDeviceClass == 7936) {
                                break;
                            }
                        }
                    }
                }
                bluetoothDevice = null;
                if (bluetoothDevice != null && z) {
                    nudgeWirelessBluetoothReconnect(context, defaultAdapter, bluetoothDevice, 2200L);
                }
                return bluetoothDevice != null;
            }
            return false;
        } catch (Throwable th) {
            Log.w(TAG, "hasConnectedBluetoothPhone warning: " + th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void nudgeWirelessBluetoothReconnect(Context context, BluetoothAdapter bluetoothAdapter, BluetoothDevice bluetoothDevice, long j) {
        if (bluetoothAdapter == null || bluetoothDevice == null || !sBtNudgeRunning.compareAndSet(false, true)) {
            return;
        }
        new Thread(new AnonymousClass13(j, context, bluetoothDevice, bluetoothAdapter), "bt-aa-nudge").start();
    }

    /* renamed from: com.google.android.apps.auto.aareceiver.compat.CarCompat$13, reason: invalid class name */
    class AnonymousClass13 implements Runnable {
        final /* synthetic */ BluetoothAdapter val$adapter;
        final /* synthetic */ Context val$ctx;
        final /* synthetic */ long val$initialDelayMs;
        final /* synthetic */ BluetoothDevice val$phone;

        AnonymousClass13(long j, Context context, BluetoothDevice bluetoothDevice, BluetoothAdapter bluetoothAdapter) {
            this.val$initialDelayMs = j;
            this.val$ctx = context;
            this.val$phone = bluetoothDevice;
            this.val$adapter = bluetoothAdapter;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0058 -> B:16:0x005f). Please report as a decompilation issue!!! */
        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.val$initialDelayMs);
                if (!CarCompat.isWirelessSessionOrApBusy() && !CarCompat.hasConnectedUsbPhone(this.val$ctx)) {
                    Log.i(CarCompat.TAG, "Waking Wireless AA on " + this.val$phone + " via SDP + A2DP poke");
                    try {
                        this.val$phone.fetchUuidsWithSdp();
                    } catch (Throwable th) {
                    }
                    BluetoothSocket bluetoothSocket = null;
                    try {
                        try {
                            bluetoothSocket = this.val$phone.createRfcommSocketToServiceRecord(CarCompat.A2DP_SOURCE_UUID);
                            bluetoothSocket.connect();
                            Thread.sleep(1200L);
                            if (bluetoothSocket != null) {
                                bluetoothSocket.close();
                            }
                        } catch (Throwable th2) {
                            if (bluetoothSocket != null) {
                                bluetoothSocket.close();
                            }
                        }
                    } catch (Throwable th3) {
                    }
                    Thread.sleep(1600L);
                    if (!CarCompat.isWirelessSessionOrApBusy() && !CarCompat.hasConnectedUsbPhone(this.val$ctx)) {
                        Log.i(CarCompat.TAG, "Cycling Bluetooth HFP HandsfreeClient reconnect for Wireless AA on " + this.val$phone);
                        this.val$adapter.getProfileProxy(this.val$ctx, new BluetoothProfile.ServiceListener() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.13.1
                            @Override // android.bluetooth.BluetoothProfile.ServiceListener
                            public void onServiceConnected(final int i, final BluetoothProfile bluetoothProfile) {
                                new Thread(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.13.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            if (!CarCompat.isWirelessSessionOrApBusy() && !CarCompat.hasConnectedUsbPhone(AnonymousClass13.this.val$ctx)) {
                                                Method method = bluetoothProfile.getClass().getMethod("disconnect", BluetoothDevice.class);
                                                Method method2 = bluetoothProfile.getClass().getMethod("connect", BluetoothDevice.class);
                                                method.invoke(bluetoothProfile, AnonymousClass13.this.val$phone);
                                                Thread.sleep(950L);
                                                method2.invoke(bluetoothProfile, AnonymousClass13.this.val$phone);
                                                Log.i(CarCompat.TAG, "Reconnected HEADSET_CLIENT to trigger Wireless AA RFCOMM on " + AnonymousClass13.this.val$phone);
                                            }
                                        } catch (Throwable th4) {
                                            try {
                                                Log.w(CarCompat.TAG, "BT HFP nudge warning: " + th4);
                                                try {
                                                    AnonymousClass13.this.val$adapter.closeProfileProxy(i, bluetoothProfile);
                                                } catch (Throwable th5) {
                                                }
                                            } finally {
                                                try {
                                                    AnonymousClass13.this.val$adapter.closeProfileProxy(i, bluetoothProfile);
                                                } catch (Throwable th6) {
                                                }
                                                CarCompat.sBtNudgeRunning.set(false);
                                            }
                                        }
                                    }
                                }, "bt-hfp-cycle").start();
                            }

                            @Override // android.bluetooth.BluetoothProfile.ServiceListener
                            public void onServiceDisconnected(int i) {
                                CarCompat.sBtNudgeRunning.set(false);
                            }
                        }, 16);
                        return;
                    }
                    CarCompat.sBtNudgeRunning.set(false);
                    return;
                }
                CarCompat.sBtNudgeRunning.set(false);
            } catch (Throwable th4) {
                CarCompat.sBtNudgeRunning.set(false);
            }
        }
    }

    public static boolean onDisambiguationEmpty(Activity activity) {
        boolean z;
        String str;
        captureContext(activity);
        Context applicationContext = sAppContext != null ? sAppContext : activity.getApplicationContext();
        ensurePersistentServiceRunning(applicationContext);
        boolean scanAndSwitchUsbPhones = scanAndSwitchUsbPhones(applicationContext, true);
        if (!scanAndSwitchUsbPhones && hasConnectedBluetoothPhone(applicationContext, true)) {
            z = true;
        } else {
            z = false;
        }
        if (!scanAndSwitchUsbPhones && !z && sActiveRfcommDevices.isEmpty()) {
            return false;
        }
        activity.finish();
        if (scanAndSwitchUsbPhones) {
            str = "Starting Android Auto via USB...";
        } else {
            str = "Starting Wireless Android Auto via Bluetooth & Wi-Fi...";
        }
        Toast.makeText(applicationContext, str, 0).show();
        startAutoLaunchWaitLoop(applicationContext);
        return true;
    }

    public static boolean interceptNewDeviceActivity(Activity activity, UsbDevice usbDevice) {
        captureContext(activity);
        Context applicationContext = sAppContext != null ? sAppContext : activity.getApplicationContext();
        ensurePersistentServiceRunning(applicationContext);
        if (usbDevice == null) {
            return false;
        }
        if (!isCandidateUsbPhone(usbDevice)) {
            activity.finish();
            return true;
        }
        grantUsbPermissionAndDefault(activity, usbDevice);
        if (isAoapDevice(usbDevice)) {
            scheduleAutoLaunchProjectionIfReady(applicationContext, 650L);
            return false;
        }
        handleAttachedUsbDevice(applicationContext, usbDevice, false);
        activity.finish();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleAttachedUsbDevice(final Context context, final UsbDevice usbDevice, boolean z) {
        if (P.usb() && isCandidateUsbPhone(usbDevice)) {
            grantUsbPermissionAndDefault(context, usbDevice);
            if (isAoapDevice(usbDevice)) {
                if (z && sCurrentProjectionState == 0) {
                    try {
                        Intent intent = new Intent("android.hardware.usb.action.USB_DEVICE_ATTACHED");
                        intent.setClassName(context.getPackageName(), NEW_DEVICE_CLS);
                        intent.putExtra("device", usbDevice);
                        intent.addFlags(268435456);
                        context.startActivity(intent);
                        return;
                    } catch (Throwable th) {
                        Log.w(TAG, "Failed to launch NewDeviceActivity for AOAP device", th);
                        return;
                    }
                }
                return;
            }
            final String deviceName = usbDevice.getDeviceName();
            if (sSwitchingDevices.add(deviceName)) {
                new Thread(new Runnable() { // from class: com.google.android.apps.auto.aareceiver.compat.CarCompat.14
                    @Override // java.lang.Runnable
                    public void run() {
                        UsbManager usbManager;
                        UsbDeviceConnection usbDeviceConnection = null;
                        try {
                            usbManager = (UsbManager) context.getSystemService(UsbManager.class);
                        } catch (Throwable th2) {
                            try {
                                Log.w(CarCompat.TAG, "AOAP probe/switch skipped for " + deviceName + ": " + th2);
                            } finally {
                                if (0 != 0) {
                                    try {
                                        usbDeviceConnection.close();
                                    } catch (Throwable th3) {
                                    }
                                }
                                CarCompat.sSwitchingDevices.remove(deviceName);
                            }
                        }
                        if (usbManager == null) {
                            CarCompat.sSwitchingDevices.remove(deviceName);
                            return;
                        }
                        UsbDeviceConnection openDevice = usbManager.openDevice(usbDevice);
                        if (openDevice == null) {
                            if (openDevice != null) {
                                try {
                                    openDevice.close();
                                } catch (Throwable th4) {
                                }
                            }
                            CarCompat.sSwitchingDevices.remove(deviceName);
                            return;
                        }
                        byte[] bArr = new byte[2];
                        if (openDevice.controlTransfer(192, 51, 0, 0, bArr, 2, 500) != 2) {
                            if (openDevice != null) {
                                try {
                                    openDevice.close();
                                } catch (Throwable th5) {
                                }
                            }
                            CarCompat.sSwitchingDevices.remove(deviceName);
                            return;
                        }
                        int i = ((bArr[1] & 255) << 8) | (bArr[0] & 255);
                        if (i < 1) {
                            if (openDevice != null) {
                                try {
                                    openDevice.close();
                                } catch (Throwable th6) {
                                }
                            }
                            CarCompat.sSwitchingDevices.remove(deviceName);
                            return;
                        }
                        Log.i(CarCompat.TAG, "USB device " + usbDevice.getProductName() + " supports AOAP v" + i + " -> switching to Android Auto AOAP!");
                        CarCompat.sendAoapString(openDevice, 0, "Android");
                        CarCompat.sendAoapString(openDevice, 1, "Android Auto");
                        CarCompat.sendAoapString(openDevice, 2, "Android Auto");
                        CarCompat.sendAoapString(openDevice, 3, "1");
                        CarCompat.sendAoapString(openDevice, 4, "http://www.android.com/auto/");
                        CarCompat.sendAoapString(openDevice, 5, "12345678");
                        openDevice.controlTransfer(64, 53, 0, 0, null, 0, 500);
                        if (openDevice != null) {
                            try {
                                openDevice.close();
                            } catch (Throwable th7) {
                            }
                        }
                    }
                }, "aoap-switch").start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendAoapString(UsbDeviceConnection usbDeviceConnection, int i, String str) {
        byte[] bytes = (str + "\u0000").getBytes(StandardCharsets.UTF_8);
        usbDeviceConnection.controlTransfer(64, 52, 0, i, bytes, bytes.length, 500);
    }

    private static Object allocateDummy(Class<?> cls) {
        try {
            Class<?> cls2 = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls2.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return cls2.getMethod("allocateInstance", Class.class).invoke(declaredField.get(null), cls);
        } catch (Throwable th) {
            Log.e(TAG, "allocateDummy failed for " + cls + ": " + th);
            return null;
        }
    }

    public static CarProjectionManager getCarProjectionManagerSafe(Car car) {
        try {
            Object carManager = car.getCarManager("projection");
            if (carManager instanceof CarProjectionManager) {
                return (CarProjectionManager) carManager;
            }
        } catch (Throwable th) {
            Log.w(TAG, "getCarManager(projection) fallback: " + th);
        }
        return (CarProjectionManager) allocateDummy(CarProjectionManager.class);
    }

    public static CarPropertyManager getCarPropertyManagerSafe(Car car) {
        try {
            Object carManager = car.getCarManager("property");
            if (carManager instanceof CarPropertyManager) {
                return (CarPropertyManager) carManager;
            }
        } catch (Throwable th) {
            Log.w(TAG, "getCarManager(property) fallback: " + th);
        }
        return (CarPropertyManager) allocateDummy(CarPropertyManager.class);
    }

    public static Object getCarNavigationManagerSafe(Car car) {
        try {
            return car.getCarManager("car_navigation_service");
        } catch (Throwable th) {
            Log.w(TAG, "getCarManager(car_navigation_service) fallback: " + th);
            return null;
        }
    }

    public static void registerProjectionRunner(CarProjectionManager carProjectionManager, Intent intent) {
        P.rememberRunner(carProjectionManager, intent);
        if (P.allowAutoLaunch()) {
            if (carProjectionManager != null) {
                try {
                    carProjectionManager.registerProjectionRunner(intent);
                    Log.i(TAG, "Registered projection runner via CarProjectionManager");
                } catch (Throwable th) {
                    Log.w(TAG, "CarProjectionManager.registerProjectionRunner fallback to startService: " + th);
                }
            }
            if (sAppContext != null && intent != null) {
                try {
                    sAppContext.startService(intent);
                    Log.i(TAG, "Started PersistentService directly via startService");
                } catch (Throwable th2) {
                    Log.e(TAG, "Direct startService(PersistentService) failed: " + th2);
                }
            }
        }
    }

    public static void unregisterProjectionRunner(CarProjectionManager carProjectionManager, Intent intent) {
        if (carProjectionManager != null) {
            try {
                carProjectionManager.unregisterProjectionRunner(intent);
                return;
            } catch (Throwable th) {
                Log.w(TAG, "unregisterProjectionRunner fallback: " + th);
            }
        }
        if (sAppContext != null && intent != null) {
            try {
                sAppContext.stopService(intent);
            } catch (Throwable th2) {
            }
        }
    }

    public static boolean isHeadlessSystemUser(UserManager userManager) {
        return Build.VERSION.SDK_INT >= 29 && userManager != null && userManager.isSystemUser();
    }

    public static String getUsbSerialSafe(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return null;
        }
        if (sAppContext != null) {
            grantUsbPermissionAndDefault(sAppContext, usbDevice);
        }
        try {
            String serialNumber = usbDevice.getSerialNumber();
            if (serialNumber != null) {
                if (!serialNumber.isEmpty()) {
                    return serialNumber;
                }
            }
        } catch (Throwable th) {
            Log.w(TAG, "getUsbSerialSafe fallback for " + usbDevice.getDeviceName() + ": " + th);
        }
        return "usb_" + usbDevice.getVendorId() + "_" + usbDevice.getProductId() + "_" + usbDevice.getDeviceName();
    }
}
