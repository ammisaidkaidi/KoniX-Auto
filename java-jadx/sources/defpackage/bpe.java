package defpackage;

import android.app.ActivityManager;
import android.os.Build;
import java.util.ArrayList;
import java.util.concurrent.Executors;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bpe implements col {
    private final /* synthetic */ int u;
    public static final /* synthetic */ bpe t = new bpe(19);
    public static final /* synthetic */ bpe s = new bpe(18);
    public static final /* synthetic */ bpe r = new bpe(17);
    public static final /* synthetic */ bpe q = new bpe(16);
    public static final /* synthetic */ bpe p = new bpe(15);
    public static final /* synthetic */ bpe o = new bpe(14);
    public static final /* synthetic */ bpe n = new bpe(13);
    public static final /* synthetic */ bpe m = new bpe(12);
    public static final /* synthetic */ bpe l = new bpe(11);
    public static final /* synthetic */ bpe k = new bpe(10);
    public static final /* synthetic */ bpe j = new bpe(9);
    public static final /* synthetic */ bpe i = new bpe(8);
    public static final /* synthetic */ bpe h = new bpe(7);
    public static final /* synthetic */ bpe g = new bpe(6);
    public static final /* synthetic */ bpe f = new bpe(5);
    public static final /* synthetic */ bpe e = new bpe(4);
    public static final /* synthetic */ bpe d = new bpe(3);
    public static final /* synthetic */ bpe c = new bpe(2);
    public static final /* synthetic */ bpe b = new bpe(1);
    public static final /* synthetic */ bpe a = new bpe(0);

    private /* synthetic */ bpe(int i2) {
        this.u = i2;
    }

    @Override // defpackage.col
    public final Object a() {
        switch (this.u) {
            case 0:
                ArrayList arrayList = new ArrayList();
                arrayList.add("packageName");
                arrayList.add("user");
                arrayList.add("version");
                arrayList.add("patchable");
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            case 1:
                return 25;
            case 2:
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("packageName");
                arrayList2.add("version");
                arrayList2.add("partitionId");
                arrayList2.add("user");
                arrayList2.add("tag");
                return (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            case 3:
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add("fromPackageName");
                arrayList3.add("fromVersion");
                arrayList3.add("fromUser");
                arrayList3.add("toPackageName");
                arrayList3.add("toVersion");
                arrayList3.add("isCommitted");
                arrayList3.add("token");
                arrayList3.add("provenance");
                return (String[]) arrayList3.toArray(new String[arrayList3.size()]);
            case 4:
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add("packageName");
                arrayList4.add("version");
                arrayList4.add("user");
                arrayList4.add("isCommitted");
                arrayList4.add("experimentToken");
                arrayList4.add("serverToken");
                arrayList4.add("configHash");
                arrayList4.add("servingVersion");
                arrayList4.add("tokensTag");
                arrayList4.add("flagsHash");
                return (String[]) arrayList4.toArray(new String[arrayList4.size()]);
            case 5:
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add("packageName");
                arrayList5.add("flagType");
                arrayList5.add("user");
                arrayList5.add("name");
                arrayList5.add("intVal");
                arrayList5.add("boolVal");
                arrayList5.add("floatVal");
                arrayList5.add("stringVal");
                arrayList5.add("extensionVal");
                arrayList5.add("committed");
                return (String[]) arrayList5.toArray(new String[arrayList5.size()]);
            case 6:
                ArrayList arrayList6 = new ArrayList();
                arrayList6.add("flagType");
                arrayList6.add("name");
                arrayList6.add("intVal");
                arrayList6.add("boolVal");
                arrayList6.add("floatVal");
                arrayList6.add("stringVal");
                arrayList6.add("extensionVal");
                return (String[]) arrayList6.toArray(new String[arrayList6.size()]);
            case 7:
                ArrayList arrayList7 = new ArrayList();
                arrayList7.add("packageName");
                arrayList7.add("version");
                arrayList7.add("flagType");
                arrayList7.add("partitionId");
                arrayList7.add("user");
                arrayList7.add("name");
                arrayList7.add("intVal");
                arrayList7.add("boolVal");
                arrayList7.add("floatVal");
                arrayList7.add("stringVal");
                arrayList7.add("extensionVal");
                arrayList7.add("committed");
                return (String[]) arrayList7.toArray(new String[arrayList7.size()]);
            case 8:
                ArrayList arrayList8 = new ArrayList();
                arrayList8.add("packageName");
                arrayList8.add("isolationkey");
                arrayList8.add("namespace");
                arrayList8.add("instance");
                return (String[]) arrayList8.toArray(new String[arrayList8.size()]);
            case 9:
                ArrayList arrayList9 = new ArrayList();
                arrayList9.add("packageName");
                arrayList9.add("packageName");
                arrayList9.add("servingVersion");
                return (String[]) arrayList9.toArray(new String[arrayList9.size()]);
            case 10:
                ArrayList arrayList10 = new ArrayList();
                arrayList10.add("packageName");
                arrayList10.add("logSourceName");
                return (String[]) arrayList10.toArray(new String[arrayList10.size()]);
            case 11:
                ArrayList arrayList11 = new ArrayList();
                arrayList11.add("packageName");
                arrayList11.add("user");
                arrayList11.add("version");
                return (String[]) arrayList11.toArray(new String[arrayList11.size()]);
            case 12:
                ArrayList arrayList12 = new ArrayList();
                arrayList12.add("packageName");
                arrayList12.add("version");
                arrayList12.add("params");
                arrayList12.add("dynamicParams");
                arrayList12.add("weak");
                arrayList12.add("androidPackageName");
                arrayList12.add("isSynced");
                arrayList12.add("serializedDeclarativeRegInfo");
                arrayList12.add("configTier");
                if (bps.a() >= 24) {
                    arrayList12.add("baselineCl");
                }
                arrayList12.add("heterodyneInfo");
                return (String[]) arrayList12.toArray(new String[arrayList12.size()]);
            case 13:
                ArrayList arrayList13 = new ArrayList();
                arrayList13.add("packageName");
                arrayList13.add("experimentId");
                return (String[]) arrayList13.toArray(new String[arrayList13.size()]);
            case 14:
                return bze.a();
            case 15:
                return cns.a;
            case 16:
                return Boolean.valueOf(ActivityManager.isUserAMonkey() ? true : Build.VERSION.SDK_INT < 29 ? ActivityManager.isRunningInTestHarness() : ActivityManager.isRunningInUserTestHarness());
            case 17:
                return new dpi();
            case 18:
                return hi.l(Executors.newSingleThreadScheduledExecutor(cdx.a));
            default:
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                int i2 = runningAppProcessInfo.importance;
                return Boolean.valueOf(runningAppProcessInfo.importance >= 400);
        }
    }
}
