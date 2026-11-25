package defpackage;

import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LooperHandlerHolder {
    public static final LooperHandlerHolder a = new LooperHandlerFactoryBuilder().a();
    public final Looper b;
    public final ViewCompatApi26Statics c;

    public LooperHandlerHolder(ViewCompatApi26Statics hoVar, Looper looper, byte[] bArr) {
        this.c = hoVar;
        this.b = looper;
    }
}
