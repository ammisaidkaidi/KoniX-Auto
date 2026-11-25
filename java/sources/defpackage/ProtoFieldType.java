package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ProtoFieldType {
    DOUBLE(ProtoJavaType.DOUBLE, 1),
    FLOAT(ProtoJavaType.FLOAT, 5),
    INT64(ProtoJavaType.LONG, 0),
    UINT64(ProtoJavaType.LONG, 0),
    INT32(ProtoJavaType.INT, 0),
    FIXED64(ProtoJavaType.LONG, 1),
    FIXED32(ProtoJavaType.INT, 5),
    BOOL(ProtoJavaType.BOOLEAN, 0),
    STRING(ProtoJavaType.STRING, 2),
    GROUP(ProtoJavaType.MESSAGE, 3),
    MESSAGE(ProtoJavaType.MESSAGE, 2),
    BYTES(ProtoJavaType.BYTE_STRING, 2),
    UINT32(ProtoJavaType.INT, 0),
    ENUM(ProtoJavaType.ENUM, 0),
    SFIXED32(ProtoJavaType.INT, 5),
    SFIXED64(ProtoJavaType.LONG, 1),
    SINT32(ProtoJavaType.INT, 0),
    SINT64(ProtoJavaType.LONG, 0);

    public final ProtoJavaType s;
    public final int t;

    dgc(ProtoJavaType dgdVar, int i) {
        this.s = dgdVar;
        this.t = i;
    }
}
