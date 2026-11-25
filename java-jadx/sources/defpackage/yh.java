package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yh implements Callable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ ye c;
    final /* synthetic */ int d;

    public yh(String str, Context context, ye yeVar, int i) {
        this.a = str;
        this.b = context;
        this.c = yeVar;
        this.d = i;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final yj call() {
        try {
            return yk.a(this.a, this.b, this.c, this.d);
        } catch (Throwable th) {
            return new yj(-3);
        }
    }
}
