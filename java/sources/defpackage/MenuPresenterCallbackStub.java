package defpackage;

import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MenuPresenterCallbackStub implements MenuPopupCallbackInterface {
    final /* synthetic */ AppCompatDelegateImpl a;
    private final /* synthetic */ int b;

    public MenuPresenterCallbackStub(AppCompatDelegateImpl jwVar, int i) {
        this.b = i;
        this.a = jwVar;
    }

    @Override // defpackage.MenuPopupCallbackInterface
    public final void a(MenuBuilderImpl loVar, boolean z) {
        switch (this.b) {
            case 0:
                MenuBuilderImpl a = loVar.a();
                PanelFeatureState s = this.a.s(SingleStringProtoMessage != loVar ? a : loVar);
                if (IcuMessageArgTypeHolder != null) {
                    if (SingleStringProtoMessage == loVar) {
                        this.a.x(s, z);
                        break;
                    } else {
                        this.a.v(s.a, s, a);
                        this.a.x(s, true);
                        break;
                    }
                }
                break;
            default:
                this.a.w(loVar);
                break;
        }
    }

    @Override // defpackage.MenuPopupCallbackInterface
    public final boolean b(MenuBuilderImpl loVar) {
        Window.Callback u;
        switch (this.b) {
            case 0:
                if (loVar == loVar.a()) {
                    AppCompatDelegateImpl jwVar = this.a;
                    if (jwVar.s && (MessagePatternParserHelper = jwVar.u()) != null && !this.a.A) {
                        u.onMenuOpened(108, loVar);
                        break;
                    }
                }
                break;
            default:
                Window.Callback u2 = this.a.u();
                if (u2 != null) {
                    u2.onMenuOpened(108, loVar);
                    break;
                }
                break;
        }
        return true;
    }
}
