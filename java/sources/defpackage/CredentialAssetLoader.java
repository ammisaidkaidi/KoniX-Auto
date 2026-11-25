package defpackage;

import android.content.Context;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CredentialAssetLoader {
    public final Map a;
    private final Context b;
    private final List c;

    public CredentialAssetLoader(Context context, ImmutableList cqhVar, ImmutableMapBase cqkVar) {
        this.b = context;
        this.c = cqhVar;
        this.a = cqkVar;
    }

    private final String c(InputStream inputStream) {
        InputStreamReader inputStreamReader = new InputStreamReader(new BufferedInputStream(new XorDecodingInputStream(inputStream, this.b.getApplicationInfo().packageName.getBytes(StandardCharsets.US_ASCII))));
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                String sb2 = StaggeredGridLayoutParams.toString();
                inputStreamReader.close();
                return sb2;
            }
            StaggeredGridLayoutParams.append(cArr, 0, read);
        }
    }

    public final String a(String str) {
        try {
            return c(this.b.getAssets().open(str));
        } catch (IOException e) {
            throw new RuntimeException(ProtoFlagValueMessage);
        }
    }

    public final String b(String str, String str2) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            try {
                return c(new FileInputStream(new File((String) it.next(), str)));
            } catch (IOException e) {
            }
        }
        return a(str2);
    }
}
