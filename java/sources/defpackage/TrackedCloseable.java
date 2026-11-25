package defpackage;

import java.io.Closeable;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
interface TrackedCloseable extends Closeable {
    TrackedCloseable a();

    String b();

    UUID c();

    TrackedCloseable f(String str, FreezableConfigState cniVar);
}
