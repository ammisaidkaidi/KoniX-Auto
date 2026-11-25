package androidx.lifecycle;

import defpackage.aaa;
import defpackage.zl;
import defpackage.zm;
import defpackage.zo;
import defpackage.zq;
import defpackage.zx;
import defpackage.zy;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LiveData$LifecycleBoundObserver extends zx implements zo {
    final zq a;
    final /* synthetic */ zy b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$LifecycleBoundObserver(zy zyVar, zq zqVar, aaa aaaVar) {
        super(zyVar, aaaVar);
        this.b = zyVar;
        this.a = zqVar;
    }

    @Override // defpackage.zo
    public final void a(zq zqVar, zl zlVar) {
        zm zmVar = this.a.C().a;
        if (zmVar == zm.DESTROYED) {
            this.b.f(this.c);
            return;
        }
        zm zmVar2 = null;
        while (zmVar2 != zmVar) {
            d(g());
            zmVar2 = zmVar;
            zmVar = this.a.C().a;
        }
    }

    @Override // defpackage.zx
    public final void b() {
        this.a.C().d(this);
    }

    @Override // defpackage.zx
    public final boolean c(zq zqVar) {
        return this.a == zqVar;
    }

    @Override // defpackage.zx
    public final boolean g() {
        return this.a.C().a.a(zm.STARTED);
    }
}
