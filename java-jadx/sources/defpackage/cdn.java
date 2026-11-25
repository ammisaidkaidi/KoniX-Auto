package defpackage;

import android.database.ContentObserver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cdn extends ContentObserver {
    final /* synthetic */ cdo a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cdn(cdo cdoVar) {
        super(null);
        this.a = cdoVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.a.c();
    }
}
