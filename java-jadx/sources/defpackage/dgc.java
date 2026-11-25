package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum dgc {
    DOUBLE(dgd.DOUBLE, 1),
    FLOAT(dgd.FLOAT, 5),
    INT64(dgd.LONG, 0),
    UINT64(dgd.LONG, 0),
    INT32(dgd.INT, 0),
    FIXED64(dgd.LONG, 1),
    FIXED32(dgd.INT, 5),
    BOOL(dgd.BOOLEAN, 0),
    STRING(dgd.STRING, 2),
    GROUP(dgd.MESSAGE, 3),
    MESSAGE(dgd.MESSAGE, 2),
    BYTES(dgd.BYTE_STRING, 2),
    UINT32(dgd.INT, 0),
    ENUM(dgd.ENUM, 0),
    SFIXED32(dgd.INT, 5),
    SFIXED64(dgd.LONG, 1),
    SINT32(dgd.INT, 0),
    SINT64(dgd.LONG, 0);

    public final dgd s;
    public final int t;

    dgc(dgd dgdVar, int i) {
        this.s = dgdVar;
        this.t = i;
    }
}
