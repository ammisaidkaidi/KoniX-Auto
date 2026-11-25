package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahi extends fv {
    private static final String f = agr.b("WorkContinuationImpl");
    public final ahx a;
    public final String b;
    public final List c;
    public final List d;
    public boolean e;
    private final List g = new ArrayList();
    private agv h;

    public ahi(ahx ahxVar, String str, List list) {
        this.a = ahxVar;
        this.b = str;
        this.c = list;
        this.d = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            String a = ((agy) list.get(i)).a();
            this.d.add(a);
            this.g.add(a);
        }
    }

    public static Set L() {
        return new HashSet();
    }

    public final void M() {
        if (this.e) {
            agr.a();
            agr.g(f, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.d)), new Throwable[0]);
        } else {
            alb albVar = new alb(this);
            this.a.i.a(albVar);
            this.h = albVar.a;
        }
    }
}
