package com.google.android.apps.auto.aareceiver.settings;

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
public final class SqLiteDeviceRegistry extends SQLiteOpenHelper implements DeviceRegistryBase {
    public static final /* synthetic */ int b = 0;
    private final BluetoothAdapter e;
    private static final FloggerLoggerFactory c = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/settings/SqLiteDeviceRegistry");
    static final long a = Duration.ofDays(90).getSeconds();
    private static final String[] d = {"device_id", "bt", "usb", "name", "wireless", "autolaunch", "usb_supported", "wireless_autoconn", "last_used", "previous_stop_reason", "last_video_focus"};

    public SqLiteDeviceRegistry(Context context) {
        super(context, "device_registry", (SQLiteDatabase.CursorFactory) null, 6);
        this.e = BluetoothAdapter.getDefaultAdapter();
    }

    private final ProjectionDeviceImpl n(Cursor cursor) {
        ProjectionDeviceImpl bcnVar = new ProjectionDeviceImpl(cursor.getLong(cursor.getColumnIndexOrThrow("device_id")));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("bt"));
        bcnVar.b = string == null ? null : this.e.getRemoteDevice(string);
        bcnVar.c = cursor.getString(cursor.getColumnIndexOrThrow("usb"));
        bcnVar.d = cursor.getString(cursor.getColumnIndexOrThrow("name"));
        bcnVar.e = ProjectionVisibilityState.a(cursor.getInt(cursor.getColumnIndexOrThrow("last_video_focus")));
        bcnVar.f = cursor.getInt(cursor.getColumnIndexOrThrow("usb_supported")) != 0;
        bcnVar.g = ProjectionDeviceImpl.g(cursor.getString(cursor.getColumnIndexOrThrow("previous_stop_reason")));
        return bcnVar;
    }

    private static final ProjectionDeviceImpl o(SQLiteDatabase sQLiteDatabase, BluetoothDevice bluetoothDevice, String str, String str2) {
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
        contentValues.put("last_video_focus", Integer.valueOf(ProjectionVisibilityState.NEVER_PROJECTED.d));
        long insert = sQLiteDatabase.insert("devices", null, contentValues);
        if (insert == -1) {
            throw new RuntimeException("Failed to insert new row");
        }
        ProjectionDeviceImpl bcnVar = new ProjectionDeviceImpl(insert);
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

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice a(BluetoothDevice bluetoothDevice, String str) {
        Cursor query;
        if (bluetoothDevice == null || str == null) {
            throw new IllegalArgumentException("Both the BluetoothDevice and USB serial must not be null");
        }
        String a2 = ClusterAliasNameProvider.a(bluetoothDevice);
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
        if (ProtoCompositeMessageM == null) {
            return d(bluetoothDevice);
        }
        int i = ProjectionVisibilityState.NEVER_PROJECTED.d;
        StringBuilder sb = new StringBuilder(313);
        StaggeredGridLayoutParams.append("REPLACE INTO devices SELECT NULL, ?, ?, ?, ? + ifnull(max(wireless), 0), ifnull(max(autolaunch), 0), ifnull(max(usb_supported), 1), ifnull(max(wireless_autoconn), 0), ? , ifnull(previous_stop_reason, ''), ifnull(max(last_video_focus), ");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(") FROM devices WHERE bt = ? OR usb = ? OR name = ? ORDER BY bt DESC");
        SQLiteStatement compileStatement = m.compileStatement(StaggeredGridLayoutParams.toString());
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
            ProjectionDeviceImpl n = n(query);
            if (query != null) {
                query.close();
            }
            return n;
        } finally {
        }
    }

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice b(BluetoothDevice bluetoothDevice) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor query = readableDatabase.query("devices", d, "bt = ?", new String[]{bluetoothDevice.getAddress()}, null, null, null, null);
        try {
            if (query.getCount() > 1) {
                String valueOf = String.valueOf(bluetoothDevice);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 52);
                StaggeredGridLayoutParams.append("Multiple rows returned for Bluetooth device lookup: ");
                StaggeredGridLayoutParams.append(valueOf);
                throw new IllegalStateException(StaggeredGridLayoutParams.toString());
            }
            if (!query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            p(readableDatabase, bluetoothDevice, null);
            ProjectionDeviceImpl n = n(query);
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

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice c(String str) {
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
            ProjectionDeviceImpl n = n(query);
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

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice d(BluetoothDevice bluetoothDevice) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        ProjectionDevice b2 = b(bluetoothDevice);
        if (b2 != null) {
            return b2;
        }
        String a2 = ClusterAliasNameProvider.a(bluetoothDevice);
        if (a2 == null) {
            a2 = bluetoothDevice.getAddress();
        }
        return o(readableDatabase, bluetoothDevice, null, a2);
    }

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice e(UsbDevice usbDevice) {
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
                StaggeredGridLayoutParams.append(manufacturerName);
                StaggeredGridLayoutParams.append(' ');
                StaggeredGridLayoutParams.append(productName);
                manufacturerName = StaggeredGridLayoutParams.toString();
            }
        }
        if (manufacturerName == null) {
            manufacturerName = CarCompat.getUsbSerialSafe(usbDevice);
        }
        return f(usbSerialSafe, manufacturerName);
    }

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice f(String str, String str2) {
        ProjectionDevice c2 = c(str);
        if (c2 != null) {
            return c2;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        if (str2 == null) {
            str2 = str;
        }
        return o(readableDatabase, null, str, str2);
    }

    @Override // defpackage.DeviceRegistryBase
    public final ProjectionDevice g(ProjectionDevice awoVar, ProjectionCloseReason clyVar) {
        ProjectionDeviceImpl bcnVar = (ProjectionDeviceImpl) awoVar;
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("previous_stop_reason", ProjectionDeviceImpl.h(clyVar));
        SQLiteDatabase m = m();
        if (ProtoCompositeMessageM == null) {
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

    @Override // defpackage.DeviceRegistryBase
    public final synchronized ProjectionDevice h(ProjectionDevice awoVar, ProjectionVisibilityState bcqVar) {
        ProjectionDeviceImpl bcnVar = (ProjectionDeviceImpl) awoVar;
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("last_video_focus", Integer.valueOf(bcqVar.d));
        SQLiteDatabase m = m();
        if (ProtoCompositeMessageM == null) {
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

    @Override // defpackage.DeviceRegistryBase
    public final void i() {
        SQLiteDatabase m = m();
        if (ProtoCompositeMessageM == null) {
            return;
        }
        SQLiteStatement compileStatement = m.compileStatement("DELETE FROM devices WHERE last_used <= ?");
        compileStatement.bindLong(1, Instant.now().minusSeconds(SingleStringProtoMessage).getEpochSecond());
        compileStatement.executeUpdateDelete();
    }

    @Override // defpackage.DeviceRegistryBase
    public final synchronized void j(ProjectionDevice awoVar, String str) {
        BluetoothDevice a2 = awoVar.a();
        String address = a2 != null ? a2.getAddress() : "";
        String c2 = GuavaPlatformUtils.c(awoVar.e());
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("name", str);
        SQLiteDatabase m = m();
        if (ProtoCompositeMessageM == null) {
            return;
        }
        if (m.update("devices", contentValues, "usb = ? AND bt = ?", new String[]{c2, address}) > 1) {
            throw new IllegalStateException("There were multiple rows for the same device when updating the name.");
        }
        ((ProjectionDeviceImpl) awoVar).d = str;
    }

    @Override // defpackage.DeviceRegistryBase
    public final void k(BluetoothDevice bluetoothDevice) {
        SQLiteDatabase m = m();
        if (ProtoCompositeMessageM == null) {
            return;
        }
        SQLiteStatement compileStatement = m.compileStatement("DELETE FROM devices WHERE bt = ?");
        compileStatement.bindString(1, bluetoothDevice.getAddress());
        int executeUpdateDelete = compileStatement.executeUpdateDelete();
        if (executeUpdateDelete != 0 && executeUpdateDelete != 1) {
            throw new IllegalStateException("Was not able to successfully delete a device row.");
        }
    }

    @Override // defpackage.DeviceRegistryBase
    public final void l(ProjectionDevice awoVar) {
        String e = awoVar.e();
        e.getClass();
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("usb_supported", (Integer) 0);
        SQLiteDatabase m = m();
        if (ProtoCompositeMessageM == null) {
            return;
        }
        int update = m.update("devices", contentValues, "usb = ?", new String[]{e});
        if (update != 1) {
            throw new IllegalStateException(String.format("Invalid number of updated rows (%d) when setting usb-supported.", Integer.valueOf(update)));
        }
        ((ProjectionDeviceImpl) awoVar).f = false;
    }

    public final SQLiteDatabase m() {
        try {
            return getWritableDatabase();
        } catch (SQLiteException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) c.b().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/settings/SqLiteDeviceRegistry", "getWritableDatabaseHandleErrors", 659, "SqLiteDeviceRegistry.java")).n("Could not open writable database.");
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        int i = ProjectionVisibilityState.NEVER_PROJECTED.d;
        StringBuilder sb = new StringBuilder(403);
        StaggeredGridLayoutParams.append("CREATE TABLE devices(device_id INTEGER PRIMARY KEY AUTOINCREMENT, bt TEXT UNIQUE, usb TEXT UNIQUE, name TEXT NOT NULL, wireless INTEGER NOT NULL, autolaunch INTEGER NOT NULL, usb_supported INTEGER NOT NULL DEFAULT 1,wireless_autoconn INTEGER NOT NULL DEFAULT 0,last_used TIMESTAMP NOT NULL DEFAULT (strftime('%s','now')), previous_stop_reason TEXT, last_video_focus INTEGER NOT NULL DEFAULT ");
        StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
        StaggeredGridLayoutParams.append(")");
        sQLiteDatabase.execSQL(StaggeredGridLayoutParams.toString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS devices;");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (NavInstructionTypeEnum < 2) {
            sQLiteDatabase.execSQL("ALTER TABLE devices ADD COLUMN usb_supported INTEGER NOT NULL DEFAULT 1");
        }
        if (NavInstructionTypeEnum < 3) {
            sQLiteDatabase.execSQL("ALTER TABLE devices ADD COLUMN wireless_autoconn INTEGER NOT NULL DEFAULT 0");
        }
        if (NavInstructionTypeEnum < 4) {
            String valueOf = String.valueOf(String.valueOf(Instant.now().getEpochSecond()));
            sQLiteDatabase.compileStatement(valueOf.length() != 0 ? "ALTER TABLE devices ADD COLUMN last_used TIMESTAMP NOT NULL DEFAULT ".concat(valueOf) : new String("ALTER TABLE devices ADD COLUMN last_used TIMESTAMP NOT NULL DEFAULT ")).execute();
        }
        if (NavInstructionTypeEnum < 5) {
            sQLiteDatabase.execSQL("ALTER TABLE devices ADD COLUMN previous_stop_reason TEXT");
        }
        if (NavInstructionTypeEnum < 6) {
            int i3 = ProjectionVisibilityState.NEVER_PROJECTED.d;
            StringBuilder sb = new StringBuilder(84);
            StaggeredGridLayoutParams.append("ALTER TABLE devices ADD COLUMN last_video_focus INTEGER NOT NULL DEFAULT ");
            StaggeredGridLayoutParams.append(i3);
            sQLiteDatabase.execSQL(StaggeredGridLayoutParams.toString());
        }
    }
}
