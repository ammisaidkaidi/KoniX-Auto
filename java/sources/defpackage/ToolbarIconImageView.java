package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ToolbarIconImageView extends ImageView {
    public Consumer a;

    public ToolbarIconImageView(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        Consumer consumer = this.a;
        if (consumer != null) {
            consumer.accept(drawable);
        }
    }
}
