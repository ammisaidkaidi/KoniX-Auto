package defpackage;

import android.view.View;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewTagPropertyAccessorDelta extends ViewTagPropertyAccessorBase {
    public ViewTagPropertyAccessorDelta(Class cls) {
        super(R.id.tag_accessibility_heading, cls);
    }

    @Override // defpackage.ViewTagPropertyAccessorBase
    public final /* bridge */ /* synthetic */ Object a(View view) {
        return Boolean.valueOf(ViewCompatApi26Statics.b(view));
    }
}
