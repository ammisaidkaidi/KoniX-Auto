package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dlp implements dlo {
    public static final cei a;

    static {
        ceg b = new ceg().b();
        b.e("ApiService__thread_count", 2L);
        a = b.e("ApiService__timeout_to_close_db_in_seconds", 60L);
    }

    @Override // defpackage.dlo
    public final long a() {
        return ((Long) a.c()).longValue();
    }
}
