package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ddc {
    DOUBLE(0, 1, ddw.DOUBLE),
    FLOAT(1, 1, ddw.FLOAT),
    INT64(2, 1, ddw.LONG),
    UINT64(3, 1, ddw.LONG),
    INT32(4, 1, ddw.INT),
    FIXED64(5, 1, ddw.LONG),
    FIXED32(6, 1, ddw.INT),
    BOOL(7, 1, ddw.BOOLEAN),
    STRING(8, 1, ddw.STRING),
    MESSAGE(9, 1, ddw.MESSAGE),
    BYTES(10, 1, ddw.BYTE_STRING),
    UINT32(11, 1, ddw.INT),
    ENUM(12, 1, ddw.ENUM),
    SFIXED32(13, 1, ddw.INT),
    SFIXED64(14, 1, ddw.LONG),
    SINT32(15, 1, ddw.INT),
    SINT64(16, 1, ddw.LONG),
    GROUP(17, 1, ddw.MESSAGE),
    DOUBLE_LIST(18, 2, ddw.DOUBLE),
    FLOAT_LIST(19, 2, ddw.FLOAT),
    INT64_LIST(20, 2, ddw.LONG),
    UINT64_LIST(21, 2, ddw.LONG),
    INT32_LIST(22, 2, ddw.INT),
    FIXED64_LIST(23, 2, ddw.LONG),
    FIXED32_LIST(24, 2, ddw.INT),
    BOOL_LIST(25, 2, ddw.BOOLEAN),
    STRING_LIST(26, 2, ddw.STRING),
    MESSAGE_LIST(27, 2, ddw.MESSAGE),
    BYTES_LIST(28, 2, ddw.BYTE_STRING),
    UINT32_LIST(29, 2, ddw.INT),
    ENUM_LIST(30, 2, ddw.ENUM),
    SFIXED32_LIST(31, 2, ddw.INT),
    SFIXED64_LIST(32, 2, ddw.LONG),
    SINT32_LIST(33, 2, ddw.INT),
    SINT64_LIST(34, 2, ddw.LONG),
    DOUBLE_LIST_PACKED(35, 3, ddw.DOUBLE),
    FLOAT_LIST_PACKED(36, 3, ddw.FLOAT),
    INT64_LIST_PACKED(37, 3, ddw.LONG),
    UINT64_LIST_PACKED(38, 3, ddw.LONG),
    INT32_LIST_PACKED(39, 3, ddw.INT),
    FIXED64_LIST_PACKED(40, 3, ddw.LONG),
    FIXED32_LIST_PACKED(41, 3, ddw.INT),
    BOOL_LIST_PACKED(42, 3, ddw.BOOLEAN),
    UINT32_LIST_PACKED(43, 3, ddw.INT),
    ENUM_LIST_PACKED(44, 3, ddw.ENUM),
    SFIXED32_LIST_PACKED(45, 3, ddw.INT),
    SFIXED64_LIST_PACKED(46, 3, ddw.LONG),
    SINT32_LIST_PACKED(47, 3, ddw.INT),
    SINT64_LIST_PACKED(48, 3, ddw.LONG),
    GROUP_LIST(49, 2, ddw.MESSAGE),
    MAP(50, 4, ddw.VOID);

    private static final ddc[] aa;
    public final int Z;

    static {
        ddc[] values = values();
        aa = new ddc[values.length];
        for (ddc ddcVar : values) {
            aa[ddcVar.Z] = ddcVar;
        }
    }

    ddc(int i, int i2, ddw ddwVar) {
        this.Z = i;
        ddw ddwVar2 = ddw.VOID;
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
