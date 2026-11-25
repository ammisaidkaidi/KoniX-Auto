package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontRequestCallable implements Callable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ FontRequestData c;
    final /* synthetic */ int d;

    public FontRequestCallable(String str, Context context, FontRequestData yeVar, int i) {
        this.a = str;
        this.b = context;
        this.c = yeVar;
        this.d = i;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        return yk.a(this.a, this.b, this.c, this.d);
    }
}
