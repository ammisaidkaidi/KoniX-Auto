package defpackage;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class kq implements kn {
    public final ActionMode.Callback a;
    public final Context b;
    final ArrayList c = new ArrayList();
    final vi d = new vi();

    public kq(Context context, ActionMode.Callback callback) {
        this.b = context;
        this.a = callback;
    }

    @Override // defpackage.kn
    public final void a(ko koVar) {
        throw null;
    }

    @Override // defpackage.kn
    public final boolean b(ko koVar, MenuItem menuItem) {
        throw null;
    }

    @Override // defpackage.kn
    public final boolean c(ko koVar, Menu menu) {
        throw null;
    }

    @Override // defpackage.kn
    public final void d(ko koVar, Menu menu) {
        throw null;
    }

    public final ActionMode e(ko koVar) {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            kr krVar = (kr) this.c.get(i);
            if (krVar != null && krVar.b == koVar) {
                return krVar;
            }
        }
        kr krVar2 = new kr(this.b, koVar);
        this.c.add(krVar2);
        return krVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Menu f(Menu menu) {
        Menu menu2 = (Menu) this.d.get(menu);
        if (menu2 != null) {
            return menu2;
        }
        mf mfVar = new mf(this.b, menu);
        this.d.put(menu, mfVar);
        return mfVar;
    }
}
