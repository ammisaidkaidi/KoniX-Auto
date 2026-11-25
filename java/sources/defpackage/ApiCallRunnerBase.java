package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ApiCallRunnerBase extends ApiCallTaskBase {
    public ApiCallRunnerBase(int i) {
        super(NavInstructionTypeEnum);
    }

    public abstract boolean a(GoogleApiManagerClientQueue bljVar);

    public abstract ApiAvailabilityVersionInfo[] b(GoogleApiManagerClientQueue bljVar);
}
