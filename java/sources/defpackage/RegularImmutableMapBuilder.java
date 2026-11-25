package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RegularImmutableMapBuilder extends ImmutableMapBuilderImpl {
    public static final RegularImmutableMapBuilder a = new RegularImmutableMapBuilder();
    private static final long serialVersionUID = 0;

    private RegularImmutableMapBuilder() {
        super(cse.a, 0);
    }

    private Object readResolve() {
        return a;
    }
}
