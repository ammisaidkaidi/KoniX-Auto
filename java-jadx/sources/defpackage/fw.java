package defpackage;

import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class fw {
    public fw() {
        Collections.emptyList();
        Collections.emptyList();
    }

    public static Bundle a(PlaybackState playbackState) {
        return playbackState.getExtras();
    }

    static void b(PlaybackState.Builder builder, Bundle bundle) {
        builder.setExtras(bundle);
    }

    public static boolean c(gr grVar, KeyEvent keyEvent) {
        if (grVar == null) {
            return false;
        }
        return grVar.aU(keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static agj d(byte[] bArr) {
        ObjectInputStream objectInputStream;
        IOException e;
        agj agjVar = new agj();
        if (bArr == null) {
            return agjVar;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (IOException e3) {
            objectInputStream = null;
            e = e3;
        } catch (Throwable th) {
            th = th;
        }
        try {
            for (int readInt = objectInputStream.readInt(); readInt > 0; readInt--) {
                agjVar.a.add(new agi(Uri.parse(objectInputStream.readUTF()), objectInputStream.readBoolean()));
            }
            try {
                objectInputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            byteArrayInputStream.close();
        } catch (IOException e5) {
            e = e5;
            try {
                e.printStackTrace();
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                byteArrayInputStream.close();
                return agjVar;
            } catch (Throwable th2) {
                th = th2;
                objectInputStream2 = objectInputStream;
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                try {
                    byteArrayInputStream.close();
                    throw th;
                } catch (IOException e8) {
                    e8.printStackTrace();
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            objectInputStream2 = objectInputStream;
            if (objectInputStream2 != null) {
            }
            byteArrayInputStream.close();
            throw th;
        }
        return agjVar;
    }

    public static int f(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to BackoffPolicy");
        }
    }

    public static int g(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            default:
                if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                    return 6;
                }
                throw new IllegalArgumentException("Could not convert " + i + " to NetworkType");
        }
    }

    public static int h(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to OutOfQuotaPolicy");
        }
    }

    public static int i(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            default:
                throw new IllegalArgumentException("Could not convert " + i + " to State");
        }
    }

    public static int j(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    public static cso k(Set set, Set set2) {
        return new csn(set, set2);
    }

    public static HashSet l(int i) {
        return new HashSet(fv.C(i));
    }

    public static csj m(Class cls, String str) {
        try {
            return new csj(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    public static Object[] n(Object[] objArr, int i) {
        return (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
    }

    public static void o(Object obj, int i) {
        if (obj != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }

    public static void p(Object... objArr) {
        q(objArr, objArr.length);
    }

    public static void q(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            o(objArr[i2], i2);
        }
    }

    public static int e(int i) {
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + ((Object) fv.z(i)) + " to int");
        }
    }
}
