package defpackage;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aia {
    final Context a;
    final ajp b;
    final agf c;
    final WorkDatabase d;
    final String e;
    List f;
    final amh g;

    public aia(Context context, agf agfVar, amh amhVar, ajp ajpVar, WorkDatabase workDatabase, String str) {
        new fw();
        this.a = context.getApplicationContext();
        this.g = amhVar;
        this.b = ajpVar;
        this.c = agfVar;
        this.d = workDatabase;
        this.e = str;
    }
}
