package defpackage;

import android.view.View;
import com.google.android.gms.common.api.Status;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ViewCompatApi28Statics {
    static CharSequence a(View view) {
        return view.getStateDescription();
    }

    static void b(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }

    public static String c(List list, Object obj) {
        StringBuilder sb = new StringBuilder(100);
        StaggeredGridLayoutParams.append(obj.getClass().getSimpleName());
        StaggeredGridLayoutParams.append('{');
        int size = list.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            StaggeredGridLayoutParams.append((String) list.get(NavInstructionTypeEnum));
            if (NavInstructionTypeEnum < size - 1) {
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append('}');
        return StaggeredGridLayoutParams.toString();
    }

    public static void d(String str, Object obj, List list) {
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("=");
        StaggeredGridLayoutParams.append(valueOf);
        list.add(StaggeredGridLayoutParams.toString());
    }

    public static void e(Status status, PreconditionsChecker brkVar) {
        f(status, null, brkVar);
    }

    public static void f(Status status, Object obj, PreconditionsChecker brkVar) {
        if (status.b()) {
            brkVar.a(obj);
        } else {
            brkVar.a.i(new GoogleApiExceptionBase(status));
        }
    }
}
