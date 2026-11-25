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
public final class lk implements AdapterView.OnItemClickListener, mc {
    Context a;
    public LayoutInflater b;
    lo c;
    public ExpandedMenuView d;
    public mb e;
    public lj f;

    public lk(Context context) {
        this.a = context;
        this.b = LayoutInflater.from(context);
    }

    public final ListAdapter a() {
        if (this.f == null) {
            this.f = new lj(this);
        }
        return this.f;
    }

    @Override // defpackage.mc
    public final void b(Context context, lo loVar) {
        if (this.a != null) {
            this.a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = loVar;
        lj ljVar = this.f;
        if (ljVar != null) {
            ljVar.notifyDataSetChanged();
        }
    }

    @Override // defpackage.mc
    public final void c(lo loVar, boolean z) {
        mb mbVar = this.e;
        if (mbVar != null) {
            mbVar.a(loVar, z);
        }
    }

    @Override // defpackage.mc
    public final void d(mb mbVar) {
        throw null;
    }

    @Override // defpackage.mc
    public final boolean e() {
        return false;
    }

    @Override // defpackage.mc
    public final boolean f(mk mkVar) {
        if (!mkVar.hasVisibleItems()) {
            return false;
        }
        lp lpVar = new lp(mkVar);
        lo loVar = lpVar.a;
        Context context = loVar.a;
        int a = jc.a(context, 0);
        iy iyVar = new iy(new ContextThemeWrapper(context, jc.a(context, a)));
        lpVar.c = new lk(iyVar.a);
        lk lkVar = lpVar.c;
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
        lpVar.b = hj.d(iyVar, a);
        lpVar.b.setOnDismissListener(lpVar);
        WindowManager.LayoutParams attributes = lpVar.b.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        lpVar.b.show();
        mb mbVar = this.e;
        if (mbVar == null) {
            return true;
        }
        mbVar.b(mkVar);
        return true;
    }

    @Override // defpackage.mc
    public final boolean g(lr lrVar) {
        return false;
    }

    @Override // defpackage.mc
    public final boolean h(lr lrVar) {
        return false;
    }

    @Override // defpackage.mc
    public final void i() {
        lj ljVar = this.f;
        if (ljVar != null) {
            ljVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.c.A(this.f.getItem(i), this, 0);
    }
}
