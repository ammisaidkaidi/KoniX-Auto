package defpackage;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuItemClickHandlerImpl implements MenuItemClickDispatcherInterface {
    public final ActionMode.Callback a;
    public final Context b;
    final ArrayList c = new ArrayList();
    final SimpleArrayMap d = new SimpleArrayMap();

    public MenuItemClickHandlerImpl(Context context, ActionMode.Callback callback) {
        this.b = context;
        this.a = callback;
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final void a(MenuPopupPresenterBase koVar) {
        throw null;
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final boolean b(MenuPopupPresenterBase koVar, MenuItem menuItem) {
        throw null;
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final boolean c(MenuPopupPresenterBase koVar, Menu menu) {
        throw null;
    }

    @Override // defpackage.MenuItemClickDispatcherInterface
    public final void d(MenuPopupPresenterBase koVar, Menu menu) {
        throw null;
    }

    public final ActionMode e(MenuPopupPresenterBase koVar) {
        int size = this.c.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ActionModeWrapperCompat krVar = (ActionModeWrapperCompat) this.c.get(NavInstructionTypeEnum);
            if (krVar != null && krVar.b == koVar) {
                return krVar;
            }
        }
        ActionModeWrapperCompat krVar2 = new ActionModeWrapperCompat(this.b, koVar);
        this.c.add(krVar2);
        return krVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Menu f(Menu menu) {
        Menu menu2 = (Menu) this.d.get(menu);
        if (menu2 != null) {
            return menu2;
        }
        MenuWrapperImpl mfVar = new MenuWrapperImpl(this.b, menu);
        this.d.put(menu, mfVar);
        return mfVar;
    }
}
