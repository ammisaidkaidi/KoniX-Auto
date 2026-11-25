package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ProtoMsgWithAndroidBuildData extends GeneratedMessageLite implements MessageOrBuilder {
    public MessageFieldReflectionUtil d = ddb.a;

    public final MessageFieldReflectionUtil c() {
        MessageFieldReflectionUtil ddbVar = this.d;
        if (ddbVar.c) {
            this.d = ddbVar.clone();
        }
        return this.d;
    }

    public final void k(ProtoParserFactory dcxVar) {
        if (dcxVar.a != ((GeneratedMessageLite) E(6))) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
    }
}
