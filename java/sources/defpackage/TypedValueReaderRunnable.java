package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TypedValueReaderRunnable implements Runnable {
    final /* synthetic */ TaskBase a;
    final /* synthetic */ TypedValueCallback b;

    public TypedValueReaderRunnable(TypedValueCallback bqxVar, TaskBase brhVar) {
        this.b = bqxVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ProtoMsgHoldingMessageAndBool ddfVar;
        PhenotypeSyncSubMessage cenVar;
        int i = 1;
        if (((TaskImpl) this.a).d) {
            TaskImpl broVar = this.b.a;
            synchronized (broVar.a) {
                if (broVar.c) {
                    return;
                }
                broVar.c = true;
                broVar.d = true;
                broVar.b.b(broVar);
                return;
            }
        }
        try {
            PhenotypeCommitParcel bojVar = (PhenotypeCommitParcel) this.a.b();
            ProtoMsgHoldingMessageAndBool n = PhenotypeSyncMessage.i.n();
            String str = bojVar.a;
            if (n.c) {
                n.k();
                n.c = false;
            }
            PhenotypeSyncMessage cemVar = (PhenotypeSyncMessage) n.b;
            str.getClass();
            int i2 = cemVar.a | 1;
            cemVar.a = i2;
            cemVar.b = str;
            String str2 = bojVar.c;
            str2.getClass();
            int i3 = i2 | 4;
            cemVar.a = i3;
            cemVar.d = str2;
            boolean z = bojVar.f;
            int i4 = i3 | 8;
            cemVar.a = i4;
            cemVar.g = z;
            long j = bojVar.g;
            cemVar.a = i4 | 16;
            cemVar.h = j;
            byte[] bArr = bojVar.b;
            if (bArr != null) {
                ByteString t = ByteString.t(bArr);
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                PhenotypeSyncMessage cemVar2 = (PhenotypeSyncMessage) n.b;
                cemVar2.a |= 2;
                cemVar2.c = t;
            }
            PhenotypeRegistrationParcel[] boiVarArr = bojVar.d;
            int length = boiVarArr.length;
            int i5 = 0;
            while (i5 < length) {
                PhenotypeRegistrationParcel boiVar = boiVarArr[i5];
                PhenotypeFlagValueParcel[] bonVarArr = boiVar.b;
                int length2 = bonVarArr.length;
                int i6 = 0;
                while (i6 < length2) {
                    PhenotypeFlagValueParcel bonVar = bonVarArr[i6];
                    int i7 = bonVar.g;
                    switch (i7) {
                        case 1:
                            ddfVar = n;
                            ProtoMsgHoldingMessageAndBool n2 = PhenotypeSyncSubMessage.e.n();
                            String str3 = bonVar.a;
                            if (n2.c) {
                                n2.k();
                                n2.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar2 = (PhenotypeSyncSubMessage) n2.b;
                            str3.getClass();
                            cenVar2.a |= 1;
                            cenVar2.d = str3;
                            if (bonVar.g != 1) {
                                throw new IllegalArgumentException("Not a long type");
                            }
                            long j2 = bonVar.b;
                            cenVar2.b = 1;
                            cenVar2.c = Long.valueOf(j2);
                            cenVar = (PhenotypeSyncSubMessage) n2.h();
                            break;
                        case 2:
                            ddfVar = n;
                            ProtoMsgHoldingMessageAndBool n3 = PhenotypeSyncSubMessage.e.n();
                            String str4 = bonVar.a;
                            if (n3.c) {
                                n3.k();
                                n3.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar3 = (PhenotypeSyncSubMessage) n3.b;
                            str4.getClass();
                            cenVar3.a |= 1;
                            cenVar3.d = str4;
                            if (bonVar.g != 2) {
                                throw new IllegalArgumentException("Not a boolean type");
                            }
                            boolean z2 = bonVar.c;
                            cenVar3.b = 2;
                            cenVar3.c = Boolean.valueOf(z2);
                            cenVar = (PhenotypeSyncSubMessage) n3.h();
                            break;
                        case 3:
                            ProtoMsgHoldingMessageAndBool n4 = PhenotypeSyncSubMessage.e.n();
                            String str5 = bonVar.a;
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar4 = (PhenotypeSyncSubMessage) n4.b;
                            str5.getClass();
                            cenVar4.a |= i;
                            cenVar4.d = str5;
                            if (bonVar.g != 3) {
                                throw new IllegalArgumentException("Not a double type");
                            }
                            ddfVar = n;
                            double d = bonVar.d;
                            cenVar4.b = 3;
                            cenVar4.c = Double.valueOf(ProtoMsgIntStringInt);
                            cenVar = (PhenotypeSyncSubMessage) n4.h();
                            break;
                        case 4:
                            ProtoMsgHoldingMessageAndBool n5 = PhenotypeSyncSubMessage.e.n();
                            String str6 = bonVar.a;
                            if (n5.c) {
                                n5.k();
                                n5.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar5 = (PhenotypeSyncSubMessage) n5.b;
                            str6.getClass();
                            cenVar5.a |= i;
                            cenVar5.d = str6;
                            if (bonVar.g != 4) {
                                throw new IllegalArgumentException("Not a String type");
                            }
                            String str7 = bonVar.e;
                            ThreadAndNullChecksUtil.d(str7);
                            if (n5.c) {
                                n5.k();
                                n5.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar6 = (PhenotypeSyncSubMessage) n5.b;
                            cenVar6.b = 4;
                            cenVar6.c = str7;
                            cenVar = (PhenotypeSyncSubMessage) n5.h();
                            ddfVar = n;
                            break;
                        case 5:
                            ProtoMsgHoldingMessageAndBool n6 = PhenotypeSyncSubMessage.e.n();
                            String str8 = bonVar.a;
                            if (n6.c) {
                                n6.k();
                                n6.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar7 = (PhenotypeSyncSubMessage) n6.b;
                            str8.getClass();
                            cenVar7.a |= i;
                            cenVar7.d = str8;
                            if (bonVar.g != 5) {
                                throw new IllegalArgumentException("Not a bytes type");
                            }
                            ByteString t2 = ByteString.t((byte[]) ThreadAndNullChecksUtil.d(bonVar.f));
                            if (n6.c) {
                                n6.k();
                                n6.c = false;
                            }
                            PhenotypeSyncSubMessage cenVar8 = (PhenotypeSyncSubMessage) n6.b;
                            cenVar8.b = 5;
                            cenVar8.c = t2;
                            cenVar = (PhenotypeSyncSubMessage) n6.h();
                            ddfVar = n;
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(35);
                            StaggeredGridLayoutParams.append("Unrecognized flag type: ");
                            StaggeredGridLayoutParams.append(i7);
                            throw new IllegalArgumentException(StaggeredGridLayoutParams.toString());
                    }
                    ProtoMsgHoldingMessageAndBool ddfVar2 = ddfVar;
                    ddfVar2.p(cenVar);
                    i6++;
                    n = ddfVar2;
                    i = 1;
                }
                ProtoMsgHoldingMessageAndBool ddfVar3 = n;
                String[] strArr = boiVar.c;
                if (strArr != null) {
                    for (String str9 : strArr) {
                        ddfVar3.o(str9);
                    }
                }
                i5++;
                n = ddfVar3;
                i = 1;
            }
            this.b.a.j((PhenotypeSyncMessage) n.h());
        } catch (TaskRuntimeException e) {
            if (e.getCause() instanceof Exception) {
                this.b.a.i((Exception) e.getCause());
            } else {
                this.b.a.i(ProtoFlagValueMessage);
            }
        } catch (Exception e2) {
            this.b.a.i(e2);
        }
    }
}
