package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class amn {
    public final AlertDialog.Builder a;
    public final Context b;
    public ViewGroup c;
    public final View.OnApplyWindowInsetsListener d = new View.OnApplyWindowInsetsListener() { // from class: amm
        @Override // android.view.View.OnApplyWindowInsetsListener
        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            if (Build.VERSION.SDK_INT < 30) {
                return view.onApplyWindowInsets(windowInsets);
            }
            if (!windowInsets.isVisible(WindowInsets.Type.ime())) {
                return view.onApplyWindowInsets(windowInsets);
            }
            new Bundle();
            throw null;
        }
    };
    public final DialogInterface.OnDismissListener e = new DialogInterface.OnDismissListener() { // from class: aml
        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            ViewGroup viewGroup = amn.this.c;
            if (viewGroup != null) {
                viewGroup.setOnApplyWindowInsetsListener(null);
            }
        }
    };

    public amn(Context context) {
        this.a = new AlertDialog.Builder(context, 0);
        this.b = context;
    }
}
