package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class LogContextBase {
    public static final LogContextBase c = new EmptyLogContext();

    public abstract int a();

    public abstract Set b();

    public abstract void c(KeyValueHandlerBase cunVar, Object obj);
}
