package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoParserFactory {
    public final MessageLite a;
    public final Object b;
    public final MessageLite c;
    public final ProtoFieldNumber d;

    public ProtoParserFactory() {
    }

    public final ProtoFieldType a() {
        return this.d.c;
    }

    public final void b() {
        boolean z = this.d.d;
    }

    public ProtoParserFactory(MessageLite derVar, Object obj, MessageLite derVar2, ProtoFieldNumber ddjVar) {
        if (derVar == null) {
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }
        if (ddjVar.c == ProtoFieldType.MESSAGE && derVar2 == null) {
            throw new IllegalArgumentException("Null messageDefaultInstance");
        }
        this.a = derVar;
        this.b = obj;
        this.c = derVar2;
        this.d = ddjVar;
    }
}
