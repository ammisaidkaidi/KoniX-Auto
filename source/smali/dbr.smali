.class public final Ldbr;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final c:Ldbr;

.field private static volatile e:Ldex;


# instance fields
.field public a:Z

.field public b:Lddr;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldbr;

    invoke-direct {v0}, Ldbr;-><init>()V

    sput-object v0, Ldbr;->c:Ldbr;

    const-class v1, Ldbr;

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

    iput-object v0, p0, Ldbr;->b:Lddr;

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
    sget-object p1, Ldbr;->e:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldbr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldbr;->e:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldbr;->c:Ldbr;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldbr;->e:Ldex;

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
    sget-object p1, Ldbr;->c:Ldbr;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldbr;->c:Ldbr;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldbr;

    .line 6
    invoke-direct {p1}, Ldbr;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, p1, v0

    const-string v0, "a"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "b"

    aput-object v0, p1, p2

    sget-object p2, Ldbr;->c:Ldbr;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1007\u0000\u0002\u001a"

    .line 4
    invoke-static {p2, v0, p1}, Ldbr;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
