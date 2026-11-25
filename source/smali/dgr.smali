.class public final Ldgr;
.super Lddi;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final x:Ldgr;

.field private static volatile z:Ldex;


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field private y:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldgr;

    invoke-direct {v0}, Ldgr;-><init>()V

    sput-object v0, Ldgr;->x:Ldgr;

    const-class v1, Ldgr;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddi;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldgr;->y:B

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    const-string v0, ""

    iput-object v0, p0, Ldgr;->e:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->f:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->g:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->h:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->i:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->j:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->k:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->l:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->m:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->n:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->o:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->p:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->u:Ljava/lang/String;

    iput-object v0, p0, Ldgr;->v:Ljava/lang/String;

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
    sget-object p1, Ldgr;->z:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldgr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldgr;->z:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldgr;->x:Ldgr;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldgr;->z:Ldex;

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
    sget-object p1, Ldgr;->x:Ldgr;

    return-object p1

    :pswitch_3
    new-instance p1, Lddh;

    sget-object p2, Ldgr;->x:Ldgr;

    .line 5
    invoke-direct {p1, p2}, Lddh;-><init>(Lddi;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldgr;

    .line 6
    invoke-direct {p1}, Ldgr;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "i"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "j"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "u"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-string v0, "w"

    aput-object v0, p1, p2

    sget-object p2, Ldgr;->x:Ldgr;

    const-string v0, "\u0001\u0011\u0000\u0001\u0001!\u0011\u0000\u0000\u0000\u0001\u1002\u0000\u0003\u1004\u0003\u0004\u1008\u0004\u0005\u1008\u0005\u0006\u1008\u0008\u0007\u1008\t\u0008\u1008\u0006\t\u1008\u0007\n\u1008\n\u000b\u1008\u000b\u000c\u1008\u000c\r\u1008\r\u000e\u1008\u000e\u000f\u1008\u000f\u0011\u1008\u0011\u001a\u1008\u0019!\u1004\u001c"

    .line 4
    invoke-static {p2, v0, p1}, Ldgr;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    iget-byte p1, p0, Ldgr;->y:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_2
    :goto_1
    iput-byte v0, p0, Ldgr;->y:B

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
