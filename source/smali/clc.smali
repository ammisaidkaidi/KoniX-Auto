.class public final Lclc;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final g:Lclc;

.field private static volatile h:Ldex;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lclc;

    invoke-direct {v0}, Lclc;-><init>()V

    sput-object v0, Lclc;->g:Lclc;

    const-class v1, Lclc;

    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lclc;->b:Ljava/lang/String;

    iput-object v0, p0, Lclc;->c:Ljava/lang/String;

    iput-object v0, p0, Lclc;->d:Ljava/lang/String;

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
    sget-object p1, Lclc;->h:Ldex;

    if-nez p1, :cond_1

    const-class p2, Lclc;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lclc;->h:Ldex;

    if-nez p1, :cond_0

    new-instance p1, Lddg;

    sget-object v0, Lclc;->g:Lclc;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Lclc;->h:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 5
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
    sget-object p1, Lclc;->g:Lclc;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Lclc;->g:Lclc;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Lclc;

    invoke-direct {p1}, Lclc;-><init>()V

    return-object p1

    .line 1
    :pswitch_5
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    sget-object v0, Lckg;->m:Lddo;

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    sget-object v0, Lckg;->i:Lddo;

    aput-object v0, p1, p2

    sget-object p2, Lclc;->g:Lclc;

    const-string v0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u100c\u0003\u0005\u100c\u0004"

    .line 4
    invoke-static {p2, v0, p1}, Lclc;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
