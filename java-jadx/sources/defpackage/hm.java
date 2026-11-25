package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class hm {
    static void a(View view, int i, int i2) {
        view.setScrollIndicators(i, 3);
    }

    public static void b(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof tc) {
                editorInfo.hintText = ((tc) parent).a();
                return;
            }
        }
    }

    public static bhs c(Context context) {
        return new bhy(context);
    }

    public static boa d(String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        for (int i = 0; i <= 0; i++) {
            String str = strArr[i];
            if (sb.length() > 1) {
                sb.append(",");
            }
            sb.append(str);
        }
        sb.append("] ");
        return new boa(sb.toString());
    }
}
