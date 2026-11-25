package defpackage;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cew implements ceo {
    public final Context a;
    public final cny b;
    public final String c;
    private final dah d;

    public cew(final Context context, dah dahVar, final hh hhVar, byte[] bArr) {
        final bqh bqhVar = new bqh(new bqg());
        final dhq dhqVar = new dhq(context, (byte[]) null, (byte[]) null);
        final cey ceyVar = new cey(context);
        final btn btnVar = btn.l;
        dahVar.getClass();
        this.a = context;
        this.d = dahVar;
        final byte[] bArr2 = null;
        final byte[] bArr3 = null;
        this.b = new cny(context, bqhVar, hhVar, dhqVar, ceyVar, btnVar, bArr2, bArr3) { // from class: ces
            public final /* synthetic */ Context a;
            public final /* synthetic */ dny b;
            public final /* synthetic */ dny c;
            public final /* synthetic */ bqh d;
            public final /* synthetic */ hh e;
            public final /* synthetic */ dhq f;

            @Override // defpackage.cny
            public final Object a(Object obj) {
                return new bqf(this.a, (bps) obj, this.d, this.f, this.b, null, null);
            }
        };
        this.c = context.getPackageName();
    }

    public static final cem f(boz bozVar) {
        cen cenVar;
        ddf n = cem.i.n();
        String str = bozVar.a;
        if (n.c) {
            n.k();
            n.c = false;
        }
        cem cemVar = (cem) n.b;
        int i = cemVar.a | 1;
        cemVar.a = i;
        cemVar.b = str;
        String str2 = bozVar.c;
        str2.getClass();
        int i2 = 4;
        int i3 = i | 4;
        cemVar.a = i3;
        cemVar.d = str2;
        boolean z = bozVar.f;
        int i4 = i3 | 8;
        cemVar.a = i4;
        cemVar.g = z;
        long j = bozVar.g;
        cemVar.a = i4 | 16;
        cemVar.h = j;
        byte[] bArr = bozVar.b;
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
        boy[] boyVarArr = bozVar.d;
        int length = boyVarArr.length;
        int i5 = 0;
        while (i5 < length) {
            boy boyVar = boyVarArr[i5];
            bpb[] bpbVarArr = boyVar.b;
            int length2 = bpbVarArr.length;
            int i6 = 0;
            while (i6 < length2) {
                bpb bpbVar = bpbVarArr[i6];
                switch (bpbVar.h) {
                    case 1:
                        ddf n2 = cen.e.n();
                        String str3 = bpbVar.b;
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        cen cenVar2 = (cen) n2.b;
                        str3.getClass();
                        cenVar2.a |= 1;
                        cenVar2.d = str3;
                        long b = bpbVar.b();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        cen cenVar3 = (cen) n2.b;
                        cenVar3.b = 1;
                        cenVar3.c = Long.valueOf(b);
                        cenVar = (cen) n2.h();
                        break;
                    case 2:
                        ddf n3 = cen.e.n();
                        String str4 = bpbVar.b;
                        if (n3.c) {
                            n3.k();
                            n3.c = false;
                        }
                        cen cenVar4 = (cen) n3.b;
                        str4.getClass();
                        cenVar4.a |= 1;
                        cenVar4.d = str4;
                        boolean d = bpbVar.d();
                        if (n3.c) {
                            n3.k();
                            n3.c = false;
                        }
                        cen cenVar5 = (cen) n3.b;
                        cenVar5.b = 2;
                        cenVar5.c = Boolean.valueOf(d);
                        cenVar = (cen) n3.h();
                        break;
                    case 3:
                        ddf n4 = cen.e.n();
                        String str5 = bpbVar.b;
                        if (n4.c) {
                            n4.k();
                            n4.c = false;
                        }
                        cen cenVar6 = (cen) n4.b;
                        str5.getClass();
                        cenVar6.a |= 1;
                        cenVar6.d = str5;
                        double a = bpbVar.a();
                        if (n4.c) {
                            n4.k();
                            n4.c = false;
                        }
                        cen cenVar7 = (cen) n4.b;
                        cenVar7.b = 3;
                        cenVar7.c = Double.valueOf(a);
                        cenVar = (cen) n4.h();
                        break;
                    case 4:
                        ddf n5 = cen.e.n();
                        String str6 = bpbVar.b;
                        if (n5.c) {
                            n5.k();
                            n5.c = false;
                        }
                        cen cenVar8 = (cen) n5.b;
                        str6.getClass();
                        cenVar8.a |= 1;
                        cenVar8.d = str6;
                        String c = bpbVar.c();
                        if (n5.c) {
                            n5.k();
                            n5.c = false;
                        }
                        cen cenVar9 = (cen) n5.b;
                        cenVar9.b = i2;
                        cenVar9.c = c;
                        cenVar = (cen) n5.h();
                        break;
                    default:
                        ddf n6 = cen.e.n();
                        String str7 = bpbVar.b;
                        if (n6.c) {
                            n6.k();
                            n6.c = false;
                        }
                        cen cenVar10 = (cen) n6.b;
                        str7.getClass();
                        cenVar10.a |= 1;
                        cenVar10.d = str7;
                        dcl t2 = dcl.t(bpbVar.e());
                        if (n6.c) {
                            n6.k();
                            n6.c = false;
                        }
                        cen cenVar11 = (cen) n6.b;
                        cenVar11.b = 5;
                        cenVar11.c = t2;
                        cenVar = (cen) n6.h();
                        break;
                }
                n.p(cenVar);
                i6++;
                i2 = 4;
            }
            String[] strArr = boyVar.c;
            if (strArr != null) {
                for (String str8 : strArr) {
                    n.o(str8);
                }
            }
            i5++;
            i2 = 4;
        }
        return (cem) n.h();
    }

    @Override // defpackage.ceo
    public final dag a(final String str) {
        str.getClass();
        return this.d.submit(new Callable() { // from class: ceu
            /* JADX WARN: Code restructure failed: missing block: B:100:0x03de, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:111:0x03e8, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:121:0x02ea, code lost:
            
                r3.delete("ExperimentTokens", "packageName = ? AND isCommitted = 1", new java.lang.String[]{r5.i});
             */
            /* JADX WARN: Code restructure failed: missing block: B:122:0x03f2, code lost:
            
                r0 = r5.k;
                r1 = r5.j;
             */
            /* JADX WARN: Code restructure failed: missing block: B:124:0x03ff, code lost:
            
                if (defpackage.cdw.c(r5.i) == false) goto L134;
             */
            /* JADX WARN: Code restructure failed: missing block: B:125:0x0401, code lost:
            
                r6 = new android.content.ContentValues();
                r6.put("packageName", r5.i);
                r6.put("user", r0);
                r6.put("version", java.lang.Long.valueOf(r1));
                r3.insertWithOnConflict("MultiCommitApplicationStates", null, r6, 5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:126:0x0438, code lost:
            
                r3.setTransactionSuccessful();
             */
            /* JADX WARN: Code restructure failed: missing block: B:127:0x043b, code lost:
            
                r3.endTransaction();
                defpackage.bqb.a();
             */
            /* JADX WARN: Code restructure failed: missing block: B:128:0x0441, code lost:
            
                if (r4 == null) goto L228;
             */
            /* JADX WARN: Code restructure failed: missing block: B:129:0x0443, code lost:
            
                r4.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:130:0x0446, code lost:
            
                return null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:131:?, code lost:
            
                return null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:132:0x041d, code lost:
            
                r6 = new android.content.ContentValues();
                r6.put("packageName", r5.i);
                r6.put("user", r0);
                r6.put("version", java.lang.Long.valueOf(r1));
                r3.insertWithOnConflict("ApplicationStates", null, r6, 5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:134:0x0448, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:136:0x044a, code lost:
            
                if (r6 != null) goto L200;
             */
            /* JADX WARN: Code restructure failed: missing block: B:138:0x044c, code lost:
            
                r6.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:140:?, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:142:0x0451, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:143:?, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:144:0x01b5, code lost:
            
                r3.delete("FlagOverrides", "packageName = ? AND committed = 1", new java.lang.String[]{r5.i});
             */
            /* JADX WARN: Code restructure failed: missing block: B:145:0x0194, code lost:
            
                r3.delete("Flags", "packageName = ? AND committed = 1", new java.lang.String[]{r5.i});
             */
            /* JADX WARN: Code restructure failed: missing block: B:146:0x012c, code lost:
            
                r6.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:148:0x012a, code lost:
            
                if (r6 != null) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x0127, code lost:
            
                if (r6 != null) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x0135, code lost:
            
                if (defpackage.bpz.d(r5.i) == false) goto L62;
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x013d, code lost:
            
                if (r5.k.equals("") == false) goto L60;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x0140, code lost:
            
                r2 = r5.k;
                r5 = r5.i;
                r7 = new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 47) + java.lang.String.valueOf(r5).length());
                r7.append("Can't commit to ");
                r7.append(r2);
                r7.append(" for direct boot aware package ");
                r7.append(r5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x0175, code lost:
            
                throw new defpackage.bpt(29500, r7.toString());
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x0184, code lost:
            
                if (defpackage.cdw.c(r5.i) == false) goto L66;
             */
            /* JADX WARN: Code restructure failed: missing block: B:43:0x0186, code lost:
            
                r3.delete("Flags", "packageName = ? AND user = ? AND committed = 1", new java.lang.String[]{r5.i, r5.k});
             */
            /* JADX WARN: Code restructure failed: missing block: B:46:0x01a5, code lost:
            
                if (defpackage.cdw.c(r5.i) == false) goto L71;
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:0x01a7, code lost:
            
                r3.delete("FlagOverrides", "packageName = ? AND user = ? AND committed = 1", new java.lang.String[]{r5.i, r5.k});
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x01be, code lost:
            
                r7 = defpackage.bpw.b;
             */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x01cc, code lost:
            
                if (r5.i.equals(r5.h) != false) goto L76;
             */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x01ce, code lost:
            
                r8 = r5.i;
                r14 = new java.lang.StringBuilder(java.lang.String.valueOf(r8).length() + 2);
                r14.append("'");
                r14.append(r8);
                r14.append("'");
                r7 = r7.replace("packageName", r14.toString());
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x01ef, code lost:
            
                r8 = defpackage.bpw.a;
                r14 = new java.lang.StringBuilder((java.lang.String.valueOf(r8).length() + 108) + java.lang.String.valueOf(r7).length());
                r14.append("INSERT INTO Flags (");
                r14.append(r8);
                r14.append(") SELECT ");
                r14.append(r7);
                r14.append(" FROM Flags WHERE packageName = ? AND version = ? AND user = ? AND committed = 0");
                r6 = r3.compileStatement(r14.toString());
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x0222, code lost:
            
                r6.bindString(1, r5.h);
                r6.bindLong(2, r5.j);
                r6.bindString(3, r5.k);
                r6.execute();
             */
            /* JADX WARN: Code restructure failed: missing block: B:55:0x0236, code lost:
            
                if (r6 == null) goto L80;
             */
            /* JADX WARN: Code restructure failed: missing block: B:56:0x0238, code lost:
            
                r6.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:57:0x023b, code lost:
            
                r6 = defpackage.bpz.e(r3, r5.i, r5.k);
             */
            /* JADX WARN: Code restructure failed: missing block: B:59:0x0245, code lost:
            
                if (r6 == null) goto L94;
             */
            /* JADX WARN: Code restructure failed: missing block: B:60:0x0247, code lost:
            
                r12 = r6.length;
                r14 = 0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:61:0x0249, code lost:
            
                if (r14 >= r12) goto L212;
             */
            /* JADX WARN: Code restructure failed: missing block: B:62:0x024b, code lost:
            
                r2 = r6[r14];
                r15 = new android.content.ContentValues();
                r15.put("packageName", r5.i);
                r15.put("user", r5.k);
                r15.put("name", r2.b);
                r15.put("flagType", java.lang.Integer.valueOf(r2.i));
                r15.put("committed", (java.lang.Integer) 1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:63:0x027a, code lost:
            
                switch(r2.h) {
                    case 1: goto L91;
                    case 2: goto L90;
                    case 3: goto L89;
                    case 4: goto L88;
                    default: goto L87;
                };
             */
            /* JADX WARN: Code restructure failed: missing block: B:65:0x02b4, code lost:
            
                r15.put("extensionVal", r2.e());
             */
            /* JADX WARN: Code restructure failed: missing block: B:67:0x02bb, code lost:
            
                r3.insertWithOnConflict("FlagOverrides", null, r15, 5);
                r14 = r14 + 1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:68:0x0280, code lost:
            
                r15.put("stringVal", r2.c());
             */
            /* JADX WARN: Code restructure failed: missing block: B:70:0x028a, code lost:
            
                r15.put("floatVal", java.lang.Double.valueOf(r2.a()));
             */
            /* JADX WARN: Code restructure failed: missing block: B:72:0x0298, code lost:
            
                r15.put("boolVal", java.lang.Integer.valueOf(r2.d() ? 1 : 0));
             */
            /* JADX WARN: Code restructure failed: missing block: B:74:0x02a6, code lost:
            
                r15.put("intVal", java.lang.Long.valueOf(r2.b()));
             */
            /* JADX WARN: Code restructure failed: missing block: B:77:0x02c9, code lost:
            
                if (r6 != null) goto L130;
             */
            /* JADX WARN: Code restructure failed: missing block: B:80:0x02d5, code lost:
            
                if (defpackage.cdw.c(r5.i) == false) goto L100;
             */
            /* JADX WARN: Code restructure failed: missing block: B:82:0x02d8, code lost:
            
                r3.delete("ExperimentTokens", "packageName = ? AND user = ? AND isCommitted = 1", new java.lang.String[]{r5.i, r5.k});
             */
            /* JADX WARN: Code restructure failed: missing block: B:83:0x02f7, code lost:
            
                r2 = defpackage.bpw.d;
             */
            /* JADX WARN: Code restructure failed: missing block: B:84:0x0301, code lost:
            
                if (r5.h.equals(r5.i) != false) goto L104;
             */
            /* JADX WARN: Code restructure failed: missing block: B:85:0x0303, code lost:
            
                r6 = r5.i;
                r10 = new java.lang.StringBuilder(java.lang.String.valueOf(r6).length() + 2);
                r10.append("'");
                r10.append(r6);
                r10.append("'");
                r2 = r2.replace("packageName", r10.toString());
             */
            /* JADX WARN: Code restructure failed: missing block: B:86:0x0325, code lost:
            
                r6 = defpackage.bpw.c;
                r9 = new java.lang.StringBuilder((java.lang.String.valueOf(r6).length() + 132) + java.lang.String.valueOf(r2).length());
                r9.append("INSERT INTO ExperimentTokens (");
                r9.append(r6);
                r9.append(") SELECT ");
                r9.append(r2);
                r9.append(" FROM ExperimentTokens WHERE packageName = ? AND version = ? AND user = ? AND isCommitted = 0");
                r1 = r3.compileStatement(r9.toString());
             */
            /* JADX WARN: Code restructure failed: missing block: B:88:0x0358, code lost:
            
                r1.bindString(1, r5.h);
                r1.bindLong(2, r5.j);
                r1.bindString(3, r5.k);
                r1.execute();
             */
            /* JADX WARN: Code restructure failed: missing block: B:89:0x036e, code lost:
            
                if (r1 == null) goto L108;
             */
            /* JADX WARN: Code restructure failed: missing block: B:90:0x0370, code lost:
            
                r1.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:91:0x0373, code lost:
            
                r1 = r5.j;
                r2 = r5.k;
                r3.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND isCommitted = 1", new java.lang.String[]{r5.i});
             */
            /* JADX WARN: Code restructure failed: missing block: B:92:0x038e, code lost:
            
                if (defpackage.cdw.c(r5.i) == false) goto L111;
             */
            /* JADX WARN: Code restructure failed: missing block: B:94:0x0391, code lost:
            
                r8 = defpackage.bpw.e;
                r9 = defpackage.bpw.f;
                r12 = new java.lang.StringBuilder((java.lang.String.valueOf(r8).length() + 166) + java.lang.String.valueOf(r9).length());
                r12.append("INSERT INTO CrossLoggedExperimentTokens (");
                r12.append(r8);
                r12.append(") SELECT ");
                r12.append(r9);
                r12.append(" FROM CrossLoggedExperimentTokens WHERE fromPackageName = ? AND fromVersion = ? AND fromUser = ? AND isCommitted = 0");
                r6 = r3.compileStatement(r12.toString());
             */
            /* JADX WARN: Code restructure failed: missing block: B:96:0x03c6, code lost:
            
                r6.bindString(1, r5.i);
                r6.bindLong(2, r1);
                r6.bindString(3, r2);
                r6.execute();
             */
            /* JADX WARN: Code restructure failed: missing block: B:97:0x03d8, code lost:
            
                if (r6 == null) goto L130;
             */
            /* JADX WARN: Code restructure failed: missing block: B:98:0x03da, code lost:
            
                r6.close();
             */
            /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Throwable] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                cew cewVar = cew.this;
                String str2 = str;
                try {
                    bps c = bps.c(cewVar.a);
                    try {
                        bpw bpwVar = new bpw(str2, cewVar.c);
                        Context context = cewVar.a;
                        SQLiteDatabase writableDatabase = c.getWritableDatabase();
                        writableDatabase.beginTransaction();
                        try {
                            if (bpwVar.g.startsWith("CURRENT")) {
                                String[] split = bpwVar.g.split(":", 3);
                                if (split.length != 3) {
                                    String str3 = bpwVar.g;
                                    throw new bpt(29500, str3.length() != 0 ? "Empty or malformed snapshot token: ".concat(str3) : new String("Empty or malformed snapshot token: "));
                                }
                                bpwVar.k = split[1];
                                if (!bpwVar.k.equals("") && !bpv.a(bpwVar.k, context)) {
                                    throw new bpt(29500, "Invalid user");
                                }
                                bpwVar.i = re.e(split[2], bpwVar.l);
                                String str4 = bpwVar.i;
                                bpwVar.h = str4;
                                bpwVar.j = bpz.a(writableDatabase, str4, bpwVar.k);
                            } else {
                                String[] f = bpz.f(bpwVar.g);
                                if (f == null) {
                                    String str5 = bpwVar.g;
                                    throw new bpt(29500, str5.length() != 0 ? "Empty (package not registered?) or malformed snapshot token: ".concat(str5) : new String("Empty (package not registered?) or malformed snapshot token: "));
                                }
                                bpwVar.k = f[0];
                                bpwVar.h = f[1];
                                bpwVar.i = f[5];
                                try {
                                    bpwVar.j = Integer.parseInt(f[2]);
                                    try {
                                        long parseLong = Long.parseLong(f[3]);
                                        long f2 = re.f(writableDatabase, bpwVar.h);
                                        if (f2 != parseLong) {
                                            StringBuilder sb = new StringBuilder(99);
                                            sb.append("Stale snapshot (change count changed - expected ");
                                            sb.append(f2);
                                            sb.append("  but was ");
                                            sb.append(parseLong);
                                            sb.append(")");
                                            throw new bpt(29501, sb.toString());
                                        }
                                        if (f.length <= 7 || f[7].equals("1")) {
                                            String str6 = f[6];
                                            Pair b = bps.b(writableDatabase, bpwVar.i, bpwVar.k);
                                            if (!str6.equals(b != null ? bpi.b(writableDatabase, bpwVar.i, ((Integer) b.second).intValue(), (String) b.first, true) : "")) {
                                                throw new bpt(29501, "Stale snapshot (committed configuration changed)");
                                            }
                                        }
                                    } catch (NumberFormatException e) {
                                        String str7 = bpwVar.g;
                                        throw new bpt(29500, str7.length() != 0 ? "Malformed snapshot token (change): ".concat(str7) : new String("Malformed snapshot token (change): "), e);
                                    }
                                } catch (NumberFormatException e2) {
                                    String str8 = bpwVar.g;
                                    throw new bpt(29500, str8.length() != 0 ? "Malformed snapshot token (version): ".concat(str8) : new String("Malformed snapshot token (version): "), e2);
                                }
                            }
                            Cursor a = bpi.a(writableDatabase, bpwVar.i, bpwVar.j, bpwVar.k, false, "servingVersion");
                            try {
                                if (a.moveToFirst()) {
                                    a.getInt(0);
                                }
                            } finally {
                            }
                        } catch (Throwable th) {
                            writableDatabase.endTransaction();
                            throw th;
                        }
                    } finally {
                    }
                } catch (bpt e3) {
                    throw new cep(e3.a, e3.getMessage(), e3);
                }
            }
        });
    }

    @Override // defpackage.ceo
    public final dag b() {
        return this.d.submit(new Callable() { // from class: cev
            /* JADX WARN: Code restructure failed: missing block: B:100:0x0156, code lost:
            
                r12 = defpackage.bpy.a;
                r24 = r11;
             */
            /* JADX WARN: Code restructure failed: missing block: B:101:0x015d, code lost:
            
                r24 = r11;
                r4 = r13.query("ExperimentTokens", new java.lang.String[]{"serverToken"}, "packageName = ? AND isCommitted = 1", new java.lang.String[]{r3}, null, null, null, null);
             */
            /* JADX WARN: Code restructure failed: missing block: B:104:0x0183, code lost:
            
                if (r4.moveToFirst() == false) goto L63;
             */
            /* JADX WARN: Code restructure failed: missing block: B:105:0x0185, code lost:
            
                r5 = new defpackage.bpy(null, r4.getString(0), 0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:106:0x0190, code lost:
            
                if (r4 == null) goto L165;
             */
            /* JADX WARN: Code restructure failed: missing block: B:107:0x0192, code lost:
            
                r4.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:111:0x0196, code lost:
            
                r5 = defpackage.bpy.a;
             */
            /* JADX WARN: Code restructure failed: missing block: B:112:0x0198, code lost:
            
                if (r4 == null) goto L165;
             */
            /* JADX WARN: Code restructure failed: missing block: B:113:0x019a, code lost:
            
                r4.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:114:0x019e, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:99:0x0154, code lost:
            
                if (defpackage.dlz.c() != false) goto L56;
             */
            /* JADX WARN: Removed duplicated region for block: B:36:0x0249 A[Catch: bpt -> 0x028a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {bpt -> 0x028a, blocks: (B:3:0x0004, B:36:0x0249, B:172:0x0289, B:5:0x000a, B:7:0x0015, B:34:0x0240, B:160:0x0272, B:161:0x0275, B:162:0x0276, B:163:0x027f, B:9:0x001c, B:12:0x0036, B:32:0x00ea, B:33:0x023d, B:48:0x00fa, B:50:0x00fb, B:54:0x0118, B:56:0x011d, B:59:0x0127, B:62:0x012e, B:64:0x013a, B:67:0x013f, B:68:0x01ed, B:75:0x021d, B:78:0x0224, B:80:0x0228, B:82:0x0233, B:92:0x0256, B:95:0x014d, B:98:0x0150, B:100:0x0156, B:101:0x015d, B:107:0x0192, B:113:0x019a, B:122:0x01a7, B:124:0x01a8, B:130:0x01e0, B:135:0x01e8, B:144:0x0260, B:146:0x0261, B:147:0x0266, B:157:0x0270), top: B:2:0x0004, inners: #0 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                bpb[] bpbVarArr;
                bpy bpyVar;
                bpy bpyVar2;
                Cursor query;
                boz b;
                cew cewVar = cew.this;
                try {
                    bps c = bps.c(cewVar.a);
                    try {
                        bpx bpxVar = new bpx(cewVar.c);
                        if (bpxVar.a == null) {
                            throw new bpt(29500, "No package name");
                        }
                        SQLiteDatabase writableDatabase = c.getWritableDatabase();
                        bps.g(writableDatabase);
                        try {
                            bpxVar.a = re.e(bpxVar.a, bpxVar.b);
                            if (!"all".equals(bpxVar.a)) {
                                Cursor query2 = writableDatabase.query("Packages", new String[]{"packageName"}, "packageName = ?", new String[]{bpxVar.a}, null, null, null);
                                try {
                                    int count = query2.getCount();
                                    if (query2 != null) {
                                        query2.close();
                                    }
                                    if (count == 0) {
                                        throw new bpt();
                                    }
                                    String str = bpxVar.a;
                                    bpb[] a = bpx.a(writableDatabase, str);
                                    if (a != null) {
                                        int length = a.length;
                                        int i = 0;
                                        while (true) {
                                            if (i >= length) {
                                                break;
                                            }
                                            bpb bpbVar = a[i];
                                            if (bpbVar.b.equals("__phenotype_server_token") && bpbVar.h == 4) {
                                                bpyVar2 = new bpy(null, bpbVar.c(), 0L);
                                                bpbVarArr = a;
                                                break;
                                            }
                                            i++;
                                        }
                                    } else {
                                        bpbVarArr = a;
                                        Cursor query3 = writableDatabase.query("ExperimentTokens", new String[]{"experimentToken", "serverToken", "servingVersion"}, "packageName = ? AND isCommitted = 1", new String[]{str}, null, null, null, null);
                                        try {
                                            if (query3.moveToFirst()) {
                                                bpyVar = new bpy(query3.getBlob(0), query3.getString(1), query3.getLong(2));
                                                if (query3 != null) {
                                                    query3.close();
                                                }
                                            } else {
                                                bpyVar = bpy.a;
                                                if (query3 != null) {
                                                    query3.close();
                                                }
                                            }
                                            bpyVar2 = bpyVar;
                                        } finally {
                                        }
                                    }
                                    TreeSet treeSet = new TreeSet(bpb.a);
                                    query = writableDatabase.query("Flags", (String[]) bpk.b.a(), "packageName = ? AND committed = 1", new String[]{str}, null, null, null);
                                    while (query.moveToNext()) {
                                        try {
                                            treeSet.add(bpz.c(query));
                                        } finally {
                                        }
                                    }
                                    if (query != null) {
                                        query.close();
                                    }
                                    bpb[] bpbVarArr2 = bpbVarArr;
                                    if (bpbVarArr2 != null) {
                                        for (bpb bpbVar2 : bpbVarArr2) {
                                            treeSet.remove(bpbVar2);
                                            treeSet.add(bpbVar2);
                                        }
                                    }
                                    b = bpz.b(treeSet, Collections.emptySet(), "", bpyVar2, false);
                                    writableDatabase.setTransactionSuccessful();
                                    writableDatabase.endTransaction();
                                    cem f = cew.f(b);
                                    if (c != null) {
                                    }
                                    return f;
                                } finally {
                                    if (query2 == null) {
                                        throw th;
                                    }
                                    try {
                                        query2.close();
                                        throw th;
                                    } catch (Throwable th) {
                                    }
                                }
                            }
                            query = writableDatabase.query("Packages", new String[]{"packageName", "version", "androidPackageName"}, null, null, null, null, null);
                            try {
                                ArrayList arrayList = new ArrayList();
                                while (query.moveToNext()) {
                                    ddf n = dbt.p.n();
                                    String string = query.getString(0);
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    dbt dbtVar = (dbt) n.b;
                                    string.getClass();
                                    dbtVar.a |= 1;
                                    dbtVar.d = string;
                                    int i2 = query.getInt(1);
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    dbt dbtVar2 = (dbt) n.b;
                                    dbtVar2.a |= 2;
                                    dbtVar2.e = i2;
                                    String string2 = query.getString(2);
                                    if (n.c) {
                                        n.k();
                                        n.c = false;
                                    }
                                    dbt dbtVar3 = (dbt) n.b;
                                    string2.getClass();
                                    dbtVar3.b = 7;
                                    dbtVar3.c = string2;
                                    dbt dbtVar4 = (dbt) n.h();
                                    arrayList.add(new bpb(dbtVar4.d, dbtVar4.h(), 0));
                                }
                                b = new boz("", "", new boy[]{new boy(0, (bpb[]) arrayList.toArray(new bpb[0]), new String[0])}, false, null, 0L);
                                if (query != null) {
                                    query.close();
                                }
                                writableDatabase.setTransactionSuccessful();
                                writableDatabase.endTransaction();
                                cem f2 = cew.f(b);
                                if (c != null) {
                                    c.close();
                                }
                                return f2;
                            } finally {
                            }
                        } catch (Throwable th2) {
                            writableDatabase.endTransaction();
                            throw th2;
                        }
                    } finally {
                    }
                } catch (bpt e) {
                    throw new cep(e.a, e.getMessage(), e);
                }
            }
        });
    }

    @Override // defpackage.ceo
    public final dag c(final String str, final String str2) {
        str.getClass();
        str2.getClass();
        return this.d.submit(new Callable() { // from class: cer
            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:113:0x05c1 A[Catch: bpt -> 0x05f1, TRY_ENTER, TRY_LEAVE, TryCatch #22 {bpt -> 0x05f1, blocks: (B:3:0x000c, B:113:0x05c1, B:362:0x05f0), top: B:2:0x000c }] */
            /* JADX WARN: Removed duplicated region for block: B:208:0x05a9 A[Catch: all -> 0x05c6, TryCatch #23 {all -> 0x05c6, blocks: (B:76:0x0391, B:78:0x0397, B:80:0x039b, B:82:0x03a6, B:98:0x03f8, B:108:0x0455, B:109:0x0548, B:128:0x0473, B:129:0x0476, B:143:0x0483, B:144:0x0486, B:206:0x05a3, B:208:0x05a9, B:210:0x05b3, B:213:0x05c5, B:146:0x0487, B:156:0x04d3, B:166:0x0529, B:168:0x052e, B:170:0x0534, B:172:0x0542, B:186:0x055c, B:187:0x055f, B:201:0x056c, B:202:0x056f, B:301:0x0592, B:302:0x0595), top: B:20:0x005d }] */
            /* JADX WARN: Removed duplicated region for block: B:213:0x05c5 A[Catch: all -> 0x05c6, TRY_ENTER, TRY_LEAVE, TryCatch #23 {all -> 0x05c6, blocks: (B:76:0x0391, B:78:0x0397, B:80:0x039b, B:82:0x03a6, B:98:0x03f8, B:108:0x0455, B:109:0x0548, B:128:0x0473, B:129:0x0476, B:143:0x0483, B:144:0x0486, B:206:0x05a3, B:208:0x05a9, B:210:0x05b3, B:213:0x05c5, B:146:0x0487, B:156:0x04d3, B:166:0x0529, B:168:0x052e, B:170:0x0534, B:172:0x0542, B:186:0x055c, B:187:0x055f, B:201:0x056c, B:202:0x056f, B:301:0x0592, B:302:0x0595), top: B:20:0x005d }] */
            /* JADX WARN: Removed duplicated region for block: B:357:0x05eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:363:? A[Catch: bpt -> 0x05f1, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #22 {bpt -> 0x05f1, blocks: (B:3:0x000c, B:113:0x05c1, B:362:0x05f0), top: B:2:0x000c }] */
            /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r9v10 */
            /* JADX WARN: Type inference failed for: r9v12 */
            /* JADX WARN: Type inference failed for: r9v14 */
            /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r9v25 */
            /* JADX WARN: Type inference failed for: r9v27 */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                bps bpsVar;
                Throwable th;
                SQLiteDatabase sQLiteDatabase;
                Throwable th2;
                ?? r9;
                bps bpsVar2;
                SQLiteDatabase sQLiteDatabase2;
                bpt bptVar;
                boz bozVar;
                boolean z;
                Throwable th3;
                String str3;
                Cursor query;
                Throwable th4;
                String str4;
                bpy bpyVar;
                SQLiteDatabase sQLiteDatabase3;
                String str5;
                bpy bpyVar2;
                cew cewVar = cew.this;
                String str6 = str;
                String str7 = str2;
                try {
                    bps c = bps.c(cewVar.a);
                    try {
                        bpz bpzVar = new bpz(str6, str7, str6, cewVar.c);
                        Context context = cewVar.a;
                        ?? r5 = bpzVar.c;
                        try {
                            if (r5 == 0) {
                                throw new bpt(29500, "No source package");
                            }
                            ?? r92 = bpzVar.e;
                            if (r92 == 0) {
                                throw new bpt(29500, "No target package");
                            }
                            boolean endsWith = r5.endsWith(r92);
                            SQLiteDatabase sQLiteDatabase4 = r92;
                            if (!endsWith) {
                                try {
                                    ?? r93 = "com.google.EMPTY";
                                    if (!bpzVar.c.equals("com.google.EMPTY")) {
                                        throw new bpt(29500, "Invalid alternate configuration name");
                                    }
                                    sQLiteDatabase4 = r93;
                                } catch (Throwable th5) {
                                    th = th5;
                                    bpsVar = c;
                                    if (bpsVar != null) {
                                    }
                                }
                            }
                            if (!bpzVar.d.equals("") && !bpv.a(bpzVar.d, context)) {
                                throw new bpt(29500, "Invalid user");
                            }
                            try {
                                afo.b(bpz.class.getSimpleName(), "transaction", bpzVar.c);
                                SQLiteDatabase writableDatabase = c.getWritableDatabase();
                                bps.g(writableDatabase);
                                bpzVar.c = re.e(bpzVar.c, bpzVar.f);
                                bpzVar.e = re.e(bpzVar.e, bpzVar.f);
                                try {
                                    r9 = 1;
                                    if (!bpzVar.c.equals(bpzVar.e)) {
                                        try {
                                            String str8 = bpzVar.c;
                                            afo.b(bpz.class.getSimpleName(), "hasLogSources", str8);
                                            try {
                                                Cursor query2 = writableDatabase.query("LogSources", new String[]{"packageName"}, "packageName = ?", new String[]{str8}, null, null, "1");
                                                try {
                                                    int count = query2.getCount();
                                                    if (query2 != null) {
                                                        query2.close();
                                                    }
                                                    if (count > 0) {
                                                        throw new bpt(29500, "Alternate package cannot have log sources");
                                                    }
                                                } finally {
                                                    if (query2 == null) {
                                                        throw th;
                                                    }
                                                    try {
                                                        query2.close();
                                                        throw th;
                                                    } catch (Throwable th6) {
                                                    }
                                                }
                                            } catch (Throwable th7) {
                                                Trace.endSection();
                                                throw th7;
                                            }
                                        } catch (bpt e) {
                                            bptVar = e;
                                            sQLiteDatabase2 = writableDatabase;
                                            bpsVar2 = c;
                                            if (bptVar.a == 29503) {
                                            }
                                        } catch (Throwable th8) {
                                            th2 = th8;
                                            sQLiteDatabase = writableDatabase;
                                            sQLiteDatabase.endTransaction();
                                            Trace.endSection();
                                            throw th2;
                                        }
                                    }
                                    if (bpz.d(bpzVar.e) && !bpzVar.d.equals("")) {
                                        String str9 = bpzVar.d;
                                        String str10 = bpzVar.e;
                                        StringBuilder sb = new StringBuilder(str9.length() + 47 + String.valueOf(str10).length());
                                        sb.append("Can't commit to ");
                                        sb.append(str9);
                                        sb.append(" for direct boot aware package ");
                                        sb.append(str10);
                                        throw new bpt(29500, sb.toString());
                                    }
                                    int a = bpz.a(writableDatabase, bpzVar.c, bpzVar.d);
                                    bpb[] e2 = bpz.e(writableDatabase, bpzVar.e, bpzVar.d);
                                    try {
                                        if (e2 != null) {
                                            int length = e2.length;
                                            int i = 0;
                                            while (true) {
                                                if (i < length) {
                                                    bpb bpbVar = e2[i];
                                                    if (bpbVar.b.equals("__phenotype_server_token") && bpbVar.h == 4) {
                                                        str4 = "";
                                                        bpyVar = new bpy(null, bpbVar.c(), 0L);
                                                        str3 = null;
                                                        z = false;
                                                        break;
                                                    }
                                                    i++;
                                                } else if (dlz.c()) {
                                                    afo.b(bpz.class.getSimpleName(), "getUncommittedTokens_serverToken", bpzVar.c);
                                                    try {
                                                        z = false;
                                                        Cursor query3 = writableDatabase.query("ExperimentTokens", new String[]{"serverToken"}, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{bpzVar.c, Integer.toString(a), bpzVar.d}, null, null, null, null);
                                                        try {
                                                            if (query3.moveToFirst()) {
                                                                str5 = null;
                                                                bpyVar2 = new bpy(null, query3.getString(0), 0L);
                                                                if (query3 != null) {
                                                                    query3.close();
                                                                }
                                                            } else {
                                                                str5 = null;
                                                                bpyVar2 = bpy.a;
                                                                if (query3 != null) {
                                                                    query3.close();
                                                                }
                                                            }
                                                            Trace.endSection();
                                                            str4 = "";
                                                            bpyVar = bpyVar2;
                                                            str3 = str5;
                                                        } finally {
                                                        }
                                                    } finally {
                                                        Trace.endSection();
                                                    }
                                                } else {
                                                    str4 = "";
                                                    bpyVar = bpy.a;
                                                    str3 = null;
                                                    z = false;
                                                }
                                            }
                                        } else {
                                            z = false;
                                            afo.b(bpz.class.getSimpleName(), "getUncommittedTokens_tokens", bpzVar.c);
                                            try {
                                                str3 = null;
                                                query = writableDatabase.query("ExperimentTokens", new String[]{"experimentToken", "serverToken", "servingVersion"}, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{bpzVar.c, Integer.toString(a), bpzVar.d}, null, null, null, null);
                                                try {
                                                } catch (Throwable th9) {
                                                    th4 = th9;
                                                }
                                            } catch (Throwable th10) {
                                                th = th10;
                                            }
                                            try {
                                                if (query.moveToFirst()) {
                                                    try {
                                                        str4 = "";
                                                        bpy bpyVar3 = new bpy(query.getBlob(0), query.getString(1), query.getLong(2));
                                                        if (query != null) {
                                                            query.close();
                                                        }
                                                        Trace.endSection();
                                                        bpyVar = bpyVar3;
                                                    } catch (Throwable th11) {
                                                        th4 = th11;
                                                        if (query != null) {
                                                            try {
                                                                query.close();
                                                            } catch (Throwable th12) {
                                                            }
                                                        }
                                                        try {
                                                            throw th4;
                                                        } catch (Throwable th13) {
                                                            th = th13;
                                                            th3 = th;
                                                            Trace.endSection();
                                                            throw th3;
                                                        }
                                                    }
                                                } else {
                                                    str4 = "";
                                                    bpyVar = bpy.a;
                                                    if (query != null) {
                                                        query.close();
                                                    }
                                                    Trace.endSection();
                                                }
                                            } catch (Throwable th14) {
                                                th3 = th14;
                                                Trace.endSection();
                                                throw th3;
                                            }
                                        }
                                        Pair b = bps.b(writableDatabase, bpzVar.e, bpzVar.d);
                                        String b2 = b != null ? bpi.b(writableDatabase, bpzVar.e, ((Integer) b.second).intValue(), (String) b.first, true) : str3;
                                        String b3 = bpi.b(writableDatabase, bpzVar.c, a, bpzVar.d, z);
                                        boolean z2 = (e2 != null ? e2 == bpz.a : true) && "!".equals(b2) && dlz.a.a().d();
                                        String str11 = bpzVar.d;
                                        String str12 = bpzVar.c;
                                        boolean z3 = z2;
                                        long f = re.f(writableDatabase, str12);
                                        String str13 = str4;
                                        String str14 = bpzVar.e;
                                        if (b2 == null) {
                                            b2 = str13;
                                        }
                                        bpsVar2 = c;
                                        String str15 = true != z3 ? "0" : "1";
                                        try {
                                            bpy bpyVar4 = bpyVar;
                                            try {
                                                StringBuilder sb2 = new StringBuilder(str11.length() + 38 + String.valueOf(str12).length() + String.valueOf(b3).length() + String.valueOf(str14).length() + b2.length() + str15.length());
                                                sb2.append(str11);
                                                sb2.append(" ");
                                                sb2.append(str12);
                                                sb2.append(" ");
                                                sb2.append(a);
                                                sb2.append(" ");
                                                sb2.append(f);
                                                sb2.append(" ");
                                                sb2.append(b3);
                                                sb2.append(" ");
                                                sb2.append(str14);
                                                sb2.append(" ");
                                                sb2.append(b2);
                                                sb2.append(" ");
                                                sb2.append(str15);
                                                String sb3 = sb2.toString();
                                                if (z3) {
                                                    String str16 = (String) b.first;
                                                    int intValue = ((Integer) b.second).intValue();
                                                    TreeSet treeSet = new TreeSet();
                                                    TreeSet treeSet2 = new TreeSet(bpb.a);
                                                    sQLiteDatabase3 = writableDatabase;
                                                    bpb[] a2 = bpx.a(sQLiteDatabase3, bpzVar.e);
                                                    if (a2 != null) {
                                                        for (bpb bpbVar2 : a2) {
                                                            treeSet.add(bpbVar2);
                                                            treeSet2.add(bpbVar2);
                                                        }
                                                    }
                                                    afo.b(bpz.class.getSimpleName(), "getDeltaConfigurations_committedFlags", bpzVar.c);
                                                    try {
                                                        Cursor query4 = sQLiteDatabase3.query("Flags", (String[]) bpk.b.a(), "packageName = ? AND version = ? AND user = ? AND committed = 1", new String[]{bpzVar.e, Integer.toString(intValue), str16}, null, null, "name");
                                                        while (query4.moveToNext()) {
                                                            try {
                                                                bpb c2 = bpz.c(query4);
                                                                if (!treeSet2.contains(c2)) {
                                                                    treeSet.add(c2);
                                                                    treeSet2.add(c2);
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                        if (query4 != null) {
                                                            query4.close();
                                                        }
                                                        Trace.endSection();
                                                        TreeSet treeSet3 = new TreeSet();
                                                        TreeSet treeSet4 = new TreeSet(bpb.a);
                                                        afo.b(bpz.class.getSimpleName(), "getDeltaConfigurations_pendingFlags", bpzVar.c);
                                                        try {
                                                            Cursor query5 = sQLiteDatabase3.query("Flags", (String[]) bpk.b.a(), "packageName = ? AND version = ? AND user = ? AND committed = 0", new String[]{bpzVar.c, Integer.toString(a), bpzVar.d}, null, null, "name");
                                                            while (query5.moveToNext()) {
                                                                try {
                                                                    bpb c3 = bpz.c(query5);
                                                                    treeSet3.add(c3);
                                                                    treeSet4.add(c3);
                                                                } finally {
                                                                }
                                                            }
                                                            if (query5 != null) {
                                                                query5.close();
                                                            }
                                                            Trace.endSection();
                                                            treeSet3.removeAll(treeSet);
                                                            treeSet2.removeAll(treeSet4);
                                                            bozVar = bpz.b(treeSet3, treeSet2, sb3, bpyVar4, true);
                                                        } finally {
                                                            Trace.endSection();
                                                        }
                                                    } finally {
                                                        Trace.endSection();
                                                    }
                                                } else {
                                                    sQLiteDatabase3 = writableDatabase;
                                                    TreeSet treeSet5 = new TreeSet(bpb.a);
                                                    afo.b(bpz.class.getSimpleName(), "getFullConfigurations_flags", bpzVar.c);
                                                    try {
                                                        Cursor query6 = sQLiteDatabase3.query("Flags", (String[]) bpk.b.a(), "packageName = ?", new String[]{bpzVar.c}, null, null, null);
                                                        while (query6.moveToNext()) {
                                                            try {
                                                                treeSet5.add(bpz.c(query6));
                                                            } finally {
                                                                if (query6 == null) {
                                                                    throw th;
                                                                }
                                                                try {
                                                                    query6.close();
                                                                    throw th;
                                                                } catch (Throwable th15) {
                                                                }
                                                            }
                                                        }
                                                        if (query6 != null) {
                                                            query6.close();
                                                        }
                                                        Trace.endSection();
                                                        TreeSet treeSet6 = new TreeSet(bpb.a);
                                                        afo.b(bpz.class.getSimpleName(), "getFullConfigurations_userFlags", bpzVar.c);
                                                        try {
                                                            Cursor query7 = sQLiteDatabase3.query("Flags", (String[]) bpk.b.a(), "packageName = ? AND version = ? AND user = ? AND committed = 0", new String[]{bpzVar.c, Integer.toString(a), bpzVar.d}, null, null, "name");
                                                            while (query7.moveToNext()) {
                                                                try {
                                                                    bpb c4 = bpz.c(query7);
                                                                    treeSet6.add(c4);
                                                                    treeSet5.remove(c4);
                                                                } finally {
                                                                    if (query7 == null) {
                                                                        throw th;
                                                                    }
                                                                    try {
                                                                        query7.close();
                                                                        throw th;
                                                                    } catch (Throwable th16) {
                                                                    }
                                                                }
                                                            }
                                                            if (query7 != null) {
                                                                query7.close();
                                                            }
                                                            Trace.endSection();
                                                            if (e2 != null) {
                                                                for (bpb bpbVar3 : e2) {
                                                                    treeSet6.remove(bpbVar3);
                                                                    treeSet6.add(bpbVar3);
                                                                    treeSet5.remove(bpbVar3);
                                                                }
                                                            }
                                                            bozVar = bpz.b(treeSet6, treeSet5, sb3, bpyVar4, false);
                                                        } finally {
                                                            Trace.endSection();
                                                        }
                                                    } finally {
                                                        Trace.endSection();
                                                    }
                                                }
                                                sQLiteDatabase3.setTransactionSuccessful();
                                                sQLiteDatabase3.endTransaction();
                                            } catch (bpt e3) {
                                                e = e3;
                                                r9 = writableDatabase;
                                                bptVar = e;
                                                sQLiteDatabase2 = r9;
                                                if (bptVar.a == 29503) {
                                                    throw bptVar;
                                                }
                                                if (!bpzVar.c.equals(bpzVar.e)) {
                                                    throw bptVar;
                                                }
                                                bozVar = bpz.b;
                                                sQLiteDatabase2.endTransaction();
                                                Trace.endSection();
                                                cem f2 = cew.f(bozVar);
                                                if (bpsVar2 != null) {
                                                }
                                                return f2;
                                            } catch (Throwable th17) {
                                                th = th17;
                                                sQLiteDatabase4 = writableDatabase;
                                                th2 = th;
                                                sQLiteDatabase = sQLiteDatabase4;
                                                sQLiteDatabase.endTransaction();
                                                Trace.endSection();
                                                throw th2;
                                            }
                                        } catch (bpt e4) {
                                            e = e4;
                                            r9 = writableDatabase;
                                        } catch (Throwable th18) {
                                            th = th18;
                                            sQLiteDatabase4 = writableDatabase;
                                        }
                                    } catch (bpt e5) {
                                        e = e5;
                                    }
                                } catch (bpt e6) {
                                    e = e6;
                                    r9 = writableDatabase;
                                    bpsVar2 = c;
                                } catch (Throwable th19) {
                                    th = th19;
                                    sQLiteDatabase4 = writableDatabase;
                                }
                                Trace.endSection();
                                cem f22 = cew.f(bozVar);
                                if (bpsVar2 != null) {
                                    bpsVar2.close();
                                }
                                return f22;
                            } catch (Throwable th20) {
                                th = th20;
                            }
                        } catch (Throwable th21) {
                            th = th21;
                            th = th;
                            if (bpsVar != null) {
                                throw th;
                            }
                            try {
                                bpsVar.close();
                                throw th;
                            } catch (Throwable th22) {
                                throw th;
                            }
                        }
                    } catch (Throwable th23) {
                        th = th23;
                        bpsVar = c;
                    }
                } catch (bpt e7) {
                    throw new cep(e7.a, e7.getMessage(), e7);
                }
            }
        });
    }

    @Override // defpackage.ceo
    public final dag d(final int i, final String[] strArr, final byte[] bArr) {
        return this.d.submit(new Callable() { // from class: ceq
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:116:0x033c  */
            /* JADX WARN: Removed duplicated region for block: B:133:0x0393  */
            /* JADX WARN: Removed duplicated region for block: B:135:0x0398  */
            /* JADX WARN: Removed duplicated region for block: B:138:0x03ae  */
            /* JADX WARN: Removed duplicated region for block: B:144:0x03cb A[Catch: all -> 0x03ec, TRY_LEAVE, TryCatch #5 {all -> 0x03ec, blocks: (B:118:0x033d, B:121:0x0348, B:123:0x035e, B:125:0x0362, B:128:0x0372, B:131:0x0386, B:136:0x039b, B:139:0x03b0, B:142:0x03c5, B:144:0x03cb, B:309:0x037f), top: B:117:0x033d }] */
            /* JADX WARN: Removed duplicated region for block: B:153:0x0419 A[Catch: NameNotFoundException -> 0x0681, all -> 0x06a4, TryCatch #1 {all -> 0x06a4, blocks: (B:296:0x0402, B:149:0x0405, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:162:0x04a9, B:164:0x04b7, B:170:0x052e, B:173:0x0536, B:224:0x0541, B:226:0x056c, B:227:0x0574, B:229:0x058e, B:230:0x05a3, B:233:0x0598, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:295:0x0402 }] */
            /* JADX WARN: Removed duplicated region for block: B:156:0x0435  */
            /* JADX WARN: Removed duplicated region for block: B:159:0x049d A[Catch: NameNotFoundException -> 0x0681, all -> 0x06a4, TRY_LEAVE, TryCatch #1 {all -> 0x06a4, blocks: (B:296:0x0402, B:149:0x0405, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:162:0x04a9, B:164:0x04b7, B:170:0x052e, B:173:0x0536, B:224:0x0541, B:226:0x056c, B:227:0x0574, B:229:0x058e, B:230:0x05a3, B:233:0x0598, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:295:0x0402 }] */
            /* JADX WARN: Removed duplicated region for block: B:164:0x04b7 A[Catch: NameNotFoundException -> 0x0681, all -> 0x06a4, TRY_ENTER, TryCatch #1 {all -> 0x06a4, blocks: (B:296:0x0402, B:149:0x0405, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:162:0x04a9, B:164:0x04b7, B:170:0x052e, B:173:0x0536, B:224:0x0541, B:226:0x056c, B:227:0x0574, B:229:0x058e, B:230:0x05a3, B:233:0x0598, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:295:0x0402 }] */
            /* JADX WARN: Removed duplicated region for block: B:166:0x0526 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:178:0x05b3 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:184:0x05e6 A[Catch: all -> 0x06ee, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x06ee, blocks: (B:180:0x05b7, B:184:0x05e6, B:194:0x05f3, B:196:0x05f4, B:197:0x05fc, B:198:0x060f, B:200:0x0615, B:202:0x062c, B:203:0x0635, B:205:0x063b, B:207:0x0656, B:209:0x065c, B:212:0x0667, B:232:0x05ae, B:289:0x0684, B:291:0x068b, B:292:0x0693, B:293:0x06a3, B:321:0x06b2, B:404:0x06c2, B:413:0x06ca, B:414:0x06d3, B:416:0x06d4, B:417:0x06e0, B:419:0x06e1, B:420:0x06ed, B:182:0x05e1, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:164:0x04b7, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:40:0x00b3, inners: #4, #27 }] */
            /* JADX WARN: Removed duplicated region for block: B:200:0x0615 A[Catch: all -> 0x06ee, LOOP:2: B:198:0x060f->B:200:0x0615, LOOP_END, TryCatch #6 {all -> 0x06ee, blocks: (B:180:0x05b7, B:184:0x05e6, B:194:0x05f3, B:196:0x05f4, B:197:0x05fc, B:198:0x060f, B:200:0x0615, B:202:0x062c, B:203:0x0635, B:205:0x063b, B:207:0x0656, B:209:0x065c, B:212:0x0667, B:232:0x05ae, B:289:0x0684, B:291:0x068b, B:292:0x0693, B:293:0x06a3, B:321:0x06b2, B:404:0x06c2, B:413:0x06ca, B:414:0x06d3, B:416:0x06d4, B:417:0x06e0, B:419:0x06e1, B:420:0x06ed, B:182:0x05e1, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:164:0x04b7, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:40:0x00b3, inners: #4, #27 }] */
            /* JADX WARN: Removed duplicated region for block: B:205:0x063b A[Catch: all -> 0x06ee, LOOP:3: B:203:0x0635->B:205:0x063b, LOOP_END, TryCatch #6 {all -> 0x06ee, blocks: (B:180:0x05b7, B:184:0x05e6, B:194:0x05f3, B:196:0x05f4, B:197:0x05fc, B:198:0x060f, B:200:0x0615, B:202:0x062c, B:203:0x0635, B:205:0x063b, B:207:0x0656, B:209:0x065c, B:212:0x0667, B:232:0x05ae, B:289:0x0684, B:291:0x068b, B:292:0x0693, B:293:0x06a3, B:321:0x06b2, B:404:0x06c2, B:413:0x06ca, B:414:0x06d3, B:416:0x06d4, B:417:0x06e0, B:419:0x06e1, B:420:0x06ed, B:182:0x05e1, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:164:0x04b7, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:40:0x00b3, inners: #4, #27 }] */
            /* JADX WARN: Removed duplicated region for block: B:209:0x065c A[Catch: all -> 0x06ee, TryCatch #6 {all -> 0x06ee, blocks: (B:180:0x05b7, B:184:0x05e6, B:194:0x05f3, B:196:0x05f4, B:197:0x05fc, B:198:0x060f, B:200:0x0615, B:202:0x062c, B:203:0x0635, B:205:0x063b, B:207:0x0656, B:209:0x065c, B:212:0x0667, B:232:0x05ae, B:289:0x0684, B:291:0x068b, B:292:0x0693, B:293:0x06a3, B:321:0x06b2, B:404:0x06c2, B:413:0x06ca, B:414:0x06d3, B:416:0x06d4, B:417:0x06e0, B:419:0x06e1, B:420:0x06ed, B:182:0x05e1, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:164:0x04b7, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:40:0x00b3, inners: #4, #27 }] */
            /* JADX WARN: Removed duplicated region for block: B:215:0x0671 A[Catch: all -> 0x0702, TryCatch #16 {all -> 0x0702, blocks: (B:213:0x066c, B:215:0x0671, B:221:0x0677, B:299:0x06f4, B:300:0x06f7, B:425:0x06f8, B:426:0x0701), top: B:35:0x00a2 }] */
            /* JADX WARN: Removed duplicated region for block: B:218:0x067c A[Catch: bpt -> 0x0710, TRY_ENTER, TRY_LEAVE, TryCatch #0 {bpt -> 0x0710, blocks: (B:3:0x001a, B:218:0x067c, B:32:0x070f), top: B:2:0x001a }] */
            /* JADX WARN: Removed duplicated region for block: B:220:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:223:0x0666  */
            /* JADX WARN: Removed duplicated region for block: B:226:0x056c A[Catch: all -> 0x06a4, TryCatch #1 {all -> 0x06a4, blocks: (B:296:0x0402, B:149:0x0405, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:162:0x04a9, B:164:0x04b7, B:170:0x052e, B:173:0x0536, B:224:0x0541, B:226:0x056c, B:227:0x0574, B:229:0x058e, B:230:0x05a3, B:233:0x0598, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:295:0x0402 }] */
            /* JADX WARN: Removed duplicated region for block: B:229:0x058e A[Catch: all -> 0x06a4, TryCatch #1 {all -> 0x06a4, blocks: (B:296:0x0402, B:149:0x0405, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:162:0x04a9, B:164:0x04b7, B:170:0x052e, B:173:0x0536, B:224:0x0541, B:226:0x056c, B:227:0x0574, B:229:0x058e, B:230:0x05a3, B:233:0x0598, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:295:0x0402 }] */
            /* JADX WARN: Removed duplicated region for block: B:233:0x0598 A[Catch: all -> 0x06a4, TryCatch #1 {all -> 0x06a4, blocks: (B:296:0x0402, B:149:0x0405, B:151:0x0410, B:153:0x0419, B:154:0x0420, B:157:0x0497, B:159:0x049d, B:162:0x04a9, B:164:0x04b7, B:170:0x052e, B:173:0x0536, B:224:0x0541, B:226:0x056c, B:227:0x0574, B:229:0x058e, B:230:0x05a3, B:233:0x0598, B:244:0x04bd, B:246:0x04c4, B:247:0x04cb, B:248:0x04da, B:251:0x04dc, B:253:0x04e2, B:255:0x04e9, B:256:0x04f0, B:257:0x0500, B:259:0x0501, B:237:0x0503, B:239:0x050a, B:240:0x0511, B:241:0x0521, B:265:0x0440, B:266:0x0444, B:267:0x0448, B:269:0x044e, B:273:0x0462, B:277:0x046d, B:279:0x0474, B:281:0x047b, B:282:0x0482, B:283:0x0492, B:285:0x0493), top: B:295:0x0402 }] */
            /* JADX WARN: Removed duplicated region for block: B:234:0x0572  */
            /* JADX WARN: Removed duplicated region for block: B:261:0x043b  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x070a A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:286:0x041e  */
            /* JADX WARN: Removed duplicated region for block: B:295:0x0402 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:303:0x03e1  */
            /* JADX WARN: Removed duplicated region for block: B:306:0x03c4  */
            /* JADX WARN: Removed duplicated region for block: B:307:0x039a  */
            /* JADX WARN: Removed duplicated region for block: B:308:0x0395  */
            /* JADX WARN: Removed duplicated region for block: B:323:0x03f1  */
            /* JADX WARN: Removed duplicated region for block: B:33:? A[Catch: bpt -> 0x0710, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #0 {bpt -> 0x0710, blocks: (B:3:0x001a, B:218:0x067c, B:32:0x070f), top: B:2:0x001a }] */
            /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r3v15 */
            /* JADX WARN: Type inference failed for: r3v19 */
            /* JADX WARN: Type inference failed for: r3v2 */
            /* JADX WARN: Type inference failed for: r3v28 */
            /* JADX WARN: Type inference failed for: r3v3, types: [android.database.sqlite.SQLiteDatabase] */
            /* JADX WARN: Type inference failed for: r3v32 */
            /* JADX WARN: Type inference failed for: r3v33 */
            /* JADX WARN: Type inference failed for: r3v4 */
            /* JADX WARN: Type inference failed for: r3v41 */
            /* JADX WARN: Type inference failed for: r3v42 */
            /* JADX WARN: Type inference failed for: r3v65 */
            /* JADX WARN: Type inference failed for: r3v67 */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                bps bpsVar;
                Throwable th;
                dbt dbtVar;
                Throwable th2;
                bps bpsVar2;
                byte[] blob;
                Set e;
                Set set;
                dbt dbtVar2;
                SQLiteDatabase sQLiteDatabase;
                cst it;
                cst it2;
                boolean z;
                byte[] bArr2;
                long j;
                byte[] bArr3;
                long j2;
                boolean z2;
                PackageManager packageManager;
                String str;
                Cursor query;
                Throwable th3;
                SQLiteDatabase sQLiteDatabase2;
                boolean z3;
                boolean z4;
                byte[] bArr4;
                byte[] bArr5;
                byte[] bArr6;
                boolean z5;
                boolean z6;
                boolean z7;
                boolean z8;
                cha chaVar;
                long j3;
                PackageInfo packageInfo;
                List b;
                int L;
                String str2;
                String str3;
                byte[] h;
                byte[] bArr7;
                Cursor query2;
                dcl dclVar;
                byte[] blob2;
                boolean z9;
                byte[] bArr8;
                byte[] bArr9;
                SQLiteDatabase sQLiteDatabase3 = "dynamicParams";
                cew cewVar = cew.this;
                int i2 = i;
                String[] strArr2 = strArr;
                byte[] bArr10 = bArr;
                try {
                    bps c = bps.c(cewVar.a);
                    try {
                        String str4 = cewVar.c;
                        ddf n = dbt.p.n();
                        if (n.c) {
                            try {
                                n.k();
                                n.c = false;
                            } catch (Throwable th4) {
                                th = th4;
                                bpsVar = c;
                                if (bpsVar != null) {
                                    throw th;
                                }
                                try {
                                    bpsVar.close();
                                    throw th;
                                } catch (Throwable th5) {
                                    throw th;
                                }
                            }
                        }
                        dbt dbtVar3 = (dbt) n.b;
                        int i3 = dbtVar3.a | 2;
                        dbtVar3.a = i3;
                        dbtVar3.e = i2;
                        int i4 = i3 | 16;
                        dbtVar3.a = i4;
                        dbtVar3.j = false;
                        dbtVar3.k = 1;
                        int i5 = i4 | 128;
                        dbtVar3.a = i5;
                        dbtVar3.a = i5 | 1;
                        dbtVar3.d = "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection";
                        n.s(Arrays.asList(strArr2));
                        if (bArr10 != null && bArr10.length > 0) {
                            dcl t = dcl.t(bArr10);
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dbt dbtVar4 = (dbt) n.b;
                            dbtVar4.a |= 8;
                            dbtVar4.i = t;
                        }
                        if (str4 != null) {
                            if (n.c) {
                                n.k();
                                n.c = false;
                            }
                            dbt dbtVar5 = (dbt) n.b;
                            dbtVar5.b = 7;
                            dbtVar5.c = str4;
                        }
                        dbt dbtVar6 = (dbt) n.h();
                        Context context = cewVar.a;
                        try {
                            if (dbtVar6 == null) {
                                throw new IllegalArgumentException("Null RegistrationInfo");
                            }
                            SQLiteDatabase writableDatabase = c.getWritableDatabase();
                            writableDatabase.beginTransaction();
                            try {
                                try {
                                    if (dbtVar6.d.isEmpty()) {
                                        throw new bpt(29500, "No package name");
                                    }
                                    for (String str5 : dbtVar6.g) {
                                        if (str5 == null || str5.isEmpty()) {
                                            throw new bpt(29500, "Invalid log source");
                                        }
                                    }
                                    if (!dbtVar6.j && !dbtVar6.h.isEmpty()) {
                                        throw new bpt(29500, "Experiment ids for weak registration only");
                                    }
                                    if ((dbtVar6.b == 7 ? (String) dbtVar6.c : "").isEmpty()) {
                                        throw new bpt(29500, "No Android package");
                                    }
                                    int L2 = hl.L(dbtVar6.k);
                                    if (L2 != 0 && L2 != 1) {
                                        String str6 = dbtVar6.d;
                                        String e2 = re.e(str6, dbtVar6.b == 7 ? (String) dbtVar6.c : "");
                                        if (!e2.equals(str6)) {
                                            xq.g(writableDatabase, str6);
                                            bqb.a();
                                        }
                                        if (dbtVar6.d.equals(e2)) {
                                            dbtVar = dbtVar6;
                                        } else {
                                            ddf o = dbt.p.o(dbtVar6);
                                            if (o.c) {
                                                o.k();
                                                o.c = false;
                                            }
                                            dbt dbtVar7 = (dbt) o.b;
                                            e2.getClass();
                                            dbtVar7.a |= 1;
                                            dbtVar7.d = e2;
                                            dbtVar = (dbt) o.h();
                                        }
                                        String str7 = dbtVar.d;
                                        String str8 = dbtVar.b == 7 ? (String) dbtVar.c : "";
                                        Cursor query3 = writableDatabase.query("Packages", new String[]{"androidPackageName"}, "packageName = ?", new String[]{str7}, null, null, null);
                                        try {
                                            if (query3.getCount() == 1) {
                                                try {
                                                    query3.moveToFirst();
                                                    String string = query3.getString(0);
                                                    if (!str8.equals(string)) {
                                                        StringBuilder sb = new StringBuilder(String.valueOf(str8).length() + 111 + String.valueOf(string).length());
                                                        sb.append("Failed registering with Android package: ");
                                                        sb.append(str8);
                                                        sb.append(". Config package already registered with a different Android package: ");
                                                        sb.append(string);
                                                        throw new bpt(29506, sb.toString());
                                                    }
                                                } catch (Throwable th6) {
                                                    th2 = th6;
                                                    if (query3 == null) {
                                                        throw th2;
                                                    }
                                                    try {
                                                        query3.close();
                                                        throw th2;
                                                    } catch (Throwable th7) {
                                                        throw th2;
                                                    }
                                                }
                                            }
                                            if (query3 != null) {
                                                query3.close();
                                            }
                                            Set a = bpn.a(writableDatabase, dbtVar.d);
                                            int L3 = hl.L(dbtVar.k);
                                            try {
                                                try {
                                                    if (L3 == 0) {
                                                        bpsVar2 = c;
                                                    } else if (L3 == 3) {
                                                        try {
                                                            bpsVar2 = c;
                                                            try {
                                                                Cursor query4 = writableDatabase.query("Packages", new String[]{"serializedDeclarativeRegInfo"}, "packageName = ?", new String[]{dbtVar.d}, null, null, null);
                                                                try {
                                                                    if (query4.moveToNext() && (blob = query4.getBlob(0)) != null && blob.length > 0) {
                                                                        if (Arrays.equals(dbtVar.h(), blob)) {
                                                                            if (query4 != null) {
                                                                                query4.close();
                                                                            }
                                                                            e = xp.e(a, dbtVar.d);
                                                                            set = a;
                                                                            dbtVar2 = dbtVar6;
                                                                            sQLiteDatabase = writableDatabase;
                                                                            String str9 = dbtVar.d;
                                                                            Set set2 = set;
                                                                            cso k = fw.k(set2, e);
                                                                            cso k2 = fw.k(e, set2);
                                                                            it = ((csn) k).iterator();
                                                                            while (it.hasNext()) {
                                                                                sQLiteDatabase.delete("LogSources", "packageName = ? AND logSourceName = ?", new String[]{str9, (String) it.next()});
                                                                            }
                                                                            it2 = ((csn) k2).iterator();
                                                                            while (it2.hasNext()) {
                                                                                String str10 = (String) it2.next();
                                                                                ContentValues contentValues = new ContentValues();
                                                                                contentValues.put("packageName", str9);
                                                                                contentValues.put("logSourceName", str10);
                                                                                sQLiteDatabase.insertWithOnConflict("LogSources", null, contentValues, 5);
                                                                            }
                                                                            z = k.isEmpty() ? !k2.isEmpty() : true;
                                                                            String str11 = dbtVar.d;
                                                                            sQLiteDatabase.setTransactionSuccessful();
                                                                            sQLiteDatabase.endTransaction();
                                                                            if (!z || dbtVar2.j) {
                                                                                bqb.a();
                                                                            }
                                                                            if (bpsVar2 == null) {
                                                                                return null;
                                                                            }
                                                                            bpsVar2.close();
                                                                            return null;
                                                                        }
                                                                    }
                                                                    if (query4 != null) {
                                                                        query4.close();
                                                                    }
                                                                } finally {
                                                                }
                                                            } catch (Throwable th8) {
                                                                th = th8;
                                                                sQLiteDatabase3 = writableDatabase;
                                                                sQLiteDatabase3.endTransaction();
                                                                throw th;
                                                            }
                                                        } catch (Throwable th9) {
                                                            th = th9;
                                                        }
                                                    } else {
                                                        bpsVar2 = c;
                                                    }
                                                    packageInfo = context.getPackageManager().getPackageInfo(dbtVar.b == 7 ? (String) dbtVar.c : "", 128);
                                                    b = chaVar.b(packageInfo.packageName);
                                                    L = hl.L(dbtVar.k);
                                                    if (L == 0) {
                                                        str3 = "dynamicParams";
                                                        str2 = "serializedDeclarativeRegInfo";
                                                        h = null;
                                                    } else {
                                                        str2 = "serializedDeclarativeRegInfo";
                                                        if (L == 2) {
                                                            try {
                                                                Iterator it3 = chaVar.c(packageInfo, b).iterator();
                                                                sQLiteDatabase3 = "dynamicParams";
                                                                while (it3.hasNext()) {
                                                                    dbt dbtVar8 = (dbt) it3.next();
                                                                    Iterator it4 = it3;
                                                                    str3 = sQLiteDatabase3;
                                                                    if (dbtVar8.d.equals(dbtVar.d)) {
                                                                        h = dbtVar8.h();
                                                                        break;
                                                                    }
                                                                    it3 = it4;
                                                                    sQLiteDatabase3 = str3;
                                                                }
                                                            } catch (IllegalArgumentException e3) {
                                                                if (dmc.d()) {
                                                                    throw new bpt(29500, String.valueOf(dbtVar.b == 7 ? (String) dbtVar.c : "").concat(" failed to register."), e3);
                                                                }
                                                                throw e3;
                                                            }
                                                        }
                                                        str3 = sQLiteDatabase3;
                                                        h = null;
                                                    }
                                                    if ((dbtVar.a & 2048) == 0 && dmc.a.a().d()) {
                                                        try {
                                                            dclVar = (dcl) chaVar.a(packageInfo, b).get(dbtVar.d);
                                                            if (dclVar != null) {
                                                                bArr7 = dclVar.C();
                                                                if (z3 && z5 && z7 && z8 && !z6 && Arrays.equals(bArr5, h) && z4 && Arrays.equals(bArr4, bArr7)) {
                                                                    sQLiteDatabase3 = sQLiteDatabase2;
                                                                    if (!z5 && (z7 || bArr6 != null)) {
                                                                        query2 = sQLiteDatabase3.query("ExperimentTokens", new String[]{"version"}, "packageName = ? AND version = ?", new String[]{dbtVar.d, Integer.toString(dbtVar.e)}, null, null, null);
                                                                        try {
                                                                            query2.getCount();
                                                                            if (query2 != null) {
                                                                                query2.close();
                                                                            }
                                                                        } finally {
                                                                        }
                                                                    }
                                                                    e = xp.e(dbtVar.g, dbtVar.d);
                                                                    sQLiteDatabase = sQLiteDatabase3;
                                                                    String str92 = dbtVar.d;
                                                                    Set set22 = set;
                                                                    cso k3 = fw.k(set22, e);
                                                                    cso k22 = fw.k(e, set22);
                                                                    it = ((csn) k3).iterator();
                                                                    while (it.hasNext()) {
                                                                    }
                                                                    it2 = ((csn) k22).iterator();
                                                                    while (it2.hasNext()) {
                                                                    }
                                                                    if (k3.isEmpty()) {
                                                                    }
                                                                    String str112 = dbtVar.d;
                                                                    sQLiteDatabase.setTransactionSuccessful();
                                                                    sQLiteDatabase.endTransaction();
                                                                    if (!z) {
                                                                    }
                                                                    bqb.a();
                                                                    if (bpsVar2 == null) {
                                                                    }
                                                                }
                                                                ContentValues contentValues2 = new ContentValues();
                                                                contentValues2.put("packageName", dbtVar.d);
                                                                contentValues2.put("version", Integer.valueOf(dbtVar.e));
                                                                contentValues2.put("params", bArr2);
                                                                contentValues2.put(str3, bArr6);
                                                                contentValues2.put("weak", Integer.valueOf(dbtVar.j ? 1 : 0));
                                                                contentValues2.put("androidPackageName", dbtVar.b != 7 ? (String) dbtVar.c : "");
                                                                contentValues2.put("isSynced", (Integer) 0);
                                                                contentValues2.put(str2, h);
                                                                if (dmc.c()) {
                                                                    contentValues2.put("baselineCl", Long.valueOf(dbtVar.n));
                                                                } else {
                                                                    contentValues2.put("baselineCl", Long.valueOf(j3));
                                                                }
                                                                contentValues2.put("heterodyneInfo", bArr7);
                                                                SQLiteDatabase sQLiteDatabase4 = sQLiteDatabase2;
                                                                sQLiteDatabase4.insertWithOnConflict("Packages", null, contentValues2, 5);
                                                                sQLiteDatabase3 = sQLiteDatabase4;
                                                                if (!z5) {
                                                                    query2 = sQLiteDatabase3.query("ExperimentTokens", new String[]{"version"}, "packageName = ? AND version = ?", new String[]{dbtVar.d, Integer.toString(dbtVar.e)}, null, null, null);
                                                                    query2.getCount();
                                                                    if (query2 != null) {
                                                                    }
                                                                }
                                                                e = xp.e(dbtVar.g, dbtVar.d);
                                                                sQLiteDatabase = sQLiteDatabase3;
                                                                String str922 = dbtVar.d;
                                                                Set set222 = set;
                                                                cso k32 = fw.k(set222, e);
                                                                cso k222 = fw.k(e, set222);
                                                                it = ((csn) k32).iterator();
                                                                while (it.hasNext()) {
                                                                }
                                                                it2 = ((csn) k222).iterator();
                                                                while (it2.hasNext()) {
                                                                }
                                                                if (k32.isEmpty()) {
                                                                }
                                                                String str1122 = dbtVar.d;
                                                                sQLiteDatabase.setTransactionSuccessful();
                                                                sQLiteDatabase.endTransaction();
                                                                if (!z) {
                                                                }
                                                                bqb.a();
                                                                if (bpsVar2 == null) {
                                                                }
                                                            }
                                                        } catch (PackageManager.NameNotFoundException e4) {
                                                            throw new bpt(29500, String.valueOf(dbtVar.b == 7 ? (String) dbtVar.c : "").concat(" not found!."), e4);
                                                        } catch (IOException e5) {
                                                            throw new bpt(29511, String.valueOf(dbtVar.b == 7 ? (String) dbtVar.c : "").concat(" Failed to read HeterodyneInfo"), e5);
                                                        } catch (IllegalArgumentException e6) {
                                                            if (dmc.d()) {
                                                                throw new bpt(29500, String.valueOf(dbtVar.b == 7 ? (String) dbtVar.c : "").concat(" failed to register."), e6);
                                                            }
                                                            throw e6;
                                                        }
                                                    }
                                                    bArr7 = bArr3;
                                                    if (z3) {
                                                        sQLiteDatabase3 = sQLiteDatabase2;
                                                        if (!z5) {
                                                        }
                                                        e = xp.e(dbtVar.g, dbtVar.d);
                                                        sQLiteDatabase = sQLiteDatabase3;
                                                        String str9222 = dbtVar.d;
                                                        Set set2222 = set;
                                                        cso k322 = fw.k(set2222, e);
                                                        cso k2222 = fw.k(e, set2222);
                                                        it = ((csn) k322).iterator();
                                                        while (it.hasNext()) {
                                                        }
                                                        it2 = ((csn) k2222).iterator();
                                                        while (it2.hasNext()) {
                                                        }
                                                        if (k322.isEmpty()) {
                                                        }
                                                        String str11222 = dbtVar.d;
                                                        sQLiteDatabase.setTransactionSuccessful();
                                                        sQLiteDatabase.endTransaction();
                                                        if (!z) {
                                                        }
                                                        bqb.a();
                                                        if (bpsVar2 == null) {
                                                        }
                                                    }
                                                    ContentValues contentValues22 = new ContentValues();
                                                    contentValues22.put("packageName", dbtVar.d);
                                                    contentValues22.put("version", Integer.valueOf(dbtVar.e));
                                                    contentValues22.put("params", bArr2);
                                                    contentValues22.put(str3, bArr6);
                                                    contentValues22.put("weak", Integer.valueOf(dbtVar.j ? 1 : 0));
                                                    contentValues22.put("androidPackageName", dbtVar.b != 7 ? (String) dbtVar.c : "");
                                                    contentValues22.put("isSynced", (Integer) 0);
                                                    contentValues22.put(str2, h);
                                                    if (dmc.c()) {
                                                    }
                                                    contentValues22.put("heterodyneInfo", bArr7);
                                                    SQLiteDatabase sQLiteDatabase42 = sQLiteDatabase2;
                                                    sQLiteDatabase42.insertWithOnConflict("Packages", null, contentValues22, 5);
                                                    sQLiteDatabase3 = sQLiteDatabase42;
                                                    if (!z5) {
                                                    }
                                                    e = xp.e(dbtVar.g, dbtVar.d);
                                                    sQLiteDatabase = sQLiteDatabase3;
                                                    String str92222 = dbtVar.d;
                                                    Set set22222 = set;
                                                    cso k3222 = fw.k(set22222, e);
                                                    cso k22222 = fw.k(e, set22222);
                                                    it = ((csn) k3222).iterator();
                                                    while (it.hasNext()) {
                                                    }
                                                    it2 = ((csn) k22222).iterator();
                                                    while (it2.hasNext()) {
                                                    }
                                                    if (k3222.isEmpty()) {
                                                    }
                                                    String str112222 = dbtVar.d;
                                                    sQLiteDatabase.setTransactionSuccessful();
                                                    sQLiteDatabase.endTransaction();
                                                    if (!z) {
                                                    }
                                                    bqb.a();
                                                    if (bpsVar2 == null) {
                                                    }
                                                } catch (PackageManager.NameNotFoundException e7) {
                                                    throw new bpt(29500, String.valueOf(dbtVar.b == 7 ? (String) dbtVar.c : "").concat(" not found!."), e7);
                                                }
                                                if (query.moveToNext()) {
                                                    try {
                                                        boolean z10 = query.getInt(0) == dbtVar.e;
                                                        boolean equals = Arrays.equals(bArr2, query.getBlob(1));
                                                        if (dmc.a.a().c()) {
                                                            if (dbtVar.m) {
                                                                z5 = z10;
                                                            } else {
                                                                z5 = z10;
                                                                if (Arrays.equals(bArr2, query.getBlob(2))) {
                                                                }
                                                            }
                                                            if (query.getBlob(2) != null) {
                                                                z9 = true;
                                                                blob2 = null;
                                                                z6 = z9;
                                                                z7 = equals;
                                                                boolean z11 = dbtVar.j != (query.getInt(3) == 0);
                                                                byte[] blob3 = query.getBlob(4);
                                                                z8 = z11;
                                                                byte[] blob4 = query.getBlob(6);
                                                                if (dmc.c()) {
                                                                    bArr8 = blob4;
                                                                } else {
                                                                    if (z2) {
                                                                        bArr8 = blob4;
                                                                        if (query.getLong(5) != j) {
                                                                        }
                                                                    } else {
                                                                        bArr8 = blob4;
                                                                    }
                                                                    sQLiteDatabase2 = writableDatabase;
                                                                    z4 = true;
                                                                    bArr6 = blob2;
                                                                    bArr5 = blob3;
                                                                    bArr4 = bArr8;
                                                                    z3 = true;
                                                                }
                                                                if (dmc.c()) {
                                                                    bArr9 = blob3;
                                                                    if (query.getLong(5) == dbtVar.n) {
                                                                        bArr4 = bArr8;
                                                                        sQLiteDatabase2 = writableDatabase;
                                                                        z3 = true;
                                                                        z4 = true;
                                                                        bArr6 = blob2;
                                                                        bArr5 = bArr9;
                                                                    }
                                                                } else {
                                                                    bArr9 = blob3;
                                                                }
                                                                bArr4 = bArr8;
                                                                sQLiteDatabase2 = writableDatabase;
                                                                z3 = true;
                                                                z4 = false;
                                                                bArr6 = blob2;
                                                                bArr5 = bArr9;
                                                            }
                                                        } else {
                                                            z5 = z10;
                                                        }
                                                        blob2 = query.getBlob(2);
                                                        z9 = false;
                                                        z6 = z9;
                                                        z7 = equals;
                                                        if (dbtVar.j != (query.getInt(3) == 0)) {
                                                        }
                                                        byte[] blob32 = query.getBlob(4);
                                                        z8 = z11;
                                                        byte[] blob42 = query.getBlob(6);
                                                        if (dmc.c()) {
                                                        }
                                                        if (dmc.c()) {
                                                        }
                                                        bArr4 = bArr8;
                                                        sQLiteDatabase2 = writableDatabase;
                                                        z3 = true;
                                                        z4 = false;
                                                        bArr6 = blob2;
                                                        bArr5 = bArr9;
                                                    } catch (Throwable th10) {
                                                        th3 = th10;
                                                        if (query == null) {
                                                            throw th3;
                                                        }
                                                        try {
                                                            query.close();
                                                            throw th3;
                                                        } catch (Throwable th11) {
                                                            throw th3;
                                                        }
                                                    }
                                                } else {
                                                    sQLiteDatabase2 = writableDatabase;
                                                    z3 = false;
                                                    z4 = false;
                                                    bArr4 = null;
                                                    bArr5 = null;
                                                    bArr6 = null;
                                                    z5 = false;
                                                    z6 = false;
                                                    z7 = false;
                                                    z8 = false;
                                                }
                                                if (query != null) {
                                                    try {
                                                        query.close();
                                                    } catch (Throwable th12) {
                                                        th = th12;
                                                        sQLiteDatabase3 = sQLiteDatabase2;
                                                        sQLiteDatabase3.endTransaction();
                                                        throw th;
                                                    }
                                                }
                                                j3 = j;
                                                chaVar = new cha(context.getPackageManager());
                                            } catch (Throwable th13) {
                                                th3 = th13;
                                            }
                                            String str12 = dbtVar.d;
                                            ddp ddpVar = dbtVar.h;
                                            dbtVar2 = dbtVar6;
                                            writableDatabase.delete("WeakExperimentIds", "packageName = ?", new String[]{str12});
                                            if (ddpVar != null) {
                                                for (Iterator it5 = ddpVar.iterator(); it5.hasNext(); it5 = it5) {
                                                    int intValue = ((Integer) it5.next()).intValue();
                                                    ContentValues contentValues3 = new ContentValues();
                                                    contentValues3.put("packageName", str12);
                                                    contentValues3.put("experimentId", Integer.valueOf(intValue));
                                                    writableDatabase.insert("WeakExperimentIds", null, contentValues3);
                                                }
                                            }
                                            byte[] C = dbtVar.i.C();
                                            bArr2 = C.length == 0 ? null : C;
                                            byte[] C2 = dbtVar.o.C();
                                            byte[] bArr11 = C2.length == 0 ? null : C2;
                                            j = dbtVar.n;
                                            if (dmc.c()) {
                                                try {
                                                    packageManager = context.getPackageManager();
                                                    bArr3 = bArr11;
                                                } catch (IOException e8) {
                                                    bArr3 = bArr11;
                                                }
                                                try {
                                                    j2 = j;
                                                    if (dbtVar.b == 7) {
                                                        try {
                                                            str = (String) dbtVar.c;
                                                        } catch (IOException e9) {
                                                            j = j2;
                                                            z2 = false;
                                                            ArrayList arrayList = new ArrayList();
                                                            set = a;
                                                            arrayList.addAll(Arrays.asList("version", "params", "dynamicParams", "weak", "serializedDeclarativeRegInfo", "baselineCl", "heterodyneInfo"));
                                                            query = writableDatabase.query("Packages", (String[]) arrayList.toArray(new String[0]), new String("packageName = ?"), new String[]{dbtVar.d}, null, null, null);
                                                            if (query.moveToNext()) {
                                                            }
                                                            if (query != null) {
                                                            }
                                                            j3 = j;
                                                            chaVar = new cha(context.getPackageManager());
                                                            packageInfo = context.getPackageManager().getPackageInfo(dbtVar.b == 7 ? (String) dbtVar.c : "", 128);
                                                            b = chaVar.b(packageInfo.packageName);
                                                            L = hl.L(dbtVar.k);
                                                            if (L == 0) {
                                                            }
                                                            if ((dbtVar.a & 2048) == 0) {
                                                            }
                                                            bArr7 = bArr3;
                                                            if (z3) {
                                                            }
                                                            ContentValues contentValues222 = new ContentValues();
                                                            contentValues222.put("packageName", dbtVar.d);
                                                            contentValues222.put("version", Integer.valueOf(dbtVar.e));
                                                            contentValues222.put("params", bArr2);
                                                            contentValues222.put(str3, bArr6);
                                                            contentValues222.put("weak", Integer.valueOf(dbtVar.j ? 1 : 0));
                                                            contentValues222.put("androidPackageName", dbtVar.b != 7 ? (String) dbtVar.c : "");
                                                            contentValues222.put("isSynced", (Integer) 0);
                                                            contentValues222.put(str2, h);
                                                            if (dmc.c()) {
                                                            }
                                                            contentValues222.put("heterodyneInfo", bArr7);
                                                            SQLiteDatabase sQLiteDatabase422 = sQLiteDatabase2;
                                                            sQLiteDatabase422.insertWithOnConflict("Packages", null, contentValues222, 5);
                                                            sQLiteDatabase3 = sQLiteDatabase422;
                                                            if (!z5) {
                                                            }
                                                            e = xp.e(dbtVar.g, dbtVar.d);
                                                            sQLiteDatabase = sQLiteDatabase3;
                                                            String str922222 = dbtVar.d;
                                                            Set set222222 = set;
                                                            cso k32222 = fw.k(set222222, e);
                                                            cso k222222 = fw.k(e, set222222);
                                                            it = ((csn) k32222).iterator();
                                                            while (it.hasNext()) {
                                                            }
                                                            it2 = ((csn) k222222).iterator();
                                                            while (it2.hasNext()) {
                                                            }
                                                            if (k32222.isEmpty()) {
                                                            }
                                                            String str1122222 = dbtVar.d;
                                                            sQLiteDatabase.setTransactionSuccessful();
                                                            sQLiteDatabase.endTransaction();
                                                            if (!z) {
                                                            }
                                                            bqb.a();
                                                            if (bpsVar2 == null) {
                                                            }
                                                        }
                                                    } else {
                                                        str = "";
                                                    }
                                                    j = dbc.a(packageManager, str).a;
                                                    z2 = true;
                                                } catch (IOException e10) {
                                                    j2 = j;
                                                    j = j2;
                                                    z2 = false;
                                                    ArrayList arrayList2 = new ArrayList();
                                                    set = a;
                                                    arrayList2.addAll(Arrays.asList("version", "params", "dynamicParams", "weak", "serializedDeclarativeRegInfo", "baselineCl", "heterodyneInfo"));
                                                    query = writableDatabase.query("Packages", (String[]) arrayList2.toArray(new String[0]), new String("packageName = ?"), new String[]{dbtVar.d}, null, null, null);
                                                    if (query.moveToNext()) {
                                                    }
                                                    if (query != null) {
                                                    }
                                                    j3 = j;
                                                    chaVar = new cha(context.getPackageManager());
                                                    packageInfo = context.getPackageManager().getPackageInfo(dbtVar.b == 7 ? (String) dbtVar.c : "", 128);
                                                    b = chaVar.b(packageInfo.packageName);
                                                    L = hl.L(dbtVar.k);
                                                    if (L == 0) {
                                                    }
                                                    if ((dbtVar.a & 2048) == 0) {
                                                        dclVar = (dcl) chaVar.a(packageInfo, b).get(dbtVar.d);
                                                        if (dclVar != null) {
                                                        }
                                                    }
                                                    bArr7 = bArr3;
                                                    if (z3) {
                                                    }
                                                    ContentValues contentValues2222 = new ContentValues();
                                                    contentValues2222.put("packageName", dbtVar.d);
                                                    contentValues2222.put("version", Integer.valueOf(dbtVar.e));
                                                    contentValues2222.put("params", bArr2);
                                                    contentValues2222.put(str3, bArr6);
                                                    contentValues2222.put("weak", Integer.valueOf(dbtVar.j ? 1 : 0));
                                                    contentValues2222.put("androidPackageName", dbtVar.b != 7 ? (String) dbtVar.c : "");
                                                    contentValues2222.put("isSynced", (Integer) 0);
                                                    contentValues2222.put(str2, h);
                                                    if (dmc.c()) {
                                                    }
                                                    contentValues2222.put("heterodyneInfo", bArr7);
                                                    SQLiteDatabase sQLiteDatabase4222 = sQLiteDatabase2;
                                                    sQLiteDatabase4222.insertWithOnConflict("Packages", null, contentValues2222, 5);
                                                    sQLiteDatabase3 = sQLiteDatabase4222;
                                                    if (!z5) {
                                                    }
                                                    e = xp.e(dbtVar.g, dbtVar.d);
                                                    sQLiteDatabase = sQLiteDatabase3;
                                                    String str9222222 = dbtVar.d;
                                                    Set set2222222 = set;
                                                    cso k322222 = fw.k(set2222222, e);
                                                    cso k2222222 = fw.k(e, set2222222);
                                                    it = ((csn) k322222).iterator();
                                                    while (it.hasNext()) {
                                                    }
                                                    it2 = ((csn) k2222222).iterator();
                                                    while (it2.hasNext()) {
                                                    }
                                                    if (k322222.isEmpty()) {
                                                    }
                                                    String str11222222 = dbtVar.d;
                                                    sQLiteDatabase.setTransactionSuccessful();
                                                    sQLiteDatabase.endTransaction();
                                                    if (!z) {
                                                    }
                                                    bqb.a();
                                                    if (bpsVar2 == null) {
                                                    }
                                                }
                                            } else {
                                                bArr3 = bArr11;
                                                z2 = false;
                                            }
                                            ArrayList arrayList22 = new ArrayList();
                                            set = a;
                                            arrayList22.addAll(Arrays.asList("version", "params", "dynamicParams", "weak", "serializedDeclarativeRegInfo", "baselineCl", "heterodyneInfo"));
                                            query = writableDatabase.query("Packages", (String[]) arrayList22.toArray(new String[0]), new String("packageName = ?"), new String[]{dbtVar.d}, null, null, null);
                                        } catch (Throwable th14) {
                                            th2 = th14;
                                        }
                                    }
                                    throw new bpt(29500, "Unknown registration type");
                                } catch (Throwable th15) {
                                    th = th15;
                                    sQLiteDatabase3.endTransaction();
                                    throw th;
                                }
                            } catch (Throwable th16) {
                                th = th16;
                                sQLiteDatabase3 = writableDatabase;
                            }
                        } catch (Throwable th17) {
                            th = th17;
                            th = th;
                            if (bpsVar != null) {
                            }
                        }
                    } catch (Throwable th18) {
                        th = th18;
                        bpsVar = c;
                    }
                } catch (bpt e11) {
                    throw new cep(e11.a, e11.getMessage(), e11);
                }
            }
        });
    }

    @Override // defpackage.ceo
    public final dag e() {
        ex.m(true, "Must specify a reason for why this sync is occurring");
        return this.d.submit(new Callable() { // from class: cet
            public final /* synthetic */ String b = "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection";

            /* JADX WARN: Code restructure failed: missing block: B:100:0x0287, code lost:
            
                r15 = r12;
             */
            /* JADX WARN: Code restructure failed: missing block: B:102:0x028f, code lost:
            
                ((defpackage.bqf) r2).k(r3, java.util.Collections.singletonList(r9), r1, r15, r11, r14, false);
             */
            /* JADX WARN: Code restructure failed: missing block: B:105:0x02a6, code lost:
            
                if (r12 != null) goto L328;
             */
            /* JADX WARN: Code restructure failed: missing block: B:107:0x02a8, code lost:
            
                r10.aj(r15);
             */
            /* JADX WARN: Code restructure failed: missing block: B:111:0x02ac, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:117:0x02af, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:118:0x02b0, code lost:
            
                r5 = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:119:0x02b1, code lost:
            
                r17 = r1;
                r18 = r3;
                ((defpackage.csx) ((defpackage.csx) defpackage.bqf.a.c().g(r5)).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "syncForEachUser", 574, "HeterodyneSyncer.java")).n("Sync failed");
             */
            /* JADX WARN: Code restructure failed: missing block: B:120:0x02d2, code lost:
            
                if (r10.c != false) goto L111;
             */
            /* JADX WARN: Code restructure failed: missing block: B:121:0x02d4, code lost:
            
                r10.k();
                r10.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:122:0x02da, code lost:
            
                r1 = (defpackage.dgx) r10.b;
                r1.f = 4;
                r1.a |= 16;
             */
            /* JADX WARN: Code restructure failed: missing block: B:123:0x02ef, code lost:
            
                if ((((defpackage.dgw) r15.b).a & 2) == 0) goto L115;
             */
            /* JADX WARN: Code restructure failed: missing block: B:125:0x0309, code lost:
            
                if (r12 == null) goto L120;
             */
            /* JADX WARN: Code restructure failed: missing block: B:126:0x030b, code lost:
            
                r10.aj(r15);
             */
            /* JADX WARN: Code restructure failed: missing block: B:127:0x030e, code lost:
            
                r1 = r17;
                r3 = r18;
             */
            /* JADX WARN: Code restructure failed: missing block: B:130:0x02f4, code lost:
            
                if (r15.c != false) goto L117;
             */
            /* JADX WARN: Code restructure failed: missing block: B:131:0x02f6, code lost:
            
                r15.k();
                r15.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:132:0x02fc, code lost:
            
                r1 = (defpackage.dgw) r15.b;
                r1.c = 1;
                r1.a |= 2;
             */
            /* JADX WARN: Code restructure failed: missing block: B:133:0x0289, code lost:
            
                r15 = defpackage.dgw.h.n();
             */
            /* JADX WARN: Code restructure failed: missing block: B:135:0x031a, code lost:
            
                if (r5 != null) goto L159;
             */
            /* JADX WARN: Code restructure failed: missing block: B:136:0x031c, code lost:
            
                if (r13 > 0) goto L154;
             */
            /* JADX WARN: Code restructure failed: missing block: B:138:0x0322, code lost:
            
                if (r11.a <= r11.b) goto L130;
             */
            /* JADX WARN: Code restructure failed: missing block: B:139:0x0326, code lost:
            
                if (r12 == null) goto L149;
             */
            /* JADX WARN: Code restructure failed: missing block: B:140:0x0328, code lost:
            
                r1 = defpackage.dpx.t(((defpackage.dgw) r12.b).c);
             */
            /* JADX WARN: Code restructure failed: missing block: B:141:0x0332, code lost:
            
                if (r1 != 0) goto L134;
             */
            /* JADX WARN: Code restructure failed: missing block: B:143:0x0338, code lost:
            
                r1 = defpackage.bqf.e(r11);
             */
            /* JADX WARN: Code restructure failed: missing block: B:144:0x033e, code lost:
            
                if (r12.c == false) goto L139;
             */
            /* JADX WARN: Code restructure failed: missing block: B:145:0x0340, code lost:
            
                r12.k();
                r12.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:146:0x0346, code lost:
            
                r3 = (defpackage.dgw) r12.b;
                r3.c = r1 - 1;
                r3.a |= 2;
             */
            /* JADX WARN: Code restructure failed: missing block: B:147:0x0354, code lost:
            
                r1 = defpackage.bqf.h(r11);
             */
            /* JADX WARN: Code restructure failed: missing block: B:148:0x035a, code lost:
            
                if (r12.c == false) goto L143;
             */
            /* JADX WARN: Code restructure failed: missing block: B:149:0x035c, code lost:
            
                r12.k();
                r12.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:150:0x0362, code lost:
            
                r3 = (defpackage.dgw) r12.b;
                r1 = (defpackage.dgy) r1.h();
                r1.getClass();
                r3.g = r1;
                r3.a |= 64;
                r10.aj(r12);
             */
            /* JADX WARN: Code restructure failed: missing block: B:151:0x037f, code lost:
            
                if (defpackage.bqf.e(r11) == 1) goto L149;
             */
            /* JADX WARN: Code restructure failed: missing block: B:153:0x0383, code lost:
            
                if (r10.c == false) goto L148;
             */
            /* JADX WARN: Code restructure failed: missing block: B:154:0x0385, code lost:
            
                r10.k();
                r10.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:155:0x038b, code lost:
            
                r1 = (defpackage.dgx) r10.b;
                r1.f = 4;
                r1.a |= 16;
             */
            /* JADX WARN: Code restructure failed: missing block: B:157:0x0336, code lost:
            
                if (r1 != 1) goto L140;
             */
            /* JADX WARN: Code restructure failed: missing block: B:158:0x0398, code lost:
            
                r2 = (defpackage.bqf) r2;
                defpackage.bqf.j(new defpackage.bqd());
                r2 = (int) (android.os.SystemClock.elapsedRealtime() - r26);
             */
            /* JADX WARN: Code restructure failed: missing block: B:159:0x03ab, code lost:
            
                if (r10.c == false) goto L152;
             */
            /* JADX WARN: Code restructure failed: missing block: B:160:0x03ad, code lost:
            
                r10.k();
                r10.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:161:0x03b3, code lost:
            
                r1 = (defpackage.dgx) r10.b;
                r1.a |= 32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:167:0x03c1, code lost:
            
                if (r10.c == false) goto L157;
             */
            /* JADX WARN: Code restructure failed: missing block: B:168:0x03c3, code lost:
            
                r10.k();
                r10.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:169:0x03c9, code lost:
            
                r1 = (defpackage.dgx) r10.b;
                r1.f = 4;
                r1.a |= 16;
             */
            /* JADX WARN: Code restructure failed: missing block: B:170:0x03df, code lost:
            
                throw new defpackage.bpt(29504, "Could not find valid auth token for all requested accounts");
             */
            /* JADX WARN: Code restructure failed: missing block: B:171:0x03e0, code lost:
            
                throw r5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:173:0x0207, code lost:
            
                ((defpackage.bqf) r2).k(r3, r5, r1, r12, r11, r14, true);
             */
            /* JADX WARN: Code restructure failed: missing block: B:175:0x021e, code lost:
            
                r0 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:177:0x0220, code lost:
            
                ((defpackage.csx) ((defpackage.csx) defpackage.bqf.a.c().g(r0)).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "syncInBatch", 531, "HeterodyneSyncer.java")).n("SyncInBatch failed");
             */
            /* JADX WARN: Code restructure failed: missing block: B:178:0x023d, code lost:
            
                if (r10.c != false) goto L86;
             */
            /* JADX WARN: Code restructure failed: missing block: B:179:0x023f, code lost:
            
                r10.k();
                r10.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:180:0x0245, code lost:
            
                r3 = (defpackage.dgx) r10.b;
                r3.f = 4;
                r3.a |= 16;
             */
            /* JADX WARN: Code restructure failed: missing block: B:181:0x025a, code lost:
            
                if ((((defpackage.dgw) r12.b).a & 2) == 0) goto L89;
             */
            /* JADX WARN: Code restructure failed: missing block: B:183:0x025e, code lost:
            
                if (r12.c != false) goto L91;
             */
            /* JADX WARN: Code restructure failed: missing block: B:184:0x0260, code lost:
            
                r12.k();
                r12.c = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:185:0x0266, code lost:
            
                r3 = (defpackage.dgw) r12.b;
                r3.c = 1;
                r3.a |= 2;
             */
            /* JADX WARN: Code restructure failed: missing block: B:186:0x0273, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:187:?, code lost:
            
                throw r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:188:0x01f8, code lost:
            
                r4 = r11.d;
             */
            /* JADX WARN: Code restructure failed: missing block: B:227:0x041a, code lost:
            
                if (r1 == 1) goto L176;
             */
            /* JADX WARN: Code restructure failed: missing block: B:269:0x0534, code lost:
            
                if (r3 != 1) goto L251;
             */
            /* JADX WARN: Code restructure failed: missing block: B:87:0x01d6, code lost:
            
                if (r5 == null) goto L73;
             */
            /* JADX WARN: Code restructure failed: missing block: B:88:0x01d8, code lost:
            
                r5.close();
             */
            /* JADX WARN: Code restructure failed: missing block: B:89:0x01db, code lost:
            
                r5 = new java.util.ArrayList(r4.length + 1);
                r5.add("");
                java.util.Collections.addAll(r5, r4);
                r4 = r5.size();
                r11.e = r4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:90:0x01f1, code lost:
            
                if (r4 <= r11.f) goto L76;
             */
            /* JADX WARN: Code restructure failed: missing block: B:91:0x01f3, code lost:
            
                r4 = r11.d + 1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:92:0x01fa, code lost:
            
                r11.c = r4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:94:0x0205, code lost:
            
                if (r5.size() <= 1) goto L94;
             */
            /* JADX WARN: Code restructure failed: missing block: B:95:0x0274, code lost:
            
                r4 = r5.iterator();
                r5 = null;
             */
            /* JADX WARN: Code restructure failed: missing block: B:97:0x027d, code lost:
            
                if (r4.hasNext() == false) goto L325;
             */
            /* JADX WARN: Code restructure failed: missing block: B:98:0x027f, code lost:
            
                r9 = (java.lang.String) r4.next();
             */
            /* JADX WARN: Code restructure failed: missing block: B:99:0x0285, code lost:
            
                if (r12 == null) goto L100;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:23:0x05d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:241:0x0508 A[Catch: all -> 0x0520, TryCatch #0 {all -> 0x0520, blocks: (B:239:0x04fe, B:241:0x0508, B:243:0x050c, B:244:0x0512, B:245:0x051f), top: B:238:0x04fe }] */
            /* JADX WARN: Removed duplicated region for block: B:247:? A[Catch: all -> 0x0520, SYNTHETIC, TRY_LEAVE, TryCatch #0 {all -> 0x0520, blocks: (B:239:0x04fe, B:241:0x0508, B:243:0x050c, B:244:0x0512, B:245:0x051f), top: B:238:0x04fe }] */
            /* JADX WARN: Removed duplicated region for block: B:251:0x0524 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:254:0x0532  */
            /* JADX WARN: Removed duplicated region for block: B:257:0x053e A[Catch: all -> 0x05ca, TryCatch #18 {all -> 0x05ca, blocks: (B:140:0x0328, B:143:0x0338, B:145:0x0340, B:146:0x0346, B:147:0x0354, B:149:0x035c, B:150:0x0362, B:152:0x0381, B:154:0x0385, B:155:0x038b, B:158:0x0398, B:160:0x03ad, B:161:0x03b3, B:162:0x04a1, B:252:0x0526, B:255:0x0536, B:257:0x053e, B:258:0x0544, B:259:0x0552, B:261:0x055a, B:262:0x0560, B:264:0x057f, B:266:0x0583, B:267:0x0589, B:270:0x0596, B:272:0x05ab, B:273:0x05b1, B:274:0x05bd, B:210:0x040c, B:213:0x041c, B:215:0x0424, B:216:0x042a, B:217:0x0438, B:219:0x0440, B:220:0x0446, B:222:0x0465, B:224:0x0469, B:225:0x046f, B:228:0x047c, B:230:0x0491, B:231:0x0497, B:33:0x05c2, B:34:0x05c9), top: B:4:0x000c }] */
            /* JADX WARN: Removed duplicated region for block: B:261:0x055a A[Catch: all -> 0x05ca, TryCatch #18 {all -> 0x05ca, blocks: (B:140:0x0328, B:143:0x0338, B:145:0x0340, B:146:0x0346, B:147:0x0354, B:149:0x035c, B:150:0x0362, B:152:0x0381, B:154:0x0385, B:155:0x038b, B:158:0x0398, B:160:0x03ad, B:161:0x03b3, B:162:0x04a1, B:252:0x0526, B:255:0x0536, B:257:0x053e, B:258:0x0544, B:259:0x0552, B:261:0x055a, B:262:0x0560, B:264:0x057f, B:266:0x0583, B:267:0x0589, B:270:0x0596, B:272:0x05ab, B:273:0x05b1, B:274:0x05bd, B:210:0x040c, B:213:0x041c, B:215:0x0424, B:216:0x042a, B:217:0x0438, B:219:0x0440, B:220:0x0446, B:222:0x0465, B:224:0x0469, B:225:0x046f, B:228:0x047c, B:230:0x0491, B:231:0x0497, B:33:0x05c2, B:34:0x05c9), top: B:4:0x000c }] */
            /* JADX WARN: Removed duplicated region for block: B:264:0x057f A[Catch: all -> 0x05ca, TryCatch #18 {all -> 0x05ca, blocks: (B:140:0x0328, B:143:0x0338, B:145:0x0340, B:146:0x0346, B:147:0x0354, B:149:0x035c, B:150:0x0362, B:152:0x0381, B:154:0x0385, B:155:0x038b, B:158:0x0398, B:160:0x03ad, B:161:0x03b3, B:162:0x04a1, B:252:0x0526, B:255:0x0536, B:257:0x053e, B:258:0x0544, B:259:0x0552, B:261:0x055a, B:262:0x0560, B:264:0x057f, B:266:0x0583, B:267:0x0589, B:270:0x0596, B:272:0x05ab, B:273:0x05b1, B:274:0x05bd, B:210:0x040c, B:213:0x041c, B:215:0x0424, B:216:0x042a, B:217:0x0438, B:219:0x0440, B:220:0x0446, B:222:0x0465, B:224:0x0469, B:225:0x046f, B:228:0x047c, B:230:0x0491, B:231:0x0497, B:33:0x05c2, B:34:0x05c9), top: B:4:0x000c }] */
            /* JADX WARN: Removed duplicated region for block: B:268:0x0533  */
            /* JADX WARN: Removed duplicated region for block: B:272:0x05ab A[Catch: all -> 0x05ca, TryCatch #18 {all -> 0x05ca, blocks: (B:140:0x0328, B:143:0x0338, B:145:0x0340, B:146:0x0346, B:147:0x0354, B:149:0x035c, B:150:0x0362, B:152:0x0381, B:154:0x0385, B:155:0x038b, B:158:0x0398, B:160:0x03ad, B:161:0x03b3, B:162:0x04a1, B:252:0x0526, B:255:0x0536, B:257:0x053e, B:258:0x0544, B:259:0x0552, B:261:0x055a, B:262:0x0560, B:264:0x057f, B:266:0x0583, B:267:0x0589, B:270:0x0596, B:272:0x05ab, B:273:0x05b1, B:274:0x05bd, B:210:0x040c, B:213:0x041c, B:215:0x0424, B:216:0x042a, B:217:0x0438, B:219:0x0440, B:220:0x0446, B:222:0x0465, B:224:0x0469, B:225:0x046f, B:228:0x047c, B:230:0x0491, B:231:0x0497, B:33:0x05c2, B:34:0x05c9), top: B:4:0x000c }] */
            /* JADX WARN: Removed duplicated region for block: B:30:? A[Catch: bpt -> 0x05d8, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #12 {bpt -> 0x05d8, blocks: (B:3:0x0006, B:164:0x04ab, B:29:0x05d7), top: B:2:0x0006 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                bps bpsVar;
                Throwable th;
                SecurityException securityException;
                long j;
                Throwable th2;
                ddf ddfVar;
                bqe bqeVar;
                long j2;
                RuntimeException runtimeException;
                int t;
                long j3;
                long j4;
                long j5;
                bps bpsVar2;
                int elapsedRealtime;
                dgx dgxVar;
                cew cewVar = cew.this;
                String str = this.b;
                try {
                    bps c = bps.c(cewVar.a);
                    try {
                        try {
                            ddf n = dgx.h.n();
                            Object a = cewVar.b.a(c);
                            try {
                                Account[] accounts = AccountManager.get(((bqf) a).d.a).getAccounts();
                                ArrayList arrayList = new ArrayList(accounts.length);
                                for (Account account : accounts) {
                                    try {
                                        try {
                                            if ("com.google".equals(account.type) || "com.google.work".equals(account.type)) {
                                                arrayList.add(account.name);
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bpsVar = c;
                                            if (bpsVar == null) {
                                            }
                                        }
                                    } catch (SecurityException e) {
                                        securityException = e;
                                        throw new IllegalStateException("Must have permission to access accounts", securityException);
                                    }
                                }
                                final String[] strArr = (String[]) arrayList.toArray(new String[0]);
                                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                                ddf n2 = n == null ? dgx.h.n() : n;
                                if (n2.c) {
                                    n2.k();
                                    n2.c = false;
                                }
                                dgx dgxVar2 = (dgx) n2.b;
                                dgxVar2.b = 3300;
                                int i = dgxVar2.a | 1;
                                dgxVar2.a = i;
                                dgxVar2.c = 1;
                                dgxVar2.a = i | 2;
                                String c2 = coe.c(str);
                                if (n2.c) {
                                    n2.k();
                                    n2.c = false;
                                }
                                dgx dgxVar3 = (dgx) n2.b;
                                dgxVar3.a |= 4;
                                dgxVar3.d = c2;
                                HashSet hashSet = new HashSet();
                                try {
                                    ddf n3 = dgw.h.n();
                                    try {
                                        bqe bqeVar2 = new bqe();
                                        try {
                                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                                            int length = strArr.length;
                                            bqeVar2.a = length;
                                            if (length <= 10) {
                                                try {
                                                    ((bqf) a).c(linkedHashMap, strArr);
                                                    bpsVar2 = c;
                                                } catch (RuntimeException e2) {
                                                    runtimeException = e2;
                                                    j5 = elapsedRealtime2;
                                                    bqeVar = bqeVar2;
                                                    ddfVar = n3;
                                                    j2 = j5;
                                                    try {
                                                        if ((((dgx) n2.b).a & 16) == 0) {
                                                        }
                                                    } catch (Throwable th4) {
                                                        th2 = th4;
                                                        j = j2;
                                                        if (ddfVar != null && bqeVar != null) {
                                                            t = dpx.t(((dgw) ddfVar.b).c);
                                                            if (t != 0) {
                                                            }
                                                            int e3 = bqf.e(bqeVar);
                                                            if (ddfVar.c) {
                                                                ddfVar.k();
                                                                ddfVar.c = false;
                                                            }
                                                            dgw dgwVar = (dgw) ddfVar.b;
                                                            dgwVar.c = e3 - 1;
                                                            dgwVar.a |= 2;
                                                            ddf h = bqf.h(bqeVar);
                                                            if (ddfVar.c) {
                                                                ddfVar.k();
                                                                ddfVar.c = false;
                                                            }
                                                            dgw dgwVar2 = (dgw) ddfVar.b;
                                                            dgy dgyVar = (dgy) h.h();
                                                            dgyVar.getClass();
                                                            dgwVar2.g = dgyVar;
                                                            dgwVar2.a |= 64;
                                                            n2.aj(ddfVar);
                                                            if (bqf.e(bqeVar) != 1) {
                                                                if (n2.c) {
                                                                    n2.k();
                                                                    n2.c = false;
                                                                }
                                                                dgx dgxVar4 = (dgx) n2.b;
                                                                dgxVar4.f = 4;
                                                                dgxVar4.a |= 16;
                                                            }
                                                        }
                                                        final bqf bqfVar = (bqf) a;
                                                        bqf.j(new Runnable() { // from class: bqd
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                bqf bqfVar2 = bqf.this;
                                                                String[] strArr2 = strArr;
                                                                SQLiteDatabase writableDatabase = bqfVar2.c.getWritableDatabase();
                                                                writableDatabase.beginTransaction();
                                                                int i2 = 1;
                                                                try {
                                                                    Cursor query = writableDatabase.query("RequestTags", new String[]{"user"}, null, null, null, null, null);
                                                                    try {
                                                                        HashSet hashSet2 = new HashSet(query.getCount());
                                                                        while (query.moveToNext()) {
                                                                            hashSet2.add(query.getString(0));
                                                                        }
                                                                        if (query != null) {
                                                                            query.close();
                                                                        }
                                                                        for (String str2 : strArr2) {
                                                                            hashSet2.remove(str2);
                                                                        }
                                                                        Iterator it = bqf.g(writableDatabase).iterator();
                                                                        while (it.hasNext()) {
                                                                            hashSet2.remove((String) it.next());
                                                                        }
                                                                        hashSet2.remove("");
                                                                        HashSet hashSet3 = new HashSet();
                                                                        Iterator it2 = hashSet2.iterator();
                                                                        while (it2.hasNext()) {
                                                                            String[] strArr3 = new String[i2];
                                                                            strArr3[0] = (String) it2.next();
                                                                            String[] strArr4 = new String[i2];
                                                                            strArr4[0] = "packageName";
                                                                            query = writableDatabase.query("ExperimentTokens", strArr4, "user = ?", strArr3, null, null, null);
                                                                            while (query.moveToNext()) {
                                                                                try {
                                                                                    hashSet3.add(query.getString(0));
                                                                                } finally {
                                                                                }
                                                                            }
                                                                            if (query != null) {
                                                                                query.close();
                                                                            }
                                                                            writableDatabase.delete("ExperimentTokens", "user = ?", strArr3);
                                                                            writableDatabase.delete("Flags", "user = ?", strArr3);
                                                                            writableDatabase.delete("RequestTags", "user = ?", strArr3);
                                                                            writableDatabase.delete("ApplicationTags", "user = ?", strArr3);
                                                                            writableDatabase.delete("CrossLoggedExperimentTokens", "fromUser = ?", strArr3);
                                                                            i2 = 1;
                                                                        }
                                                                        Iterator it3 = hashSet3.iterator();
                                                                        while (it3.hasNext()) {
                                                                            re.h(writableDatabase, (String) it3.next());
                                                                        }
                                                                        writableDatabase.setTransactionSuccessful();
                                                                        writableDatabase.endTransaction();
                                                                        writableDatabase = bqfVar2.c.getWritableDatabase();
                                                                        writableDatabase.beginTransaction();
                                                                        try {
                                                                            Cursor query2 = writableDatabase.query("Packages", new String[]{"packageName", "version"}, null, null, null, null, null);
                                                                            while (query2.moveToNext()) {
                                                                                try {
                                                                                    String string = query2.getString(0);
                                                                                    Cursor rawQuery = writableDatabase.rawQuery("SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user", new String[]{string, Integer.toString(query2.getInt(1))});
                                                                                    boolean z = false;
                                                                                    while (rawQuery.moveToNext()) {
                                                                                        try {
                                                                                            String[] strArr5 = {string, rawQuery.getString(1), Integer.toString(rawQuery.getInt(0))};
                                                                                            z = z | (writableDatabase.delete("Flags", "packageName = ? AND user = ? AND version != ? AND committed = 0", strArr5) > 0) | (writableDatabase.delete("ExperimentTokens", "packageName = ? AND user = ? AND version != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("ApplicationTags", "packageName = ? AND user = ? AND version != ?", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0", strArr5) > 0);
                                                                                        } finally {
                                                                                        }
                                                                                    }
                                                                                    if (rawQuery != null) {
                                                                                        rawQuery.close();
                                                                                    }
                                                                                    if (z) {
                                                                                        re.h(writableDatabase, string);
                                                                                    }
                                                                                } finally {
                                                                                }
                                                                            }
                                                                            writableDatabase.setTransactionSuccessful();
                                                                            if (query2 != null) {
                                                                                query2.close();
                                                                            }
                                                                        } finally {
                                                                        }
                                                                    } finally {
                                                                        if (query == null) {
                                                                            throw th;
                                                                        }
                                                                        try {
                                                                            query.close();
                                                                            throw th;
                                                                        } catch (Throwable th5) {
                                                                        }
                                                                    }
                                                                } finally {
                                                                }
                                                            }
                                                        });
                                                        int elapsedRealtime3 = (int) (SystemClock.elapsedRealtime() - j);
                                                        if (n2.c) {
                                                            n2.k();
                                                            n2.c = false;
                                                        }
                                                        dgx dgxVar5 = (dgx) n2.b;
                                                        dgxVar5.a |= 32;
                                                        dgxVar5.g = elapsedRealtime3;
                                                        throw th2;
                                                    }
                                                } catch (Throwable th5) {
                                                    th2 = th5;
                                                    j4 = elapsedRealtime2;
                                                    bqeVar = bqeVar2;
                                                    ddfVar = n3;
                                                    j = j4;
                                                    if (ddfVar != null) {
                                                    }
                                                    final bqf bqfVar2 = (bqf) a;
                                                    bqf.j(new Runnable() { // from class: bqd
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            bqf bqfVar22 = bqf.this;
                                                            String[] strArr2 = strArr;
                                                            SQLiteDatabase writableDatabase = bqfVar22.c.getWritableDatabase();
                                                            writableDatabase.beginTransaction();
                                                            int i2 = 1;
                                                            try {
                                                                Cursor query = writableDatabase.query("RequestTags", new String[]{"user"}, null, null, null, null, null);
                                                                try {
                                                                    HashSet hashSet2 = new HashSet(query.getCount());
                                                                    while (query.moveToNext()) {
                                                                        hashSet2.add(query.getString(0));
                                                                    }
                                                                    if (query != null) {
                                                                        query.close();
                                                                    }
                                                                    for (String str2 : strArr2) {
                                                                        hashSet2.remove(str2);
                                                                    }
                                                                    Iterator it = bqf.g(writableDatabase).iterator();
                                                                    while (it.hasNext()) {
                                                                        hashSet2.remove((String) it.next());
                                                                    }
                                                                    hashSet2.remove("");
                                                                    HashSet hashSet3 = new HashSet();
                                                                    Iterator it2 = hashSet2.iterator();
                                                                    while (it2.hasNext()) {
                                                                        String[] strArr3 = new String[i2];
                                                                        strArr3[0] = (String) it2.next();
                                                                        String[] strArr4 = new String[i2];
                                                                        strArr4[0] = "packageName";
                                                                        query = writableDatabase.query("ExperimentTokens", strArr4, "user = ?", strArr3, null, null, null);
                                                                        while (query.moveToNext()) {
                                                                            try {
                                                                                hashSet3.add(query.getString(0));
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        if (query != null) {
                                                                            query.close();
                                                                        }
                                                                        writableDatabase.delete("ExperimentTokens", "user = ?", strArr3);
                                                                        writableDatabase.delete("Flags", "user = ?", strArr3);
                                                                        writableDatabase.delete("RequestTags", "user = ?", strArr3);
                                                                        writableDatabase.delete("ApplicationTags", "user = ?", strArr3);
                                                                        writableDatabase.delete("CrossLoggedExperimentTokens", "fromUser = ?", strArr3);
                                                                        i2 = 1;
                                                                    }
                                                                    Iterator it3 = hashSet3.iterator();
                                                                    while (it3.hasNext()) {
                                                                        re.h(writableDatabase, (String) it3.next());
                                                                    }
                                                                    writableDatabase.setTransactionSuccessful();
                                                                    writableDatabase.endTransaction();
                                                                    writableDatabase = bqfVar22.c.getWritableDatabase();
                                                                    writableDatabase.beginTransaction();
                                                                    try {
                                                                        Cursor query2 = writableDatabase.query("Packages", new String[]{"packageName", "version"}, null, null, null, null, null);
                                                                        while (query2.moveToNext()) {
                                                                            try {
                                                                                String string = query2.getString(0);
                                                                                Cursor rawQuery = writableDatabase.rawQuery("SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user", new String[]{string, Integer.toString(query2.getInt(1))});
                                                                                boolean z = false;
                                                                                while (rawQuery.moveToNext()) {
                                                                                    try {
                                                                                        String[] strArr5 = {string, rawQuery.getString(1), Integer.toString(rawQuery.getInt(0))};
                                                                                        z = z | (writableDatabase.delete("Flags", "packageName = ? AND user = ? AND version != ? AND committed = 0", strArr5) > 0) | (writableDatabase.delete("ExperimentTokens", "packageName = ? AND user = ? AND version != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("ApplicationTags", "packageName = ? AND user = ? AND version != ?", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0", strArr5) > 0);
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                if (rawQuery != null) {
                                                                                    rawQuery.close();
                                                                                }
                                                                                if (z) {
                                                                                    re.h(writableDatabase, string);
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        writableDatabase.setTransactionSuccessful();
                                                                        if (query2 != null) {
                                                                            query2.close();
                                                                        }
                                                                    } finally {
                                                                    }
                                                                } finally {
                                                                    if (query == null) {
                                                                        throw th;
                                                                    }
                                                                    try {
                                                                        query.close();
                                                                        throw th;
                                                                    } catch (Throwable th52) {
                                                                    }
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                    });
                                                    int elapsedRealtime32 = (int) (SystemClock.elapsedRealtime() - j);
                                                    if (n2.c) {
                                                    }
                                                    dgx dgxVar52 = (dgx) n2.b;
                                                    dgxVar52.a |= 32;
                                                    dgxVar52.g = elapsedRealtime32;
                                                    throw th2;
                                                }
                                            } else {
                                                ArrayList b = bqf.b(strArr);
                                                ArrayList arrayList2 = new ArrayList(bqf.g(((bqf) a).c.getWritableDatabase()));
                                                bpsVar2 = c;
                                                try {
                                                    ArrayList arrayList3 = new ArrayList(Arrays.asList(strArr));
                                                    LinkedHashSet linkedHashSet = new LinkedHashSet(b);
                                                    arrayList2.remove("");
                                                    Collections.sort(arrayList2);
                                                    linkedHashSet.addAll(arrayList2);
                                                    Collections.sort(arrayList3);
                                                    linkedHashSet.addAll(arrayList3);
                                                    Iterator it = linkedHashSet.iterator();
                                                    while (it.hasNext()) {
                                                        try {
                                                            String str2 = (String) it.next();
                                                            if (linkedHashMap.size() >= 10) {
                                                                break;
                                                            }
                                                            ((bqf) a).c(linkedHashMap, str2);
                                                        } catch (RuntimeException e4) {
                                                            runtimeException = e4;
                                                            j5 = elapsedRealtime2;
                                                            bqeVar = bqeVar2;
                                                            ddfVar = n3;
                                                            j2 = j5;
                                                            if ((((dgx) n2.b).a & 16) == 0) {
                                                                throw runtimeException;
                                                            }
                                                            if (n2.c) {
                                                                n2.k();
                                                                n2.c = false;
                                                            }
                                                            dgx dgxVar6 = (dgx) n2.b;
                                                            dgxVar6.f = 3;
                                                            dgxVar6.a |= 16;
                                                            throw runtimeException;
                                                        } catch (Throwable th6) {
                                                            th2 = th6;
                                                            j4 = elapsedRealtime2;
                                                            bqeVar = bqeVar2;
                                                            ddfVar = n3;
                                                            j = j4;
                                                            if (ddfVar != null) {
                                                                t = dpx.t(((dgw) ddfVar.b).c);
                                                                if (t != 0) {
                                                                }
                                                                int e32 = bqf.e(bqeVar);
                                                                if (ddfVar.c) {
                                                                }
                                                                dgw dgwVar3 = (dgw) ddfVar.b;
                                                                dgwVar3.c = e32 - 1;
                                                                dgwVar3.a |= 2;
                                                                ddf h2 = bqf.h(bqeVar);
                                                                if (ddfVar.c) {
                                                                }
                                                                dgw dgwVar22 = (dgw) ddfVar.b;
                                                                dgy dgyVar2 = (dgy) h2.h();
                                                                dgyVar2.getClass();
                                                                dgwVar22.g = dgyVar2;
                                                                dgwVar22.a |= 64;
                                                                n2.aj(ddfVar);
                                                                if (bqf.e(bqeVar) != 1) {
                                                                }
                                                            }
                                                            final bqf bqfVar22 = (bqf) a;
                                                            bqf.j(new Runnable() { // from class: bqd
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    bqf bqfVar222 = bqf.this;
                                                                    String[] strArr2 = strArr;
                                                                    SQLiteDatabase writableDatabase = bqfVar222.c.getWritableDatabase();
                                                                    writableDatabase.beginTransaction();
                                                                    int i2 = 1;
                                                                    try {
                                                                        Cursor query = writableDatabase.query("RequestTags", new String[]{"user"}, null, null, null, null, null);
                                                                        try {
                                                                            HashSet hashSet2 = new HashSet(query.getCount());
                                                                            while (query.moveToNext()) {
                                                                                hashSet2.add(query.getString(0));
                                                                            }
                                                                            if (query != null) {
                                                                                query.close();
                                                                            }
                                                                            for (String str22 : strArr2) {
                                                                                hashSet2.remove(str22);
                                                                            }
                                                                            Iterator it2 = bqf.g(writableDatabase).iterator();
                                                                            while (it2.hasNext()) {
                                                                                hashSet2.remove((String) it2.next());
                                                                            }
                                                                            hashSet2.remove("");
                                                                            HashSet hashSet3 = new HashSet();
                                                                            Iterator it22 = hashSet2.iterator();
                                                                            while (it22.hasNext()) {
                                                                                String[] strArr3 = new String[i2];
                                                                                strArr3[0] = (String) it22.next();
                                                                                String[] strArr4 = new String[i2];
                                                                                strArr4[0] = "packageName";
                                                                                query = writableDatabase.query("ExperimentTokens", strArr4, "user = ?", strArr3, null, null, null);
                                                                                while (query.moveToNext()) {
                                                                                    try {
                                                                                        hashSet3.add(query.getString(0));
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                if (query != null) {
                                                                                    query.close();
                                                                                }
                                                                                writableDatabase.delete("ExperimentTokens", "user = ?", strArr3);
                                                                                writableDatabase.delete("Flags", "user = ?", strArr3);
                                                                                writableDatabase.delete("RequestTags", "user = ?", strArr3);
                                                                                writableDatabase.delete("ApplicationTags", "user = ?", strArr3);
                                                                                writableDatabase.delete("CrossLoggedExperimentTokens", "fromUser = ?", strArr3);
                                                                                i2 = 1;
                                                                            }
                                                                            Iterator it3 = hashSet3.iterator();
                                                                            while (it3.hasNext()) {
                                                                                re.h(writableDatabase, (String) it3.next());
                                                                            }
                                                                            writableDatabase.setTransactionSuccessful();
                                                                            writableDatabase.endTransaction();
                                                                            writableDatabase = bqfVar222.c.getWritableDatabase();
                                                                            writableDatabase.beginTransaction();
                                                                            try {
                                                                                Cursor query2 = writableDatabase.query("Packages", new String[]{"packageName", "version"}, null, null, null, null, null);
                                                                                while (query2.moveToNext()) {
                                                                                    try {
                                                                                        String string = query2.getString(0);
                                                                                        Cursor rawQuery = writableDatabase.rawQuery("SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user", new String[]{string, Integer.toString(query2.getInt(1))});
                                                                                        boolean z = false;
                                                                                        while (rawQuery.moveToNext()) {
                                                                                            try {
                                                                                                String[] strArr5 = {string, rawQuery.getString(1), Integer.toString(rawQuery.getInt(0))};
                                                                                                z = z | (writableDatabase.delete("Flags", "packageName = ? AND user = ? AND version != ? AND committed = 0", strArr5) > 0) | (writableDatabase.delete("ExperimentTokens", "packageName = ? AND user = ? AND version != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("ApplicationTags", "packageName = ? AND user = ? AND version != ?", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0", strArr5) > 0);
                                                                                            } finally {
                                                                                            }
                                                                                        }
                                                                                        if (rawQuery != null) {
                                                                                            rawQuery.close();
                                                                                        }
                                                                                        if (z) {
                                                                                            re.h(writableDatabase, string);
                                                                                        }
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                writableDatabase.setTransactionSuccessful();
                                                                                if (query2 != null) {
                                                                                    query2.close();
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        } finally {
                                                                            if (query == null) {
                                                                                throw th;
                                                                            }
                                                                            try {
                                                                                query.close();
                                                                                throw th;
                                                                            } catch (Throwable th52) {
                                                                            }
                                                                        }
                                                                    } finally {
                                                                    }
                                                                }
                                                            });
                                                            int elapsedRealtime322 = (int) (SystemClock.elapsedRealtime() - j);
                                                            if (n2.c) {
                                                            }
                                                            dgx dgxVar522 = (dgx) n2.b;
                                                            dgxVar522.a |= 32;
                                                            dgxVar522.g = elapsedRealtime322;
                                                            throw th2;
                                                        }
                                                    }
                                                } catch (RuntimeException e5) {
                                                    e = e5;
                                                    j3 = elapsedRealtime2;
                                                    runtimeException = e;
                                                    j5 = j3;
                                                    bqeVar = bqeVar2;
                                                    ddfVar = n3;
                                                    j2 = j5;
                                                    if ((((dgx) n2.b).a & 16) == 0) {
                                                    }
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    j3 = elapsedRealtime2;
                                                    th2 = th;
                                                    j4 = j3;
                                                    bqeVar = bqeVar2;
                                                    ddfVar = n3;
                                                    j = j4;
                                                    if (ddfVar != null) {
                                                    }
                                                    final bqf bqfVar222 = (bqf) a;
                                                    bqf.j(new Runnable() { // from class: bqd
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            bqf bqfVar2222 = bqf.this;
                                                            String[] strArr2 = strArr;
                                                            SQLiteDatabase writableDatabase = bqfVar2222.c.getWritableDatabase();
                                                            writableDatabase.beginTransaction();
                                                            int i2 = 1;
                                                            try {
                                                                Cursor query = writableDatabase.query("RequestTags", new String[]{"user"}, null, null, null, null, null);
                                                                try {
                                                                    HashSet hashSet2 = new HashSet(query.getCount());
                                                                    while (query.moveToNext()) {
                                                                        hashSet2.add(query.getString(0));
                                                                    }
                                                                    if (query != null) {
                                                                        query.close();
                                                                    }
                                                                    for (String str22 : strArr2) {
                                                                        hashSet2.remove(str22);
                                                                    }
                                                                    Iterator it2 = bqf.g(writableDatabase).iterator();
                                                                    while (it2.hasNext()) {
                                                                        hashSet2.remove((String) it2.next());
                                                                    }
                                                                    hashSet2.remove("");
                                                                    HashSet hashSet3 = new HashSet();
                                                                    Iterator it22 = hashSet2.iterator();
                                                                    while (it22.hasNext()) {
                                                                        String[] strArr3 = new String[i2];
                                                                        strArr3[0] = (String) it22.next();
                                                                        String[] strArr4 = new String[i2];
                                                                        strArr4[0] = "packageName";
                                                                        query = writableDatabase.query("ExperimentTokens", strArr4, "user = ?", strArr3, null, null, null);
                                                                        while (query.moveToNext()) {
                                                                            try {
                                                                                hashSet3.add(query.getString(0));
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        if (query != null) {
                                                                            query.close();
                                                                        }
                                                                        writableDatabase.delete("ExperimentTokens", "user = ?", strArr3);
                                                                        writableDatabase.delete("Flags", "user = ?", strArr3);
                                                                        writableDatabase.delete("RequestTags", "user = ?", strArr3);
                                                                        writableDatabase.delete("ApplicationTags", "user = ?", strArr3);
                                                                        writableDatabase.delete("CrossLoggedExperimentTokens", "fromUser = ?", strArr3);
                                                                        i2 = 1;
                                                                    }
                                                                    Iterator it3 = hashSet3.iterator();
                                                                    while (it3.hasNext()) {
                                                                        re.h(writableDatabase, (String) it3.next());
                                                                    }
                                                                    writableDatabase.setTransactionSuccessful();
                                                                    writableDatabase.endTransaction();
                                                                    writableDatabase = bqfVar2222.c.getWritableDatabase();
                                                                    writableDatabase.beginTransaction();
                                                                    try {
                                                                        Cursor query2 = writableDatabase.query("Packages", new String[]{"packageName", "version"}, null, null, null, null, null);
                                                                        while (query2.moveToNext()) {
                                                                            try {
                                                                                String string = query2.getString(0);
                                                                                Cursor rawQuery = writableDatabase.rawQuery("SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user", new String[]{string, Integer.toString(query2.getInt(1))});
                                                                                boolean z = false;
                                                                                while (rawQuery.moveToNext()) {
                                                                                    try {
                                                                                        String[] strArr5 = {string, rawQuery.getString(1), Integer.toString(rawQuery.getInt(0))};
                                                                                        z = z | (writableDatabase.delete("Flags", "packageName = ? AND user = ? AND version != ? AND committed = 0", strArr5) > 0) | (writableDatabase.delete("ExperimentTokens", "packageName = ? AND user = ? AND version != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("ApplicationTags", "packageName = ? AND user = ? AND version != ?", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase.delete("CrossLoggedExperimentTokens", "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0", strArr5) > 0);
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                if (rawQuery != null) {
                                                                                    rawQuery.close();
                                                                                }
                                                                                if (z) {
                                                                                    re.h(writableDatabase, string);
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        writableDatabase.setTransactionSuccessful();
                                                                        if (query2 != null) {
                                                                            query2.close();
                                                                        }
                                                                    } finally {
                                                                    }
                                                                } finally {
                                                                    if (query == null) {
                                                                        throw th;
                                                                    }
                                                                    try {
                                                                        query.close();
                                                                        throw th;
                                                                    } catch (Throwable th52) {
                                                                    }
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                    });
                                                    int elapsedRealtime3222 = (int) (SystemClock.elapsedRealtime() - j);
                                                    if (n2.c) {
                                                    }
                                                    dgx dgxVar5222 = (dgx) n2.b;
                                                    dgxVar5222.a |= 32;
                                                    dgxVar5222.g = elapsedRealtime3222;
                                                    throw th2;
                                                }
                                            }
                                            bqeVar2.b = linkedHashMap.size();
                                            boolean z = !bqf.b(strArr).isEmpty();
                                            if (dmi.a.a().k()) {
                                                final bqf bqfVar3 = (bqf) a;
                                                bqf.j(new Runnable() { // from class: bqc
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        bqf bqfVar4 = bqf.this;
                                                        List<PackageInfo> installedPackages = bqfVar4.b.getPackageManager().getInstalledPackages(0);
                                                        HashSet l = fw.l(installedPackages.size());
                                                        Iterator<PackageInfo> it2 = installedPackages.iterator();
                                                        while (it2.hasNext()) {
                                                            l.add(it2.next().packageName);
                                                        }
                                                        SQLiteDatabase writableDatabase = bqfVar4.c.getWritableDatabase();
                                                        Cursor query = writableDatabase.query("Packages", new String[]{"packageName", "androidPackageName"}, null, null, null, null, null, null);
                                                        while (query.moveToNext()) {
                                                            try {
                                                                String string = query.getString(0);
                                                                if (!l.contains(query.getString(1)) || dmi.a.a().d().a.contains(string)) {
                                                                    writableDatabase.beginTransaction();
                                                                    try {
                                                                        xq.g(writableDatabase, string);
                                                                        writableDatabase.setTransactionSuccessful();
                                                                        writableDatabase.endTransaction();
                                                                        bqb.a();
                                                                    } catch (Throwable th8) {
                                                                        writableDatabase.endTransaction();
                                                                        throw th8;
                                                                    }
                                                                }
                                                            } catch (Throwable th9) {
                                                                if (query != null) {
                                                                    try {
                                                                        query.close();
                                                                    } catch (Throwable th10) {
                                                                    }
                                                                }
                                                                throw th9;
                                                            }
                                                        }
                                                        if (query != null) {
                                                            query.close();
                                                        }
                                                    }
                                                });
                                            }
                                            LinkedHashSet linkedHashSet2 = new LinkedHashSet(Arrays.asList(strArr));
                                            linkedHashSet2.retainAll(linkedHashMap.keySet());
                                            int length2 = strArr.length;
                                            linkedHashSet2.size();
                                            bqeVar2.d = length2;
                                            bqeVar2.f = linkedHashSet2.size();
                                            String[] strArr2 = (String[]) linkedHashSet2.toArray(new String[0]);
                                            int length3 = strArr2.length;
                                            int i2 = length2 - length3;
                                            if (length3 > 10) {
                                                strArr2 = (String[]) Arrays.copyOf(strArr2, 10);
                                            }
                                            SQLiteDatabase writableDatabase = ((bqf) a).c.getWritableDatabase();
                                            Cursor query = writableDatabase.query("Packages", new String[]{"packageName"}, null, null, null, null, null, null);
                                            j3 = writableDatabase;
                                            while (true) {
                                                try {
                                                    try {
                                                        if (query.moveToNext()) {
                                                            j3 = elapsedRealtime2;
                                                            try {
                                                                if (!query.getString(0).startsWith("__internal.")) {
                                                                    break;
                                                                }
                                                                elapsedRealtime2 = j3;
                                                                j3 = j3;
                                                            } catch (Throwable th8) {
                                                                th = th8;
                                                                Throwable th9 = th;
                                                                if (query == null) {
                                                                    throw th9;
                                                                }
                                                                try {
                                                                    query.close();
                                                                    throw th9;
                                                                } catch (Throwable th10) {
                                                                    throw th9;
                                                                }
                                                            }
                                                        } else {
                                                            long j6 = elapsedRealtime2;
                                                            if (query != null) {
                                                                query.close();
                                                            }
                                                            if (n2.c) {
                                                                n2.k();
                                                                n2.c = false;
                                                            }
                                                            dgx dgxVar7 = (dgx) n2.b;
                                                            dgxVar7.f = 2;
                                                            dgxVar7.a |= 16;
                                                            if (n3 != null) {
                                                                int t2 = dpx.t(((dgw) n3.b).c);
                                                                if (t2 != 0) {
                                                                }
                                                                int e6 = bqf.e(bqeVar2);
                                                                if (n3.c) {
                                                                    n3.k();
                                                                    n3.c = false;
                                                                }
                                                                dgw dgwVar4 = (dgw) n3.b;
                                                                dgwVar4.c = e6 - 1;
                                                                dgwVar4.a |= 2;
                                                                ddf h3 = bqf.h(bqeVar2);
                                                                if (n3.c) {
                                                                    n3.k();
                                                                    n3.c = false;
                                                                }
                                                                dgw dgwVar5 = (dgw) n3.b;
                                                                dgy dgyVar3 = (dgy) h3.h();
                                                                dgyVar3.getClass();
                                                                dgwVar5.g = dgyVar3;
                                                                dgwVar5.a |= 64;
                                                                n2.aj(n3);
                                                                if (bqf.e(bqeVar2) != 1) {
                                                                    if (n2.c) {
                                                                        n2.k();
                                                                        n2.c = false;
                                                                    }
                                                                    dgx dgxVar8 = (dgx) n2.b;
                                                                    dgxVar8.f = 4;
                                                                    dgxVar8.a |= 16;
                                                                }
                                                            }
                                                            final bqf bqfVar4 = (bqf) a;
                                                            bqf.j(new Runnable() { // from class: bqd
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    bqf bqfVar2222 = bqf.this;
                                                                    String[] strArr22 = strArr;
                                                                    SQLiteDatabase writableDatabase2 = bqfVar2222.c.getWritableDatabase();
                                                                    writableDatabase2.beginTransaction();
                                                                    int i22 = 1;
                                                                    try {
                                                                        Cursor query2 = writableDatabase2.query("RequestTags", new String[]{"user"}, null, null, null, null, null);
                                                                        try {
                                                                            HashSet hashSet2 = new HashSet(query2.getCount());
                                                                            while (query2.moveToNext()) {
                                                                                hashSet2.add(query2.getString(0));
                                                                            }
                                                                            if (query2 != null) {
                                                                                query2.close();
                                                                            }
                                                                            for (String str22 : strArr22) {
                                                                                hashSet2.remove(str22);
                                                                            }
                                                                            Iterator it2 = bqf.g(writableDatabase2).iterator();
                                                                            while (it2.hasNext()) {
                                                                                hashSet2.remove((String) it2.next());
                                                                            }
                                                                            hashSet2.remove("");
                                                                            HashSet hashSet3 = new HashSet();
                                                                            Iterator it22 = hashSet2.iterator();
                                                                            while (it22.hasNext()) {
                                                                                String[] strArr3 = new String[i22];
                                                                                strArr3[0] = (String) it22.next();
                                                                                String[] strArr4 = new String[i22];
                                                                                strArr4[0] = "packageName";
                                                                                query2 = writableDatabase2.query("ExperimentTokens", strArr4, "user = ?", strArr3, null, null, null);
                                                                                while (query2.moveToNext()) {
                                                                                    try {
                                                                                        hashSet3.add(query2.getString(0));
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                if (query2 != null) {
                                                                                    query2.close();
                                                                                }
                                                                                writableDatabase2.delete("ExperimentTokens", "user = ?", strArr3);
                                                                                writableDatabase2.delete("Flags", "user = ?", strArr3);
                                                                                writableDatabase2.delete("RequestTags", "user = ?", strArr3);
                                                                                writableDatabase2.delete("ApplicationTags", "user = ?", strArr3);
                                                                                writableDatabase2.delete("CrossLoggedExperimentTokens", "fromUser = ?", strArr3);
                                                                                i22 = 1;
                                                                            }
                                                                            Iterator it3 = hashSet3.iterator();
                                                                            while (it3.hasNext()) {
                                                                                re.h(writableDatabase2, (String) it3.next());
                                                                            }
                                                                            writableDatabase2.setTransactionSuccessful();
                                                                            writableDatabase2.endTransaction();
                                                                            writableDatabase2 = bqfVar2222.c.getWritableDatabase();
                                                                            writableDatabase2.beginTransaction();
                                                                            try {
                                                                                Cursor query22 = writableDatabase2.query("Packages", new String[]{"packageName", "version"}, null, null, null, null, null);
                                                                                while (query22.moveToNext()) {
                                                                                    try {
                                                                                        String string = query22.getString(0);
                                                                                        Cursor rawQuery = writableDatabase2.rawQuery("SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user", new String[]{string, Integer.toString(query22.getInt(1))});
                                                                                        boolean z2 = false;
                                                                                        while (rawQuery.moveToNext()) {
                                                                                            try {
                                                                                                String[] strArr5 = {string, rawQuery.getString(1), Integer.toString(rawQuery.getInt(0))};
                                                                                                z2 = z2 | (writableDatabase2.delete("Flags", "packageName = ? AND user = ? AND version != ? AND committed = 0", strArr5) > 0) | (writableDatabase2.delete("ExperimentTokens", "packageName = ? AND user = ? AND version != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase2.delete("ApplicationTags", "packageName = ? AND user = ? AND version != ?", strArr5) > 0) | (writableDatabase2.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase2.delete("CrossLoggedExperimentTokens", "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0", strArr5) > 0);
                                                                                            } finally {
                                                                                            }
                                                                                        }
                                                                                        if (rawQuery != null) {
                                                                                            rawQuery.close();
                                                                                        }
                                                                                        if (z2) {
                                                                                            re.h(writableDatabase2, string);
                                                                                        }
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                writableDatabase2.setTransactionSuccessful();
                                                                                if (query22 != null) {
                                                                                    query22.close();
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        } finally {
                                                                            if (query2 == null) {
                                                                                throw th;
                                                                            }
                                                                            try {
                                                                                query2.close();
                                                                                throw th;
                                                                            } catch (Throwable th52) {
                                                                            }
                                                                        }
                                                                    } finally {
                                                                    }
                                                                }
                                                            });
                                                            elapsedRealtime = (int) (SystemClock.elapsedRealtime() - j6);
                                                            if (n2.c) {
                                                                n2.k();
                                                                n2.c = false;
                                                            }
                                                            dgxVar = (dgx) n2.b;
                                                            dgxVar.a |= 32;
                                                        }
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                    }
                                                } catch (RuntimeException e7) {
                                                    e = e7;
                                                    runtimeException = e;
                                                    j5 = j3;
                                                    bqeVar = bqeVar2;
                                                    ddfVar = n3;
                                                    j2 = j5;
                                                    if ((((dgx) n2.b).a & 16) == 0) {
                                                    }
                                                } catch (Throwable th12) {
                                                    th = th12;
                                                    th2 = th;
                                                    j4 = j3;
                                                    bqeVar = bqeVar2;
                                                    ddfVar = n3;
                                                    j = j4;
                                                    if (ddfVar != null) {
                                                    }
                                                    final bqf bqfVar2222 = (bqf) a;
                                                    bqf.j(new Runnable() { // from class: bqd
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            bqf bqfVar22222 = bqf.this;
                                                            String[] strArr22 = strArr;
                                                            SQLiteDatabase writableDatabase2 = bqfVar22222.c.getWritableDatabase();
                                                            writableDatabase2.beginTransaction();
                                                            int i22 = 1;
                                                            try {
                                                                Cursor query2 = writableDatabase2.query("RequestTags", new String[]{"user"}, null, null, null, null, null);
                                                                try {
                                                                    HashSet hashSet2 = new HashSet(query2.getCount());
                                                                    while (query2.moveToNext()) {
                                                                        hashSet2.add(query2.getString(0));
                                                                    }
                                                                    if (query2 != null) {
                                                                        query2.close();
                                                                    }
                                                                    for (String str22 : strArr22) {
                                                                        hashSet2.remove(str22);
                                                                    }
                                                                    Iterator it2 = bqf.g(writableDatabase2).iterator();
                                                                    while (it2.hasNext()) {
                                                                        hashSet2.remove((String) it2.next());
                                                                    }
                                                                    hashSet2.remove("");
                                                                    HashSet hashSet3 = new HashSet();
                                                                    Iterator it22 = hashSet2.iterator();
                                                                    while (it22.hasNext()) {
                                                                        String[] strArr3 = new String[i22];
                                                                        strArr3[0] = (String) it22.next();
                                                                        String[] strArr4 = new String[i22];
                                                                        strArr4[0] = "packageName";
                                                                        query2 = writableDatabase2.query("ExperimentTokens", strArr4, "user = ?", strArr3, null, null, null);
                                                                        while (query2.moveToNext()) {
                                                                            try {
                                                                                hashSet3.add(query2.getString(0));
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        if (query2 != null) {
                                                                            query2.close();
                                                                        }
                                                                        writableDatabase2.delete("ExperimentTokens", "user = ?", strArr3);
                                                                        writableDatabase2.delete("Flags", "user = ?", strArr3);
                                                                        writableDatabase2.delete("RequestTags", "user = ?", strArr3);
                                                                        writableDatabase2.delete("ApplicationTags", "user = ?", strArr3);
                                                                        writableDatabase2.delete("CrossLoggedExperimentTokens", "fromUser = ?", strArr3);
                                                                        i22 = 1;
                                                                    }
                                                                    Iterator it3 = hashSet3.iterator();
                                                                    while (it3.hasNext()) {
                                                                        re.h(writableDatabase2, (String) it3.next());
                                                                    }
                                                                    writableDatabase2.setTransactionSuccessful();
                                                                    writableDatabase2.endTransaction();
                                                                    writableDatabase2 = bqfVar22222.c.getWritableDatabase();
                                                                    writableDatabase2.beginTransaction();
                                                                    try {
                                                                        Cursor query22 = writableDatabase2.query("Packages", new String[]{"packageName", "version"}, null, null, null, null, null);
                                                                        while (query22.moveToNext()) {
                                                                            try {
                                                                                String string = query22.getString(0);
                                                                                Cursor rawQuery = writableDatabase2.rawQuery("SELECT MAX(version), user FROM ExperimentTokens WHERE packageName = ? AND version <= ? AND isCommitted = 0 GROUP BY user", new String[]{string, Integer.toString(query22.getInt(1))});
                                                                                boolean z2 = false;
                                                                                while (rawQuery.moveToNext()) {
                                                                                    try {
                                                                                        String[] strArr5 = {string, rawQuery.getString(1), Integer.toString(rawQuery.getInt(0))};
                                                                                        z2 = z2 | (writableDatabase2.delete("Flags", "packageName = ? AND user = ? AND version != ? AND committed = 0", strArr5) > 0) | (writableDatabase2.delete("ExperimentTokens", "packageName = ? AND user = ? AND version != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase2.delete("ApplicationTags", "packageName = ? AND user = ? AND version != ?", strArr5) > 0) | (writableDatabase2.delete("CrossLoggedExperimentTokens", "fromPackageName = ? AND fromUser = ? AND fromVersion != ? AND isCommitted = 0", strArr5) > 0) | (writableDatabase2.delete("CrossLoggedExperimentTokens", "toPackageName = ? AND fromUser = ? AND toVersion != ? AND isCommitted = 0", strArr5) > 0);
                                                                                    } finally {
                                                                                    }
                                                                                }
                                                                                if (rawQuery != null) {
                                                                                    rawQuery.close();
                                                                                }
                                                                                if (z2) {
                                                                                    re.h(writableDatabase2, string);
                                                                                }
                                                                            } finally {
                                                                            }
                                                                        }
                                                                        writableDatabase2.setTransactionSuccessful();
                                                                        if (query22 != null) {
                                                                            query22.close();
                                                                        }
                                                                    } finally {
                                                                    }
                                                                } finally {
                                                                    if (query2 == null) {
                                                                        throw th;
                                                                    }
                                                                    try {
                                                                        query2.close();
                                                                        throw th;
                                                                    } catch (Throwable th52) {
                                                                    }
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                    });
                                                    int elapsedRealtime32222 = (int) (SystemClock.elapsedRealtime() - j);
                                                    if (n2.c) {
                                                    }
                                                    dgx dgxVar52222 = (dgx) n2.b;
                                                    dgxVar52222.a |= 32;
                                                    dgxVar52222.g = elapsedRealtime32222;
                                                    throw th2;
                                                }
                                            }
                                            dgxVar.g = elapsedRealtime;
                                            dgx dgxVar9 = (dgx) n.h();
                                            if (bpsVar2 != null) {
                                                bpsVar2.close();
                                            }
                                            return dgxVar9;
                                        } catch (RuntimeException e8) {
                                            e = e8;
                                        } catch (Throwable th13) {
                                            th = th13;
                                        }
                                    } catch (RuntimeException e9) {
                                        j2 = elapsedRealtime2;
                                        runtimeException = e9;
                                        ddfVar = n3;
                                        bqeVar = null;
                                    } catch (Throwable th14) {
                                        j = elapsedRealtime2;
                                        th2 = th14;
                                        ddfVar = n3;
                                        bqeVar = null;
                                    }
                                } catch (RuntimeException e10) {
                                    j2 = elapsedRealtime2;
                                    runtimeException = e10;
                                    ddfVar = null;
                                    bqeVar = null;
                                } catch (Throwable th15) {
                                    j = elapsedRealtime2;
                                    th2 = th15;
                                    ddfVar = null;
                                    bqeVar = null;
                                }
                            } catch (SecurityException e11) {
                                securityException = e11;
                            }
                        } catch (Throwable th16) {
                            th = th16;
                            th = th;
                            if (bpsVar == null) {
                                throw th;
                            }
                            try {
                                bpsVar.close();
                                throw th;
                            } catch (Throwable th17) {
                                throw th;
                            }
                        }
                    } catch (Throwable th18) {
                        th = th18;
                        bpsVar = c;
                        th = th;
                        if (bpsVar == null) {
                        }
                    }
                } catch (bpt e12) {
                    throw new cep(e12.a, e12.getMessage(), e12);
                }
            }
        });
    }
}
