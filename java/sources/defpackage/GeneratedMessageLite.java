package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class GeneratedMessageLite extends ProtoMessageLiteBase {
    public static final Map r = new ConcurrentHashMap();
    public ProtoFieldDescriptor s = dfr.a;
    protected int t = -1;

    public static Object B(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object C(MessageLite derVar, String str, Object[] objArr) {
        return new MapFieldSchemaLite(derVar, str, objArr);
    }

    protected static void D(Class cls, GeneratedMessageLite ddkVar) {
        r.put(cls, ddkVar);
    }

    public static void F(GeneratedMessageLite ddkVar) {
        if (ddkVar != null && !ddkVar.l()) {
            throw i().a();
        }
    }

    public static GeneratedMessageLite p(GeneratedMessageLite ddkVar, byte[] bArr) {
        GeneratedMessageLite t = t(ddkVar, bArr, 0, bArr.length, ExtensionRegistryLite.a());
        F(IcuLocaleResourceBundle);
        return t;
    }

    public static GeneratedMessageLite q(GeneratedMessageLite ddkVar, InputStream inputStream, ExtensionRegistryLite dczVar) {
        CodedInputStreamReaderBase H = CodedInputStreamReaderBase.H(inputStream);
        GeneratedMessageLite ddkVar2 = (GeneratedMessageLite) ddkVar.E(4);
        try {
            MessageSchema b = MessageInfoImpl.a.b(ddkVar2);
            b.h(ddkVar2, LiteProtoFieldParser.p(H), dczVar);
            b.f(ddkVar2);
            F(ddkVar2);
            return ddkVar2;
        } catch (InvalidProtocolBufferException e) {
            if (e.a) {
                throw new InvalidProtocolBufferException(ProtoFlagValueMessage);
            }
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e2.getCause());
            }
            throw new InvalidProtocolBufferException(e2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw e3;
        }
    }

    public static GeneratedMessageLite r(GeneratedMessageLite ddkVar, byte[] bArr, ExtensionRegistryLite dczVar) {
        GeneratedMessageLite t = t(ddkVar, bArr, 0, bArr.length, dczVar);
        F(IcuLocaleResourceBundle);
        return t;
    }

    static GeneratedMessageLite s(GeneratedMessageLite ddkVar, CodedInputStreamReaderBase dcpVar, ExtensionRegistryLite dczVar) {
        GeneratedMessageLite ddkVar2 = (GeneratedMessageLite) ddkVar.E(4);
        try {
            MessageSchema b = MessageInfoImpl.a.b(ddkVar2);
            b.h(ddkVar2, LiteProtoFieldParser.p(dcpVar), dczVar);
            b.f(ddkVar2);
            return ddkVar2;
        } catch (InvalidProtocolBufferException e) {
            if (e.a) {
                throw new InvalidProtocolBufferException(ProtoFlagValueMessage);
            }
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e2.getCause());
            }
            throw new InvalidProtocolBufferException(e2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw e3;
        }
    }

    public static GeneratedMessageLite t(GeneratedMessageLite ddkVar, byte[] bArr, int i, int i2, ExtensionRegistryLite dczVar) {
        GeneratedMessageLite ddkVar2 = (GeneratedMessageLite) ddkVar.E(4);
        try {
            MessageSchema b = MessageInfoImpl.a.b(ddkVar2);
            b.i(ddkVar2, bArr, i, i + i2, new CodedInputStreamTagReader(dczVar));
            b.f(ddkVar2);
            if (ddkVar2.q == 0) {
                return ddkVar2;
            }
            throw new RuntimeException();
        } catch (InvalidProtocolBufferException e) {
            if (e.a) {
                throw new InvalidProtocolBufferException(ProtoFlagValueMessage);
            }
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e2.getCause());
            }
            throw new InvalidProtocolBufferException(e2);
        } catch (IndexOutOfBoundsException e3) {
            throw InvalidProtocolBufferException.i();
        }
    }

    public static LazyStringList u() {
        return ddl.b;
    }

    public static LazyStringList v(LazyStringList ddpVar) {
        int size = ddpVar.size();
        return ddpVar.d(size == 0 ? 10 : size + size);
    }

    public static ByteStringList w() {
        return deg.b;
    }

    public static ByteStringList x(ByteStringList ddqVar) {
        int size = ddqVar.size();
        return ddqVar.d(size == 0 ? 10 : size + size);
    }

    public static ProtobufList y() {
        return dfa.b;
    }

    public static ProtobufList z(ProtobufList ddrVar) {
        int size = ddrVar.size();
        return ddrVar.d(size == 0 ? 10 : size + size);
    }

    @Override // defpackage.MessageLite
    public final ProtoParser A() {
        return (ProtoParser) E(7);
    }

    public final Object E(int i) {
        return a(i, null);
    }

    protected abstract Object a(int i, Object obj);

    @Override // defpackage.MessageLite
    public final /* synthetic */ MessageLiteBuilder aF() {
        return (ProtoMsgHoldingMessageAndBool) E(5);
    }

    @Override // defpackage.MessageLite
    public final void aG(CodedOutputStream dcuVar) {
        MessageSchema b = MessageInfoImpl.a.b(this);
        ByteStringOutputCollector dcvVar = dcuVar.f;
        if (dcvVar == null) {
            dcvVar = new ByteStringOutputCollector(dcuVar);
        }
        b.l(this, dcvVar);
    }

    @Override // defpackage.MessageLite
    public final /* synthetic */ MessageLiteBuilder aH() {
        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) E(5);
        ddfVar.n(this);
        return ddfVar;
    }

    @Override // defpackage.ProtoMessageLiteBase
    public final int d() {
        return this.t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return MessageInfoImpl.a.b(this).j(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    @Override // defpackage.ProtoMessageLiteBase
    public final void f(int i) {
        this.t = i;
    }

    public final int hashCode() {
        int i = this.q;
        if (NavInstructionTypeEnum != 0) {
            return i;
        }
        int b = MessageInfoImpl.a.b(this).b(this);
        this.q = b;
        return b;
    }

    @Override // defpackage.MessageOrBuilder
    public final /* synthetic */ MessageLite j() {
        return (GeneratedMessageLite) E(6);
    }

    @Override // defpackage.MessageOrBuilder
    public final boolean l() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) E(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean k = MessageInfoImpl.a.b(this).k(this);
        if (!booleanValue) {
            return k;
        }
        a(2, true != k ? null : this);
        return k;
    }

    @Override // defpackage.MessageLite
    public final int m() {
        int i = this.t;
        if (NavInstructionTypeEnum != -1) {
            return i;
        }
        int a = MessageInfoImpl.a.b(this).a(this);
        this.t = a;
        return a;
    }

    public final ProtoMsgHoldingMessageAndBool n() {
        return (ProtoMsgHoldingMessageAndBool) E(5);
    }

    public final ProtoMsgHoldingMessageAndBool o(GeneratedMessageLite ddkVar) {
        ProtoMsgHoldingMessageAndBool n = n();
        n.n(ddkVar);
        return n;
    }

    public final String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        StaggeredGridLayoutParams.append("# ");
        StaggeredGridLayoutParams.append(obj);
        ev.T(this, sb, 0);
        return StaggeredGridLayoutParams.toString();
    }
}
