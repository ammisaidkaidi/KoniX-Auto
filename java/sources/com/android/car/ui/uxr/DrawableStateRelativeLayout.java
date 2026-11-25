package com.android.car.ui.uxr;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.android.car.ui.uxr.DrawableStateRelativeLayout;
import defpackage.RotaryFocusAreaHelper;
import defpackage.RotaryNudgeListener;
import j$.util.function.Function;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DrawableStateRelativeLayout extends RelativeLayout implements RotaryNudgeListener {
    private RotaryFocusAreaHelper a;

    public DrawableStateRelativeLayout(Context context) {
        super(context);
    }

    @Override // defpackage.RotaryNudgeListener
    public final void a(int[] iArr, int[] iArr2) {
        if (this.a == null) {
            this.a = new RotaryFocusAreaHelper(this);
        }
        this.a.a(iArr, iArr2);
    }

    public final /* synthetic */ int[] b(Integer num) {
        return super.onCreateDrawableState(num.intValue());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.a == null) {
            this.a = new RotaryFocusAreaHelper(this);
        }
        return this.a.b(i, new Function() { // from class: ase
            @Override // j$.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return DrawableStateRelativeLayout.this.b((Integer) obj);
            }

            @Override // j$.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
    }

    public DrawableStateRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DrawableStateRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
