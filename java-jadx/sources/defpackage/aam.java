package defpackage;

import android.util.Log;
import java.io.PrintWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aam {
    public final zq a;
    public final aaq b;

    public aam() {
    }

    public static aam a(zq zqVar) {
        return new aam(zqVar, ((aak) zqVar).ai(), null);
    }

    public static boolean b(int i) {
        return Log.isLoggable("LoaderManager", i);
    }

    @Deprecated
    public final void c(String str, PrintWriter printWriter) {
        aaq aaqVar = this.b;
        if (aaqVar.b.b() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String concat = str.concat("    ");
            for (int i = 0; i < aaqVar.b.b(); i++) {
                aan aanVar = (aan) aaqVar.b.e(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(aaqVar.b.a(i));
                printWriter.print(": ");
                printWriter.println(aanVar.toString());
                printWriter.print(concat);
                printWriter.print("mId=");
                printWriter.print(aanVar.j);
                printWriter.print(" mArgs=");
                printWriter.println((Object) null);
                printWriter.print(concat);
                printWriter.print("mLoader=");
                printWriter.println(aanVar.k);
                aau aauVar = aanVar.k;
                String concat2 = concat.concat("  ");
                printWriter.print(concat2);
                printWriter.print("mId=");
                printWriter.print(aauVar.d);
                printWriter.print(" mListener=");
                printWriter.println(aauVar.e);
                if (aauVar.g || aauVar.j) {
                    printWriter.print(concat2);
                    printWriter.print("mStarted=");
                    printWriter.print(aauVar.g);
                    printWriter.print(" mContentChanged=");
                    printWriter.print(aauVar.j);
                    printWriter.print(" mProcessingChange=");
                    printWriter.println(false);
                }
                if (aauVar.h || aauVar.i) {
                    printWriter.print(concat2);
                    printWriter.print("mAbandoned=");
                    printWriter.print(aauVar.h);
                    printWriter.print(" mReset=");
                    printWriter.println(aauVar.i);
                }
                aas aasVar = (aas) aauVar;
                if (aasVar.a != null) {
                    printWriter.print(concat2);
                    printWriter.print("mTask=");
                    printWriter.print(aasVar.a);
                    printWriter.print(" waiting=");
                    boolean z = aasVar.a.a;
                    printWriter.println(false);
                }
                if (aasVar.b != null) {
                    printWriter.print(concat2);
                    printWriter.print("mCancellingTask=");
                    printWriter.print(aasVar.b);
                    printWriter.print(" waiting=");
                    boolean z2 = aasVar.b.a;
                    printWriter.println(false);
                }
                if (aanVar.l != null) {
                    printWriter.print(concat);
                    printWriter.print("mCallbacks=");
                    printWriter.println(aanVar.l);
                    aao aaoVar = aanVar.l;
                    printWriter.print(concat.concat("  "));
                    printWriter.print("mDeliveredData=");
                    printWriter.println(aaoVar.c);
                }
                printWriter.print(concat);
                printWriter.print("mData=");
                aau aauVar2 = aanVar.k;
                Object obj = aanVar.f;
                printWriter.println(aau.e(obj != zy.a ? obj : null));
                printWriter.print(concat);
                printWriter.print("mStarted=");
                printWriter.println(aanVar.d > 0);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        sb.append(this.a.getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this.a)));
        sb.append("}}");
        return sb.toString();
    }

    public aam(zq zqVar, aed aedVar, byte[] bArr) {
        this.a = zqVar;
        this.b = (aaq) new aaj(aedVar, aaq.a, null).a(aaq.class);
    }
}
