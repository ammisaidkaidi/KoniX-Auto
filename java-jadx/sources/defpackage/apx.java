package defpackage;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class apx implements aps {
    private static final int[] k = {R.attr.state_ux_restricted};
    public boolean a;
    public final apu b;
    public final ViewGroup c;
    public View d;
    public View e;
    public ImageView f;
    public Switch g;
    public TextView h;
    public TextView i;
    public boolean j;
    private final int l;

    public apx(apu apuVar, ViewGroup viewGroup) {
        this.b = apuVar;
        this.c = viewGroup;
        apuVar.c(this);
        this.l = viewGroup.getContext().getResources().getDimensionPixelSize(R.dimen.car_ui_toolbar_menu_item_icon_size);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b(View view) {
        view.setEnabled(this.b.l);
        int[] iArr = this.b.e() ? k : null;
        if (view instanceof ImageView) {
            ((ImageView) view).setImageState(iArr, true);
        } else if (view instanceof ask) {
            ((ask) view).a(iArr, null);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                b(viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
    
        if (r0 != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        View view;
        View view2 = this.d;
        if (view2 == null) {
            return;
        }
        view2.setId(this.b.f);
        apu apuVar = this.b;
        Drawable drawable = apuVar.i;
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(apuVar.h);
        apu apuVar2 = this.b;
        boolean z3 = apuVar2.d;
        boolean z4 = apuVar2.a;
        if (apuVar2.n && (!apuVar2.c || !this.a)) {
            if (z4 || drawable != null) {
                z = z2;
            }
            this.d.setVisibility(0);
            this.d.setContentDescription(this.b.h);
            if (z4) {
                this.g.setChecked(this.b.m);
                view = this.g;
            } else if (z && drawable != null && z3) {
                Drawable drawable2 = this.b.i;
                int i = this.l;
                drawable2.setBounds(0, 0, i, i);
                this.i.setCompoundDrawables(this.b.i, null, null, null);
                this.i.setText(this.b.h);
                view = this.i;
            } else if (drawable != null) {
                this.f.setImageDrawable(this.b.i);
                view = this.e;
            } else {
                this.h.setText(this.b.h);
                view = this.h;
            }
            View view3 = this.e;
            view3.setVisibility(view == view3 ? 0 : 8);
            TextView textView = this.h;
            textView.setVisibility(view == textView ? 0 : 8);
            TextView textView2 = this.i;
            textView2.setVisibility(view == textView2 ? 0 : 8);
            Switch r4 = this.g;
            r4.setVisibility(view == r4 ? 0 : 8);
            if (!this.j) {
                view = this.d;
            }
            apu apuVar3 = this.b;
            if (!apuVar3.e && drawable != null) {
                apuVar3.i.setTintList(null);
            }
            b(this.d);
            this.d.setActivated(this.b.o);
            apu apuVar4 = this.b;
            if (apuVar4.j != null || apuVar4.a || apuVar4.b) {
                view.setOnClickListener(new View.OnClickListener() { // from class: apv
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        apx.this.b.b();
                    }
                });
                return;
            }
            View view4 = this.d;
            if (view == view4) {
                view4.setOnClickListener(null);
                this.d.setClickable(false);
                return;
            }
            return;
        }
        this.d.setVisibility(8);
    }

    @Override // defpackage.aps
    public final void onMenuItemChanged(apu apuVar) {
        a();
    }
}
