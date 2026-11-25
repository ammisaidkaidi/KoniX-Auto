package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class nc extends pu {

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

    public nc() {
        super(-2);
        this.a = false;
    }

    public nc(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public nc(nc ncVar) {
        super(ncVar);
        this.a = ncVar.a;
    }

    public nc(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }
}
