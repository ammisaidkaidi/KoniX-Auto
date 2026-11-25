package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AppCompatDialog extends Dialog {
    private AppCompatDelegate a;
    private final SimpleListenerInterfaceGr b;

    public AppCompatDialog(Context context, int i) {
        super(context, a(context, i));
        this.b = new InsetsListenerStubJx(this);
        AppCompatDelegate b = b();
        ((AppCompatDelegateImpl) b).B = a(context, i);
        b.m();
    }

    private static int a(Context context, int i) {
        if (NavInstructionTypeEnum != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        b().c(view, layoutParams);
    }

    public final AppCompatDelegate b() {
        if (this.a == null) {
            this.a = new AppCompatDelegateImpl(getContext(), getWindow(), this);
        }
        return this.a;
    }

    final boolean c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        b().f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        return WorkDataEnumConverters.c(this.b, keyEvent);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        return b().b(NavInstructionTypeEnum);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        b().e();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        b().d();
        super.onCreate(bundle);
        b().m();
    }

    @Override // android.app.Dialog
    protected final void onStop() {
        super.onStop();
        b().g();
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        b().i(NavInstructionTypeEnum);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(NavInstructionTypeEnum);
        b().l(getContext().getString(NavInstructionTypeEnum));
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        b().j(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        b().k(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        b().l(charSequence);
    }
}
