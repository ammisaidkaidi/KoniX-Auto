package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SetTargetFragmentViolation extends FragmentStrictModeViolationBase {
    public SetTargetFragmentViolation(AndroidxFragment brVar, AndroidxFragment brVar2) {
        super(brVar, "Attempting to set target fragment " + brVar2 + " with request code 0 for fragment " + brVar);
    }
}
