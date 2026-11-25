package defpackage;

import java.io.OutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public interface MessageLite extends MessageOrBuilder {
    ProtoParser A();

    MessageLiteBuilder aF();

    void aG(CodedOutputStream dcuVar);

    MessageLiteBuilder aH();

    ByteString e();

    void g(OutputStream outputStream);

    byte[] h();

    int m();
}
