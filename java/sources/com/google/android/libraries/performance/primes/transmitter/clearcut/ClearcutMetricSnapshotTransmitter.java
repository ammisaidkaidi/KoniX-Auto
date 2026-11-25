package com.google.android.libraries.performance.primes.transmitter.clearcut;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.api.internal.BasePendingResult;
import defpackage.LogEventBuilder;
import defpackage.CollectionBasisVerifierType;
import defpackage.ClearcutLoggerFacade;
import defpackage.LogSamplingRulesProvider;
import defpackage.GmsApiClientBase;
import defpackage.ResultCallbackInterface;
import defpackage.ResultCallbackDispatcher;
import defpackage.ApplicationStatesRowMapper;
import defpackage.CollectionBasisVerifierHolder;
import defpackage.PrimesEventContext;
import defpackage.PrimesLogMessage;
import defpackage.SnapshotUploadTaskFactory;
import defpackage.PhenotypeConfigMessage;
import defpackage.FlagNameRegistry;
import defpackage.IdentityFunction;
import defpackage.GuavaPlatformUtils;
import defpackage.StopwatchTicker;
import defpackage.RepeatedEntryProto;
import defpackage.EntryListProto;
import defpackage.TransformFuture;
import defpackage.DirectExecutorEnum_czj;
import defpackage.ImmediateListenableFuture;
import defpackage.ListenableFuture;
import defpackage.SettableFuture;
import defpackage.StringMd5Hasher;
import defpackage.ProtoMessageBuilderBase;
import defpackage.ProtoParserFactory;
import defpackage.ProtoMsgHoldingMessageAndBool;
import defpackage.ProtoMsgSubclassOfDdf;
import defpackage.GeneratedMessageLite;
import defpackage.ProtoMarkerInterface;
import defpackage.LazyStringList;
import defpackage.ByteStringList;
import defpackage.ProtobufList;
import defpackage.ProtoJavaType;
import defpackage.ProtoMsgMixedScalarsConfig;
import defpackage.PrimesBoolFlags45359218Provider;
import defpackage.ProtoEventRecordMessage;
import defpackage.ProtoMessageWrappingDoj;
import defpackage.ProtoMessageStringEnumAndDpa;
import defpackage.ProtoMessageSingleEnumField;
import defpackage.ProtoMessageWithDpfAndEnum;
import defpackage.ProtoMessageStringAndFiveLongs;
import defpackage.WirelessPerformanceMetricBasisId;
import defpackage.ProtoMessageDphStringsAndCxu;
import defpackage.ProtoMessageStringAndEnum;
import defpackage.ProtoMessageNineLongFields;
import defpackage.ProtoRootAggregateMessage;
import defpackage.GuavaPreconditionsSuppliersUtil;
import defpackage.ViewCompatApi26Statics;
import defpackage.ThreadAndNullChecksUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutMetricSnapshotTransmitter implements SnapshotUploadTaskFactory {
    private static final StopwatchTicker a = ex.i(bpe.r);
    private volatile ClearcutLoggerFacade b;
    private volatile ClearcutLoggerFacade c;
    private final StopwatchTicker d = ex.i(bpe.q);

    @Override // defpackage.SnapshotUploadTaskFactory
    public final ListenableFuture a(Context context, PrimesLogMessage ccsVar) {
        ClearcutLoggerFacade bikVar;
        ProtoParserFactory dcxVar = cda.i;
        ccsVar.k(dcxVar);
        ex.m(ccsVar.d.b.get(dcxVar.d) != null, "ClearcutMetricSnapshotTransmitter received a snapshot without the expected extension.");
        ProtoRootAggregateMessage dpzVar = ccsVar.b;
        if (dpzVar == null) {
            dpzVar = dpz.y;
        }
        ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dpzVar.E(5);
        ddfVar.n(dpzVar);
        FlagNameRegistry.b(cdk.a, ddfVar);
        ProtoMessageWrappingDoj dokVar = ((ProtoRootAggregateMessage) ddfVar.b).k;
        if (dokVar == null) {
            dokVar = dok.c;
        }
        if ((dokVar.a & 1) != 0) {
            ProtoMessageWrappingDoj dokVar2 = ((ProtoRootAggregateMessage) ddfVar.b).k;
            if (dokVar2 == null) {
                dokVar2 = dok.c;
            }
            ProtoEventRecordMessage dojVar = dokVar2.b;
            if (dojVar == null) {
                dojVar = doj.k;
            }
            ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) dojVar.E(5);
            ddfVar2.n(dojVar);
            FlagNameRegistry.b(cdk.b, ddfVar2);
            ProtoMessageWrappingDoj dokVar3 = ((ProtoRootAggregateMessage) ddfVar.b).k;
            if (dokVar3 == null) {
                dokVar3 = dok.c;
            }
            ProtoMsgHoldingMessageAndBool ddfVar3 = (ProtoMsgHoldingMessageAndBool) dokVar3.E(5);
            ddfVar3.n(dokVar3);
            if (ddfVar3.c) {
                ddfVar3.k();
                ddfVar3.c = false;
            }
            ProtoMessageWrappingDoj dokVar4 = (ProtoMessageWrappingDoj) ddfVar3.b;
            ProtoEventRecordMessage dojVar2 = (ProtoEventRecordMessage) ddfVar2.h();
            dojVar2.getClass();
            dokVar4.b = dojVar2;
            dokVar4.a |= 1;
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) ddfVar.b;
            ProtoMessageWrappingDoj dokVar5 = (ProtoMessageWrappingDoj) ddfVar3.h();
            dokVar5.getClass();
            dpzVar2.k = dokVar5;
            dpzVar2.a |= 512;
        }
        ProtoMessageDphStringsAndCxu dpmVar = ((ProtoRootAggregateMessage) ddfVar.b).h;
        if (dpmVar == null) {
            dpmVar = dpm.i;
        }
        if ((dpmVar.a & 256) != 0) {
            ProtoMessageDphStringsAndCxu dpmVar2 = ((ProtoRootAggregateMessage) ddfVar.b).h;
            if (dpmVar2 == null) {
                dpmVar2 = dpm.i;
            }
            EntryListProto cxuVar = dpmVar2.h;
            if (cxuVar == null) {
                cxuVar = cxu.d;
            }
            ProtoMsgHoldingMessageAndBool ddfVar4 = (ProtoMsgHoldingMessageAndBool) cxuVar.E(5);
            ddfVar4.n(cxuVar);
            RepeatedEntryProto cxtVar = ((EntryListProto) ddfVar4.b).b;
            if (cxtVar == null) {
                cxtVar = cxt.f;
            }
            ProtoMsgHoldingMessageAndBool ddfVar5 = (ProtoMsgHoldingMessageAndBool) cxtVar.E(5);
            ddfVar5.n(cxtVar);
            String str = ((RepeatedEntryProto) ddfVar5.b).c;
            if (!str.isEmpty()) {
                long longValue = StringMd5Hasher.a(str).longValue();
                if (ddfVar5.c) {
                    ddfVar5.k();
                    ddfVar5.c = false;
                }
                RepeatedEntryProto cxtVar2 = (RepeatedEntryProto) ddfVar5.b;
                int i = cxtVar2.a | 4;
                cxtVar2.a = i;
                cxtVar2.d = longValue;
                cxtVar2.a = i & (-3);
                cxtVar2.c = RepeatedEntryProto.f.c;
            }
            RepeatedEntryProto cxtVar3 = (RepeatedEntryProto) ddfVar5.h();
            if (ddfVar4.c) {
                ddfVar4.k();
                ddfVar4.c = false;
            }
            EntryListProto cxuVar2 = (EntryListProto) ddfVar4.b;
            cxtVar3.getClass();
            cxuVar2.b = cxtVar3;
            cxuVar2.a |= 1;
            List<RepeatedEntryProto> unmodifiableList = Collections.unmodifiableList(cxuVar2.c);
            if (ddfVar4.c) {
                ddfVar4.k();
                ddfVar4.c = false;
            }
            ((EntryListProto) ddfVar4.b).c = EntryListProto.y();
            for (RepeatedEntryProto cxtVar4 : unmodifiableList) {
                ProtoMsgHoldingMessageAndBool ddfVar6 = (ProtoMsgHoldingMessageAndBool) cxtVar4.E(5);
                ddfVar6.n(cxtVar4);
                String str2 = ((RepeatedEntryProto) ddfVar6.b).c;
                if (!str2.isEmpty()) {
                    long longValue2 = StringMd5Hasher.a(str2).longValue();
                    if (ddfVar6.c) {
                        ddfVar6.k();
                        ddfVar6.c = false;
                    }
                    RepeatedEntryProto cxtVar5 = (RepeatedEntryProto) ddfVar6.b;
                    int i2 = cxtVar5.a | 4;
                    cxtVar5.a = i2;
                    cxtVar5.d = longValue2;
                    cxtVar5.a = i2 & (-3);
                    cxtVar5.c = RepeatedEntryProto.f.c;
                }
                RepeatedEntryProto cxtVar6 = (RepeatedEntryProto) ddfVar6.h();
                if (ddfVar4.c) {
                    ddfVar4.k();
                    ddfVar4.c = false;
                }
                EntryListProto cxuVar3 = (EntryListProto) ddfVar4.b;
                cxtVar6.getClass();
                cxuVar3.b();
                cxuVar3.c.add(cxtVar6);
            }
            ProtoMessageDphStringsAndCxu dpmVar3 = ((ProtoRootAggregateMessage) ddfVar.b).h;
            if (dpmVar3 == null) {
                dpmVar3 = dpm.i;
            }
            ProtoMsgHoldingMessageAndBool ddfVar7 = (ProtoMsgHoldingMessageAndBool) dpmVar3.E(5);
            ddfVar7.n(dpmVar3);
            EntryListProto cxuVar4 = (EntryListProto) ddfVar4.h();
            if (ddfVar7.c) {
                ddfVar7.k();
                ddfVar7.c = false;
            }
            ProtoMessageDphStringsAndCxu dpmVar4 = (ProtoMessageDphStringsAndCxu) ddfVar7.b;
            cxuVar4.getClass();
            dpmVar4.h = cxuVar4;
            dpmVar4.a |= 256;
            ProtoMessageDphStringsAndCxu dpmVar5 = (ProtoMessageDphStringsAndCxu) ddfVar7.h();
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoRootAggregateMessage dpzVar3 = (ProtoRootAggregateMessage) ddfVar.b;
            dpmVar5.getClass();
            dpzVar3.h = dpmVar5;
            dpzVar3.a |= 64;
        }
        ProtoMessageNineLongFields dpsVar = ((ProtoRootAggregateMessage) ddfVar.b).j;
        if (dpsVar == null) {
            dpsVar = dps.k;
        }
        if (dpsVar.j.size() != 0) {
            ProtoMessageNineLongFields dpsVar2 = ((ProtoRootAggregateMessage) ddfVar.b).j;
            if (dpsVar2 == null) {
                dpsVar2 = dps.k;
            }
            ProtoMsgHoldingMessageAndBool ddfVar8 = (ProtoMsgHoldingMessageAndBool) dpsVar2.E(5);
            ddfVar8.n(dpsVar2);
            for (int i3 = 0; i3 < ((ProtoMessageNineLongFields) ddfVar8.b).j.size(); i3++) {
                ProtoMessageStringAndEnum dprVar = (ProtoMessageStringAndEnum) ((ProtoMessageNineLongFields) ddfVar8.b).j.get(i3);
                ProtoMsgHoldingMessageAndBool ddfVar9 = (ProtoMsgHoldingMessageAndBool) dprVar.E(5);
                ddfVar9.n(dprVar);
                if (!TextUtils.isEmpty(((ProtoMessageStringAndEnum) ddfVar9.b).b)) {
                    if (ddfVar9.c) {
                        ddfVar9.k();
                        ddfVar9.c = false;
                    }
                    ((ProtoMessageStringAndEnum) ddfVar9.b).c = ProtoMessageStringAndEnum.w();
                    List a2 = FlagNameRegistry.a(((ProtoMessageStringAndEnum) ddfVar9.b).b);
                    if (ddfVar9.c) {
                        ddfVar9.k();
                        ddfVar9.c = false;
                    }
                    ProtoMessageStringAndEnum dprVar2 = (ProtoMessageStringAndEnum) ddfVar9.b;
                    ByteStringList ddqVar = dprVar2.c;
                    if (!ddqVar.c()) {
                        dprVar2.c = GeneratedMessageLite.x(ddqVar);
                    }
                    ProtoMessageBuilderBase.d(a2, dprVar2.c);
                }
                if (ddfVar9.c) {
                    ddfVar9.k();
                    ddfVar9.c = false;
                }
                ProtoMessageStringAndEnum dprVar3 = (ProtoMessageStringAndEnum) ddfVar9.b;
                dprVar3.a &= -2;
                dprVar3.b = ProtoMessageStringAndEnum.d.b;
                if (ddfVar8.c) {
                    ddfVar8.k();
                    ddfVar8.c = false;
                }
                ProtoMessageNineLongFields dpsVar3 = (ProtoMessageNineLongFields) ddfVar8.b;
                ProtoMessageStringAndEnum dprVar4 = (ProtoMessageStringAndEnum) ddfVar9.h();
                dprVar4.getClass();
                ProtobufList ddrVar = dpsVar3.j;
                if (!ddrVar.c()) {
                    dpsVar3.j = GeneratedMessageLite.z(ddrVar);
                }
                dpsVar3.j.set(i3, dprVar4);
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoRootAggregateMessage dpzVar4 = (ProtoRootAggregateMessage) ddfVar.b;
            ProtoMessageNineLongFields dpsVar4 = (ProtoMessageNineLongFields) ddfVar8.h();
            dpsVar4.getClass();
            dpzVar4.j = dpsVar4;
            dpzVar4.a |= 256;
        }
        ProtoMessageSingleEnumField dozVar = ((ProtoRootAggregateMessage) ddfVar.b).g;
        if (dozVar == null) {
            dozVar = doz.b;
        }
        if (dozVar.a.size() != 0) {
            ProtoMessageSingleEnumField dozVar2 = ((ProtoRootAggregateMessage) ddfVar.b).g;
            if (dozVar2 == null) {
                dozVar2 = doz.b;
            }
            ProtoMsgHoldingMessageAndBool ddfVar10 = (ProtoMsgHoldingMessageAndBool) dozVar2.E(5);
            ddfVar10.n(dozVar2);
            for (int i4 = 0; i4 < ((ProtoMessageSingleEnumField) ddfVar10.b).a.size(); i4++) {
                ProtoMessageStringEnumAndDpa doyVar = (ProtoMessageStringEnumAndDpa) ((ProtoMessageSingleEnumField) ddfVar10.b).a.get(i4);
                ProtoMsgHoldingMessageAndBool ddfVar11 = (ProtoMsgHoldingMessageAndBool) doyVar.E(5);
                ddfVar11.n(doyVar);
                if (!TextUtils.isEmpty(((ProtoMessageStringEnumAndDpa) ddfVar11.b).d)) {
                    if (ddfVar11.c) {
                        ddfVar11.k();
                        ddfVar11.c = false;
                    }
                    ((ProtoMessageStringEnumAndDpa) ddfVar11.b).e = ProtoMessageStringEnumAndDpa.w();
                    List a3 = FlagNameRegistry.a(((ProtoMessageStringEnumAndDpa) ddfVar11.b).d);
                    if (ddfVar11.c) {
                        ddfVar11.k();
                        ddfVar11.c = false;
                    }
                    ProtoMessageStringEnumAndDpa doyVar2 = (ProtoMessageStringEnumAndDpa) ddfVar11.b;
                    ByteStringList ddqVar2 = doyVar2.e;
                    if (!ddqVar2.c()) {
                        doyVar2.e = GeneratedMessageLite.x(ddqVar2);
                    }
                    ProtoMessageBuilderBase.d(a3, doyVar2.e);
                }
                if (ddfVar11.c) {
                    ddfVar11.k();
                    ddfVar11.c = false;
                }
                ProtoMessageStringEnumAndDpa doyVar3 = (ProtoMessageStringEnumAndDpa) ddfVar11.b;
                doyVar3.a &= -524289;
                doyVar3.d = ProtoMessageStringEnumAndDpa.g.d;
                if (ddfVar10.c) {
                    ddfVar10.k();
                    ddfVar10.c = false;
                }
                ProtoMessageSingleEnumField dozVar3 = (ProtoMessageSingleEnumField) ddfVar10.b;
                ProtoMessageStringEnumAndDpa doyVar4 = (ProtoMessageStringEnumAndDpa) ddfVar11.h();
                doyVar4.getClass();
                ProtobufList ddrVar2 = dozVar3.a;
                if (!ddrVar2.c()) {
                    dozVar3.a = GeneratedMessageLite.z(ddrVar2);
                }
                dozVar3.a.set(i4, doyVar4);
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoRootAggregateMessage dpzVar5 = (ProtoRootAggregateMessage) ddfVar.b;
            ProtoMessageSingleEnumField dozVar4 = (ProtoMessageSingleEnumField) ddfVar10.h();
            dozVar4.getClass();
            dpzVar5.g = dozVar4;
            dpzVar5.a |= 32;
        }
        ProtoMessageWithDpfAndEnum dpbVar = ((ProtoRootAggregateMessage) ddfVar.b).n;
        if (dpbVar == null) {
            dpbVar = dpb.f;
        }
        if (dpbVar.d.size() != 0) {
            ProtoMessageWithDpfAndEnum dpbVar2 = ((ProtoRootAggregateMessage) ddfVar.b).n;
            if (dpbVar2 == null) {
                dpbVar2 = dpb.f;
            }
            ProtoMsgHoldingMessageAndBool ddfVar12 = (ProtoMsgHoldingMessageAndBool) dpbVar2.E(5);
            ddfVar12.n(dpbVar2);
            for (int i5 = 0; i5 < ((ProtoMessageWithDpfAndEnum) ddfVar12.b).d.size(); i5++) {
                ProtoMessageStringAndFiveLongs dpcVar = (ProtoMessageStringAndFiveLongs) ((ProtoMessageWithDpfAndEnum) ddfVar12.b).d.get(i5);
                ProtoMsgHoldingMessageAndBool ddfVar13 = (ProtoMsgHoldingMessageAndBool) dpcVar.E(5);
                ddfVar13.n(dpcVar);
                FlagNameRegistry.b(cdk.c, ddfVar13);
                if (ddfVar12.c) {
                    ddfVar12.k();
                    ddfVar12.c = false;
                }
                ProtoMessageWithDpfAndEnum dpbVar3 = (ProtoMessageWithDpfAndEnum) ddfVar12.b;
                ProtoMessageStringAndFiveLongs dpcVar2 = (ProtoMessageStringAndFiveLongs) ddfVar13.h();
                dpcVar2.getClass();
                dpbVar3.c();
                dpbVar3.d.set(i5, dpcVar2);
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            ProtoRootAggregateMessage dpzVar6 = (ProtoRootAggregateMessage) ddfVar.b;
            ProtoMessageWithDpfAndEnum dpbVar4 = (ProtoMessageWithDpfAndEnum) ddfVar12.h();
            dpbVar4.getClass();
            dpzVar6.n = dpbVar4;
            dpzVar6.a |= 16384;
        }
        ProtoRootAggregateMessage dpzVar7 = (ProtoRootAggregateMessage) ddfVar.h();
        if (PrimesBoolFlags45359218Provider.a.a().a(context) && ((Boolean) this.d.a()).booleanValue()) {
            return dad.a;
        }
        ProtoParserFactory dcxVar2 = cda.i;
        ccsVar.k(dcxVar2);
        Object k = ccsVar.d.k(dcxVar2.d);
        if (k == null) {
            k = dcxVar2.b;
        } else if (dcxVar2.d.a() == ProtoJavaType.ENUM) {
            ProtoMarkerInterface ddnVar = dcxVar2.d.a;
            ((Integer) k).intValue();
            throw null;
        }
        PhenotypeConfigMessage cdaVar = (PhenotypeConfigMessage) k;
        String str3 = cdaVar.b;
        if (cdaVar.d) {
            bikVar = this.c;
            if (bikVar == null) {
                synchronized (this) {
                    bikVar = this.c;
                    if (bikVar == null) {
                        ClearcutLoggerFacade bikVar2 = new ClearcutLoggerFacade(context, str3, bij.f, GmsApiClientBase.h(context), new LogSamplingRulesProvider(context));
                        this.c = bikVar2;
                        bikVar = bikVar2;
                    }
                }
            }
        } else {
            bikVar = this.b;
            if (bikVar == null) {
                synchronized (this) {
                    bikVar = this.b;
                    if (bikVar == null) {
                        bikVar = new ClearcutLoggerFacade(context, str3);
                        this.b = bikVar;
                    }
                }
            }
        }
        LogEventBuilder a4 = bikVar.a(dpzVar7);
        if (PrimesBoolFlags45359218Provider.a.a().b(context)) {
            WirelessPerformanceMetricBasisId dpiVar = (WirelessPerformanceMetricBasisId) a.a();
            context.getClass();
            dpiVar.getClass();
            a4.i = new PrimesEventContext(context.getApplicationContext(), new CollectionBasisVerifierHolder(dpiVar));
        }
        String str4 = cdaVar.e;
        if (!GuavaPlatformUtils.d(str4)) {
            if (a4.a.c()) {
                throw new IllegalStateException("setZwiebackCookieOverride forbidden on deidentified logger");
            }
            ProtoMsgSubclassOfDdf ddhVar = a4.j;
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMsgMixedScalarsConfig dgtVar = (ProtoMsgMixedScalarsConfig) ddhVar.b;
            ProtoMsgMixedScalarsConfig dgtVar2 = dgt.j;
            str4.getClass();
            dgtVar.a |= 16777216;
            dgtVar.i = str4;
        }
        if (!cdaVar.d) {
            if ((cdaVar.a & 2) != 0) {
                String str5 = cdaVar.c;
                if (a4.a.c()) {
                    throw new IllegalArgumentException("addMendelPackage forbidden on deidentified logger");
                }
                if (a4.c == null) {
                    a4.c = new ArrayList();
                }
                a4.c.add(str5);
            }
            if ((cdaVar.a & 16) != 0) {
                String str6 = cdaVar.f;
                if (!a4.a.g.contains(CollectionBasisVerifierType.ACCOUNT_NAME)) {
                    throw new IllegalStateException("setUploadAccountName forbidden on deidentified logger");
                }
                a4.e = str6;
            }
            LazyStringList ddpVar = cdaVar.g;
            if (!ddpVar.isEmpty()) {
                Object[] array = ddpVar.toArray();
                int length = array.length;
                int[] iArr = new int[length];
                for (int i6 = 0; i6 < length; i6++) {
                    Object obj = array[i6];
                    obj.getClass();
                    iArr[i6] = ((Number) obj).intValue();
                }
                if (a4.a.c()) {
                    throw new IllegalArgumentException("addExperimentIds forbidden on deidentified logger");
                }
                if (length != 0) {
                    if (a4.d == null) {
                        a4.d = new ArrayList();
                    }
                    for (int i7 = 0; i7 < length; i7++) {
                        a4.d.add(Integer.valueOf(iArr[i7]));
                    }
                }
            }
        }
        ViewCompatApi26Statics a5 = a4.a();
        final SettableFuture e = SettableFuture.e();
        ResultCallbackInterface bkjVar = new ResultCallbackInterface() { // from class: btl
            @Override // defpackage.ResultCallbackInterface
            public final void a(bki bkiVar) {
                SettableFuture dasVar = SettableFuture.this;
                if (bkiVar.a().e == 16) {
                    dasVar.cancel(false);
                    return;
                }
                if (bkiVar.a().b()) {
                    dasVar.k(bkiVar);
                } else if (bkiVar.a().g != null) {
                    dasVar.l(new bkh(bkiVar.a()));
                } else {
                    dasVar.l(new bjz(bkiVar.a()));
                }
            }
        };
        synchronized (((BasePendingResult) a5).c) {
            ThreadAndNullChecksUtil.j(!((BasePendingResult) a5).h, "Result has already been consumed.");
            ResultCallbackDispatcher bkkVar = ((BasePendingResult) a5).j;
            ThreadAndNullChecksUtil.j(true, "Cannot set callbacks if then() has been called.");
            synchronized (((BasePendingResult) a5).c) {
            }
            if (((BasePendingResult) a5).o()) {
                ((BasePendingResult) a5).d.a(bkjVar, ((BasePendingResult) a5).k());
            } else {
                ((BasePendingResult) a5).f = bkjVar;
            }
        }
        return TransformFuture.o(e, new IdentityFunction(), czj.a);
    }
}
