package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ty {
    public Random a = new Random();
    public final Map b = new HashMap();
    public final Map c = new HashMap();
    public final Map d = new HashMap();
    public ArrayList e = new ArrayList();
    public final transient Map f = new HashMap();
    public final Map g = new HashMap();
    public final Bundle h = new Bundle();
    final /* synthetic */ tk i;

    public ty(tk tkVar) {
        this.i = tkVar;
    }

    public final tt a(String str, ub ubVar, ts tsVar) {
        c(str);
        this.f.put(str, new tw(tsVar, ubVar));
        if (this.g.containsKey(str)) {
            Object obj = this.g.get(str);
            this.g.remove(str);
            tsVar.a(obj);
        }
        tr trVar = (tr) this.h.getParcelable(str);
        if (trVar != null) {
            this.h.remove(str);
            tsVar.a(ubVar.a(trVar.a, trVar.b));
        }
        return new tv(this, str);
    }

    public final void b(int i, String str) {
        Map map = this.b;
        Integer valueOf = Integer.valueOf(i);
        map.put(valueOf, str);
        this.c.put(str, valueOf);
    }

    public final void c(String str) {
        if (((Integer) this.c.get(str)) != null) {
            return;
        }
        int nextInt = this.a.nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            if (!this.b.containsKey(Integer.valueOf(i))) {
                b(i, str);
                return;
            }
            nextInt = this.a.nextInt(2147418112);
        }
    }

    public final void d(String str) {
        Integer num;
        if (!this.e.contains(str) && (num = (Integer) this.c.remove(str)) != null) {
            this.b.remove(num);
        }
        this.f.remove(str);
        if (this.g.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.g.get(str));
            this.g.remove(str);
        }
        if (this.h.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + this.h.getParcelable(str));
            this.h.remove(str);
        }
        tx txVar = (tx) this.d.get(str);
        if (txVar != null) {
            ArrayList arrayList = txVar.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                txVar.a.d((zo) arrayList.get(i));
            }
            txVar.b.clear();
            this.d.remove(str);
        }
    }

    public final boolean e(int i, int i2, Intent intent) {
        String str = (String) this.b.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        tw twVar = (tw) this.f.get(str);
        if (twVar == null || twVar.a == null || !this.e.contains(str)) {
            this.g.remove(str);
            this.h.putParcelable(str, new tr(i2, intent));
            return true;
        }
        twVar.a.a(twVar.b.a(i2, intent));
        this.e.remove(str);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(int i, Object obj) {
        czd czdVar;
        Bundle bundle;
        tk tkVar = this.i;
        String[] strArr = (String[]) obj;
        strArr.getClass();
        int length = strArr.length;
        if (length != 0) {
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    String str = strArr[i2];
                    ex.c(str, "permission must be non-null");
                    if (tkVar.checkPermission(str, Process.myPid(), Process.myUid()) != 0) {
                        czdVar = null;
                        break;
                    }
                    i2++;
                } else {
                    int f = dpx.f(strArr.length);
                    if (f < 16) {
                        f = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(f);
                    for (String str2 : strArr) {
                        dnz h = dpx.h(str2, true);
                        linkedHashMap.put(h.a, h.b);
                    }
                    czdVar = new czd(linkedHashMap);
                }
            }
        } else {
            czdVar = new czd(doc.a);
        }
        if (czdVar != null) {
            new Handler(Looper.getMainLooper()).post(new th(this, i, czdVar, null));
            return;
        }
        strArr.getClass();
        Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
        putExtra.getClass();
        if (putExtra.getExtras() != null && putExtra.getExtras().getClassLoader() == null) {
            putExtra.setExtrasClassLoader(tkVar.getClassLoader());
        }
        if (putExtra.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            Bundle bundleExtra = putExtra.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            putExtra.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            bundle = bundleExtra;
        } else {
            bundle = null;
        }
        if (!"androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(putExtra.getAction())) {
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(putExtra.getAction())) {
                tkVar.startActivityForResult(putExtra, i, bundle);
                return;
            }
            ua uaVar = (ua) putExtra.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                tkVar.startIntentSenderForResult(uaVar.a, i, uaVar.b, uaVar.c, uaVar.d, 0, bundle);
                return;
            } catch (IntentSender.SendIntentException e) {
                new Handler(Looper.getMainLooper()).post(new ti(this, i, e));
                return;
            }
        }
        String[] stringArrayExtra = putExtra.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        if (stringArrayExtra == null) {
            stringArrayExtra = new String[0];
        }
        for (String str3 : stringArrayExtra) {
            if (TextUtils.isEmpty(str3)) {
                throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(stringArrayExtra) + " must not contain null or empty values");
            }
        }
        if (tkVar instanceof xo) {
        }
        tkVar.requestPermissions(stringArrayExtra, i);
    }

    public ty() {
    }
}
