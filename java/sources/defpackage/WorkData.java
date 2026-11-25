package defpackage;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkData {
    public Map b;
    private static final String c = WorkLogger.b("Data");
    public static final WorkData a = ex.d(new HashMap());

    agk() {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x003a -> B:15:0x0064). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static WorkData a(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Throwable e;
        if (bArr.length > 10240) {
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        HashMap hashMap = new HashMap();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } catch (IOException e2) {
                Log.e(c, "Error in Data#fromByteArray: ", e2);
            }
            try {
                for (int readInt = objectInputStream.readInt(); readInt > 0; readInt--) {
                    hashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                }
                try {
                    objectInputStream.close();
                } catch (IOException e3) {
                    Log.e(c, "Error in Data#fromByteArray: ", e3);
                }
                byteArrayInputStream.close();
            } catch (IOException e4) {
                e = e4;
                try {
                    Log.e(c, "Error in Data#fromByteArray: ", e);
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e5) {
                            Log.e(c, "Error in Data#fromByteArray: ", e5);
                        }
                    }
                    byteArrayInputStream.close();
                    return new WorkData(hashMap);
                } catch (Throwable th) {
                    th = th;
                    objectInputStream2 = objectInputStream;
                    if (objectInputStream2 != null) {
                        try {
                            objectInputStream2.close();
                        } catch (IOException e6) {
                            Log.e(c, "Error in Data#fromByteArray: ", e6);
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                        throw th;
                    } catch (IOException e7) {
                        Log.e(c, "Error in Data#fromByteArray: ", e7);
                        throw th;
                    }
                }
            } catch (ClassNotFoundException e8) {
                e = e8;
                Log.e(c, "Error in Data#fromByteArray: ", e);
                if (objectInputStream != null) {
                }
                byteArrayInputStream.close();
                return new WorkData(hashMap);
            } catch (Throwable th2) {
                th = th2;
                objectInputStream2 = objectInputStream;
                if (objectInputStream2 != null) {
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException e9) {
            e = e9;
            Throwable th3 = e;
            objectInputStream = null;
            e = th3;
            Log.e(c, "Error in Data#fromByteArray: ", e);
            if (objectInputStream != null) {
            }
            byteArrayInputStream.close();
            return new WorkData(hashMap);
        } catch (ClassNotFoundException e10) {
            e = e10;
            Throwable th32 = e;
            objectInputStream = null;
            e = th32;
            Log.e(c, "Error in Data#fromByteArray: ", e);
            if (objectInputStream != null) {
            }
            byteArrayInputStream.close();
            return new WorkData(hashMap);
        } catch (Throwable th4) {
            th = th4;
        }
        return new WorkData(hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] c(WorkData agkVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream2.writeInt(agkVar.b.size());
                for (Map.Entry entry : agkVar.b.entrySet()) {
                    objectOutputStream2.writeUTF((String) entry.getKey());
                    objectOutputStream2.writeObject(entry.getValue());
                }
                try {
                    objectOutputStream2.close();
                } catch (IOException e) {
                    Log.e(c, "Error in Data#toByteArray: ", e);
                }
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    Log.e(c, "Error in Data#toByteArray: ", e2);
                }
                if (byteArrayOutputStream.size() <= 10240) {
                    return byteArrayOutputStream.toByteArray();
                }
                throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
            } catch (IOException e3) {
                e = e3;
                objectOutputStream = objectOutputStream2;
                try {
                    Log.e(c, "Error in Data#toByteArray: ", e);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e4) {
                            Log.e(c, "Error in Data#toByteArray: ", e4);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e5) {
                        Log.e(c, "Error in Data#toByteArray: ", e5);
                    }
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e6) {
                            Log.e(c, "Error in Data#toByteArray: ", e6);
                        }
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (IOException e7) {
                        Log.e(c, "Error in Data#toByteArray: ", e7);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = objectOutputStream2;
                if (objectOutputStream != null) {
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (IOException e8) {
            e = e8;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static Boolean[] d(boolean[] zArr) {
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i = 0; NavInstructionTypeEnum < zArr.length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    public static Byte[] e(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i = 0; NavInstructionTypeEnum < bArr.length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    public static Double[] f(double[] dArr) {
        Double[] dArr2 = new Double[dArr.length];
        for (int i = 0; NavInstructionTypeEnum < dArr.length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    public static Float[] g(float[] fArr) {
        Float[] fArr2 = new Float[fArr.length];
        for (int i = 0; NavInstructionTypeEnum < fArr.length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    public static Integer[] h(int[] iArr) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; NavInstructionTypeEnum < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static Long[] i(long[] jArr) {
        Long[] lArr = new Long[jArr.length];
        for (int i = 0; NavInstructionTypeEnum < jArr.length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    public final Map b() {
        return Collections.unmodifiableMap(this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WorkData agkVar = (WorkData) obj;
        Set<String> keySet = this.b.keySet();
        if (!keySet.equals(agkVar.b.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = this.b.get(str);
            Object obj3 = agkVar.b.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : ((obj2 instanceof Object[]) && (obj3 instanceof Object[])) ? Arrays.deepEquals((Object[]) obj2, (Object[]) obj3) : obj2.equals(obj3))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        if (!this.b.isEmpty()) {
            for (String str : this.b.keySet()) {
                StaggeredGridLayoutParams.append(str);
                StaggeredGridLayoutParams.append(" : ");
                Object obj = this.b.get(str);
                if (obj instanceof Object[]) {
                    StaggeredGridLayoutParams.append(Arrays.toString((Object[]) obj));
                } else {
                    StaggeredGridLayoutParams.append(obj);
                }
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }

    public WorkData(WorkData agkVar) {
        this.b = new HashMap(agkVar.b);
    }

    public WorkData(Map map) {
        this.b = new HashMap(map);
    }
}
