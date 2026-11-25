package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentReuseViolation extends FragmentRuntimeException {
    public FragmentReuseViolation(AndroidxFragment brVar, String str) {
        super(brVar, "Attempting to reuse fragment " + brVar + " with previous ID " + str);
    }
}
