.class public Lqx;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l(Landroid/database/Cursor;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {v1}, Lex;->r(Z)V

    .line 2
    invoke-static {}, Lcww;->a()V

    new-instance v2, Lcwx;

    .line 3
    invoke-direct {v2}, Lcwx;-><init>()V

    .line 4
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v3, :cond_6

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcnx;->a:Ljava/nio/charset/Charset;

    invoke-interface {v2, v3, v10}, Lcwv;->b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    .line 6
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcwv;->a(J)V

    goto :goto_2

    .line 4
    :cond_0
    nop

    .line 8
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 11
    :cond_1
    const/4 v4, 0x0

    .line 9
    :goto_1
    iget-object v3, v2, Lcws;->a:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v2}, Lcws;->f()V

    goto :goto_2

    :cond_2
    nop

    .line 12
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 13
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcwr;->a(J)V

    goto :goto_2

    :cond_3
    nop

    .line 15
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 16
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcnx;->a:Ljava/nio/charset/Charset;

    invoke-interface {v2, v3, v4}, Lcwv;->b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    goto :goto_2

    :cond_4
    nop

    .line 17
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 18
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcwv;->c([B)V

    .line 4
    :cond_5
    :goto_2
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {v2}, Lcws;->e()V

    iget-object v0, v2, Lcws;->a:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iget-object v0, v2, Lcws;->a:Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x10

    if-lez v0, :cond_7

    iget-object v0, v2, Lcws;->a:Ljava/nio/ByteBuffer;

    iget v10, v2, Lcwx;->d:I

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v2, Lcwx;->d:I

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    const/16 v11, 0x28

    const/16 v12, 0x20

    const/16 v13, 0x18

    const/16 v14, 0x30

    const/16 v15, 0x8

    const-wide/16 v16, 0x0

    packed-switch v10, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/AssertionError;

    .line 50
    const-string v1, "Should never get here."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 23
    :pswitch_0
    const/16 v1, 0xe

    .line 24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    shl-long v16, v4, v14

    goto :goto_3

    .line 49
    :pswitch_1
    nop

    .line 24
    :goto_3
    const/16 v1, 0xd

    .line 25
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v11

    xor-long v16, v16, v4

    goto :goto_4

    .line 49
    :pswitch_2
    nop

    .line 25
    :goto_4
    const/16 v1, 0xc

    .line 26
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v12

    xor-long v16, v16, v4

    goto :goto_5

    .line 49
    :pswitch_3
    nop

    .line 26
    :goto_5
    const/16 v1, 0xb

    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v13

    xor-long v16, v16, v4

    goto :goto_6

    .line 49
    :pswitch_4
    nop

    .line 27
    :goto_6
    const/16 v1, 0xa

    .line 28
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v3

    xor-long v16, v16, v4

    goto :goto_7

    .line 49
    :pswitch_5
    nop

    .line 28
    :goto_7
    const/16 v1, 0x9

    .line 29
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v15

    xor-long v16, v16, v4

    goto :goto_8

    .line 49
    :pswitch_6
    nop

    .line 29
    :goto_8
    nop

    .line 30
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lhh;->s(B)I

    move-result v1

    int-to-long v4, v1

    xor-long v16, v16, v4

    goto :goto_9

    .line 49
    :pswitch_7
    nop

    .line 31
    :goto_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    move-object v10, v2

    goto/16 :goto_10

    .line 50
    :pswitch_8
    nop

    .line 32
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Lhh;->s(B)I

    move-result v7

    move-object v10, v2

    int-to-long v1, v7

    shl-long/2addr v1, v14

    goto :goto_a

    .line 49
    :pswitch_9
    move-object v10, v2

    move-wide/from16 v1, v16

    :goto_a
    nop

    .line 33
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Lhh;->s(B)I

    move-result v5

    int-to-long v4, v5

    shl-long/2addr v4, v11

    xor-long/2addr v1, v4

    goto :goto_b

    .line 38
    :pswitch_a
    move-object v10, v2

    move-wide/from16 v1, v16

    .line 33
    :goto_b
    nop

    .line 34
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lhh;->s(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v12

    xor-long/2addr v1, v4

    goto :goto_c

    .line 38
    :pswitch_b
    move-object v10, v2

    move-wide/from16 v1, v16

    .line 34
    :goto_c
    nop

    .line 35
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lhh;->s(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v13

    xor-long/2addr v1, v4

    goto :goto_d

    .line 38
    :pswitch_c
    move-object v10, v2

    move-wide/from16 v1, v16

    .line 35
    :goto_d
    nop

    .line 36
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lhh;->s(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v3

    xor-long/2addr v1, v4

    goto :goto_e

    .line 38
    :pswitch_d
    move-object v10, v2

    move-wide/from16 v1, v16

    .line 36
    :goto_e
    nop

    .line 37
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lhh;->s(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v15

    xor-long/2addr v1, v4

    goto :goto_f

    .line 38
    :pswitch_e
    move-object v10, v2

    move-wide/from16 v1, v16

    .line 37
    :goto_f
    nop

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lhh;->s(B)I

    move-result v0

    int-to-long v4, v0

    xor-long/2addr v1, v4

    move-wide v0, v1

    .line 31
    :goto_10
    iget-wide v4, v10, Lcwx;->b:J

    .line 39
    invoke-static {v0, v1}, Lcwx;->i(J)J

    move-result-wide v0

    xor-long/2addr v0, v4

    iput-wide v0, v10, Lcwx;->b:J

    iget-wide v0, v10, Lcwx;->c:J

    .line 40
    invoke-static/range {v16 .. v17}, Lcwx;->j(J)J

    move-result-wide v4

    xor-long/2addr v0, v4

    iput-wide v0, v10, Lcwx;->c:J

    iget-object v0, v10, Lcws;->a:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_11

    .line 21
    :cond_7
    move-object v10, v2

    .line 42
    :goto_11
    iget-wide v0, v10, Lcwx;->b:J

    iget v2, v10, Lcwx;->d:I

    int-to-long v4, v2

    iget-wide v6, v10, Lcwx;->c:J

    xor-long/2addr v6, v4

    xor-long/2addr v0, v4

    add-long/2addr v0, v6

    iput-wide v0, v10, Lcwx;->b:J

    add-long/2addr v6, v0

    iput-wide v6, v10, Lcwx;->c:J

    invoke-static {v0, v1}, Lcwx;->h(J)J

    move-result-wide v0

    iput-wide v0, v10, Lcwx;->b:J

    iget-wide v0, v10, Lcwx;->c:J

    invoke-static {v0, v1}, Lcwx;->h(J)J

    move-result-wide v0

    iget-wide v4, v10, Lcwx;->b:J

    add-long/2addr v4, v0

    iput-wide v4, v10, Lcwx;->b:J

    add-long/2addr v0, v4

    iput-wide v0, v10, Lcwx;->c:J

    new-array v0, v3, [B

    .line 43
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, v10, Lcwx;->b:J

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, v10, Lcwx;->c:J

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcwu;->e([B)Lcwu;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcwu;->a()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 9

    .line 1
    sget-object v0, Lbpk;->b:Lcol;

    .line 2
    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    const/4 p1, 0x2

    aput-object p4, v5, p1

    if-eq p2, p5, :cond_0

    const-string p1, "0"

    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "1"

    .line 3
    :goto_0
    const/4 p2, 0x3

    aput-object p1, v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    const-string v2, "Flags"

    const-string v4, "packageName = ? AND version = ? AND user = ? AND committed = ?"

    const-string v8, "name"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Landroid/database/MatrixCursor;

    .line 5
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 6
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    const/4 p3, 0x0

    .line 8
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 9
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getType(I)I

    move-result p4

    packed-switch p4, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/AssertionError;

    goto :goto_3

    .line 10
    :pswitch_0
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 11
    :pswitch_1
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 12
    :pswitch_2
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 13
    :pswitch_3
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    :pswitch_4
    const/4 p4, 0x0

    .line 14
    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 10
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 15
    :goto_3
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getType(I)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x29

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "unknown getType return value: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 17
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public j(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lro;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lrb;

    invoke-virtual {p2}, Lrb;->a()I

    .line 2
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public k(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method
