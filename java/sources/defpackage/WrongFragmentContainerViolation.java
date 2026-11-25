package defpackage;

import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WrongFragmentContainerViolation extends FragmentRuntimeException {
    public WrongFragmentContainerViolation(AndroidxFragment brVar, ViewGroup viewGroup) {
        super(brVar, "Attempting to add fragment " + brVar + " to container " + viewGroup + " which is not a FragmentContainerView");
    }
}
