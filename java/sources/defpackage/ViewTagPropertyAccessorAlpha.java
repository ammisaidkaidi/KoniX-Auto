package defpackage;

import android.view.View;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewTagPropertyAccessorAlpha extends ViewTagPropertyAccessorBase {
    public ViewTagPropertyAccessorAlpha(Class cls) {
        super(R.id.tag_screen_reader_focusable, cls);
    }

    @Override // defpackage.ViewTagPropertyAccessorBase
    public final /* bridge */ /* synthetic */ Object a(View view) {
        return Boolean.valueOf(ViewCompatApi26Statics.c(view));
    }
}
