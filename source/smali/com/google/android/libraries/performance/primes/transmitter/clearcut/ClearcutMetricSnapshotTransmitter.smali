.class public final Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lccu;


# static fields
.field private static final a:Lcol;


# instance fields
.field private volatile b:Lbik;

.field private volatile c:Lbik;

.field private final d:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lbpe;->r:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a:Lcol;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbpe;->q:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->d:Lcol;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lccs;)Ldag;
    .locals 11

    .line 1
    sget-object v0, Lcda;->i:Ldcx;

    .line 2
    invoke-virtual {p2, v0}, Lddi;->k(Ldcx;)V

    iget-object v1, p2, Lddi;->d:Lddb;

    .line 3
    iget-object v0, v0, Ldcx;->d:Lddj;

    iget-object v1, v1, Lddb;->b:Ldfo;

    .line 4
    invoke-virtual {v1, v0}, Ldfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    const-string v3, "ClearcutMetricSnapshotTransmitter received a snapshot without the expected extension."

    .line 1
    invoke-static {v0, v3}, Lex;->m(ZLjava/lang/Object;)V

    iget-object v0, p2, Lccs;->b:Ldpz;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Ldpz;->y:Ldpz;

    :cond_1
    nop

    .line 6
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lddf;

    .line 8
    invoke-virtual {v4, v0}, Lddf;->n(Lddk;)V

    sget-object v0, Lcdk;->a:Lcdj;

    .line 9
    invoke-static {v0, v4}, Lcdk;->b(Lcdj;Ldeq;)V

    iget-object v0, v4, Lddf;->b:Lddk;

    .line 10
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->k:Ldok;

    if-nez v0, :cond_2

    .line 11
    sget-object v0, Ldok;->c:Ldok;

    :cond_2
    iget v0, v0, Ldok;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, v4, Lddf;->b:Lddk;

    .line 12
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->k:Ldok;

    if-nez v0, :cond_3

    sget-object v0, Ldok;->c:Ldok;

    :cond_3
    iget-object v0, v0, Ldok;->b:Ldoj;

    if-nez v0, :cond_4

    .line 13
    sget-object v0, Ldoj;->k:Ldoj;

    :cond_4
    nop

    .line 14
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v5

    .line 15
    check-cast v5, Lddf;

    .line 16
    invoke-virtual {v5, v0}, Lddf;->n(Lddk;)V

    sget-object v0, Lcdk;->b:Lcdj;

    .line 17
    invoke-static {v0, v5}, Lcdk;->b(Lcdj;Ldeq;)V

    iget-object v0, v4, Lddf;->b:Lddk;

    .line 18
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->k:Ldok;

    if-nez v0, :cond_5

    sget-object v0, Ldok;->c:Ldok;

    .line 19
    :cond_5
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v6

    .line 20
    check-cast v6, Lddf;

    .line 21
    invoke-virtual {v6, v0}, Lddf;->n(Lddk;)V

    iget-boolean v0, v6, Lddf;->c:Z

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v2, v6, Lddf;->c:Z

    :cond_6
    iget-object v0, v6, Lddf;->b:Lddk;

    .line 22
    check-cast v0, Ldok;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Ldoj;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Ldok;->b:Ldoj;

    iget v5, v0, Ldok;->a:I

    or-int/2addr v5, v1

    iput v5, v0, Ldok;->a:I

    iget-boolean v0, v4, Lddf;->c:Z

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v2, v4, Lddf;->c:Z

    :cond_7
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 25
    check-cast v0, Ldpz;

    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Ldok;

    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Ldpz;->k:Ldok;

    iget v5, v0, Ldpz;->a:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Ldpz;->a:I

    :cond_8
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 27
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->h:Ldpm;

    if-nez v0, :cond_9

    .line 28
    sget-object v0, Ldpm;->i:Ldpm;

    :cond_9
    iget v0, v0, Ldpm;->a:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    iget-object v0, v4, Lddf;->b:Lddk;

    .line 29
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->h:Ldpm;

    if-nez v0, :cond_a

    sget-object v0, Ldpm;->i:Ldpm;

    :cond_a
    iget-object v0, v0, Ldpm;->h:Lcxu;

    if-nez v0, :cond_b

    .line 30
    sget-object v0, Lcxu;->d:Lcxu;

    :cond_b
    nop

    .line 31
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Lddf;

    .line 33
    invoke-virtual {v5, v0}, Lddf;->n(Lddk;)V

    iget-object v0, v5, Lddf;->b:Lddk;

    .line 34
    check-cast v0, Lcxu;

    iget-object v0, v0, Lcxu;->b:Lcxt;

    if-nez v0, :cond_c

    .line 35
    sget-object v0, Lcxt;->f:Lcxt;

    :cond_c
    nop

    .line 36
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v6

    .line 37
    check-cast v6, Lddf;

    .line 38
    invoke-virtual {v6, v0}, Lddf;->n(Lddk;)V

    iget-object v0, v6, Lddf;->b:Lddk;

    .line 39
    check-cast v0, Lcxt;

    iget-object v0, v0, Lcxt;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 41
    invoke-static {v0}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-boolean v0, v6, Lddf;->c:Z

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v2, v6, Lddf;->c:Z

    :cond_d
    iget-object v0, v6, Lddf;->b:Lddk;

    .line 42
    check-cast v0, Lcxt;

    iget v9, v0, Lcxt;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v0, Lcxt;->a:I

    iput-wide v7, v0, Lcxt;->d:J

    and-int/lit8 v7, v9, -0x3

    iput v7, v0, Lcxt;->a:I

    sget-object v7, Lcxt;->f:Lcxt;

    iget-object v7, v7, Lcxt;->c:Ljava/lang/String;

    iput-object v7, v0, Lcxt;->c:Ljava/lang/String;

    .line 43
    :cond_e
    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lcxt;

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v2, v5, Lddf;->c:Z

    :cond_f
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 44
    check-cast v6, Lcxu;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Lcxu;->b:Lcxt;

    iget v0, v6, Lcxu;->a:I

    or-int/2addr v0, v1

    iput v0, v6, Lcxu;->a:I

    iget-object v0, v6, Lcxu;->c:Lddr;

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_10

    .line 47
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v2, v5, Lddf;->c:Z

    :cond_10
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 48
    check-cast v6, Lcxu;

    .line 49
    invoke-static {}, Lcxu;->y()Lddr;

    move-result-object v7

    iput-object v7, v6, Lcxu;->c:Lddr;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcxt;

    .line 51
    invoke-virtual {v6, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    .line 52
    check-cast v7, Lddf;

    .line 53
    invoke-virtual {v7, v6}, Lddf;->n(Lddk;)V

    iget-object v6, v7, Lddf;->b:Lddk;

    .line 54
    check-cast v6, Lcxt;

    iget-object v6, v6, Lcxt;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    .line 56
    invoke-static {v6}, Ldba;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v6, v7, Lddf;->c:Z

    if-eqz v6, :cond_11

    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_11
    iget-object v6, v7, Lddf;->b:Lddk;

    .line 57
    check-cast v6, Lcxt;

    iget v10, v6, Lcxt;->a:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v6, Lcxt;->a:I

    iput-wide v8, v6, Lcxt;->d:J

    and-int/lit8 v8, v10, -0x3

    iput v8, v6, Lcxt;->a:I

    sget-object v8, Lcxt;->f:Lcxt;

    iget-object v8, v8, Lcxt;->c:Ljava/lang/String;

    iput-object v8, v6, Lcxt;->c:Ljava/lang/String;

    .line 58
    :cond_12
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v6

    check-cast v6, Lcxt;

    iget-boolean v7, v5, Lddf;->c:Z

    if-eqz v7, :cond_13

    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v2, v5, Lddf;->c:Z

    :cond_13
    iget-object v7, v5, Lddf;->b:Lddk;

    .line 59
    check-cast v7, Lcxu;

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {v7}, Lcxu;->b()V

    iget-object v7, v7, Lcxu;->c:Lddr;

    .line 62
    invoke-interface {v7, v6}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_14
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 63
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->h:Ldpm;

    if-nez v0, :cond_15

    sget-object v0, Ldpm;->i:Ldpm;

    .line 64
    :cond_15
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v6

    .line 65
    check-cast v6, Lddf;

    .line 66
    invoke-virtual {v6, v0}, Lddf;->n(Lddk;)V

    .line 64
    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Lcxu;

    iget-boolean v5, v6, Lddf;->c:Z

    if-eqz v5, :cond_16

    invoke-virtual {v6}, Lddf;->k()V

    iput-boolean v2, v6, Lddf;->c:Z

    :cond_16
    iget-object v5, v6, Lddf;->b:Lddk;

    .line 67
    check-cast v5, Ldpm;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Ldpm;->h:Lcxu;

    iget v0, v5, Ldpm;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v5, Ldpm;->a:I

    .line 64
    invoke-virtual {v6}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpm;

    iget-boolean v5, v4, Lddf;->c:Z

    if-eqz v5, :cond_17

    .line 69
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v2, v4, Lddf;->c:Z

    :cond_17
    iget-object v5, v4, Lddf;->b:Lddk;

    .line 70
    check-cast v5, Ldpz;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Ldpz;->h:Ldpm;

    iget v0, v5, Ldpz;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v5, Ldpz;->a:I

    :cond_18
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 72
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->j:Ldps;

    if-nez v0, :cond_19

    .line 73
    sget-object v0, Ldps;->k:Ldps;

    :cond_19
    iget-object v0, v0, Ldps;->j:Lddr;

    .line 74
    invoke-interface {v0}, Lddr;->size()I

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_3

    .line 146
    :cond_1a
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 75
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->j:Ldps;

    if-nez v0, :cond_1b

    sget-object v0, Ldps;->k:Ldps;

    .line 76
    :cond_1b
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v5

    .line 77
    check-cast v5, Lddf;

    .line 78
    invoke-virtual {v5, v0}, Lddf;->n(Lddk;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 79
    check-cast v6, Ldps;

    iget-object v6, v6, Ldps;->j:Lddr;

    .line 80
    invoke-interface {v6}, Lddr;->size()I

    move-result v6

    if-ge v0, v6, :cond_23

    iget-object v6, v5, Lddf;->b:Lddk;

    .line 81
    check-cast v6, Ldps;

    iget-object v6, v6, Ldps;->j:Lddr;

    .line 82
    invoke-interface {v6, v0}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldpr;

    .line 83
    invoke-virtual {v6, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    .line 84
    check-cast v7, Lddf;

    .line 85
    invoke-virtual {v7, v6}, Lddf;->n(Lddk;)V

    iget-object v6, v7, Lddf;->b:Lddk;

    .line 86
    check-cast v6, Ldpr;

    iget-object v6, v6, Ldpr;->b:Ljava/lang/String;

    .line 87
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    iget-boolean v6, v7, Lddf;->c:Z

    if-eqz v6, :cond_1c

    .line 88
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_1c
    iget-object v6, v7, Lddf;->b:Lddk;

    .line 89
    check-cast v6, Ldpr;

    .line 90
    invoke-static {}, Ldpr;->w()Lddq;

    move-result-object v8

    iput-object v8, v6, Ldpr;->c:Lddq;

    iget-object v6, v7, Lddf;->b:Lddk;

    .line 91
    check-cast v6, Ldpr;

    iget-object v6, v6, Ldpr;->b:Ljava/lang/String;

    .line 88
    invoke-static {v6}, Lcdk;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-boolean v8, v7, Lddf;->c:Z

    if-eqz v8, :cond_1d

    .line 92
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_1d
    iget-object v8, v7, Lddf;->b:Lddk;

    .line 93
    check-cast v8, Ldpr;

    iget-object v9, v8, Ldpr;->c:Lddq;

    .line 94
    invoke-interface {v9}, Lddq;->c()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 95
    invoke-static {v9}, Lddk;->x(Lddq;)Lddq;

    move-result-object v9

    iput-object v9, v8, Ldpr;->c:Lddq;

    :cond_1e
    iget-object v8, v8, Ldpr;->c:Lddq;

    .line 96
    invoke-static {v6, v8}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_1f
    iget-boolean v6, v7, Lddf;->c:Z

    if-eqz v6, :cond_20

    .line 97
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_20
    iget-object v6, v7, Lddf;->b:Lddk;

    .line 98
    check-cast v6, Ldpr;

    iget v8, v6, Ldpr;->a:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v6, Ldpr;->a:I

    sget-object v8, Ldpr;->d:Ldpr;

    iget-object v8, v8, Ldpr;->b:Ljava/lang/String;

    iput-object v8, v6, Ldpr;->b:Ljava/lang/String;

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_21

    .line 99
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v2, v5, Lddf;->c:Z

    :cond_21
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 100
    check-cast v6, Ldps;

    .line 101
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldpr;

    .line 102
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Ldps;->j:Lddr;

    .line 103
    invoke-interface {v8}, Lddr;->c()Z

    move-result v9

    if-nez v9, :cond_22

    .line 104
    invoke-static {v8}, Lddk;->z(Lddr;)Lddr;

    move-result-object v8

    iput-object v8, v6, Ldps;->j:Lddr;

    :cond_22
    iget-object v6, v6, Ldps;->j:Lddr;

    .line 105
    invoke-interface {v6, v0, v7}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_23
    iget-boolean v0, v4, Lddf;->c:Z

    if-eqz v0, :cond_24

    .line 106
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v2, v4, Lddf;->c:Z

    :cond_24
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 107
    check-cast v0, Ldpz;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Ldps;

    .line 108
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Ldpz;->j:Ldps;

    iget v5, v0, Ldpz;->a:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Ldpz;->a:I

    .line 74
    :goto_3
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 109
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->g:Ldoz;

    if-nez v0, :cond_25

    .line 110
    sget-object v0, Ldoz;->b:Ldoz;

    :cond_25
    iget-object v0, v0, Ldoz;->a:Lddr;

    .line 111
    invoke-interface {v0}, Lddr;->size()I

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_5

    .line 170
    :cond_26
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 112
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->g:Ldoz;

    if-nez v0, :cond_27

    sget-object v0, Ldoz;->b:Ldoz;

    .line 113
    :cond_27
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v5

    .line 114
    check-cast v5, Lddf;

    .line 115
    invoke-virtual {v5, v0}, Lddf;->n(Lddk;)V

    const/4 v0, 0x0

    :goto_4
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 116
    check-cast v6, Ldoz;

    iget-object v6, v6, Ldoz;->a:Lddr;

    .line 117
    invoke-interface {v6}, Lddr;->size()I

    move-result v6

    if-ge v0, v6, :cond_2f

    iget-object v6, v5, Lddf;->b:Lddk;

    .line 118
    check-cast v6, Ldoz;

    iget-object v6, v6, Ldoz;->a:Lddr;

    .line 119
    invoke-interface {v6, v0}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldoy;

    .line 120
    invoke-virtual {v6, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    .line 121
    check-cast v7, Lddf;

    .line 122
    invoke-virtual {v7, v6}, Lddf;->n(Lddk;)V

    iget-object v6, v7, Lddf;->b:Lddk;

    .line 123
    check-cast v6, Ldoy;

    iget-object v6, v6, Ldoy;->d:Ljava/lang/String;

    .line 124
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b

    iget-boolean v6, v7, Lddf;->c:Z

    if-eqz v6, :cond_28

    .line 125
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_28
    iget-object v6, v7, Lddf;->b:Lddk;

    .line 126
    check-cast v6, Ldoy;

    .line 127
    invoke-static {}, Ldoy;->w()Lddq;

    move-result-object v8

    iput-object v8, v6, Ldoy;->e:Lddq;

    iget-object v6, v7, Lddf;->b:Lddk;

    .line 128
    check-cast v6, Ldoy;

    iget-object v6, v6, Ldoy;->d:Ljava/lang/String;

    .line 129
    invoke-static {v6}, Lcdk;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-boolean v8, v7, Lddf;->c:Z

    if-eqz v8, :cond_29

    .line 130
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_29
    iget-object v8, v7, Lddf;->b:Lddk;

    .line 131
    check-cast v8, Ldoy;

    iget-object v9, v8, Ldoy;->e:Lddq;

    .line 132
    invoke-interface {v9}, Lddq;->c()Z

    move-result v10

    if-nez v10, :cond_2a

    .line 133
    invoke-static {v9}, Lddk;->x(Lddq;)Lddq;

    move-result-object v9

    iput-object v9, v8, Ldoy;->e:Lddq;

    :cond_2a
    iget-object v8, v8, Ldoy;->e:Lddq;

    .line 134
    invoke-static {v6, v8}, Ldbu;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_2b
    iget-boolean v6, v7, Lddf;->c:Z

    if-eqz v6, :cond_2c

    .line 135
    invoke-virtual {v7}, Lddf;->k()V

    iput-boolean v2, v7, Lddf;->c:Z

    :cond_2c
    iget-object v6, v7, Lddf;->b:Lddk;

    .line 136
    check-cast v6, Ldoy;

    iget v8, v6, Ldoy;->a:I

    const v9, -0x80001

    and-int/2addr v8, v9

    iput v8, v6, Ldoy;->a:I

    sget-object v8, Ldoy;->g:Ldoy;

    iget-object v8, v8, Ldoy;->d:Ljava/lang/String;

    iput-object v8, v6, Ldoy;->d:Ljava/lang/String;

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_2d

    .line 137
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v2, v5, Lddf;->c:Z

    :cond_2d
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 138
    check-cast v6, Ldoz;

    .line 139
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldoy;

    .line 140
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Ldoz;->a:Lddr;

    .line 141
    invoke-interface {v8}, Lddr;->c()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 142
    invoke-static {v8}, Lddk;->z(Lddr;)Lddr;

    move-result-object v8

    iput-object v8, v6, Ldoz;->a:Lddr;

    :cond_2e
    iget-object v6, v6, Ldoz;->a:Lddr;

    .line 143
    invoke-interface {v6, v0, v7}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_2f
    iget-boolean v0, v4, Lddf;->c:Z

    if-eqz v0, :cond_30

    .line 144
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v2, v4, Lddf;->c:Z

    :cond_30
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 145
    check-cast v0, Ldpz;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v5

    check-cast v5, Ldoz;

    .line 146
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Ldpz;->g:Ldoz;

    iget v5, v0, Ldpz;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v0, Ldpz;->a:I

    .line 111
    :goto_5
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 147
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->n:Ldpb;

    if-nez v0, :cond_31

    .line 148
    sget-object v0, Ldpb;->f:Ldpb;

    :cond_31
    iget-object v0, v0, Ldpb;->d:Lddr;

    .line 149
    invoke-interface {v0}, Lddr;->size()I

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_7

    .line 224
    :cond_32
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 150
    check-cast v0, Ldpz;

    iget-object v0, v0, Ldpz;->n:Ldpb;

    if-nez v0, :cond_33

    sget-object v0, Ldpb;->f:Ldpb;

    .line 151
    :cond_33
    invoke-virtual {v0, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v5

    .line 152
    check-cast v5, Lddf;

    .line 153
    invoke-virtual {v5, v0}, Lddf;->n(Lddk;)V

    const/4 v0, 0x0

    :goto_6
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 154
    check-cast v6, Ldpb;

    iget-object v6, v6, Ldpb;->d:Lddr;

    .line 155
    invoke-interface {v6}, Lddr;->size()I

    move-result v6

    if-ge v0, v6, :cond_35

    iget-object v6, v5, Lddf;->b:Lddk;

    .line 156
    check-cast v6, Ldpb;

    iget-object v6, v6, Ldpb;->d:Lddr;

    .line 157
    invoke-interface {v6, v0}, Lddr;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldpc;

    .line 158
    invoke-virtual {v6, v3}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v7

    .line 159
    check-cast v7, Lddf;

    .line 160
    invoke-virtual {v7, v6}, Lddf;->n(Lddk;)V

    sget-object v6, Lcdk;->c:Lcdj;

    .line 161
    invoke-static {v6, v7}, Lcdk;->b(Lcdj;Ldeq;)V

    iget-boolean v6, v5, Lddf;->c:Z

    if-eqz v6, :cond_34

    .line 162
    invoke-virtual {v5}, Lddf;->k()V

    iput-boolean v2, v5, Lddf;->c:Z

    :cond_34
    iget-object v6, v5, Lddf;->b:Lddk;

    .line 163
    check-cast v6, Ldpb;

    .line 164
    invoke-virtual {v7}, Lddf;->f()Lddk;

    move-result-object v7

    check-cast v7, Ldpc;

    .line 165
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-virtual {v6}, Ldpb;->c()V

    iget-object v6, v6, Ldpb;->d:Lddr;

    .line 167
    invoke-interface {v6, v0, v7}, Lddr;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    iget-boolean v0, v4, Lddf;->c:Z

    if-eqz v0, :cond_36

    .line 168
    invoke-virtual {v4}, Lddf;->k()V

    iput-boolean v2, v4, Lddf;->c:Z

    :cond_36
    iget-object v0, v4, Lddf;->b:Lddk;

    .line 169
    check-cast v0, Ldpz;

    invoke-virtual {v5}, Lddf;->f()Lddk;

    move-result-object v3

    check-cast v3, Ldpb;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Ldpz;->n:Ldpb;

    iget v3, v0, Ldpz;->a:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v0, Ldpz;->a:I

    .line 171
    :goto_7
    invoke-virtual {v4}, Lddf;->f()Lddk;

    move-result-object v0

    check-cast v0, Ldpz;

    .line 172
    sget-object v3, Ldng;->a:Ldng;

    .line 173
    invoke-virtual {v3}, Ldng;->b()Ldnh;

    move-result-object v3

    invoke-interface {v3, p1}, Ldnh;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->d:Lcol;

    .line 174
    invoke-interface {v3}, Lcol;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_8

    .line 224
    :cond_37
    sget-object p1, Ldad;->a:Ldag;

    return-object p1

    .line 174
    :cond_38
    :goto_8
    sget-object v3, Lcda;->i:Ldcx;

    .line 175
    invoke-virtual {p2, v3}, Lddi;->k(Ldcx;)V

    iget-object p2, p2, Lddi;->d:Lddb;

    .line 176
    iget-object v4, v3, Ldcx;->d:Lddj;

    invoke-virtual {p2, v4}, Lddb;->k(Lddj;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_39

    .line 177
    iget-object p2, v3, Ldcx;->b:Ljava/lang/Object;

    goto :goto_9

    .line 180
    :cond_39
    iget-object v4, v3, Ldcx;->d:Lddj;

    .line 178
    invoke-virtual {v4}, Lddj;->a()Ldgd;

    move-result-object v4

    sget-object v5, Ldgd;->h:Ldgd;

    if-eq v4, v5, :cond_4e

    .line 175
    :goto_9
    check-cast p2, Lcda;

    iget-object v5, p2, Lcda;->b:Ljava/lang/String;

    iget-boolean v3, p2, Lcda;->d:Z

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->c:Lbik;

    if-nez v3, :cond_3b

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->c:Lbik;

    if-nez v3, :cond_3a

    .line 181
    new-instance v9, Lbik;

    .line 182
    sget-object v6, Lbij;->f:Ljava/util/EnumSet;

    .line 183
    invoke-static {p1}, Lbkc;->h(Landroid/content/Context;)Lbkc;

    move-result-object v7

    new-instance v8, Lbiv;

    invoke-direct {v8, p1}, Lbiv;-><init>(Landroid/content/Context;)V

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lbik;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;Lbkc;Lbii;)V

    iput-object v9, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->c:Lbik;

    move-object v3, v9

    goto :goto_a

    .line 211
    :cond_3a
    nop

    .line 184
    :goto_a
    monitor-exit p0

    goto :goto_d

    .line 108
    :catchall_0
    move-exception p1

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 211
    :cond_3b
    goto :goto_d

    :cond_3c
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->b:Lbik;

    if-nez v3, :cond_3e

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->b:Lbik;

    if-nez v3, :cond_3d

    .line 179
    new-instance v3, Lbik;

    invoke-direct {v3, p1, v5}, Lbik;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->b:Lbik;

    goto :goto_b

    .line 180
    :cond_3d
    nop

    :goto_b
    monitor-exit p0

    goto :goto_c

    .line 217
    :catchall_1
    move-exception p1

    .line 180
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3e
    :goto_c
    nop

    .line 185
    :goto_d
    invoke-virtual {v3, v0}, Lbik;->a(Lder;)Lbih;

    move-result-object v0

    sget-object v3, Ldng;->a:Ldng;

    .line 186
    invoke-virtual {v3}, Ldng;->b()Ldnh;

    move-result-object v3

    invoke-interface {v3, p1}, Ldnh;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3f

    sget-object v3, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a:Lcol;

    .line 187
    invoke-interface {v3}, Lcol;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldpi;

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lbsh;

    invoke-direct {v4, v3}, Lbsh;-><init>(Ldpi;)V

    new-instance v3, Lbtc;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1, v4}, Lbtc;-><init>(Landroid/content/Context;Lbsh;)V

    iput-object v3, v0, Lbih;->i:Lbtc;

    :cond_3f
    iget-object p1, p2, Lcda;->e:Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lcoe;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, v0, Lbih;->a:Lbik;

    .line 192
    invoke-virtual {v3}, Lbik;->c()Z

    move-result v3

    if-nez v3, :cond_41

    .line 193
    iget-object v3, v0, Lbih;->j:Lddh;

    iget-boolean v4, v3, Lddf;->c:Z

    if-eqz v4, :cond_40

    .line 194
    invoke-virtual {v3}, Lddf;->k()V

    iput-boolean v2, v3, Lddf;->c:Z

    :cond_40
    iget-object v3, v3, Lddh;->b:Lddk;

    .line 195
    check-cast v3, Ldgt;

    sget-object v4, Ldgt;->j:Ldgt;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Ldgt;->a:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, v3, Ldgt;->a:I

    iput-object p1, v3, Ldgt;->i:Ljava/lang/String;

    goto :goto_e

    .line 192
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setZwiebackCookieOverride forbidden on deidentified logger"

    .line 193
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_42
    :goto_e
    iget-boolean p1, p2, Lcda;->d:Z

    if-nez p1, :cond_4c

    iget p1, p2, Lcda;->a:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_45

    iget-object p1, p2, Lcda;->c:Ljava/lang/String;

    iget-object v3, v0, Lbih;->a:Lbik;

    .line 197
    invoke-virtual {v3}, Lbik;->c()Z

    move-result v3

    if-nez v3, :cond_44

    .line 198
    iget-object v3, v0, Lbih;->c:Ljava/util/ArrayList;

    if-nez v3, :cond_43

    new-instance v3, Ljava/util/ArrayList;

    .line 199
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lbih;->c:Ljava/util/ArrayList;

    :cond_43
    iget-object v3, v0, Lbih;->c:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 197
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addMendelPackage forbidden on deidentified logger"

    .line 198
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_45
    :goto_f
    iget p1, p2, Lcda;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_47

    iget-object p1, p2, Lcda;->f:Ljava/lang/String;

    iget-object v3, v0, Lbih;->a:Lbik;

    iget-object v3, v3, Lbik;->g:Ljava/util/EnumSet;

    .line 201
    sget-object v4, Lbij;->d:Lbij;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 202
    iput-object p1, v0, Lbih;->e:Ljava/lang/String;

    goto :goto_10

    .line 201
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setUploadAccountName forbidden on deidentified logger"

    .line 202
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    :goto_10
    iget-object p1, p2, Lcda;->g:Lddp;

    .line 203
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 204
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 205
    array-length p2, p1

    new-array v3, p2, [I

    const/4 v4, 0x0

    :goto_11
    if-ge v4, p2, :cond_48

    .line 206
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_48
    iget-object p1, v0, Lbih;->a:Lbik;

    .line 207
    invoke-virtual {p1}, Lbik;->c()Z

    move-result p1

    if-nez p1, :cond_4b

    .line 208
    if-nez p2, :cond_49

    goto :goto_13

    .line 212
    :cond_49
    iget-object p1, v0, Lbih;->d:Ljava/util/ArrayList;

    if-nez p1, :cond_4a

    new-instance p1, Ljava/util/ArrayList;

    .line 209
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lbih;->d:Ljava/util/ArrayList;

    goto :goto_12

    .line 211
    :cond_4a
    nop

    .line 209
    :goto_12
    if-ge v2, p2, :cond_4c

    .line 210
    aget p1, v3, v2

    iget-object v4, v0, Lbih;->d:Ljava/util/ArrayList;

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 207
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addExperimentIds forbidden on deidentified logger"

    .line 208
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_4c
    :goto_13
    invoke-virtual {v0}, Lbih;->a()Lho;

    move-result-object p1

    .line 213
    invoke-static {}, Ldas;->e()Ldas;

    move-result-object p2

    new-instance v0, Lbtl;

    invoke-direct {v0, p2}, Lbtl;-><init>(Ldas;)V

    .line 212
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h:Z

    xor-int/2addr v3, v1

    const-string v4, "Result has already been consumed."

    .line 214
    invoke-static {v3, v4}, Lhr;->j(ZLjava/lang/Object;)V

    .line 212
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:Lbkk;

    const-string v3, "Cannot set callbacks if then() has been called."

    .line 215
    invoke-static {v1, v3}, Lhr;->j(ZLjava/lang/Object;)V

    .line 212
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 216
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 212
    :try_start_4
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 212
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Lbkw;

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k()Lbki;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lbkw;->a(Lbkj;Lbki;)V

    goto :goto_14

    .line 212
    :cond_4d
    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object v0, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f:Lbkj;

    .line 220
    :goto_14
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    new-instance p1, Lcnz;

    invoke-direct {p1}, Lcnz;-><init>()V

    .line 221
    sget-object v0, Lczj;->a:Lczj;

    .line 222
    invoke-static {p2, p1, v0}, Lcyt;->o(Ldag;Lcny;Ljava/util/concurrent/Executor;)Ldag;

    move-result-object p1

    return-object p1

    .line 220
    :catchall_2
    move-exception p1

    .line 217
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1

    .line 184
    :catchall_3
    move-exception p1

    .line 220
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    .line 217
    :cond_4e
    iget-object p1, v3, Ldcx;->d:Lddj;

    .line 223
    iget-object p1, p1, Lddj;->a:Lddn;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    const/4 p1, 0x0

    goto :goto_16

    :goto_15
    throw p1

    :goto_16
    goto :goto_15
.end method
