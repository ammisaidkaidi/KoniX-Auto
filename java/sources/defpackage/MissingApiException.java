package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MissingApiException extends UnsupportedOperationException {
    private final ApiAvailabilityVersionInfo a;

    public MissingApiException(ApiAvailabilityVersionInfo bjbVar) {
        this.a = bjbVar;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String valueOf = String.valueOf(this.a);
        String.valueOf(valueOf).length();
        return "Missing ".concat(String.valueOf(valueOf));
    }
}
