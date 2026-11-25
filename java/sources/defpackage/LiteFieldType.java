package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum LiteFieldType {
    DOUBLE(0, 1, LiteJavaType.DOUBLE),
    FLOAT(1, 1, LiteJavaType.FLOAT),
    INT64(2, 1, LiteJavaType.LONG),
    UINT64(3, 1, LiteJavaType.LONG),
    INT32(4, 1, LiteJavaType.INT),
    FIXED64(5, 1, LiteJavaType.LONG),
    FIXED32(6, 1, LiteJavaType.INT),
    BOOL(7, 1, LiteJavaType.BOOLEAN),
    STRING(8, 1, LiteJavaType.STRING),
    MESSAGE(9, 1, LiteJavaType.MESSAGE),
    BYTES(10, 1, LiteJavaType.BYTE_STRING),
    UINT32(11, 1, LiteJavaType.INT),
    ENUM(12, 1, LiteJavaType.ENUM),
    SFIXED32(13, 1, LiteJavaType.INT),
    SFIXED64(14, 1, LiteJavaType.LONG),
    SINT32(15, 1, LiteJavaType.INT),
    SINT64(16, 1, LiteJavaType.LONG),
    GROUP(17, 1, LiteJavaType.MESSAGE),
    DOUBLE_LIST(18, 2, LiteJavaType.DOUBLE),
    FLOAT_LIST(19, 2, LiteJavaType.FLOAT),
    INT64_LIST(20, 2, LiteJavaType.LONG),
    UINT64_LIST(21, 2, LiteJavaType.LONG),
    INT32_LIST(22, 2, LiteJavaType.INT),
    FIXED64_LIST(23, 2, LiteJavaType.LONG),
    FIXED32_LIST(24, 2, LiteJavaType.INT),
    BOOL_LIST(25, 2, LiteJavaType.BOOLEAN),
    STRING_LIST(26, 2, LiteJavaType.STRING),
    MESSAGE_LIST(27, 2, LiteJavaType.MESSAGE),
    BYTES_LIST(28, 2, LiteJavaType.BYTE_STRING),
    UINT32_LIST(29, 2, LiteJavaType.INT),
    ENUM_LIST(30, 2, LiteJavaType.ENUM),
    SFIXED32_LIST(31, 2, LiteJavaType.INT),
    SFIXED64_LIST(32, 2, LiteJavaType.LONG),
    SINT32_LIST(33, 2, LiteJavaType.INT),
    SINT64_LIST(34, 2, LiteJavaType.LONG),
    DOUBLE_LIST_PACKED(35, 3, LiteJavaType.DOUBLE),
    FLOAT_LIST_PACKED(36, 3, LiteJavaType.FLOAT),
    INT64_LIST_PACKED(37, 3, LiteJavaType.LONG),
    UINT64_LIST_PACKED(38, 3, LiteJavaType.LONG),
    INT32_LIST_PACKED(39, 3, LiteJavaType.INT),
    FIXED64_LIST_PACKED(40, 3, LiteJavaType.LONG),
    FIXED32_LIST_PACKED(41, 3, LiteJavaType.INT),
    BOOL_LIST_PACKED(42, 3, LiteJavaType.BOOLEAN),
    UINT32_LIST_PACKED(43, 3, LiteJavaType.INT),
    ENUM_LIST_PACKED(44, 3, LiteJavaType.ENUM),
    SFIXED32_LIST_PACKED(45, 3, LiteJavaType.INT),
    SFIXED64_LIST_PACKED(46, 3, LiteJavaType.LONG),
    SINT32_LIST_PACKED(47, 3, LiteJavaType.INT),
    SINT64_LIST_PACKED(48, 3, LiteJavaType.LONG),
    GROUP_LIST(49, 2, LiteJavaType.MESSAGE),
    MAP(50, 4, LiteJavaType.VOID);

    private static final LiteFieldType[] aa;
    public final int Z;

    static {
        LiteFieldType[] values = values();
        aa = new LiteFieldType[values.length];
        for (LiteFieldType ddcVar : values) {
            aa[ddcVar.Z] = ddcVar;
        }
    }

    ddc(int i, int i2, LiteJavaType ddwVar) {
        this.Z = i;
        LiteJavaType ddwVar2 = LiteJavaType.VOID;
        switch (i2 - 1) {
            case 1:
            case 3:
                Class cls = ddwVar.k;
                break;
        }
        if (i2 == 1) {
            ddwVar.ordinal();
        }
    }
}
