package defpackage;

import android.app.AppOpsManager;
import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AdapterDataObserver {
    public AdapterDataObserver() {
    }

    public AdapterDataObserver(byte[] bArr) {
    }

    public static int a(Context context, String str, String str2) {
        return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(str, str2);
    }

    public static boolean b(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void onChanged() {
    }

    public void onItemRangeChanged(int i, int i2) {
    }

    public void onItemRangeChanged(int i, int i2, Object obj) {
        onItemRangeChanged(i, i2);
    }

    public void onItemRangeInserted(int i, int i2) {
    }

    public void onItemRangeMoved(int i, int i2, int i3) {
    }

    public void onItemRangeRemoved(int i, int i2) {
    }

    public void onStateRestorationPolicyChanged() {
    }
}
