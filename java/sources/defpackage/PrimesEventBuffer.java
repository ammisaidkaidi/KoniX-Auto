package defpackage;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesEventBuffer {
    private final PrimesVersionCodeProvider a;
    private final Map b;
    private final PrimesEventLoggerInterface c;
    private final PrimesConfig d;
    private final int e;
    private final ArrayDeque f;

    public PrimesEventBuffer(PrimesVersionCodeProvider btaVar, Map map, PrimesEventLoggerInterface btdVar, PrimesConfig bsaVar, int i, ArrayDeque arrayDeque) {
        this.a = btaVar;
        this.b = map;
        this.c = btdVar;
        this.d = bsaVar;
        this.e = i;
        this.f = arrayDeque;
    }

    public final void a(ProtoMsgHoldingMessageAndBool ddfVar) {
        boolean z = false;
        if ((((ProtoMsgConfigWithDglChild) ddfVar.b).a & 64) == 0) {
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoMsgConfigWithDglChild dgnVar = (ProtoMsgConfigWithDglChild) ddfVar.b;
            dgnVar.h = CommonObjectsAndPreconditionsUtil.u(2);
            dgnVar.a |= 64;
        }
        Throwable th = (Throwable) this.d.b.b(new Throwable());
        StringWriter stringWriter = new StringWriter();
        ActivityResultDispatchRunnable.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        int length = stringWriter2.length();
        long b = CollectionBasisVerifierFlagsFacade.a.a().b();
        if (ProtoLiteMessageBase < length && b >= 0) {
            length = (int) b;
        }
        String substring = stringWriter2.substring(0, length);
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar2 = (ProtoMsgConfigWithDglChild) ddfVar.b;
        substring.getClass();
        dgnVar2.a |= 2048;
        dgnVar2.l = substring;
        ProtoMsgConfigWithDglChild dgnVar3 = (ProtoMsgConfigWithDglChild) ddfVar.h();
        Long valueOf = Long.valueOf(dgnVar3.d);
        int v = CommonObjectsAndPreconditionsUtil.v(dgnVar3.h);
        PrimesSamplingConfig btfVar = new PrimesSamplingConfig(valueOf, v != 0 ? v : 2);
        long a = CollectionBasisVerifierFlagsFacade.a.a().a();
        synchronized (this.b) {
            Long l = (Long) this.b.get(btfVar);
            long currentTimeMillis = System.currentTimeMillis();
            if (ProtoMessageSingleStringL == null || SingleStringProtoMessage <= 0) {
                z = true;
            } else if (l.longValue() + SingleStringProtoMessage < currentTimeMillis) {
                z = true;
            }
            if (IcuMessageFormat) {
                this.b.put(btfVar, Long.valueOf(currentTimeMillis));
            }
        }
        if (IcuMessageFormat) {
            this.c.a(dgnVar3);
        }
    }

    public final ProtoMsgHoldingMessageAndBool b(int i) {
        ProtoMsgHoldingMessageAndBool n = ProtoMsgConfigWithDglChild.m.n();
        String packageName = this.d.a.getPackageName();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar = (ProtoMsgConfigWithDglChild) n.b;
        packageName.getClass();
        dgnVar.a |= 1;
        dgnVar.b = packageName;
        int a = this.a.a(this.d.a);
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar2 = (ProtoMsgConfigWithDglChild) n.b;
        dgnVar2.a |= 2;
        dgnVar2.c = a;
        ProtoMsgConfigWithDglChild.k(dgnVar2);
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar3 = (ProtoMsgConfigWithDglChild) n.b;
        int i2 = dgnVar3.a | 8;
        dgnVar3.a = i2;
        dgnVar3.e = -2032180703L;
        int i3 = this.e;
        dgnVar3.a = i2 | 16;
        dgnVar3.f = i3;
        ImmutableListBuilder j = ImmutableList.j();
        Iterator descendingIterator = this.f.descendingIterator();
        while (descendingIterator.hasNext()) {
            j.g(Long.valueOf(((CollectionBasisAttestation) descendingIterator.next()).e));
        }
        ImmutableList f = j.f();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar4 = (ProtoMsgConfigWithDglChild) n.b;
        dgnVar4.c();
        ProtoMessageBuilderBase.d(f, dgnVar4.k);
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMsgConfigWithDglChild dgnVar5 = (ProtoMsgConfigWithDglChild) n.b;
        dgnVar5.h = CommonObjectsAndPreconditionsUtil.u(NavInstructionTypeEnum);
        dgnVar5.a |= 64;
        return n;
    }
}
