package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ProtoMapFieldBase {
    protected volatile MessageLite a;
    public volatile ByteString b;

    static {
        ExtensionRegistryLite.a();
    }

    public final ByteString a() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b != null) {
                return this.b;
            }
            if (this.a == null) {
                this.b = dcl.b;
            } else {
                this.b = this.a.e();
            }
            return this.b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProtoMapFieldBase)) {
            return false;
        }
        ProtoMapFieldBase deaVar = (ProtoMapFieldBase) obj;
        MessageLite derVar = this.a;
        MessageLite derVar2 = deaVar.a;
        return (derVar == null && derVar2 == null) ? a().equals(deaVar.a()) : (derVar == null || derVar2 == null) ? derVar != null ? derVar.equals(deaVar.b(derVar.j())) : b(derVar2.j()).equals(derVar2) : derVar.equals(derVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final MessageLite b(MessageLite derVar) {
        if (this.a == null) {
            synchronized (this) {
                if (this.a == null) {
                    try {
                        this.a = derVar;
                        this.b = dcl.b;
                    } catch (InvalidProtocolBufferException e) {
                        this.a = derVar;
                        this.b = dcl.b;
                    }
                }
            }
        }
        return this.a;
    }
}
