package defpackage;

import android.content.Context;
import android.support.v7.view.menu.ExpandedMenuView;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListAdapter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuItemClickForwarder implements AdapterView.OnItemClickListener, mc {
    Context a;
    public LayoutInflater b;
    MenuBuilderImpl c;
    public ExpandedMenuView d;
    public MenuPopupCallbackInterface e;
    public MenuAdapterBase f;

    public MenuItemClickForwarder(Context context) {
        this.a = context;
        this.b = LayoutInflater.from(context);
    }

    public final ListAdapter a() {
        if (this.f == null) {
            this.f = new MenuAdapterBase(this);
        }
        return this.f;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void b(Context context, MenuBuilderImpl loVar) {
        if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = loVar;
        MenuAdapterBase ljVar = this.f;
        if (ljVar != null) {
            ljVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.MenuPresenterInterface
    public final void c(MenuBuilderImpl loVar, boolean z) {
        MenuPopupCallbackInterface mbVar = this.e;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.MenuPresenterInterface
    public final void d(MenuPopupCallbackInterface mbVar) {
        throw null;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean e() {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean f(SubMenuBuilder mkVar) {
        if (!mkVar.hasVisibleItems()) {
            return false;
        }
        DialogMenuListeners lpVar = new DialogMenuListeners(mkVar);
        MenuBuilderImpl loVar = lpVar.a;
        Context context = loVar.a;
        int a = AppCompatAlertDialog.a(context, 0);
        AlertDialogBuilderParams iyVar = new AlertDialogBuilderParams(new ContextThemeWrapper(context, AppCompatAlertDialog.a(context, a)));
        lpVar.c = new MenuItemClickForwarder(iyVar.a);
        MenuItemClickForwarder lkVar = lpVar.c;
        lkVar.e = lpVar;
        lpVar.a.g(lkVar);
        iyVar.g = lpVar.c.a();
        iyVar.h = lpVar;
        View view = loVar.g;
        if (view != null) {
            iyVar.e = view;
        } else {
            iyVar.c = loVar.f;
            iyVar.d = loVar.e;
        }
        iyVar.f = lpVar;
        lpVar.b = AlertDialogAndInsetsApiHelper.d(iyVar, a);
        lpVar.b.setOnDismissListener(lpVar);
        WindowManager.LayoutParams attributes = lpVar.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        lpVar.b.show();
        MenuPopupCallbackInterface mbVar = this.e;
        if (mbVar == null) {
            return true;
        }
        mbVar.b(mkVar);
        return true;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean g(MenuItemImpl lrVar) {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final boolean h(MenuItemImpl lrVar) {
        return false;
    }

    @Override // defpackage.MenuPresenterInterface
    public final void i() {
        MenuAdapterBase ljVar = this.f;
        if (ljVar != null) {
            ljVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.c.A(this.f.getItem(NavInstructionTypeEnum), this, 0);
    }
}
