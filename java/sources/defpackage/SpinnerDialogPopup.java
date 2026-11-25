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
final class SpinnerDialogPopup implements DialogInterface.OnClickListener, oj {
    AppCompatAlertDialog a;
    final /* synthetic */ AppCompatSpinner b;
    private ListAdapter c;
    private CharSequence d;

    public SpinnerDialogPopup(AppCompatSpinner okVar) {
        this.b = okVar;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final int a() {
        return 0;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final int b() {
        return 0;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final Drawable c() {
        return null;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final CharSequence d() {
        return this.d;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void e(ListAdapter listAdapter) {
        this.c = listAdapter;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void f(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void g(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void h(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void i(CharSequence charSequence) {
        this.d = charSequence;
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void j(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void k() {
        AppCompatAlertDialog jcVar = this.a;
        if (jcVar != null) {
            jcVar.dismiss();
            this.a = null;
        }
    }

    @Override // defpackage.SpinnerPopupInterface
    public final void l(int i, int i2) {
        if (this.c == null) {
            return;
        }
        Context context = this.b.a;
        int a = AppCompatAlertDialog.a(context, 0);
        AlertDialogBuilderParams iyVar = new AlertDialogBuilderParams(new ContextThemeWrapper(context, AppCompatAlertDialog.a(context, a)));
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
        AppCompatAlertDialog d = AlertDialogAndInsetsApiHelper.d(iyVar, a);
        this.a = d;
        ListView listView = d.a.e;
        listView.setTextDirection(NavInstructionTypeEnum);
        listView.setTextAlignment(i2);
        this.a.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.b.setSelection(NavInstructionTypeEnum);
        if (this.b.getOnItemClickListener() != null) {
            this.b.performItemClick(null, i, this.c.getItemId(NavInstructionTypeEnum));
        }
        k();
    }

    @Override // defpackage.SpinnerPopupInterface
    public final boolean u() {
        AppCompatAlertDialog jcVar = this.a;
        if (jcVar != null) {
            return jcVar.isShowing();
        }
        return false;
    }
}
