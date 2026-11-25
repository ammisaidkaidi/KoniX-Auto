package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bqw implements Runnable {
    final /* synthetic */ brh a;
    final /* synthetic */ bqx b;

    public bqw(bqx bqxVar, brh brhVar) {
        this.b = bqxVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ddf ddfVar;
        cen cenVar;
        int i = 1;
        if (((bro) this.a).d) {
            bro broVar = this.b.a;
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
            boj bojVar = (boj) this.a.b();
            ddf n = cem.i.n();
            String str = bojVar.a;
            if (n.c) {
                n.k();
                n.c = false;
            }
            cem cemVar = (cem) n.b;
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
                dcl t = dcl.t(bArr);
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                cem cemVar2 = (cem) n.b;
                cemVar2.a |= 2;
                cemVar2.c = t;
            }
            boi[] boiVarArr = bojVar.d;
            int length = boiVarArr.length;
            int i5 = 0;
            while (i5 < length) {
                boi boiVar = boiVarArr[i5];
                bon[] bonVarArr = boiVar.b;
                int length2 = bonVarArr.length;
                int i6 = 0;
                while (i6 < length2) {
                    bon bonVar = bonVarArr[i6];
                    int i7 = bonVar.g;
                    switch (i7) {
                        case 1:
                            ddfVar = n;
                            ddf n2 = cen.e.n();
                            String str3 = bonVar.a;
                            if (n2.c) {
                                n2.k();
                                n2.c = false;
                            }
                            cen cenVar2 = (cen) n2.b;
                            str3.getClass();
                            cenVar2.a |= 1;
                            cenVar2.d = str3;
                            if (bonVar.g != 1) {
                                throw new IllegalArgumentException("Not a long type");
                            }
                            long j2 = bonVar.b;
                            cenVar2.b = 1;
                            cenVar2.c = Long.valueOf(j2);
                            cenVar = (cen) n2.h();
                            break;
                        case 2:
                            ddfVar = n;
                            ddf n3 = cen.e.n();
                            String str4 = bonVar.a;
                            if (n3.c) {
                                n3.k();
                                n3.c = false;
                            }
                            cen cenVar3 = (cen) n3.b;
                            str4.getClass();
                            cenVar3.a |= 1;
                            cenVar3.d = str4;
                            if (bonVar.g != 2) {
                                throw new IllegalArgumentException("Not a boolean type");
                            }
                            boolean z2 = bonVar.c;
                            cenVar3.b = 2;
                            cenVar3.c = Boolean.valueOf(z2);
                            cenVar = (cen) n3.h();
                            break;
                        case 3:
                            ddf n4 = cen.e.n();
                            String str5 = bonVar.a;
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            cen cenVar4 = (cen) n4.b;
                            str5.getClass();
                            cenVar4.a |= i;
                            cenVar4.d = str5;
                            if (bonVar.g != 3) {
                                throw new IllegalArgumentException("Not a double type");
                            }
                            ddfVar = n;
                            double d = bonVar.d;
                            cenVar4.b = 3;
                            cenVar4.c = Double.valueOf(d);
                            cenVar = (cen) n4.h();
                            break;
                        case 4:
                            ddf n5 = cen.e.n();
                            String str6 = bonVar.a;
                            if (n5.c) {
                                n5.k();
                                n5.c = false;
                            }
                            cen cenVar5 = (cen) n5.b;
                            str6.getClass();
                            cenVar5.a |= i;
                            cenVar5.d = str6;
                            if (bonVar.g != 4) {
                                throw new IllegalArgumentException("Not a String type");
                            }
                            String str7 = bonVar.e;
                            hr.d(str7);
                            if (n5.c) {
                                n5.k();
                                n5.c = false;
                            }
                            cen cenVar6 = (cen) n5.b;
                            cenVar6.b = 4;
                            cenVar6.c = str7;
                            cenVar = (cen) n5.h();
                            ddfVar = n;
                            break;
                        case 5:
                            ddf n6 = cen.e.n();
                            String str8 = bonVar.a;
                            if (n6.c) {
                                n6.k();
                                n6.c = false;
                            }
                            cen cenVar7 = (cen) n6.b;
                            str8.getClass();
                            cenVar7.a |= i;
                            cenVar7.d = str8;
                            if (bonVar.g != 5) {
                                throw new IllegalArgumentException("Not a bytes type");
                            }
                            dcl t2 = dcl.t((byte[]) hr.d(bonVar.f));
                            if (n6.c) {
                                n6.k();
                                n6.c = false;
                            }
                            cen cenVar8 = (cen) n6.b;
                            cenVar8.b = 5;
                            cenVar8.c = t2;
                            cenVar = (cen) n6.h();
                            ddfVar = n;
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(35);
                            sb.append("Unrecognized flag type: ");
                            sb.append(i7);
                            throw new IllegalArgumentException(sb.toString());
                    }
                    ddf ddfVar2 = ddfVar;
                    ddfVar2.p(cenVar);
                    i6++;
                    n = ddfVar2;
                    i = 1;
                }
                ddf ddfVar3 = n;
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
            this.b.a.j((cem) n.h());
        } catch (brg e) {
            if (e.getCause() instanceof Exception) {
                this.b.a.i((Exception) e.getCause());
            } else {
                this.b.a.i(e);
            }
        } catch (Exception e2) {
            this.b.a.i(e2);
        }
    }
}
