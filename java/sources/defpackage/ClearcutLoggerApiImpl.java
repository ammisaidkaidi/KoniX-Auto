package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.os.NetworkOnMainThreadException;
import android.os.Parcel;
import android.os.TransactionTooLargeException;
import android.util.Log;
import android.util.LruCache;
import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutLoggerApiImpl extends BasePendingResultBase {
    final /* synthetic */ GmsApiClientBase a;
    private final LogEventBuilder k;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ClearcutLoggerApiImpl(GmsApiClientBase bkcVar, LogEventBuilder bihVar, ApiCallOptionsBase bkfVar) {
        super(bkfVar);
        this.a = bkcVar;
        ApiClientKey bjyVar = bik.a;
        this.k = bihVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0670, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0605, code lost:
    
        r1 = r13.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x03fe, code lost:
    
        if (defpackage.CollectionBasisVerifierFlagsFacade.c() == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0400, code lost:
    
        r0 = r15.b(8);
        r0.A(r11);
        r15.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x040c, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0589, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x04f9, code lost:
    
        if (defpackage.CollectionBasisVerifierFlagsFacade.c() == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x04fb, code lost:
    
        r0 = r15.b(9);
        r1 = defpackage.GuavaPlatformUtils.c(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0507, code lost:
    
        if (r0.c == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x0509, code lost:
    
        r0.k();
        r0.c = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x050f, code lost:
    
        r2 = (defpackage.ProtoMsgConfigWithDglChild) r0.b;
        r4 = defpackage.ProtoMsgConfigWithDglChild.m;
        r2.a |= 32;
        r2.g = r1;
        r15.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0520, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0025, code lost:
    
        r4 = defpackage.ClearcutLoggerFacade.c.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x002f, code lost:
    
        if (r4.hasNext() == false) goto L463;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x0031, code lost:
    
        r0 = ((defpackage.LogEventBuilderProvider) r4.next()).a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x003b, code lost:
    
        if (r0 != null) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x003d, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x003f, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x074f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0765  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x05fd  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0617 A[Catch: IOException -> 0x0689, TryCatch #11 {IOException -> 0x0689, blocks: (B:203:0x0605, B:179:0x0611, B:181:0x0617, B:197:0x061f, B:199:0x0625, B:183:0x062f, B:192:0x0635, B:194:0x063b, B:185:0x0645, B:187:0x0661, B:177:0x060a, B:322:0x05b8, B:324:0x05be, B:327:0x05c4, B:329:0x05ca, B:331:0x05d9, B:333:0x05ea, B:337:0x05f1, B:339:0x05f6, B:344:0x0595, B:346:0x059b, B:349:0x05a3, B:351:0x05a9, B:356:0x0681, B:357:0x0688), top: B:202:0x0605 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0742  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x042e A[Catch: IOException -> 0x068b, TryCatch #9 {IOException -> 0x068b, blocks: (B:168:0x03f1, B:221:0x03fa, B:223:0x0400, B:226:0x040f, B:228:0x0417, B:235:0x042e, B:242:0x0450, B:244:0x0458, B:246:0x045e, B:319:0x0439), top: B:167:0x03f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x05ea A[Catch: IOException -> 0x0689, TryCatch #11 {IOException -> 0x0689, blocks: (B:203:0x0605, B:179:0x0611, B:181:0x0617, B:197:0x061f, B:199:0x0625, B:183:0x062f, B:192:0x0635, B:194:0x063b, B:185:0x0645, B:187:0x0661, B:177:0x060a, B:322:0x05b8, B:324:0x05be, B:327:0x05c4, B:329:0x05ca, B:331:0x05d9, B:333:0x05ea, B:337:0x05f1, B:339:0x05f6, B:344:0x0595, B:346:0x059b, B:349:0x05a3, B:351:0x05a9, B:356:0x0681, B:357:0x0688), top: B:202:0x0605 }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x05e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0593  */
    @Override // defpackage.BasePendingResultBase
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(ClearcutServiceClient bisVar) {
        LogEventBuilder bihVar;
        List<ProtoMsgIntsStringAndLongs> list;
        ArrayList arrayList;
        int i;
        ClearcutApiPendingResult biqVar;
        LogEventBuilder bihVar2;
        ClearcutLogRequestParcel binVar;
        PrimesEventContext btcVar;
        PrimesConfig bsaVar;
        byte[] bArr;
        PhenotypeFlagCache bscVar;
        CodedInputStreamReaderBase I;
        ArrayDeque arrayDeque;
        PrimesEventBuffer btgVar;
        ProtoMessageDemPairAndEnums a;
        int a2;
        int b;
        Map unmodifiableMap;
        PrimesConfig bsaVar2;
        long j;
        Long valueOf;
        boolean z;
        ProtoMessageBytesAndTwoInts d;
        String str;
        int i2;
        PrimesConfig bsaVar3;
        Integer num;
        int d2;
        int i3;
        Integer num2;
        int i4;
        boolean z2;
        long longValue;
        long d3;
        ClearcutLoggerApiImpl birVar = this;
        ClearcutApiPendingResult biqVar2 = new ClearcutApiPendingResult(birVar);
        try {
            LogEventBuilder bihVar3 = birVar.k;
            Iterator it = bihVar3.a.i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                bihVar3 = ((LogEventBuilderProvider) it.next()).a();
                if (bihVar3 == null) {
                    bihVar = null;
                    break;
                }
            }
            if (bihVar == null) {
                biqVar2.c(Status.a);
                return;
            }
            SamplingRulesProvider biiVar = bihVar.a.h;
            String str2 = bihVar.f;
            int i5 = ((ProtoMsgMixedScalarsConfig) bihVar.j.b).e;
            if (str2 == null) {
                str2 = null;
            } else if (str2.isEmpty()) {
                str2 = null;
            }
            if (str2 == null) {
                arrayList = new ArrayList();
            } else {
                if (((LogSamplingRulesProvider) biiVar).f == null) {
                    list = Collections.emptyList();
                } else {
                    PhenotypeFlagBase ceiVar = (PhenotypeFlagBase) LogSamplingRulesProvider.c.get(str2);
                    if (ceiVar == null) {
                        ceiVar = LogSamplingRulesProvider.b.d(str2, dgv.b, bpu.b);
                        PhenotypeFlagBase ceiVar2 = (PhenotypeFlagBase) LogSamplingRulesProvider.c.putIfAbsent(str2, ceiVar);
                        if (ceiVar2 != null) {
                            ceiVar = ceiVar2;
                        }
                    }
                    list = ((ProtoMsgRepeatedFieldOnly) ceiVar.c()).a;
                }
                ArrayList arrayList2 = new ArrayList();
                for (ProtoMsgIntsStringAndLongs dguVar : list) {
                    if ((dguVar.a & 1) == 0 || (NavInstructionTypeEnum = dguVar.b) == 0 || i == i5) {
                        arrayList2.add(dguVar);
                    }
                }
                arrayList = arrayList2;
            }
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    try {
                        ClearcutLoggerFacade bikVar = bihVar.a;
                        String str3 = bikVar.f;
                        Context context = bikVar.e;
                        if (bik.d == -1) {
                            synchronized (ClearcutLoggerFacade.class) {
                                if (bik.d == -1) {
                                    try {
                                        bik.d = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                                    } catch (PackageManager.NameNotFoundException e) {
                                        Log.wtf("ClearcutLogger", "This can't happen.", e);
                                    }
                                }
                            }
                        }
                        ClearcutSamplingParcel biwVar = new ClearcutSamplingParcel(str3, bik.d, bihVar.f, bihVar.e, bihVar.h, bihVar.a.g);
                        ProtoMsgMixedScalarsConfig dgtVar = (ProtoMsgMixedScalarsConfig) bihVar.j.h();
                        DerSyntheticLambdaHolder bieVar = bihVar.g;
                        int[] d4 = ClearcutLoggerFacade.d(null);
                        ArrayList arrayList3 = bihVar.c;
                        ClearcutLogRequestParcel binVar2 = new ClearcutLogRequestParcel(biwVar, dgtVar, bieVar, d4, arrayList3 != null ? (String[]) arrayList3.toArray(bik.b) : null, ClearcutLoggerFacade.d(bihVar.d));
                        ProtoMsgMixedScalarsConfig dgtVar2 = binVar2.j;
                        dgtVar2.getClass();
                        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dgtVar2.E(5);
                        ddfVar.n(dgtVar2);
                        ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) ddfVar;
                        if (binVar2.k != null && dgtVar2.f.d() == 0) {
                            ByteString e2 = binVar2.k.a.e();
                            if (ddhVar.c) {
                                ddhVar.k();
                                ddhVar.c = false;
                            }
                            ProtoMsgMixedScalarsConfig dgtVar3 = (ProtoMsgMixedScalarsConfig) ddhVar.b;
                            dgtVar3.a |= 1024;
                            dgtVar3.f = e2;
                        }
                        binVar2.j = (ProtoMsgMixedScalarsConfig) ddhVar.h();
                        binVar2.c = binVar2.j.h();
                        PrimesEventContext btcVar2 = bihVar.i;
                        if (btcVar2 != null) {
                            ProtoMsgMixedScalarsConfig dgtVar4 = binVar2.j;
                            dgtVar4.getClass();
                            ByteString dclVar = dgtVar4.f;
                            PrimesConfig bsaVar4 = btcVar2.a;
                            byte[] C = dclVar.C();
                            CollectionBasisVerifierFactoryInterface bseVar = bsd.a;
                            if (Looper.getMainLooper().equals(Looper.myLooper())) {
                                throw new NetworkOnMainThreadException();
                            }
                            CollectionBasisVerifierImpl bszVar = ((ProtoWireFormatVerifier) bseVar).f;
                            Context context2 = bsaVar4.a;
                            PrimesVersionCodeProvider btaVar = bsf.c;
                            if (!bsz.b) {
                                synchronized (bsz.c) {
                                    if (!bsz.b) {
                                        bsz.b = true;
                                        PhenotypeContext.e(context2);
                                        PhenotypeFlagBase.f(context2);
                                        if (!"com.google.android.gms".equals(context2.getPackageName())) {
                                            final GmsApiClientBase a3 = PhenotypeApi.a(context2);
                                            String valueOf2 = String.valueOf(context2.getPackageName());
                                            final String concat = valueOf2.length() != 0 ? "com.google.android.libraries.consentverifier#".concat(valueOf2) : new String("com.google.android.libraries.consentverifier#");
                                            a3.f(concat, btaVar.a(context2), bsz.a, null).e(new TaskListenerInterface() { // from class: bsx
                                                @Override // defpackage.TaskListenerInterface
                                                public final void a(TaskBase brhVar) {
                                                    GmsApiClientBase bkcVar = GmsApiClientBase.this;
                                                    String str4 = concat;
                                                    String[] strArr = bsz.a;
                                                    if (brhVar.d()) {
                                                        new Thread(new PhenotypeCommitterRunnable(new PhenotypeFlagCommitter(bkcVar, str4)), "CBVerifier").start();
                                                    } else {
                                                        Log.w("CBVerifier", String.format("Registering phenotype for %s failed", str4));
                                                    }
                                                }
                                            });
                                        }
                                    }
                                }
                            }
                            if (CollectionBasisVerifierFlagsFacade.a.a().d()) {
                                Context context3 = bsaVar4.a;
                                PrimesVersionCodeProvider btaVar2 = bsf.c;
                                if (bte.a == null || bte.c != PrimesEventLoggerRegistry.a(context3, btaVar2)) {
                                    synchronized (bte.b) {
                                        boolean a4 = PrimesEventLoggerRegistry.a(context3, btaVar2);
                                        if (bte.a == null || bte.c != a4) {
                                            if (a4) {
                                                bte.a = new ClearcutEventLoggerAdapter(new ClearcutLoggerFacade(context3, "COLLECTION_BASIS_VERIFIER"));
                                            } else {
                                                bte.a = new NoOpPrimesEventLogger();
                                            }
                                            bte.c = a4;
                                        }
                                    }
                                }
                                GuavaOptional e3 = GuavaOptional.e(bte.a);
                                try {
                                    bscVar = new PhenotypeFlagCache(bsaVar4.a, ((ProtoWireFormatVerifier) bseVar).d, ((ProtoWireFormatVerifier) bseVar).e);
                                    PrimesEventLoggerInterface btdVar = (PrimesEventLoggerInterface) ((PresentOptional) e3).a;
                                    I = CodedInputStreamReaderBase.I(C);
                                    arrayDeque = new ArrayDeque();
                                    btgVar = new PrimesEventBuffer(bsf.c, bsf.b, btdVar, bsaVar4, C.length, arrayDeque);
                                    a = bscVar.a(2065731759);
                                } catch (IOException e4) {
                                    biqVar = biqVar2;
                                    bihVar2 = bihVar;
                                }
                                if (SingleStringProtoMessage == null) {
                                    if (CollectionBasisVerifierFlagsFacade.c()) {
                                        btgVar.a(btgVar.b(7));
                                    }
                                    biqVar = biqVar2;
                                    bihVar2 = bihVar;
                                    binVar = binVar2;
                                    btcVar = btcVar2;
                                } else if (I.C() || ProtoWireFormatVerifier.c(bsaVar4, ProtoWireFormatVerifier.e(SingleStringProtoMessage), btgVar, cns.a)) {
                                    boolean a5 = ProtoWireFormatVerifier.a(ProtoWireFormatVerifier.e(SingleStringProtoMessage));
                                    ProtoMessageDemPairAndEnums dqgVar = a;
                                    int i6 = 2065731759;
                                    String str4 = null;
                                    Integer num3 = null;
                                    int i7 = 0;
                                    while (true) {
                                        if (I.C()) {
                                            biqVar = biqVar2;
                                            bihVar2 = bihVar;
                                            binVar = binVar2;
                                            btcVar = btcVar2;
                                            r10 = true;
                                            break;
                                        }
                                        int m = I.m();
                                        bihVar2 = bihVar;
                                        try {
                                            a2 = GeneratedEnumUtil.a(ProtoCompositeMessageM);
                                            binVar = binVar2;
                                            try {
                                                b = GeneratedEnumUtil.b(ProtoCompositeMessageM);
                                                biqVar = biqVar2;
                                            } catch (IOException e5) {
                                                biqVar = biqVar2;
                                            }
                                        } catch (IOException e6) {
                                            biqVar = biqVar2;
                                            binVar = binVar2;
                                            btcVar = btcVar2;
                                            bsaVar = bsaVar4;
                                            bArr = C;
                                            if (CollectionBasisVerifierFlagsFacade.c()) {
                                            }
                                            if (!CollectionBasisVerifierFlagsFacade.a.a().f()) {
                                            }
                                            ClearcutServiceProxy biuVar = (ClearcutServiceProxy) bisVar.w();
                                            Parcel a6 = biuVar.a();
                                            ServiceBinderHelper.c(a6, biqVar);
                                            ServiceBinderHelper.b(a6, binVar);
                                            biuVar.d(1, a6);
                                            return;
                                        }
                                        try {
                                            unmodifiableMap = Collections.unmodifiableMap(dqgVar.b);
                                            bsaVar2 = bsaVar4;
                                            bArr = C;
                                            j = a2;
                                            try {
                                                valueOf = Long.valueOf(ProtoMessageTwoIntsAndFlagValue);
                                                btcVar = btcVar2;
                                            } catch (IOException e7) {
                                                btcVar = btcVar2;
                                            }
                                        } catch (IOException e8) {
                                            btcVar = btcVar2;
                                            bsaVar = bsaVar4;
                                            bArr = C;
                                            if (CollectionBasisVerifierFlagsFacade.c()) {
                                            }
                                            if (!CollectionBasisVerifierFlagsFacade.a.a().f()) {
                                            }
                                            ClearcutServiceProxy biuVar2 = (ClearcutServiceProxy) bisVar.w();
                                            Parcel a62 = biuVar2.a();
                                            ServiceBinderHelper.c(a62, biqVar);
                                            ServiceBinderHelper.b(a62, binVar);
                                            biuVar2.d(1, a62);
                                            return;
                                        }
                                        if (unmodifiableMap.containsKey(valueOf)) {
                                            ProtoFieldMap demVar = dqgVar.b;
                                            if (!demVar.containsKey(valueOf)) {
                                                throw new IllegalArgumentException();
                                            }
                                            ProtoMessageIntsDemAndBytes dqcVar = (ProtoMessageIntsDemAndBytes) demVar.get(valueOf);
                                            if (ProtoLiteMessageBase != 2 && b != 3) {
                                                if (ProtoLiteMessageBase != 4) {
                                                    z = true;
                                                    if (IcuMessageFormat) {
                                                        if ((dqcVar.a & 2) == 0) {
                                                            if (str4 == null) {
                                                                bsaVar = bsaVar2;
                                                            } else if (!ProtoWireFormatVerifier.b(i6, a2)) {
                                                                bsaVar = bsaVar2;
                                                            }
                                                            d = ProtoWireFormatVerifier.d(dqcVar);
                                                            if (a5 && !ProtoWireFormatVerifier.a(ProtoMsgIntStringInt)) {
                                                                if (CollectionBasisVerifierFlagsFacade.c()) {
                                                                    ProtoMsgHoldingMessageAndBool b2 = btgVar.b(8);
                                                                    b2.A(ProtoMessageTwoIntsAndFlagValue);
                                                                    btgVar.a(b2);
                                                                }
                                                                r10 = false;
                                                            } else {
                                                                if (ProtoWireFormatVerifier.c(bsaVar, d, btgVar, GuavaOptional.e(Integer.valueOf(a2)))) {
                                                                    r10 = false;
                                                                    break;
                                                                }
                                                                if (i6 == bsf.a && a2 == 1) {
                                                                    str = I.x();
                                                                } else {
                                                                    I.E(ProtoCompositeMessageM);
                                                                    str = null;
                                                                }
                                                                str4 = str;
                                                                if (num3 == null) {
                                                                    bsaVar4 = bsaVar;
                                                                    bihVar = bihVar2;
                                                                    binVar2 = binVar;
                                                                    biqVar2 = biqVar;
                                                                    C = bArr;
                                                                    btcVar2 = btcVar;
                                                                }
                                                                d2 = i7 + num3.intValue();
                                                                while (true) {
                                                                    if (I.d() < d2) {
                                                                        break;
                                                                    }
                                                                    a5 = z2;
                                                                    i6 = i3;
                                                                    num3 = num2;
                                                                    i7 = i4;
                                                                    d2 = num2.intValue() + i4;
                                                                }
                                                            }
                                                        }
                                                        if (ProtoLiteMessageBase == 2) {
                                                            i2 = b;
                                                        } else if (ProtoLiteMessageBase == 3) {
                                                            b = 3;
                                                            i2 = 3;
                                                        } else {
                                                            bsaVar = bsaVar2;
                                                            if (num3 == null) {
                                                            }
                                                            d2 = i7 + num3.intValue();
                                                            while (true) {
                                                                if (I.d() < d2) {
                                                                    break;
                                                                }
                                                                a5 = z2;
                                                                i6 = i3;
                                                                num3 = num2;
                                                                i7 = i4;
                                                                d2 = num2.intValue() + i4;
                                                            }
                                                        }
                                                        if (bscVar.d(dqcVar.b) || ProtoWireFormatVerifier.b(i6, a2)) {
                                                            bsaVar3 = bsaVar2;
                                                            arrayDeque.push(new CollectionBasisAttestation(i6, num3, i7, a5, a2));
                                                            if (ProtoWireFormatVerifier.b(i6, a2)) {
                                                                if (str4 == null) {
                                                                    num = null;
                                                                } else if (str4.startsWith("type.googleapis.com/")) {
                                                                    int g = r.g(str4.substring(20));
                                                                    try {
                                                                        LruCache lruCache = bscVar.a;
                                                                        Integer valueOf3 = Integer.valueOf(ProtoMessageIntAndBooleanG);
                                                                        Integer num4 = (Integer) lruCache.get(valueOf3);
                                                                        if (num4 == null) {
                                                                            if (bscVar.b == null) {
                                                                                bscVar.b = bscVar.c();
                                                                            }
                                                                            ProtoFieldMap demVar2 = bscVar.b.b;
                                                                            if (!demVar2.containsKey(valueOf3)) {
                                                                                throw new IllegalArgumentException();
                                                                            }
                                                                            num4 = Integer.valueOf(((Integer) demVar2.get(valueOf3)).intValue());
                                                                            bscVar.a.put(valueOf3, num4);
                                                                        }
                                                                        num = Integer.valueOf(num4.intValue());
                                                                    } catch (IllegalArgumentException e9) {
                                                                        num = null;
                                                                    }
                                                                } else {
                                                                    num = null;
                                                                }
                                                                if (num == null) {
                                                                    break;
                                                                } else {
                                                                    i6 = num.intValue();
                                                                }
                                                            } else {
                                                                i6 = dqcVar.b;
                                                            }
                                                            Integer valueOf4 = i2 == 3 ? null : Integer.valueOf(I.j());
                                                            i7 = I.d();
                                                            dqgVar = bscVar.b(i6);
                                                            boolean z3 = (a5 || ProtoWireFormatVerifier.a(ProtoWireFormatVerifier.d(dqcVar))) ? true : ProtoWireFormatVerifier.a(ProtoWireFormatVerifier.e(dqgVar));
                                                            if (valueOf4 != null) {
                                                                if (valueOf4.intValue() > 0) {
                                                                }
                                                                num3 = valueOf4;
                                                                a5 = z3;
                                                                b = i2;
                                                                bsaVar = bsaVar3;
                                                                str4 = null;
                                                                if (num3 == null) {
                                                                }
                                                                d2 = i7 + num3.intValue();
                                                                while (true) {
                                                                    if (I.d() < d2) {
                                                                        break;
                                                                    }
                                                                    a5 = z2;
                                                                    i6 = i3;
                                                                    num3 = num2;
                                                                    i7 = i4;
                                                                    d2 = num2.intValue() + i4;
                                                                }
                                                            }
                                                            if (!ProtoWireFormatVerifier.c(bsaVar3, ProtoWireFormatVerifier.d(dqcVar), btgVar, GuavaOptional.e(Integer.valueOf(a2))) || !ProtoWireFormatVerifier.c(bsaVar3, ProtoWireFormatVerifier.e(dqgVar), btgVar, cns.a)) {
                                                                break;
                                                            }
                                                            num3 = valueOf4;
                                                            a5 = z3;
                                                            b = i2;
                                                            bsaVar = bsaVar3;
                                                            str4 = null;
                                                            if (num3 == null) {
                                                            }
                                                            d2 = i7 + num3.intValue();
                                                            while (true) {
                                                                if (I.d() < d2) {
                                                                    break;
                                                                }
                                                                a5 = z2;
                                                                i6 = i3;
                                                                num3 = num2;
                                                                i7 = i4;
                                                                d2 = num2.intValue() + i4;
                                                            }
                                                        } else {
                                                            bsaVar3 = bsaVar2;
                                                            try {
                                                                if (!ProtoWireFormatVerifier.c(bsaVar3, ProtoWireFormatVerifier.d(dqcVar), btgVar, GuavaOptional.e(Integer.valueOf(a2)))) {
                                                                    r10 = false;
                                                                    break;
                                                                }
                                                                I.E(ProtoCompositeMessageM);
                                                                bsaVar = bsaVar3;
                                                                if (num3 == null) {
                                                                }
                                                                d2 = i7 + num3.intValue();
                                                                while (true) {
                                                                    if (I.d() < d2) {
                                                                        break;
                                                                    }
                                                                    a5 = z2;
                                                                    i6 = i3;
                                                                    num3 = num2;
                                                                    i7 = i4;
                                                                    d2 = num2.intValue() + i4;
                                                                }
                                                            } catch (IOException e10) {
                                                                bsaVar = bsaVar3;
                                                            }
                                                        }
                                                    } else {
                                                        bsaVar = bsaVar2;
                                                        if ((dqcVar.a & 2) != 0 && bscVar.d(dqcVar.b)) {
                                                            if (CollectionBasisVerifierFlagsFacade.c()) {
                                                                ProtoMsgHoldingMessageAndBool b3 = btgVar.b(10);
                                                                b3.A(ProtoMessageTwoIntsAndFlagValue);
                                                                btgVar.a(b3);
                                                            }
                                                            r10 = false;
                                                        }
                                                        d = ProtoWireFormatVerifier.d(dqcVar);
                                                        if (a5) {
                                                        }
                                                        if (ProtoWireFormatVerifier.c(bsaVar, d, btgVar, GuavaOptional.e(Integer.valueOf(a2)))) {
                                                        }
                                                    }
                                                } else {
                                                    b = 4;
                                                }
                                            }
                                            z = false;
                                            if (IcuMessageFormat) {
                                            }
                                        } else {
                                            if (!a5) {
                                                break;
                                            }
                                            try {
                                                I.E(ProtoCompositeMessageM);
                                                bsaVar = bsaVar2;
                                                a5 = true;
                                                if (num3 == null && b != 4) {
                                                    bsaVar4 = bsaVar;
                                                    bihVar = bihVar2;
                                                    binVar2 = binVar;
                                                    biqVar2 = biqVar;
                                                    C = bArr;
                                                    btcVar2 = btcVar;
                                                }
                                                d2 = i7 + num3.intValue();
                                                while (true) {
                                                    if (I.d() < d2) {
                                                        break;
                                                    }
                                                    if (I.d() > d2) {
                                                        if (CollectionBasisVerifierFlagsFacade.c()) {
                                                            btgVar.a(btgVar.b(11));
                                                        }
                                                        r10 = false;
                                                    } else if (arrayDeque.isEmpty()) {
                                                        if (CollectionBasisVerifierFlagsFacade.c()) {
                                                            btgVar.a(btgVar.b(11));
                                                        }
                                                        r10 = false;
                                                    } else {
                                                        CollectionBasisAttestation bsgVar = (CollectionBasisAttestation) arrayDeque.pop();
                                                        i3 = bsgVar.a;
                                                        num2 = bsgVar.b;
                                                        i4 = bsgVar.c;
                                                        z2 = bsgVar.d;
                                                        dqgVar = bscVar.b(i3);
                                                        if (num2 == null) {
                                                            a5 = z2;
                                                            i6 = i3;
                                                            num3 = num2;
                                                            i7 = i4;
                                                            break;
                                                        }
                                                        a5 = z2;
                                                        i6 = i3;
                                                        num3 = num2;
                                                        i7 = i4;
                                                        d2 = num2.intValue() + i4;
                                                    }
                                                }
                                            } catch (IOException e11) {
                                            }
                                            bsaVar = bsaVar2;
                                            if (CollectionBasisVerifierFlagsFacade.c()) {
                                                ProtoMsgHoldingMessageAndBool n = ProtoMsgConfigWithDglChild.m.n();
                                                String packageName = bsaVar.a.getPackageName();
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                ProtoMsgConfigWithDglChild dgnVar = (ProtoMsgConfigWithDglChild) n.b;
                                                packageName.getClass();
                                                dgnVar.a |= 1;
                                                dgnVar.b = packageName;
                                                int a7 = ProtoWireFormatVerifier.c.a(bsaVar.a);
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                ProtoMsgConfigWithDglChild dgnVar2 = (ProtoMsgConfigWithDglChild) n.b;
                                                dgnVar2.a |= 2;
                                                dgnVar2.c = a7;
                                                ProtoMsgConfigWithDglChild.k(dgnVar2);
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                ProtoMsgConfigWithDglChild dgnVar3 = (ProtoMsgConfigWithDglChild) n.b;
                                                int i8 = dgnVar3.a | 8;
                                                dgnVar3.a = i8;
                                                dgnVar3.e = -2032180703L;
                                                int length = bArr.length;
                                                dgnVar3.a = i8 | 16;
                                                dgnVar3.f = length;
                                                dgnVar3.h = CommonObjectsAndPreconditionsUtil.u(5);
                                                dgnVar3.a |= 64;
                                                ((PrimesEventLoggerInterface) ((PresentOptional) e3).a).a((ProtoMsgConfigWithDglChild) n.h());
                                                r10 = false;
                                            } else {
                                                r10 = false;
                                            }
                                        }
                                    }
                                } else {
                                    biqVar = biqVar2;
                                    bihVar2 = bihVar;
                                    binVar = binVar2;
                                    btcVar = btcVar2;
                                    r10 = false;
                                }
                            } else {
                                biqVar = biqVar2;
                                bihVar2 = bihVar;
                                binVar = binVar2;
                                btcVar = btcVar2;
                                r10 = true;
                            }
                            if (!CollectionBasisVerifierFlagsFacade.a.a().f()) {
                                birVar = this;
                            } else {
                                if (!r10) {
                                    j(new Status(10, btcVar.toString()));
                                    return;
                                }
                                birVar = this;
                            }
                        } else {
                            biqVar = biqVar2;
                            bihVar2 = bihVar;
                            binVar = binVar2;
                        }
                        try {
                            ClearcutServiceProxy biuVar22 = (ClearcutServiceProxy) bisVar.w();
                            Parcel a622 = biuVar22.a();
                            ServiceBinderHelper.c(a622, biqVar);
                            ServiceBinderHelper.b(a622, binVar);
                            biuVar22.d(1, a622);
                            return;
                        } catch (TransactionTooLargeException e12) {
                            Log.e("ClearcutLoggerApiImpl", "Log event caused a TransactionTooLargeException", e12);
                            ClearcutUploadRequestParcel bimVar = new ClearcutUploadRequestParcel(bihVar2.f, 31004, 1);
                            GmsApiClientBase bkcVar = birVar.a;
                            final ClearcutIdentifierParcel bidVar = new ClearcutIdentifierParcel(Arrays.asList(bimVar));
                            ExecutorParameterChecker a8 = ExecutorParameterCheckerHolder.a();
                            a8.a = new BiConsumerCallbackInterface() { // from class: bio
                                @Override // defpackage.BiConsumerCallbackInterface
                                public final void a(Object obj, Object obj2) {
                                    ClearcutIdentifierParcel bidVar2 = ClearcutIdentifierParcel.this;
                                    ClearcutPendingResultCallback bipVar = new ClearcutPendingResultCallback((PreconditionsChecker) obj2);
                                    ClearcutServiceProxy biuVar3 = (ClearcutServiceProxy) ((ClearcutServiceClient) obj).w();
                                    Parcel a9 = biuVar3.a();
                                    ServiceBinderHelper.c(a9, bipVar);
                                    ServiceBinderHelper.b(a9, bidVar2);
                                    biuVar3.d(8, a9);
                                }
                            };
                            a8.b = new ApiAvailabilityVersionInfo[]{bil.a};
                            a8.b();
                            bkcVar.i(a8.a());
                            return;
                        }
                    } catch (RuntimeException e13) {
                        Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.MessageProducer ", e13);
                        birVar.j(new Status(10, "MessageProducer"));
                        return;
                    }
                }
                ProtoMsgIntsStringAndLongs dguVar2 = (ProtoMsgIntsStringAndLongs) it2.next();
                String str5 = dguVar2.c;
                Context context4 = ((LogSamplingRulesProvider) biiVar).f;
                if (DirectBootUtils.b(context4)) {
                    longValue = 0;
                } else {
                    if (biv.e == null) {
                        if (context4 != null) {
                            if (biv.d == null) {
                                biv.d = Boolean.valueOf(PhenotypeFlagProviderHolder.b(context4).a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
                            }
                            if (LogSamplingRulesProvider.d.booleanValue()) {
                                biv.e = Long.valueOf(GservicesContentResolver.a(context4.getContentResolver()));
                            } else {
                                biv.e = 0L;
                            }
                        } else {
                            longValue = 0;
                        }
                    }
                    longValue = LogSamplingRulesProvider.e.longValue();
                }
                if (str5 == null || str5.isEmpty()) {
                    d3 = ViewAutofillAndFarmHashUtil.d(ByteBuffer.allocate(8).putLong(longValue).array());
                } else {
                    byte[] bytes = str5.getBytes(biv.a);
                    ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 8);
                    allocate.put(bytes);
                    allocate.putLong(longValue);
                    d3 = ViewAutofillAndFarmHashUtil.d(allocate.array());
                }
                long j2 = dguVar2.d;
                long j3 = dguVar2.e;
                if (j2 >= 0 && j3 > 0) {
                    if ((d3 >= 0 ? d3 % j3 : (((Long.MAX_VALUE % j3) + 1) + ((d3 & Long.MAX_VALUE) % j3)) % j3) >= j2) {
                        birVar.n(Status.a);
                        return;
                    }
                }
            }
        } catch (RuntimeException e14) {
            Log.e("ClearcutLoggerApiImpl", "derived ClearcutLogger.EventModifier ", e14);
            birVar.j(new Status(10, "EventModifier"));
        }
    }
}
