package defpackage;

import android.view.View;
import com.google.android.gms.common.api.Status;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class hq {
    static CharSequence a(View view) {
        return view.getStateDescription();
    }

    static void b(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }

    public static String c(List list, Object obj) {
        StringBuilder sb = new StringBuilder(100);
        sb.append(obj.getClass().getSimpleName());
        sb.append('{');
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append((String) list.get(i));
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public static void d(String str, Object obj, List list) {
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(valueOf).length());
        sb.append(str);
        sb.append("=");
        sb.append(valueOf);
        list.add(sb.toString());
    }

    public static void e(Status status, brk brkVar) {
        f(status, null, brkVar);
    }

    public static void f(Status status, Object obj, brk brkVar) {
        if (status.b()) {
            brkVar.a(obj);
        } else {
            brkVar.a.i(new bjz(status));
        }
    }
}
