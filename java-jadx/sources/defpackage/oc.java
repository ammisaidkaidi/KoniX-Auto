package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.widget.ListAdapter;
import android.widget.ListView;

/* compiled from: PG */
/* loaded from: classes.dex */
final class oc implements DialogInterface.OnClickListener, oj {
    jc a;
    final /* synthetic */ ok b;
    private ListAdapter c;
    private CharSequence d;

    public oc(ok okVar) {
        this.b = okVar;
    }

    @Override // defpackage.oj
    public final int a() {
        return 0;
    }

    @Override // defpackage.oj
    public final int b() {
        return 0;
    }

    @Override // defpackage.oj
    public final Drawable c() {
        return null;
    }

    @Override // defpackage.oj
    public final CharSequence d() {
        return this.d;
    }

    @Override // defpackage.oj
    public final void e(ListAdapter listAdapter) {
        this.c = listAdapter;
    }

    @Override // defpackage.oj
    public final void f(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.oj
    public final void g(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.oj
    public final void h(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.oj
    public final void i(CharSequence charSequence) {
        this.d = charSequence;
    }

    @Override // defpackage.oj
    public final void j(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.oj
    public final void k() {
        jc jcVar = this.a;
        if (jcVar != null) {
            jcVar.dismiss();
            this.a = null;
        }
    }

    @Override // defpackage.oj
    public final void l(int i, int i2) {
        if (this.c == null) {
            return;
        }
        Context context = this.b.a;
        int a = jc.a(context, 0);
        iy iyVar = new iy(new ContextThemeWrapper(context, jc.a(context, a)));
        CharSequence charSequence = this.d;
        if (charSequence != null) {
            iyVar.d = charSequence;
        }
        ListAdapter listAdapter = this.c;
        int selectedItemPosition = this.b.getSelectedItemPosition();
        iyVar.g = listAdapter;
        iyVar.h = this;
        iyVar.j = selectedItemPosition;
        iyVar.i = true;
        jc d = hj.d(iyVar, a);
        this.a = d;
        ListView listView = d.a.e;
        listView.setTextDirection(i);
        listView.setTextAlignment(i2);
        this.a.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.setSelection(i);
        if (this.b.getOnItemClickListener() != null) {
            this.b.performItemClick(null, i, this.c.getItemId(i));
        }
        k();
    }

    @Override // defpackage.oj
    public final boolean u() {
        jc jcVar = this.a;
        if (jcVar != null) {
            return jcVar.isShowing();
        }
        return false;
    }
}
