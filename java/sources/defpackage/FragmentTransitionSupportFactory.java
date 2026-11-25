package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentTransitionSupportFactory {
    static final AbstractReleaseAction a;
    public static final /* synthetic */ int b = 0;

    static {
        AbstractReleaseAction dcVar;
        try {
            dcVar = (AbstractReleaseAction) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            dcVar = null;
        }
        a = dcVar;
    }
}
