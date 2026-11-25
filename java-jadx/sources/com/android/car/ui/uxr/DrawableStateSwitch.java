package com.android.car.ui.uxr;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Switch;
import com.android.car.ui.uxr.DrawableStateSwitch;
import defpackage.asj;
import defpackage.ask;
import j$.util.function.Function;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DrawableStateSwitch extends Switch implements ask {
    private asj a;

    public DrawableStateSwitch(Context context) {
        super(context);
    }

    @Override // defpackage.ask
    public final void a(int[] iArr, int[] iArr2) {
        if (this.a == null) {
            this.a = new asj(this);
        }
        this.a.a(iArr, iArr2);
    }

    public final /* synthetic */ int[] b(Integer num) {
        return super.onCreateDrawableState(num.intValue());
    }

    @Override // android.widget.Switch, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.a == null) {
            this.a = new asj(this);
        }
        return this.a.b(i, new Function() { // from class: asf
            @Override // j$.util.function.Function
            public final /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return DrawableStateSwitch.this.b((Integer) obj);
            }

            @Override // j$.util.function.Function
            public final /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
    }

    public DrawableStateSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DrawableStateSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
