package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LinearLayoutCompatChildLayoutParams extends LinearLayoutCompatLayoutParams {

    @ViewDebug.ExportedProperty
    public boolean a;

    @ViewDebug.ExportedProperty
    public int b;

    @ViewDebug.ExportedProperty
    public int c;

    @ViewDebug.ExportedProperty
    public boolean d;

    @ViewDebug.ExportedProperty
    public boolean e;
    public boolean f;

    public LinearLayoutCompatChildLayoutParams() {
        super(-2);
        this.a = false;
    }

    public LinearLayoutCompatChildLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LinearLayoutCompatChildLayoutParams(LinearLayoutCompatChildLayoutParams ncVar) {
        super(ncVar);
        this.a = ncVar.a;
    }

    public LinearLayoutCompatChildLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }
}
