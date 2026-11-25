package defpackage;

import j$.util.Optional;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Locale;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class axw {
    private static final csz a = csz.g("com/google/android/apps/auto/aareceiver/phenotype/ExperimentFlagDumper");
    private final ceo b;

    public axw(ceo ceoVar) {
        this.b = ceoVar;
    }

    public final void a(PrintWriter printWriter) {
        String str;
        Optional of;
        printWriter.println("PhenotypeExperiments:");
        try {
            cem cemVar = (cem) this.b.b().get(500L, TimeUnit.MILLISECONDS);
            if (cemVar == null) {
                printWriter.println("    n/a");
                return;
            }
            printWriter.println("  Flags:");
            for (cen cenVar : cemVar.e) {
                Locale locale = Locale.ROOT;
                Object[] objArr = new Object[2];
                objArr[0] = cenVar.d;
                if (cenVar != null) {
                    int d = aga.d(cenVar.b);
                    int i = d - 1;
                    if (d == 0) {
                        throw null;
                    }
                    str = "";
                    switch (i) {
                        case 0:
                            of = Optional.of(Long.toString(cenVar.b == 1 ? ((Long) cenVar.c).longValue() : 0L));
                            break;
                        case 1:
                            of = Optional.of(Boolean.toString(cenVar.b == 2 ? ((Boolean) cenVar.c).booleanValue() : false));
                            break;
                        case 2:
                            of = Optional.of(Double.toString(cenVar.b == 3 ? ((Double) cenVar.c).doubleValue() : 0.0d));
                            break;
                        case 3:
                            of = Optional.of(cenVar.b == 4 ? (String) cenVar.c : "");
                            break;
                        case 4:
                            dcl dclVar = cenVar.b == 5 ? (dcl) cenVar.c : dcl.b;
                            cxe cxeVar = cxe.d;
                            StringWriter stringWriter = new StringWriter();
                            try {
                                cxc cxcVar = new cxc((cxd) cxeVar, stringWriter);
                                try {
                                    dclVar.p(cxcVar);
                                    cxcVar.close();
                                    String stringWriter2 = stringWriter.toString();
                                    if (!stringWriter2.isEmpty()) {
                                        String valueOf = String.valueOf(stringWriter2);
                                        str = valueOf.length() != 0 ? "x".concat(valueOf) : new String("x");
                                    }
                                    of = Optional.of(str);
                                    break;
                                } finally {
                                }
                            } catch (IOException e) {
                                throw new AssertionError(e);
                            }
                        default:
                            of = Optional.empty();
                            break;
                    }
                } else {
                    of = Optional.empty();
                }
                objArr[1] = of.orElse("n/a");
                printWriter.println(String.format(locale, "    %s: %s", objArr));
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            ((csx) ((csx) a.c().g(e2)).h("com/google/android/apps/auto/aareceiver/phenotype/ExperimentFlagDumper", "dump", 50, "ExperimentFlagDumper.java")).n("Couldn't retrieve flags");
            printWriter.println("    n/a");
        }
    }
}
