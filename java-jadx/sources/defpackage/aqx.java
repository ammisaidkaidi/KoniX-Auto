package defpackage;

import android.content.Context;
import android.widget.TextView;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aqx extends TextView {
    public Consumer a;

    public aqx(Context context) {
        super(context);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        Consumer consumer = this.a;
        if (consumer != null) {
            consumer.accept(charSequence);
        }
    }
}
