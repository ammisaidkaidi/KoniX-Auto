.class public final Lk;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final e:Lk;

.field private static volatile f:Ldex;


# instance fields
.field public a:Lddr;

.field public b:Lddr;

.field public c:Ll;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk;

    invoke-direct {v0}, Lk;-><init>()V

    sput-object v0, Lk;->e:Lk;

    const-class v1, Lk;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Lk;->a:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Lk;->b:Lddr;

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
    sget-object p1, Lk;->f:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lk;->f:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lk;->e:Lk;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lk;->f:Ldex;

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
    sget-object p1, Lk;->e:Lk;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lk;->e:Lk;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lk;

    .line 6
    invoke-direct {p1}, Lk;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-class v0, Lm;

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-class v0, Lc;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "d"

    aput-object v0, p1, p2

    sget-object p2, Lk;->e:Lk;

    const-string v0, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\t\u0004\u000c"

    .line 4
    invoke-static {p2, v0, p1}, Lk;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    nop

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

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

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk;->a:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Lk;->a:Lddr;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk;->b:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Lk;->b:Lddr;

    :cond_0
    return-void
.end method
