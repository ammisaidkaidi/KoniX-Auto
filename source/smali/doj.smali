.class public final Ldoj;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final k:Ldoj;

.field private static volatile m:Ldex;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ldot;

.field public g:I

.field public h:J

.field public i:Ldos;

.field public j:J

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldoj;

    invoke-direct {v0}, Ldoj;-><init>()V

    sput-object v0, Ldoj;->k:Ldoj;

    const-class v1, Ldoj;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldoj;->l:B

    const-string v0, ""

    iput-object v0, p0, Ldoj;->d:Ljava/lang/String;

    iput-object v0, p0, Ldoj;->e:Ljava/lang/String;

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_1
    sget-object p1, Ldoj;->m:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldoj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldoj;->m:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldoj;->k:Ldoj;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldoj;->m:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 7
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

    .line 5
    :pswitch_2
    sget-object p1, Ldoj;->k:Ldoj;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldoj;->k:Ldoj;

    .line 6
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldoj;

    .line 7
    invoke-direct {p1}, Ldoj;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 4
    invoke-static {}, Ldoi;->c()Lddo;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "g"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    invoke-static {}, Ldoi;->c()Lddo;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "h"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "i"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "c"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "d"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "f"

    aput-object v0, p1, p2

    sget-object p2, Ldoj;->k:Ldoj;

    const-string v0, "\u0001\t\u0000\u0001\u0001\u000b\t\u0000\u0000\u0001\u0001\u100c\u0000\u0002\u100c\u0005\u0003\u1002\u0006\u0006\u1009\u0007\u0007\u1002\u0008\u0008\u1005\u0001\t\u1008\u0002\n\u1008\u0003\u000b\u1409\u0004"

    .line 5
    invoke-static {p2, v0, p1}, Ldoj;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    iget-byte p1, p0, Ldoj;->l:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_2
    :goto_1
    iput-byte v0, p0, Ldoj;->l:B

    const/4 p1, 0x0

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
