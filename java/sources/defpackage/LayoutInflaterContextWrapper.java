package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import defpackage.LayoutInflaterContextWrapper;
import defpackage.LifecycleEvent;
import defpackage.LifecycleOwner;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LayoutInflaterContextWrapper extends ContextWrapper {
    public AndroidxFragment a;
    public LayoutInflater b;
    public LayoutInflater c;
    private final DefaultLifecycleObserverInterface d;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public LayoutInflaterContextWrapper(Context context, AndroidxFragment brVar) {
        super(context);
        CommonObjectsAndPreconditionsUtil.p(context);
        DefaultLifecycleObserverInterface zoVar = new DefaultLifecycleObserverInterface() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1
            @Override // defpackage.DefaultLifecycleObserverInterface
            public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                if (zlVar == zl.ON_DESTROY) {
                    LayoutInflaterContextWrapper dhpVar = LayoutInflaterContextWrapper.this;
                    dhpVar.a = null;
                    dhpVar.b = null;
                    dhpVar.c = null;
                }
            }
        };
        this.d = zoVar;
        this.b = null;
        this.a = brVar;
        brVar.ac.b(zoVar);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.c == null) {
            if (this.b == null) {
                this.b = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
            }
            this.c = this.b.cloneInContext(this);
        }
        return this.c;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public LayoutInflaterContextWrapper(LayoutInflater layoutInflater, AndroidxFragment brVar) {
        super(r0);
        CommonObjectsAndPreconditionsUtil.p(layoutInflater);
        Context context = layoutInflater.getContext();
        CommonObjectsAndPreconditionsUtil.p(context);
        DefaultLifecycleObserverInterface zoVar = new DefaultLifecycleObserverInterface() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper$1
            @Override // defpackage.DefaultLifecycleObserverInterface
            public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                if (zlVar == zl.ON_DESTROY) {
                    LayoutInflaterContextWrapper dhpVar = LayoutInflaterContextWrapper.this;
                    dhpVar.a = null;
                    dhpVar.b = null;
                    dhpVar.c = null;
                }
            }
        };
        this.d = zoVar;
        this.b = layoutInflater;
        this.a = brVar;
        brVar.ac.b(zoVar);
    }
}
