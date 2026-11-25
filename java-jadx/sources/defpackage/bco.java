package defpackage;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.hardware.usb.UsbDevice;
import android.text.TextUtils;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.time.Duration;
import j$.time.Instant;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bco extends SQLiteOpenHelper implements bby {
    public static final /* synthetic */ int b = 0;
    private final BluetoothAdapter e;
    private static final csz c = csz.g("com/google/android/apps/auto/aareceiver/settings/SqLiteDeviceRegistry");
    static final long a = Duration.ofDays(90).getSeconds();
    private static final String[] d = {"device_id", "bt", "usb", "name", "wireless", "autolaunch", "usb_supported", "wireless_autoconn", "last_used", "previous_stop_reason", "last_video_focus"};

    public bco(Context context) {
        super(context, "device_registry", (SQLiteDatabase.CursorFactory) null, 6);
        this.e = BluetoothAdapter.getDefaultAdapter();
    }

    private final bcn n(Cursor cursor) {
        bcn bcnVar = new bcn(cursor.getLong(cursor.getColumnIndexOrThrow("device_id")));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("bt"));
        bcnVar.b = string == null ? null : this.e.getRemoteDevice(string);
        bcnVar.c = cursor.getString(cursor.getColumnIndexOrThrow("usb"));
        bcnVar.d = cursor.getString(cursor.getColumnIndexOrThrow("name"));
        bcnVar.e = bcq.a(cursor.getInt(cursor.getColumnIndexOrThrow("last_video_focus")));
        bcnVar.f = cursor.getInt(cursor.getColumnIndexOrThrow("usb_supported")) != 0;
        bcnVar.g = bcn.g(cursor.getString(cursor.getColumnIndexOrThrow("previous_stop_reason")));
        return bcnVar;
    }

    private static final bcn o(SQLiteDatabase sQLiteDatabase, BluetoothDevice bluetoothDevice, String str, String str2) {
        int length = d.length;
        ContentValues contentValues = new ContentValues(10);
        if (bluetoothDevice != null) {
            contentValues.put("bt", bluetoothDevice.getAddress());
        }
        if (str != null) {
            contentValues.put("usb", str);
        }
        contentValues.put("name", str2);
        contentValues.put("autolaunch", (Integer) 0);
        contentValues.put("wireless", (Integer) 1);
        contentValues.put("usb_supported", (Integer) 1);
        contentValues.put("last_used", Long.valueOf(Instant.now().getEpochSecond()));
        contentValues.put("previous_stop_reason", "");
        contentValues.put("last_video_focus", Integer.valueOf(bcq.NEVER_PROJECTED.d));
        long insert = sQLiteDatabase.insert("devices", null, contentValues);
        if (insert == -1) {
            throw new RuntimeException("Failed to insert new row");
        }
        bcn bcnVar = new bcn(insert);
        bcnVar.b = bluetoothDevice;
        bcnVar.c = str;
        bcnVar.d = str2;
        return bcnVar;
    }

    private static final void p(SQLiteDatabase sQLiteDatabase, BluetoothDevice bluetoothDevice, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("last_used", Long.valueOf(Instant.now().getEpochSecond()));
        if (bluetoothDevice != null) {
            sQLiteDatabase.update("devices", contentValues, "bt = ?", new String[]{bluetoothDevice.getAddress()});
        } else if (str != null) {
            sQLiteDatabase.update("devices", contentValues, "usb = ?", new String[]{str});
        }
    }

    @Override // defpackage.bby
    public final synchronized awo a(BluetoothDevice bluetoothDevice, String str) {
        Cursor query;
        if (bluetoothDevice == null || str == null) {
            throw new IllegalArgumentException("Both the BluetoothDevice and USB serial must not be null");
        }
        String a2 = awj.a(bluetoothDevice);
        if (a2 == null) {
            query = getReadableDatabase().query("devices", new String[]{"name"}, "name IS NOT NULL AND name != ? AND (bt = ? OR usb = ?)", new String[]{bluetoothDevice.getAddress(), bluetoothDevice.getAddress(), str}, null, null, "bt DESC", "1");
            try {
                String string = query.moveToFirst() ? query.getString(0) : bluetoothDevice.getAddress();
                if (query != null) {
                    query.close();
                }
                a2 = string;
            } finally {
            }
        }
        SQLiteDatabase m = m();
        if (m == null) {
            return d(bluetoothDevice);
        }
        int i = bcq.NEVER_PROJECTED.d;
        StringBuilder sb = new StringBuilder(313);
        sb.append("REPLACE INTO devices SELECT NULL, ?, ?, ?, ? + ifnull(max(wireless), 0), ifnull(max(autolaunch), 0), ifnull(max(usb_supported), 1), ifnull(max(wireless_autoconn), 0), ? , ifnull(previous_stop_reason, ''), ifnull(max(last_video_focus), ");
        sb.append(i);
        sb.append(") FROM devices WHERE bt = ? OR usb = ? OR name = ? ORDER BY bt DESC");
        SQLiteStatement compileStatement = m.compileStatement(sb.toString());
        compileStatement.bindString(1, bluetoothDevice.getAddress());
        compileStatement.bindString(2, str);
        compileStatement.bindString(3, a2);
        compileStatement.bindLong(4, 1L);
        compileStatement.bindLong(5, Instant.now().getEpochSecond());
        compileStatement.bindString(6, bluetoothDevice.getAddress());
        compileStatement.bindString(7, str);
        compileStatement.bindString(8, a2);
        long executeInsert = compileStatement.executeInsert();
        if (executeInsert == -1) {
            throw new IllegalStateException("Did not insert a new row when associating Bluetooth and USB devices");
        }
        query = getReadableDatabase().query("devices", d, "device_id = ?", new String[]{Long.toString(executeInsert)}, null, null, null, null);
        try {
            if (!query.moveToFirst()) {
                throw new IllegalStateException("Failed to query for associated device row");
            }
            bcn n = n(query);
            if (query != null) {
                query.close();
            }
            return n;
        } finally {
        }
    }

    @Override // defpackage.bby
    public final synchronized awo b(BluetoothDevice bluetoothDevice) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor query = readableDatabase.query("devices", d, "bt = ?", new String[]{bluetoothDevice.getAddress()}, null, null, null, null);
        try {
            if (query.getCount() > 1) {
                String valueOf = String.valueOf(bluetoothDevice);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 52);
                sb.append("Multiple rows returned for Bluetooth device lookup: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            }
            if (!query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            p(readableDatabase, bluetoothDevice, null);
            bcn n = n(query);
            if (query != null) {
                query.close();
            }
            return n;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                }
            }
            throw th;
        }
    }

    @Override // defpackage.bby
    public final synchronized awo c(String str) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor query = readableDatabase.query("devices", d, "usb = ?", new String[]{str}, null, null, null, null);
        try {
            if (query.getCount() > 1) {
                String valueOf = String.valueOf(str);
                throw new IllegalStateException(valueOf.length() != 0 ? "Multiple rows returned for USB device lookup: ".concat(valueOf) : new String("Multiple rows returned for USB device lookup: "));
            }
            if (!query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            p(readableDatabase, null, str);
            bcn n = n(query);
            if (query != null) {
                query.close();
            }
            return n;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                }
            }
            throw th;
        }
    }

    @Override // defpackage.bby
    public final synchronized awo d(BluetoothDevice bluetoothDevice) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        awo b2 = b(bluetoothDevice);
        if (b2 != null) {
            return b2;
        }
        String a2 = awj.a(bluetoothDevice);
        if (a2 == null) {
            a2 = bluetoothDevice.getAddress();
        }
        return o(readableDatabase, bluetoothDevice, null, a2);
    }

    @Override // defpackage.bby
    public final synchronized awo e(UsbDevice usbDevice) {
        String usbSerialSafe;
        String manufacturerName;
        usbSerialSafe = CarCompat.getUsbSerialSafe(usbDevice);
        if (TextUtils.isEmpty(usbSerialSafe)) {
            throw new IllegalArgumentException("Given UsbDevice does not have a valid serial");
        }
        manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        if (productName != null) {
            if (manufacturerName == null) {
                manufacturerName = productName;
            } else {
                StringBuilder sb = new StringBuilder(manufacturerName.length() + 1 + productName.length());
                sb.append(manufacturerName);
                sb.append(' ');
                sb.append(productName);
                manufacturerName = sb.toString();
            }
        }
        if (manufacturerName == null) {
            manufacturerName = CarCompat.getUsbSerialSafe(usbDevice);
        }
        return f(usbSerialSafe, manufacturerName);
    }

    @Override // defpackage.bby
    public final synchronized awo f(String str, String str2) {
        awo c2 = c(str);
        if (c2 != null) {
            return c2;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        if (str2 == null) {
            str2 = str;
        }
        return o(readableDatabase, null, str, str2);
    }

    @Override // defpackage.bby
    public final awo g(awo awoVar, cly clyVar) {
        bcn bcnVar = (bcn) awoVar;
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("previous_stop_reason", bcn.h(clyVar));
        SQLiteDatabase m = m();
        if (m == null) {
            return bcnVar;
        }
        int update = m.update("devices", contentValues, "device_id = ?", new String[]{Long.toString(bcnVar.a)});
        if (update != 0) {
            if (update != 1) {
                throw new IllegalStateException(String.format("Invalid number of updated rows (%d) when setting previous stop reason.", Integer.valueOf(update)));
            }
            bcnVar.g = clyVar;
            return bcnVar;
        }
        String str = bcnVar.c;
        if (str != null) {
            return g(f(str, bcnVar.d), clyVar);
        }
        BluetoothDevice bluetoothDevice = bcnVar.b;
        if (bluetoothDevice != null) {
            return g(d(bluetoothDevice), clyVar);
        }
        throw new IllegalStateException("Given ProjectionDevice is bad when setting previous stop reason.");
    }

    @Override // defpackage.bby
    public final synchronized awo h(awo awoVar, bcq bcqVar) {
        bcn bcnVar = (bcn) awoVar;
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("last_video_focus", Integer.valueOf(bcqVar.d));
        SQLiteDatabase m = m();
        if (m == null) {
            return bcnVar;
        }
        int update = m.update("devices", contentValues, "device_id = ?", new String[]{Long.toString(bcnVar.a)});
        if (update != 0) {
            if (update != 1) {
                throw new IllegalStateException(String.format("Invalid number of updated rows (%d) when setting autolaunch.", Integer.valueOf(update)));
            }
            bcnVar.e = bcqVar;
            return bcnVar;
        }
        String str = bcnVar.c;
        if (str != null) {
            return h(f(str, bcnVar.d), bcqVar);
        }
        BluetoothDevice bluetoothDevice = bcnVar.b;
        if (bluetoothDevice == null) {
            throw new IllegalStateException("Given ProjectionDevice is bad when setting autolaunch.");
        }
        return h(d(bluetoothDevice), bcqVar);
    }

    @Override // defpackage.bby
    public final void i() {
        SQLiteDatabase m = m();
        if (m == null) {
            return;
        }
        SQLiteStatement compileStatement = m.compileStatement("DELETE FROM devices WHERE last_used <= ?");
        compileStatement.bindLong(1, Instant.now().minusSeconds(a).getEpochSecond());
        compileStatement.executeUpdateDelete();
    }

    @Override // defpackage.bby
    public final synchronized void j(awo awoVar, String str) {
        BluetoothDevice a2 = awoVar.a();
        String address = a2 != null ? a2.getAddress() : "";
        String c2 = coe.c(awoVar.e());
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("name", str);
        SQLiteDatabase m = m();
        if (m == null) {
            return;
        }
        if (m.update("devices", contentValues, "usb = ? AND bt = ?", new String[]{c2, address}) > 1) {
            throw new IllegalStateException("There were multiple rows for the same device when updating the name.");
        }
        ((bcn) awoVar).d = str;
    }

    @Override // defpackage.bby
    public final void k(BluetoothDevice bluetoothDevice) {
        SQLiteDatabase m = m();
        if (m == null) {
            return;
        }
        SQLiteStatement compileStatement = m.compileStatement("DELETE FROM devices WHERE bt = ?");
        compileStatement.bindString(1, bluetoothDevice.getAddress());
        int executeUpdateDelete = compileStatement.executeUpdateDelete();
        if (executeUpdateDelete != 0 && executeUpdateDelete != 1) {
            throw new IllegalStateException("Was not able to successfully delete a device row.");
        }
    }

    @Override // defpackage.bby
    public final void l(awo awoVar) {
        String e = awoVar.e();
        e.getClass();
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("usb_supported", (Integer) 0);
        SQLiteDatabase m = m();
        if (m == null) {
            return;
        }
        int update = m.update("devices", contentValues, "usb = ?", new String[]{e});
        if (update != 1) {
            throw new IllegalStateException(String.format("Invalid number of updated rows (%d) when setting usb-supported.", Integer.valueOf(update)));
        }
        ((bcn) awoVar).f = false;
    }

    public final SQLiteDatabase m() {
        try {
            return getWritableDatabase();
        } catch (SQLiteException e) {
            ((csx) ((csx) c.b().g(e)).h("com/google/android/apps/auto/aareceiver/settings/SqLiteDeviceRegistry", "getWritableDatabaseHandleErrors", 659, "SqLiteDeviceRegistry.java")).n("Could not open writable database.");
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i = bcq.NEVER_PROJECTED.d;
        StringBuilder sb = new StringBuilder(403);
        sb.append("CREATE TABLE devices(device_id INTEGER PRIMARY KEY AUTOINCREMENT, bt TEXT UNIQUE, usb TEXT UNIQUE, name TEXT NOT NULL, wireless INTEGER NOT NULL, autolaunch INTEGER NOT NULL, usb_supported INTEGER NOT NULL DEFAULT 1,wireless_autoconn INTEGER NOT NULL DEFAULT 0,last_used TIMESTAMP NOT NULL DEFAULT (strftime('%s','now')), previous_stop_reason TEXT, last_video_focus INTEGER NOT NULL DEFAULT ");
        sb.append(i);
        sb.append(")");
        sQLiteDatabase.execSQL(sb.toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS devices;");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2) {
            sQLiteDatabase.execSQL("ALTER TABLE devices ADD COLUMN usb_supported INTEGER NOT NULL DEFAULT 1");
        }
        if (i < 3) {
            sQLiteDatabase.execSQL("ALTER TABLE devices ADD COLUMN wireless_autoconn INTEGER NOT NULL DEFAULT 0");
        }
        if (i < 4) {
            String valueOf = String.valueOf(String.valueOf(Instant.now().getEpochSecond()));
            sQLiteDatabase.compileStatement(valueOf.length() != 0 ? "ALTER TABLE devices ADD COLUMN last_used TIMESTAMP NOT NULL DEFAULT ".concat(valueOf) : new String("ALTER TABLE devices ADD COLUMN last_used TIMESTAMP NOT NULL DEFAULT ")).execute();
        }
        if (i < 5) {
            sQLiteDatabase.execSQL("ALTER TABLE devices ADD COLUMN previous_stop_reason TEXT");
        }
        if (i < 6) {
            int i3 = bcq.NEVER_PROJECTED.d;
            StringBuilder sb = new StringBuilder(84);
            sb.append("ALTER TABLE devices ADD COLUMN last_video_focus INTEGER NOT NULL DEFAULT ");
            sb.append(i3);
            sQLiteDatabase.execSQL(sb.toString());
        }
    }
}
