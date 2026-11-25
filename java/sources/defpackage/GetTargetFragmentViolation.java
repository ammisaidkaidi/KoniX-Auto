package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GetTargetFragmentViolation extends FragmentStrictModeViolationBase {
    public GetTargetFragmentViolation(AndroidxFragment brVar) {
        super(brVar, CommonObjectsAndPreconditionsUtil.d("Attempting to get target fragment from fragment ", brVar));
    }
}
