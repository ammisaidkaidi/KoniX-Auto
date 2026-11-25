package defpackage;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cgc implements Runnable {
    public final /* synthetic */ cdz a;
    public final /* synthetic */ String b;
    private final /* synthetic */ int c;

    public /* synthetic */ cgc(cdz cdzVar, String str, int i) {
        this.c = i;
        this.a = cdzVar;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                cdz cdzVar = this.a;
                final String str = this.b;
                ArrayList arrayList = new ArrayList();
                arrayList.add(cdzVar.h);
                int i = btj.a;
                arrayList.add(btj.a(cdzVar.h));
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    String valueOf = String.valueOf(((Context) arrayList.get(i2)).getFilesDir().toPath());
                    String.valueOf(valueOf).length();
                    File file = new File(String.valueOf(valueOf).concat("/phenotype/shared"));
                    if (file.exists()) {
                        for (File file2 : file.listFiles(new FilenameFilter() { // from class: cgb
                            @Override // java.io.FilenameFilter
                            public final boolean accept(File file3, String str2) {
                                return str2.equals(str.concat(".pb"));
                            }
                        })) {
                            if (str.length() != 0) {
                                "Removing leftover snapshots for removed package: ".concat(str);
                            }
                            file2.delete();
                        }
                    }
                }
                break;
            default:
                cdz cdzVar2 = this.a;
                String str2 = this.b;
                coc cocVar = cfg.a;
                if (!cgv.f(cdzVar2.h).containsKey(str2)) {
                    StringBuilder sb = new StringBuilder(str2.length() + 183);
                    sb.append("Config package ");
                    sb.append(str2);
                    sb.append(" cannot use ProtoDataStore backing without declarative registration. See go/phenotype-android-integration#phenotype for more information. This will lead to stale flags.");
                    Log.e("PhenotypeCombinedFlags", sb.toString());
                    break;
                }
                break;
        }
    }
}
