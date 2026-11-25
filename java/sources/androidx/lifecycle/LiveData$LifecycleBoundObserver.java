package androidx.lifecycle;

import defpackage.LoadCompleteListener;
import defpackage.LifecycleEvent;
import defpackage.LifecycleState;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;
import defpackage.LiveDataObserverWrapper;
import defpackage.LiveData;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LiveData$LifecycleBoundObserver extends LiveDataObserverWrapper implements DefaultLifecycleObserverInterface {
    final LifecycleOwner a;
    final /* synthetic */ LiveData b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveData$LifecycleBoundObserver(LiveData zyVar, LifecycleOwner zqVar, LoadCompleteListener aaaVar) {
        super(zyVar, aaaVar);
        this.b = zyVar;
        this.a = zqVar;
    }

    @Override // defpackage.DefaultLifecycleObserverInterface
    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
        LifecycleState zmVar = this.a.C().a;
        if (zmVar == zm.DESTROYED) {
            this.b.f(this.c);
            return;
        }
        LifecycleState zmVar2 = null;
        while (zmVar2 != zmVar) {
            d(g());
            zmVar2 = zmVar;
            zmVar = this.a.C().a;
        }
    }

    @Override // defpackage.LiveDataObserverWrapper
    public final void b() {
        this.a.C().d(this);
    }

    @Override // defpackage.LiveDataObserverWrapper
    public final boolean c(LifecycleOwner zqVar) {
        return this.a == zqVar;
    }

    @Override // defpackage.LiveDataObserverWrapper
    public final boolean g() {
        return this.a.C().a.a(zm.STARTED);
    }
}
