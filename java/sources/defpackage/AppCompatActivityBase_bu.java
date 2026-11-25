package defpackage;

import android.os.Handler;
import android.view.View;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AppCompatActivityBase_bu extends FragmentActivityContainer implements ViewModelStoreOwner, to, tz, aex, cu {
    final /* synthetic */ FragmentHostCallbacksImpl a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatActivityBase_bu(FragmentHostCallbacksImpl bvVar) {
        super(bvVar, bvVar, new Handler());
        this.a = bvVar;
    }

    @Override // defpackage.LifecycleOwner
    public final LifecycleRegistry C() {
        return this.a.e;
    }

    @Override // defpackage.SavedStateRegistryOwner
    public final SavedStateRegistry D() {
        return this.a.D();
    }

    @Override // defpackage.FragmentActivityContainer, defpackage.AbstractFragmentContainer
    public final View a(int i) {
        return this.a.findViewById(NavInstructionTypeEnum);
    }

    @Override // defpackage.ViewModelStoreOwner
    public final ViewModelStoreWithMigrationMap ai() {
        return this.a.ai();
    }

    @Override // defpackage.FragmentActivityContainer, defpackage.AbstractFragmentContainer
    public final boolean b() {
        Window window = this.a.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // defpackage.FragmentContainerMarker
    public final void c() {
    }
}
