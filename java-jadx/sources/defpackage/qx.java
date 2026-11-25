package defpackage;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: PG */
/* loaded from: classes.dex */
public class qx {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int l(Cursor cursor) {
        cwx cwxVar;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        ex.r(true);
        cww.a();
        cwx cwxVar2 = new cwx();
        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            cwxVar2.b(cursor.getString(1), cnx.a);
            if (!cursor.isNull(2)) {
                cwxVar2.a(cursor.getLong(2));
            } else if (!cursor.isNull(3)) {
                cwxVar2.a.put(cursor.getInt(3) != 0 ? (byte) 1 : (byte) 0);
                cwxVar2.f();
            } else if (!cursor.isNull(4)) {
                cwxVar2.a(Double.doubleToRawLongBits(cursor.getDouble(4)));
            } else if (!cursor.isNull(5)) {
                cwxVar2.b(cursor.getString(5), cnx.a);
            } else if (!cursor.isNull(6)) {
                cwxVar2.c(cursor.getBlob(6));
            }
            cursor.moveToNext();
        }
        cwxVar2.e();
        cwxVar2.a.flip();
        if (cwxVar2.a.remaining() > 0) {
            ByteBuffer byteBuffer = cwxVar2.a;
            cwxVar2.d += byteBuffer.remaining();
            long j8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    cwxVar = cwxVar2;
                    j2 = 0;
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer2 = cwxVar.a;
                    byteBuffer2.position(byteBuffer2.limit());
                    break;
                case 2:
                    cwxVar = cwxVar2;
                    j3 = 0;
                    j2 = j3 ^ (hh.s(byteBuffer.get(1)) << 8);
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer22 = cwxVar.a;
                    byteBuffer22.position(byteBuffer22.limit());
                    break;
                case 3:
                    cwxVar = cwxVar2;
                    j4 = 0;
                    j3 = j4 ^ (hh.s(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (hh.s(byteBuffer.get(1)) << 8);
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer222 = cwxVar.a;
                    byteBuffer222.position(byteBuffer222.limit());
                    break;
                case 4:
                    cwxVar = cwxVar2;
                    j5 = 0;
                    j4 = j5 ^ (hh.s(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (hh.s(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (hh.s(byteBuffer.get(1)) << 8);
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer2222 = cwxVar.a;
                    byteBuffer2222.position(byteBuffer2222.limit());
                    break;
                case 5:
                    cwxVar = cwxVar2;
                    j6 = 0;
                    j5 = j6 ^ (hh.s(byteBuffer.get(4)) << 32);
                    j4 = j5 ^ (hh.s(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (hh.s(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (hh.s(byteBuffer.get(1)) << 8);
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer22222 = cwxVar.a;
                    byteBuffer22222.position(byteBuffer22222.limit());
                    break;
                case 6:
                    cwxVar = cwxVar2;
                    j7 = 0;
                    j6 = j7 ^ (hh.s(byteBuffer.get(5)) << 40);
                    j5 = j6 ^ (hh.s(byteBuffer.get(4)) << 32);
                    j4 = j5 ^ (hh.s(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (hh.s(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (hh.s(byteBuffer.get(1)) << 8);
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer222222 = cwxVar.a;
                    byteBuffer222222.position(byteBuffer222222.limit());
                    break;
                case 7:
                    cwxVar = cwxVar2;
                    j7 = hh.s(byteBuffer.get(6)) << 48;
                    j6 = j7 ^ (hh.s(byteBuffer.get(5)) << 40);
                    j5 = j6 ^ (hh.s(byteBuffer.get(4)) << 32);
                    j4 = j5 ^ (hh.s(byteBuffer.get(3)) << 24);
                    j3 = j4 ^ (hh.s(byteBuffer.get(2)) << 16);
                    j2 = j3 ^ (hh.s(byteBuffer.get(1)) << 8);
                    j = j2 ^ hh.s(byteBuffer.get(0));
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer2222222 = cwxVar.a;
                    byteBuffer2222222.position(byteBuffer2222222.limit());
                    break;
                case 8:
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer22222222 = cwxVar.a;
                    byteBuffer22222222.position(byteBuffer22222222.limit());
                    break;
                case 9:
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer222222222 = cwxVar.a;
                    byteBuffer222222222.position(byteBuffer222222222.limit());
                    break;
                case 10:
                    j8 ^= hh.s(byteBuffer.get(9)) << 8;
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer2222222222 = cwxVar.a;
                    byteBuffer2222222222.position(byteBuffer2222222222.limit());
                    break;
                case 11:
                    j8 ^= hh.s(byteBuffer.get(10)) << 16;
                    j8 ^= hh.s(byteBuffer.get(9)) << 8;
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer22222222222 = cwxVar.a;
                    byteBuffer22222222222.position(byteBuffer22222222222.limit());
                    break;
                case 12:
                    j8 ^= hh.s(byteBuffer.get(11)) << 24;
                    j8 ^= hh.s(byteBuffer.get(10)) << 16;
                    j8 ^= hh.s(byteBuffer.get(9)) << 8;
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer222222222222 = cwxVar.a;
                    byteBuffer222222222222.position(byteBuffer222222222222.limit());
                    break;
                case 13:
                    j8 ^= hh.s(byteBuffer.get(12)) << 32;
                    j8 ^= hh.s(byteBuffer.get(11)) << 24;
                    j8 ^= hh.s(byteBuffer.get(10)) << 16;
                    j8 ^= hh.s(byteBuffer.get(9)) << 8;
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer2222222222222 = cwxVar.a;
                    byteBuffer2222222222222.position(byteBuffer2222222222222.limit());
                    break;
                case 14:
                    j8 ^= hh.s(byteBuffer.get(13)) << 40;
                    j8 ^= hh.s(byteBuffer.get(12)) << 32;
                    j8 ^= hh.s(byteBuffer.get(11)) << 24;
                    j8 ^= hh.s(byteBuffer.get(10)) << 16;
                    j8 ^= hh.s(byteBuffer.get(9)) << 8;
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer22222222222222 = cwxVar.a;
                    byteBuffer22222222222222.position(byteBuffer22222222222222.limit());
                    break;
                case 15:
                    j8 = hh.s(byteBuffer.get(14)) << 48;
                    j8 ^= hh.s(byteBuffer.get(13)) << 40;
                    j8 ^= hh.s(byteBuffer.get(12)) << 32;
                    j8 ^= hh.s(byteBuffer.get(11)) << 24;
                    j8 ^= hh.s(byteBuffer.get(10)) << 16;
                    j8 ^= hh.s(byteBuffer.get(9)) << 8;
                    j8 ^= hh.s(byteBuffer.get(8));
                    j = byteBuffer.getLong();
                    cwxVar = cwxVar2;
                    cwxVar.b = cwx.i(j) ^ cwxVar.b;
                    cwxVar.c ^= cwx.j(j8);
                    ByteBuffer byteBuffer222222222222222 = cwxVar.a;
                    byteBuffer222222222222222.position(byteBuffer222222222222222.limit());
                    break;
                default:
                    throw new AssertionError("Should never get here.");
            }
        } else {
            cwxVar = cwxVar2;
        }
        long j9 = cwxVar.b;
        long j10 = cwxVar.d;
        long j11 = cwxVar.c ^ j10;
        long j12 = (j9 ^ j10) + j11;
        cwxVar.b = j12;
        cwxVar.c = j11 + j12;
        cwxVar.b = cwx.h(j12);
        long h = cwx.h(cwxVar.c);
        long j13 = cwxVar.b + h;
        cwxVar.b = j13;
        cwxVar.c = h + j13;
        return cwu.e(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(cwxVar.b).putLong(cwxVar.c).array()).a();
    }

    public static Cursor m(SQLiteDatabase sQLiteDatabase, String str, long j, String str2, boolean z) {
        String[] strArr = (String[]) bpk.b.a();
        String[] strArr2 = new String[4];
        strArr2[0] = str;
        strArr2[1] = Long.toString(j);
        strArr2[2] = str2;
        strArr2[3] = true != z ? "0" : "1";
        Cursor query = sQLiteDatabase.query("Flags", strArr, "packageName = ? AND version = ? AND user = ? AND committed = ?", strArr2, null, null, "name");
        try {
            MatrixCursor matrixCursor = new MatrixCursor(query.getColumnNames(), query.getCount());
            while (query.moveToNext()) {
                MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
                for (int i = 0; i < query.getColumnCount(); i++) {
                    switch (query.getType(i)) {
                        case 0:
                            newRow.add(null);
                        case 1:
                            newRow.add(Integer.valueOf(query.getInt(i)));
                        case 2:
                            newRow.add(Double.valueOf(query.getDouble(i)));
                        case 3:
                            newRow.add(query.getString(i));
                        case 4:
                            newRow.add(query.getBlob(i));
                        default:
                            int type = query.getType(i);
                            StringBuilder sb = new StringBuilder(41);
                            sb.append("unknown getType return value: ");
                            sb.append(type);
                            throw new AssertionError(sb.toString());
                    }
                }
            }
            return matrixCursor;
        } finally {
            query.close();
        }
    }

    public static boolean n(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void f(Canvas canvas, RecyclerView recyclerView) {
    }

    public void j(Rect rect, View view, RecyclerView recyclerView, ro roVar) {
        ((rb) view.getLayoutParams()).a();
        rect.set(0, 0, 0, 0);
    }

    public void k(Canvas canvas, RecyclerView recyclerView) {
    }
}
