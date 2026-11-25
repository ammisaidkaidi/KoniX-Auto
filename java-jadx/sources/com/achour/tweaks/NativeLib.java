package com.achour.tweaks;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes3.dex */
public final class NativeLib {
    public static final String LIB_NAME = "libgalreceiver_jni.so";
    private static final String LOG = "AATweaks";
    private static volatile boolean loaded;

    public static synchronized void load() {
        synchronized (NativeLib.class) {
            if (loaded) {
                return;
            }
            Context appContext = appContext();
            if (appContext != null) {
                try {
                    String str = appContext.getApplicationInfo().nativeLibraryDir;
                    if (str != null && str.startsWith("/data")) {
                        String str2 = str + "/" + LIB_NAME;
                        if (new File(str2).exists()) {
                            System.load(str2);
                            loaded = true;
                            Log.i(LOG, "native: loaded from APK (installer-extracted) " + str2);
                            return;
                        }
                    }
                } catch (Throwable th) {
                    Log.w(LOG, "native: nativeLibraryDir failed: " + th);
                }
            }
            if (appContext != null) {
                String[] extractedCandidates = extractedCandidates(appContext);
                for (int i = 0; i < extractedCandidates.length; i++) {
                    try {
                        System.load(extractedCandidates[i]);
                        loaded = true;
                        Log.i(LOG, "native: loaded from inside APK -> " + extractedCandidates[i]);
                        return;
                    } catch (Throwable th2) {
                        Log.w(LOG, "native: load(" + extractedCandidates[i] + ") failed: " + th2);
                    }
                }
            }
            try {
                System.loadLibrary("galreceiver_jni");
                loaded = true;
                Log.i(LOG, "native: loaded via System.loadLibrary (system path)");
            } catch (Throwable th3) {
                Log.w(LOG, "native: loadLibrary failed: " + th3);
                String[] strArr = {"/system/lib64/libgalreceiver_jni.so", "/system/lib/libgalreceiver_jni.so", "/vendor/lib64/libgalreceiver_jni.so", "/vendor/lib/libgalreceiver_jni.so"};
                for (int i2 = 0; i2 < 4; i2++) {
                    if (new File(strArr[i2]).exists()) {
                        try {
                            System.load(strArr[i2]);
                            loaded = true;
                            Log.i(LOG, "native: loaded from system path " + strArr[i2]);
                            return;
                        } catch (Throwable th4) {
                            Log.w(LOG, "native: load(" + strArr[i2] + ") failed: " + th4);
                        }
                    }
                }
                Log.e(LOG, "native: libgalreceiver_jni.so تعذّر تحميله من أي مصدر");
                throw new UnsatisfiedLinkError("libgalreceiver_jni: no loadable copy found");
            }
        }
    }

    public static boolean isLoaded() {
        return loaded;
    }

    private static String[] abis() {
        try {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr != null && strArr.length > 0) {
                String[] strArr2 = new String[strArr.length + 2];
                System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                strArr2[strArr.length] = "arm64-v8a";
                strArr2[strArr.length + 1] = "armeabi-v7a";
                return strArr2;
            }
        } catch (Throwable th) {
        }
        return new String[]{"arm64-v8a", "armeabi-v7a", "armeabi"};
    }

    private static String[] extractedCandidates(Context context) {
        File file;
        try {
            file = new File(context.getFilesDir(), "nativelib");
        } catch (Throwable th) {
            Log.w(LOG, "native: extract failed: " + th);
        }
        if (!file.exists() && !file.mkdirs()) {
            return new String[0];
        }
        File file2 = new File(file, LIB_NAME);
        ZipFile zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
        try {
            for (String str : abis()) {
                ZipEntry entry = zipFile.getEntry("lib/" + str + "/" + LIB_NAME);
                if (entry != null) {
                    long size = entry.getSize();
                    if (!file2.exists() || file2.length() != size || size <= 0) {
                        copy(zipFile, entry, file2);
                    }
                    return new String[]{file2.getAbsolutePath()};
                }
            }
            try {
                zipFile.close();
            } catch (Throwable th2) {
            }
            Log.w(LOG, "native: no lib entry inside APK for ABI " + abis()[0]);
            return new String[0];
        } finally {
            try {
                zipFile.close();
            } catch (Throwable th3) {
            }
        }
    }

    private static void copy(ZipFile zipFile, ZipEntry zipEntry, File file) throws Exception {
        InputStream inputStream;
        FileOutputStream fileOutputStream = null;
        try {
            inputStream = zipFile.getInputStream(zipEntry);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        } else {
                            fileOutputStream2.write(bArr, 0, read);
                        }
                    }
                    fileOutputStream2.flush();
                    try {
                        fileOutputStream2.close();
                    } catch (Throwable th) {
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                        }
                    }
                    try {
                        file.setReadable(true, false);
                        file.setExecutable(true, false);
                    } catch (Throwable th3) {
                    }
                    Log.i(LOG, "native: extracted " + file.getAbsolutePath() + " (" + file.length() + " B)");
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th5) {
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                            throw th;
                        } catch (Throwable th6) {
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Throwable th8) {
            th = th8;
            inputStream = null;
        }
    }

    private static Context appContext() {
        try {
            Object invoke = Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
            if (invoke instanceof Context) {
                return (Context) invoke;
            }
        } catch (Throwable th) {
        }
        return null;
    }
}
