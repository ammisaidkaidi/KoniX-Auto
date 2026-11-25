.class public final Ldbt;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final p:Ldbt;

.field private static volatile u:Ldex;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public g:Lddr;

.field public h:Lddp;

.field public i:Ldcl;

.field public j:Z

.field public k:I

.field public l:I

.field public m:Z

.field public n:J

.field public o:Ldcl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldbt;

    invoke-direct {v0}, Ldbt;-><init>()V

    sput-object v0, Ldbt;->p:Ldbt;

    const-class v1, Ldbt;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldbt;->b:I

    const-string v0, ""

    iput-object v0, p0, Ldbt;->d:Ljava/lang/String;

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldbt;->g:Lddr;

    .line 3
    sget-object v0, Lddl;->b:Lddl;

    iput-object v0, p0, Ldbt;->h:Lddp;

    .line 4
    sget-object v0, Ldcl;->b:Ldcl;

    iput-object v0, p0, Ldbt;->i:Ldcl;

    sget-object v0, Ldcl;->b:Ldcl;

    iput-object v0, p0, Ldbt;->o:Ldcl;

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
    sget-object p1, Ldbt;->u:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldbt;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldbt;->u:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldbt;->p:Ldbt;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldbt;->u:Ldex;

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
    sget-object p1, Ldbt;->p:Ldbt;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldbt;->p:Ldbt;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldbt;

    .line 6
    invoke-direct {p1}, Ldbt;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "c"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "a"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "g"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "h"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    sget-object v0, Ldgh;->b:Lddo;

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    sget-object v0, Lckg;->u:Lddo;

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "o"

    aput-object v0, p1, p2

    sget-object p2, Ldbt;->p:Ldbt;

    const-string v0, "\u0001\u000e\u0001\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u001a\u0004\'\u0005\u100a\u0003\u0006\u1007\u0004\u0007\u103b\u0000\u0008\u100c\u0007\t\u100c\u0008\n\u103b\u0000\u000b\u1007\u0002\u000c\u1007\t\r\u100e\n\u000e\u100a\u000b"

    .line 4
    invoke-static {p2, v0, p1}, Ldbt;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
