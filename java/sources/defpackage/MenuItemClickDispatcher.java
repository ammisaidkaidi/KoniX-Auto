package defpackage;

import android.view.Menu;
import android.view.MenuItem;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MenuItemClickDispatcher implements MenuItemClickDispatcherInterface {
    final /* synthetic */ AppCompatDelegateImpl a;
    private final MenuItemClickDispatcherInterface b;

    public MenuItemClickDispatcher(AppCompatDelegateImpl jwVar, MenuItemClickDispatcherInterface knVar) {
        this.a = jwVar;
        this.b = knVar;
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final void a(MenuPopupPresenterBase koVar) {
        MenuItemClickHandlerImpl kqVar = (MenuItemClickHandlerImpl) this.b;
        kqVar.a.onDestroyActionMode(kqVar.e(koVar));
        AppCompatDelegateImpl jwVar = this.a;
        if (jwVar.m != null) {
            jwVar.g.getDecorView().removeCallbacks(this.a.n);
        }
        AppCompatDelegateImpl jwVar2 = this.a;
        if (jwVar2.l != null) {
            jwVar2.z();
            AppCompatDelegateImpl jwVar3 = this.a;
            WeakViewAnimator O = ViewCompatAccessibilityStatics.O(jwVar3.l);
            O.b(0.0f);
            jwVar3.G = O;
            this.a.G.d(new ViewPropertyAnimatorAdapterGamma(this));
        }
        AppCompatDelegateImpl jwVar4 = this.a;
        jwVar4.k = null;
        ViewCompatAccessibilityStatics.t(jwVar4.q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.MenuItemClickDispatcherInterface
    public final boolean b(MenuPopupPresenterBase koVar, MenuItem menuItem) {
        MenuItemClickHandlerImpl kqVar = (MenuItemClickHandlerImpl) this.b;
        return kqVar.a.onActionItemClicked(kqVar.e(koVar), new MenuItemWrapperBase(kqVar.b, menuItem));
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final boolean c(MenuPopupPresenterBase koVar, Menu menu) {
        MenuItemClickHandlerImpl kqVar = (MenuItemClickHandlerImpl) this.b;
        return kqVar.a.onCreateActionMode(kqVar.e(koVar), kqVar.f(menu));
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final void d(MenuPopupPresenterBase koVar, Menu menu) {
        ViewCompatAccessibilityStatics.t(this.a.q);
        MenuItemClickHandlerImpl kqVar = (MenuItemClickHandlerImpl) this.b;
        kqVar.a.onPrepareActionMode(kqVar.e(koVar), kqVar.f(menu));
    }
}
