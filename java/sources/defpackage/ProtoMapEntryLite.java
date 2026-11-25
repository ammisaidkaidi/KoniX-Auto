package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoMapEntryLite {
    public final MapEntryMetadata a;

    private ProtoMapEntryLite(ProtoFieldType dgcVar, Object obj, ProtoFieldType dgcVar2, Object obj2) {
        this.a = new MapEntryMetadata(dgcVar, obj, dgcVar2, obj2);
    }

    public static int a(MapEntryMetadata dekVar, Object obj, Object obj2) {
        return MessageFieldReflectionUtil.a(dekVar.a, 1, obj) + MessageFieldReflectionUtil.a(dekVar.c, 2, obj2);
    }

    public static ProtoMapEntryLite b(ProtoFieldType dgcVar, Object obj, ProtoFieldType dgcVar2, Object obj2) {
        return new ProtoMapEntryLite(dgcVar, obj, dgcVar2, obj2);
    }

    static void c(CodedOutputStream dcuVar, MapEntryMetadata dekVar, Object obj, Object obj2) {
        MessageFieldReflectionUtil.g(dcuVar, dekVar.a, 1, obj);
        MessageFieldReflectionUtil.g(dcuVar, dekVar.c, 2, obj2);
    }
}
