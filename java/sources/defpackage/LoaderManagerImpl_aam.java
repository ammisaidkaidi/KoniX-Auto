package defpackage;

import android.util.Log;
import java.io.PrintWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LoaderManagerImpl_aam {
    public final LifecycleOwner a;
    public final LoaderViewModel b;

    public LoaderManagerImpl_aam() {
    }

    public static LoaderManagerImpl_aam a(LifecycleOwner zqVar) {
        return new LoaderManagerImpl_aam(zqVar, ((ViewModelStoreOwner) zqVar).ai(), null);
    }

    public static boolean b(int i) {
        return Log.isLoggable("LoaderManager", i);
    }

    @Deprecated
    public final void c(String str, PrintWriter printWriter) {
        LoaderViewModel aaqVar = this.b;
        if (aaqVar.b.b() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String concat = str.concat("    ");
            for (int i = 0; NavInstructionTypeEnum < aaqVar.b.b(); i++) {
                LoaderInfoLiveData aanVar = (LoaderInfoLiveData) aaqVar.b.e(NavInstructionTypeEnum);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(aaqVar.b.a(NavInstructionTypeEnum));
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
                LoaderBase aauVar = aanVar.k;
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
                LicenseListAsyncTaskLoader aasVar = (LicenseListAsyncTaskLoader) aauVar;
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
                    LoaderLoadCompleteForwarder aaoVar = aanVar.l;
                    printWriter.print(concat.concat("  "));
                    printWriter.print("mDeliveredData=");
                    printWriter.println(aaoVar.c);
                }
                printWriter.print(concat);
                printWriter.print("mData=");
                LoaderBase aauVar2 = aanVar.k;
                Object obj = aanVar.f;
                printWriter.println(LoaderBase.e(obj != zy.a ? obj : null));
                printWriter.print(concat);
                printWriter.print("mStarted=");
                printWriter.println(aanVar.d > 0);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        StaggeredGridLayoutParams.append("LoaderManager{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        StaggeredGridLayoutParams.append(" in ");
        StaggeredGridLayoutParams.append(this.a.getClass().getSimpleName());
        StaggeredGridLayoutParams.append("{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this.a)));
        StaggeredGridLayoutParams.append("}}");
        return StaggeredGridLayoutParams.toString();
    }

    public LoaderManagerImpl_aam(LifecycleOwner zqVar, ViewModelStoreWithMigrationMap aedVar, byte[] bArr) {
        this.a = zqVar;
        this.b = (LoaderViewModel) new ViewModelProvider(aedVar, aaq.a, null).a(LoaderViewModel.class);
    }
}
