.class public final Lcem;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final i:Lcem;

.field private static volatile j:Ldex;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ldcl;

.field public d:Ljava/lang/String;

.field public e:Lddr;

.field public f:Lddr;

.field public g:Z

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    sput-object v0, Lcem;->i:Lcem;

    const-class v1, Lcem;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcem;->b:Ljava/lang/String;

    .line 2
    sget-object v1, Ldcl;->b:Ldcl;

    iput-object v1, p0, Lcem;->c:Ldcl;

    iput-object v0, p0, Lcem;->d:Ljava/lang/String;

    .line 3
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Lcem;->e:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Lcem;->f:Lddr;

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
    sget-object p1, Lcem;->j:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lcem;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcem;->j:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lcem;->i:Lcem;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lcem;->j:Ldex;

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
    sget-object p1, Lcem;->i:Lcem;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lcem;->i:Lcem;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcem;

    .line 6
    invoke-direct {p1}, Lcem;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-class v0, Lcen;

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "h"

    aput-object v0, p1, p2

    sget-object p2, Lcem;->i:Lcem;

    const-string v0, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001\u1008\u0002\u0002\u1008\u0000\u0003\u100a\u0001\u0004\u001b\u0005\u001a\u0008\u1007\u0003\t\u1002\u0004"

    .line 4
    invoke-static {p2, v0, p1}, Lcem;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
