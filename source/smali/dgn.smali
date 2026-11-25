.class public final Ldgn;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final m:Ldgn;

.field private static volatile n:Ldex;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ldgl;

.field public k:Lddq;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldgn;

    invoke-direct {v0}, Ldgn;-><init>()V

    sput-object v0, Ldgn;->m:Ldgn;

    const-class v1, Ldgn;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldgn;->b:Ljava/lang/String;

    iput-object v0, p0, Ldgn;->g:Ljava/lang/String;

    .line 2
    sget-object v1, Ldeg;->b:Ldeg;

    iput-object v1, p0, Ldgn;->k:Lddq;

    iput-object v0, p0, Ldgn;->l:Ljava/lang/String;

    return-void
.end method

.method public static synthetic k(Ldgn;)V
    .locals 2

    iget v0, p0, Ldgn;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldgn;->a:I

    const-wide/32 v0, 0x7b2090af

    iput-wide v0, p0, Ldgn;->d:J

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    sget-object p1, Ldgn;->n:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldgn;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldgn;->n:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldgn;->m:Ldgn;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldgn;->n:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 6
    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Ldgn;->m:Ldgn;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldgn;->m:Ldgn;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldgn;

    .line 6
    invoke-direct {p1}, Ldgn;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "g"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "h"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    sget-object v0, Ldgh;->d:Lddo;

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    sget-object v0, Ldgh;->c:Lddo;

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "c"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "j"

    aput-object v0, p1, p2

    sget-object p2, Ldgn;->m:Ldgn;

    const-string v0, "\u0001\u000b\u0000\u0001\u0001\r\u000b\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0002\u0003\u1002\u0003\u0004\u1002\u0004\u0005\u1008\u0005\u0006\u100c\u0006\u0007\u100c\u0007\t\u0014\u000b\u1008\u000b\u000c\u1004\u0001\r\u1009\t"

    .line 4
    invoke-static {p2, v0, p1}, Ldgn;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldgn;->k:Lddq;

    invoke-interface {v0}, Lddq;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->x(Lddq;)Lddq;

    move-result-object v0

    iput-object v0, p0, Ldgn;->k:Lddq;

    :cond_0
    return-void
.end method
