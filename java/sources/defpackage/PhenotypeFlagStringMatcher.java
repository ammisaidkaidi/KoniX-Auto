package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.os.Trace;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagStringMatcher {
    public static long a;
    public static Method b;

    public static boolean a() {
        return Trace.isEnabled();
    }

    public static void b(String str, String str2, String str3) {
        if (PhenotypeConfiguratorFlagsFacade.a.a().g()) {
            int indexOf = str3.indexOf(35);
            if (indexOf >= 0) {
                str3 = str3.substring(0, indexOf);
            }
            String replace = str3.replace("com.google.android.", "c.g.a.").replace("com.google.", "c.g.");
            int length = String.valueOf(str).length();
            StringBuilder sb = new StringBuilder(length + 2 + str2.length() + String.valueOf(replace).length());
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append('_');
            StaggeredGridLayoutParams.append(str2);
            StaggeredGridLayoutParams.append('_');
            StaggeredGridLayoutParams.append(replace);
            String sb2 = StaggeredGridLayoutParams.toString();
            if (sb2.length() > 127) {
                sb2 = sb2.substring(0, 127);
            }
            Trace.beginSection(sb2);
        }
    }

    public static final GuavaOptional c(Context context) {
        GuavaOptional cocVar;
        GuavaOptional cocVar2;
        String str = Build.TYPE;
        String str2 = Build.TAGS;
        if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
            return cns.a;
        }
        Context a2 = DirectBootUtils.a(context);
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            try {
                File file = new File(a2.getDir("phenotype_hermetic", 0), "overrides.txt");
                cocVar = file.exists() ? GuavaOptional.e(file) : cns.a;
            } catch (RuntimeException e) {
                Log.e("HermeticFileOverrides", "no data dir", e);
                cocVar = cns.a;
            }
            if (cocVar.d()) {
                File file2 = (File) cocVar.a();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String[] split = readLine.split(" ", 3);
                            if (split.length != 3) {
                                Log.e("HermeticFileOverrides", readLine.length() != 0 ? "Invalid: ".concat(readLine) : new String("Invalid: "));
                            } else {
                                String d = d(split[0]);
                                String decode = Uri.decode(d(split[1]));
                                String str3 = (String) hashMap2.get(split[2]);
                                if (str3 == null) {
                                    String d2 = d(split[2]);
                                    str3 = Uri.decode(d2);
                                    if (str3.length() >= 1024 && str3 != d2) {
                                    }
                                    hashMap2.put(d2, str3);
                                }
                                if (!hashMap.containsKey(ProtoMsgIntStringInt)) {
                                    hashMap.put(d, new HashMap());
                                }
                                ((Map) hashMap.get(ProtoMsgIntStringInt)).put(decode, str3);
                            }
                        }
                        file2.toString();
                        PhenotypeFlagUriResolver cqoVar = new PhenotypeFlagUriResolver(hashMap);
                        bufferedReader.close();
                        cocVar2 = GuavaOptional.e(cqoVar);
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            } else {
                cocVar2 = cns.a;
            }
            return cocVar2;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static final String d(String str) {
        return new String(str);
    }
}
