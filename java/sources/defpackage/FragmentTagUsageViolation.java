package defpackage;

import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentTagUsageViolation extends FragmentRuntimeException {
    public FragmentTagUsageViolation(AndroidxFragment brVar, ViewGroup viewGroup) {
        super(brVar, "Attempting to use <fragment> tag to add fragment " + brVar + " to container " + viewGroup);
    }
}
