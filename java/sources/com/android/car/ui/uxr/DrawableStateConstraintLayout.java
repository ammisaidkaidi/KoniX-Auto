package com.android.car.ui.uxr;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.car.ui.uxr.DrawableStateConstraintLayout;
import defpackage.RotaryFocusAreaHelper;
import defpackage.RotaryNudgeListener;
import j$.util.function.Function;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DrawableStateConstraintLayout extends ConstraintLayout implements RotaryNudgeListener {
    private RotaryFocusAreaHelper h;

    public DrawableStateConstraintLayout(Context context) {
        super(context);
    }

    @Override // defpackage.RotaryNudgeListener
    public final void a(int[] iArr, int[] iArr2) {
        if (this.h == null) {
            this.h = new RotaryFocusAreaHelper(this);
        }
        this.h.a(iArr, iArr2);
    }

    public final /* synthetic */ int[] e(Integer num) {
        return super.onCreateDrawableState(num.intValue());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.h == null) {
            this.h = new RotaryFocusAreaHelper(this);
        }
        return this.h.b(i, new Function() { // from class: asa
            @Override // j$.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return DrawableStateConstraintLayout.this.e((Integer) obj);
            }

            @Override // j$.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
    }

    public DrawableStateConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DrawableStateConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
