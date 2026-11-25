.class public final Lbco;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PG"

# interfaces
.implements Lbby;


# static fields
.field static final a:J

.field public static final synthetic b:I

.field private static final c:Lcsz;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private final e:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com/google/android/apps/auto/aareceiver/settings/SqLiteDeviceRegistry"

    invoke-static {v0}, Lcsz;->g(Ljava/lang/String;)Lcsz;

    move-result-object v0

    sput-object v0, Lbco;->c:Lcsz;

    const-wide/16 v0, 0x5a

    invoke-static {v0, v1}, Lj$/time/Duration;->ofDays(J)Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    sput-wide v0, Lbco;->a:J

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "usb"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wireless"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "autolaunch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "usb_supported"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wireless_autoconn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_used"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "previous_stop_reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "last_video_focus"

    aput-object v2, v0, v1

    sput-object v0, Lbco;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "device_registry"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lbco;->e:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private final n(Landroid/database/Cursor;)Lbcn;
    .locals 3

    .line 1
    new-instance v0, Lbcn;

    const-string v1, "device_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2
    invoke-direct {v0, v1, v2}, Lbcn;-><init>(J)V

    .line 3
    const-string v1, "bt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lbco;->e:Landroid/bluetooth/BluetoothAdapter;

    .line 4
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 3
    :goto_0
    iput-object v1, v0, Lbcn;->b:Landroid/bluetooth/BluetoothDevice;

    .line 5
    const-string v1, "usb"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbcn;->c:Ljava/lang/String;

    .line 6
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbcn;->d:Ljava/lang/String;

    .line 7
    const-string v1, "last_video_focus"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 8
    invoke-static {v1}, Lbcq;->a(I)Lbcq;

    move-result-object v1

    iput-object v1, v0, Lbcn;->e:Lbcq;

    .line 9
    const-string v1, "usb_supported"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_1
    iput-boolean v1, v0, Lbcn;->f:Z

    .line 10
    const-string v1, "previous_stop_reason"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lbcn;->g(Ljava/lang/String;)Lcly;

    move-result-object p1

    iput-object p1, v0, Lbcn;->g:Lcly;

    return-object v0
.end method

.method private static final o(Landroid/database/sqlite/SQLiteDatabase;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Lbcn;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lbco;->d:[Ljava/lang/String;

    array-length v1, v1

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    const-string v1, "usb"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    nop

    .line 4
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "autolaunch"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wireless"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    const-string v2, "usb_supported"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_used"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    const-string v1, "previous_stop_reason"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lbcq;->a:Lbcq;

    iget v1, v1, Lbcq;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "last_video_focus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 12
    const-string v2, "devices"

    invoke-virtual {p0, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    .line 13
    new-instance p0, Lbcn;

    .line 14
    invoke-direct {p0, v0, v1}, Lbcn;-><init>(J)V

    iput-object p1, p0, Lbcn;->b:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lbcn;->c:Ljava/lang/String;

    iput-object p3, p0, Lbcn;->d:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 13
    const-string p1, "Failed to insert new row"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final p(Landroid/database/sqlite/SQLiteDatabase;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_used"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "devices"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    new-array p2, v3, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    .line 5
    const-string p1, "bt = ?"

    invoke-virtual {p0, v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-array p1, v3, [Ljava/lang/String;

    aput-object p2, p1, v2

    .line 6
    const-string p2, "usb = ?"

    invoke-virtual {p0, v1, v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Lawo;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lawj;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lbco;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v9, v5

    new-array v11, v4, [Ljava/lang/String;

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v5

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v6

    aput-object v0, v11, v3

    const-string v8, "devices"

    const-string v10, "name IS NOT NULL AND name != ? AND (bt = ? OR usb = ?)"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "bt DESC"

    const-string v15, "1"

    .line 5
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 6
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    if-eqz v2, :cond_1

    .line 10
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 11
    :cond_1
    move-object v2, v7

    goto :goto_2

    .line 8
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_2

    .line 9
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 33
    :catchall_1
    move-exception v0

    .line 9
    :cond_2
    :goto_1
    :try_start_4
    throw v3

    .line 11
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    if-nez v7, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p1}, Lbco;->d(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit p0

    return-object v0

    .line 13
    :cond_4
    :try_start_5
    sget-object v8, Lbcq;->a:Lbcq;

    iget v8, v8, Lbcq;->d:I

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x139

    .line 14
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "REPLACE INTO devices SELECT NULL, ?, ?, ?, ? + ifnull(max(wireless), 0), ifnull(max(autolaunch), 0), ifnull(max(usb_supported), 1), ifnull(max(wireless_autoconn), 0), ? , ifnull(previous_stop_reason, \'\'), ifnull(max(last_video_focus), "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") FROM devices WHERE bt = ? OR usb = ? OR name = ? ORDER BY bt DESC"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 17
    invoke-virtual {v7, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 18
    invoke-virtual {v7, v4, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x4

    const-wide/16 v8, 0x1

    .line 19
    invoke-virtual {v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x5

    .line 20
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v8

    invoke-virtual {v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x6

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x7

    .line 23
    invoke-virtual {v7, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v0, 0x8

    .line 24
    invoke-virtual {v7, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 25
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual/range {p0 .. p0}, Lbco;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    sget-object v9, Lbco;->d:[Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/String;

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v5

    const-string v8, "devices"

    const-string v10, "device_id = ?"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 29
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 30
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    invoke-direct {v1, v2}, Lbco;->n(Landroid/database/Cursor;)Lbcn;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_5

    .line 34
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    monitor-exit p0

    return-object v0

    .line 30
    :cond_6
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to query for associated device row"

    .line 31
    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 9
    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_7

    .line 33
    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :cond_7
    :goto_3
    :try_start_a
    throw v3

    .line 25
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Did not insert a new row when associating Bluetooth and USB devices"

    .line 26
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both the BluetoothDevice and USB serial must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 0
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/bluetooth/BluetoothDevice;)Lawo;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbco;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    sget-object v2, Lbco;->d:[Ljava/lang/String;

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "devices"

    const-string v3, "bt = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gt v1, v10, :cond_3

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v9, p1, v2}, Lbco;->p(Landroid/database/sqlite/SQLiteDatabase;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lbco;->n(Landroid/database/Cursor;)Lbcn;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 7
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    monitor-exit p0

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    monitor-exit p0

    return-object v2

    .line 4
    :cond_3
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Multiple rows returned for Bluetooth device lookup: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7
    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 10
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :cond_4
    :goto_0
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 0
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Lawo;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbco;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    sget-object v2, Lbco;->d:[Ljava/lang/String;

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v1, "devices"

    const-string v3, "usb = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v10, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple rows returned for USB device lookup: "

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 4
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 7
    invoke-static {v9, v2, p1}, Lbco;->p(Landroid/database/sqlite/SQLiteDatabase;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v0}, Lbco;->n(Landroid/database/Cursor;)Lbcn;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    monitor-exit p0

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 9
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 4
    :catchall_1
    move-exception v0

    .line 9
    :cond_5
    :goto_1
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 0
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Landroid/bluetooth/BluetoothDevice;)Lawo;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbco;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lbco;->b(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1}, Lawj;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, p1, v2, v1}, Lbco;->o(Landroid/database/sqlite/SQLiteDatabase;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Lbcn;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Landroid/hardware/usb/UsbDevice;)Lawo;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    if-nez v1, :cond_2

    move-object v1, v2

    .line 4
    :goto_0
    if-nez v1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->getUsbSerialSafe(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_1
    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 6
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    invoke-virtual {p0, v0, v1}, Lbco;->f(Ljava/lang/String;Ljava/lang/String;)Lawo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given UsbDevice does not have a valid serial"

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)Lawo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lbco;->c(Ljava/lang/String;)Lawo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lbco;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lbco;->o(Landroid/database/sqlite/SQLiteDatabase;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Lbcn;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Lawo;Lcly;)Lawo;
    .locals 7

    .line 1
    check-cast p1, Lbcn;

    new-instance v0, Landroid/content/ContentValues;

    .line 2
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3
    invoke-static {p2}, Lbcn;->h(Lcly;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "previous_stop_reason"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 5
    iget-wide v4, p1, Lbcn;->a:J

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 7
    const-string v4, "devices"

    const-string v6, "device_id = ?"

    invoke-virtual {v2, v4, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p1, Lbcn;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 9
    iget-object p1, p1, Lbcn;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lbco;->d(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbco;->g(Lawo;Lcly;)Lawo;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "Given ProjectionDevice is bad when setting previous stop reason."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget-object p1, p1, Lbcn;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v0, p1}, Lbco;->f(Ljava/lang/String;Ljava/lang/String;)Lawo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbco;->g(Lawo;Lcly;)Lawo;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 14
    iput-object p2, p1, Lbcn;->g:Lcly;

    return-object p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    .line 16
    const-string v0, "Invalid number of updated rows (%d) when setting previous stop reason."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized h(Lawo;Lbcq;)Lawo;
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    check-cast p1, Lbcn;

    new-instance v0, Landroid/content/ContentValues;

    .line 2
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "last_video_focus"

    iget v3, p2, Lbcq;->d:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-array v3, v1, [Ljava/lang/String;

    .line 5
    iget-wide v4, p1, Lbcn;->a:J

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "devices"

    const-string v6, "device_id = ?"

    .line 7
    invoke-virtual {v2, v4, v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p1, Lbcn;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 9
    iget-object p1, p1, Lbcn;->b:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lbco;->d(Landroid/bluetooth/BluetoothDevice;)Lawo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbco;->h(Lawo;Lbcq;)Lawo;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 16
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Given ProjectionDevice is bad when setting autolaunch."

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget-object p1, p1, Lbcn;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v0, p1}, Lbco;->f(Ljava/lang/String;Ljava/lang/String;)Lawo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lbco;->h(Lawo;Lbcq;)Lawo;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 14
    :try_start_3
    iput-object p2, p1, Lbcn;->e:Lbcq;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 13
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "Invalid number of updated rows (%d) when setting autolaunch."

    .line 16
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v1, "DELETE FROM devices WHERE last_used <= ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v2

    sget-wide v3, Lbco;->a:J

    .line 4
    invoke-virtual {v2, v3, v4}, Lj$/time/Instant;->minusSeconds(J)Lj$/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    return-void
.end method

.method public final declared-synchronized j(Lawo;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lawo;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcoe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    .line 5
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "name"

    .line 6
    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v0, v5, v3

    const-string v0, "devices"

    const-string v1, "usb = ? AND bt = ?"

    .line 8
    invoke-virtual {v4, v0, v2, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 10
    check-cast p1, Lbcn;

    .line 11
    iput-object p2, p1, Lbcn;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There were multiple rows for the same device when updating the name."

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v1, "DELETE FROM devices WHERE bt = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    const-string v0, "Was not able to successfully delete a device row."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Lawo;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lawo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/ContentValues;

    .line 2
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "usb_supported"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p0}, Lbco;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-array v5, v2, [Ljava/lang/String;

    aput-object v0, v5, v3

    .line 5
    const-string v0, "devices"

    const-string v6, "usb = ?"

    invoke-virtual {v4, v0, v1, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 8
    check-cast p1, Lbcn;

    .line 9
    iput-boolean v3, p1, Lbcn;->f:Z

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v1, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 7
    const-string v0, "Invalid number of updated rows (%d) when setting usb-supported."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lbco;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lbco;->c:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    .line 2
    invoke-interface {v1, v0}, Lcsx;->g(Ljava/lang/Throwable;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const/16 v1, 0x293

    const-string v2, "com/google/android/apps/auto/aareceiver/settings/SqLiteDeviceRegistry"

    const-string v3, "getWritableDatabaseHandleErrors"

    const-string v4, "SqLiteDeviceRegistry.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v0

    check-cast v0, Lcsx;

    const-string v1, "Could not open writable database."

    invoke-interface {v0, v1}, Lcsx;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    sget-object v0, Lbcq;->a:Lbcq;

    iget v0, v0, Lbcq;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    const/16 v2, 0x193

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CREATE TABLE devices(device_id INTEGER PRIMARY KEY AUTOINCREMENT, bt TEXT UNIQUE, usb TEXT UNIQUE, name TEXT NOT NULL, wireless INTEGER NOT NULL, autolaunch INTEGER NOT NULL, usb_supported INTEGER NOT NULL DEFAULT 1,wireless_autoconn INTEGER NOT NULL DEFAULT 0,last_used TIMESTAMP NOT NULL DEFAULT (strftime(\'%s\',\'now\')), previous_stop_reason TEXT, last_video_focus INTEGER NOT NULL DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "DROP TABLE IF EXISTS devices;"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lbco;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    const/4 p3, 0x2

    if-ge p2, p3, :cond_0

    const-string p3, "ALTER TABLE devices ADD COLUMN usb_supported INTEGER NOT NULL DEFAULT 1"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x3

    if-ge p2, p3, :cond_1

    .line 2
    const-string p3, "ALTER TABLE devices ADD COLUMN wireless_autoconn INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x4

    if-ge p2, p3, :cond_3

    .line 3
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "ALTER TABLE devices ADD COLUMN last_used TIMESTAMP NOT NULL DEFAULT "

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 9
    :cond_2
    new-instance p3, Ljava/lang/String;

    .line 5
    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_3
    const/4 p3, 0x5

    if-ge p2, p3, :cond_4

    .line 8
    const-string p3, "ALTER TABLE devices ADD COLUMN previous_stop_reason TEXT"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/4 p3, 0x6

    if-ge p2, p3, :cond_5

    .line 9
    sget-object p2, Lbcq;->a:Lbcq;

    iget p2, p2, Lbcq;->d:I

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x54

    .line 10
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ALTER TABLE devices ADD COLUMN last_video_focus INTEGER NOT NULL DEFAULT "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
