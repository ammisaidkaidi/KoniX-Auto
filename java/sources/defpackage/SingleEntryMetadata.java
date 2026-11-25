package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SingleEntryMetadata extends LogMetadata {
    public static final SingleEntryMetadata a = new SingleEntryMetadata();

    private SingleEntryMetadata() {
    }

    @Override // defpackage.LogMetadata
    public final int b() {
        return 0;
    }

    @Override // defpackage.LogMetadata
    public final MetadataKey c(int i) {
        throw new IndexOutOfBoundsException("cannot read from empty metadata");
    }

    @Override // defpackage.LogMetadata
    public final Object d(MetadataKey cttVar) {
        return null;
    }

    @Override // defpackage.LogMetadata
    public final Object e(int i) {
        throw new IndexOutOfBoundsException("cannot read from empty metadata");
    }
}
