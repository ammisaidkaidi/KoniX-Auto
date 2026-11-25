.class public final Ldqj;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final f:Ldqj;

.field private static volatile g:Ldex;


# instance fields
.field public a:Ldem;

.field public b:Ldem;

.field public c:Lddr;

.field public d:Lddp;

.field public e:Lddr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldqj;

    invoke-direct {v0}, Ldqj;-><init>()V

    sput-object v0, Ldqj;->f:Ldqj;

    const-class v1, Ldqj;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    .line 2
    sget-object v0, Ldem;->a:Ldem;

    iput-object v0, p0, Ldqj;->a:Ldem;

    sget-object v0, Ldem;->a:Ldem;

    iput-object v0, p0, Ldqj;->b:Ldem;

    .line 3
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldqj;->c:Lddr;

    .line 4
    sget-object v0, Lddl;->b:Lddl;

    iput-object v0, p0, Ldqj;->d:Lddp;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldqj;->e:Lddr;

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
    sget-object p1, Ldqj;->g:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldqj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldqj;->g:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldqj;->f:Ldqj;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldqj;->g:Ldex;

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
    sget-object p1, Ldqj;->f:Ldqj;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldqj;->f:Ldqj;

    .line 6
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldqj;

    .line 7
    invoke-direct {p1}, Ldqj;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    .line 4
    sget-object v0, Ldqh;->a:Ldel;

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    sget-object v0, Ldqi;->a:Ldel;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-class v0, Ldqg;

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "e"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-class v0, Ldqd;

    aput-object v0, p1, p2

    sget-object p2, Ldqj;->f:Ldqj;

    const-string v0, "\u0001\u0005\u0000\u0000\u0001\u0005\u0005\u0002\u0003\u0000\u00012\u00022\u0003\u001b\u0004\'\u0005\u001b"

    .line 5
    invoke-static {p2, v0, p1}, Ldqj;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
