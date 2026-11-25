package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesEventLoggerRegistry {
    public static PrimesEventLoggerInterface a;
    public static final Object b = new Object();
    public static boolean c;

    public static boolean a(Context context, PrimesVersionCodeProvider btaVar) {
        return CollectionBasisVerifierFlagsFacade.c() && ((long) btaVar.a(context)) >= CollectionBasisVerifierFlagsFacade.a.a().c();
    }
}
