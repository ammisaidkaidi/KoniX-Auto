.class public final Ldbj;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final h:Ldbj;

.field private static volatile j:Ldex;


# instance fields
.field public a:I

.field public b:Ldbf;

.field public c:Lddr;

.field public d:Ldcl;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldbj;

    invoke-direct {v0}, Ldbj;-><init>()V

    sput-object v0, Ldbj;->h:Ldbj;

    const-class v1, Ldbj;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ldbj;->i:B

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldbj;->c:Lddr;

    .line 3
    sget-object v0, Ldcl;->b:Ldcl;

    iput-object v0, p0, Ldbj;->d:Ldcl;

    const-string v0, ""

    iput-object v0, p0, Ldbj;->f:Ljava/lang/String;

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

    goto :goto_1

    :pswitch_1
    sget-object p1, Ldbj;->j:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldbj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldbj;->j:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Ldbj;->h:Ldbj;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldbj;->j:Ldex;

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
    sget-object p1, Ldbj;->h:Ldbj;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldbj;->h:Ldbj;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldbj;

    .line 6
    invoke-direct {p1}, Ldbj;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-class v0, Ldbd;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    sget-object v0, Lckg;->n:Lddo;

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "f"

    aput-object v0, p1, p2

    sget-object p2, Ldbj;->h:Ldbj;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0001\u0001\u0001\u1409\u0000\u0002\u001b\u0003\u100a\u0001\u0004\u100c\u0002\u0005\u1004\u0004\u0007\u1008\u0003"

    .line 4
    invoke-static {p2, v0, p1}, Ldbj;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_6
    iget-byte p1, p0, Ldbj;->i:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_2
    :goto_1
    iput-byte v0, p0, Ldbj;->i:B

    const/4 p1, 0x0

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
