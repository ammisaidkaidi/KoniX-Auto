.class public final Lbls;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbrc;


# instance fields
.field private final a:Lbln;

.field private final b:I

.field private final c:Lbks;

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Lbln;ILbks;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbls;->a:Lbln;

    iput p2, p0, Lbls;->b:I

    iput-object p3, p0, Lbls;->c:Lbks;

    iput-wide p4, p0, Lbls;->d:J

    iput-wide p6, p0, Lbls;->e:J

    return-void
.end method

.method public static b(Lblj;Lbmn;I)Lbms;
    .locals 2

    .line 1
    iget-object p1, p1, Lbmn;->m:Lbmr;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lbmr;->d:Lbms;

    .line 1
    :goto_0
    if-eqz p1, :cond_5

    iget-boolean v1, p1, Lbms;->b:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lbms;->d:[I

    if-nez v1, :cond_3

    iget-object v1, p1, Lbms;->f:[I

    if-nez v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {v1, p2}, Lir;->d([II)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    .line 2
    :cond_3
    invoke-static {v1, p2}, Lir;->d([II)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 1
    :cond_4
    :goto_1
    iget p0, p0, Lblj;->i:I

    iget p2, p1, Lbms;->e:I

    if-ge p0, p2, :cond_5

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Lbrh;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lbls;->a:Lbln;

    invoke-virtual {v1}, Lbln;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lbnp;->a()Lbnp;

    move-result-object v1

    iget-object v1, v1, Lbnp;->a:Lbnq;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lbnq;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    return-void

    .line 2
    :cond_2
    :goto_0
    iget-object v2, v0, Lbls;->a:Lbln;

    iget-object v3, v0, Lbls;->c:Lbks;

    .line 3
    invoke-virtual {v2, v3}, Lbln;->b(Lbks;)Lblj;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v3, v2, Lblj;->b:Lbjx;

    .line 4
    instance-of v4, v3, Lbmn;

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-wide v4, v0, Lbls;->d:J

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v4, v7

    if-lez v10, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    .line 10
    :cond_4
    const/4 v4, 0x0

    .line 4
    :goto_1
    check-cast v3, Lbmn;

    iget v5, v3, Lbmn;->i:I

    const/16 v10, 0x64

    if-eqz v1, :cond_8

    iget-boolean v11, v1, Lbnq;->c:Z

    and-int/2addr v4, v11

    iget v11, v1, Lbnq;->d:I

    iget v12, v1, Lbnq;->e:I

    iget v1, v1, Lbnq;->a:I

    .line 5
    invoke-virtual {v3}, Lbmn;->z()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v3}, Lbmn;->n()Z

    move-result v13

    if-nez v13, :cond_7

    iget v4, v0, Lbls;->b:I

    .line 6
    invoke-static {v2, v3, v4}, Lbls;->b(Lblj;Lbmn;I)Lbms;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-boolean v3, v2, Lbms;->c:Z

    if-eqz v3, :cond_6

    iget-wide v3, v0, Lbls;->d:J

    cmp-long v12, v3, v7

    if-lez v12, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    const/4 v6, 0x0

    .line 6
    :goto_2
    iget v12, v2, Lbms;->e:I

    move v4, v6

    goto :goto_3

    .line 10
    :cond_7
    nop

    .line 6
    :goto_3
    move v2, v11

    move v3, v12

    goto :goto_4

    .line 10
    :cond_8
    const/16 v11, 0x1388

    const/4 v1, 0x0

    const/16 v2, 0x1388

    const/16 v3, 0x64

    .line 6
    :goto_4
    iget-object v6, v0, Lbls;->a:Lbln;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lbrh;->d()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_9

    const/4 v13, 0x0

    goto :goto_6

    .line 14
    :cond_9
    move-object/from16 v9, p1

    check-cast v9, Lbro;

    iget-boolean v9, v9, Lbro;->d:Z

    if-eqz v9, :cond_a

    const/16 v9, 0x64

    const/4 v13, -0x1

    goto :goto_6

    .line 8
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lbrh;->a()Ljava/lang/Exception;

    move-result-object v9

    .line 9
    instance-of v10, v9, Lbjz;

    if-eqz v10, :cond_c

    .line 10
    check-cast v9, Lbjz;

    iget-object v9, v9, Lbjz;->a:Lcom/google/android/gms/common/api/Status;

    iget v10, v9, Lcom/google/android/gms/common/api/Status;->e:I

    iget-object v9, v9, Lcom/google/android/gms/common/api/Status;->h:Lbiz;

    if-nez v9, :cond_b

    const/4 v9, -0x1

    goto :goto_5

    :cond_b
    iget v9, v9, Lbiz;->c:I

    :goto_5
    move v13, v9

    move v9, v10

    goto :goto_6

    :cond_c
    const/16 v9, 0x65

    const/4 v13, -0x1

    .line 7
    :goto_6
    if-eqz v4, :cond_d

    iget-wide v7, v0, Lbls;->d:J

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-wide/from16 v16, v7

    iget-wide v7, v0, Lbls;->e:J

    sub-long/2addr v14, v7

    long-to-int v4, v14

    move/from16 v21, v4

    move-wide/from16 v14, v16

    move-wide/from16 v16, v10

    goto :goto_7

    .line 14
    :cond_d
    move-wide v14, v7

    move-wide/from16 v16, v14

    const/16 v21, -0x1

    .line 12
    :goto_7
    new-instance v4, Lbnm;

    iget v11, v0, Lbls;->b:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v4

    move v12, v9

    move/from16 v20, v5

    invoke-direct/range {v10 .. v21}, Lbnm;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    iget-object v5, v6, Lbln;->l:Landroid/os/Handler;

    new-instance v6, Lblt;

    int-to-long v7, v2

    move-object v12, v6

    move-object v13, v4

    move v14, v1

    move-wide v15, v7

    move/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lblt;-><init>(Lbnm;IJI)V

    const/16 v1, 0x12

    .line 13
    invoke-virtual {v5, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 14
    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 4
    :cond_e
    :goto_8
    return-void
.end method
