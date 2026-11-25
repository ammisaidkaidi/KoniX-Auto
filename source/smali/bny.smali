.class public final Lbny;
.super Lbkc;
.source "PG"


# static fields
.field private static final j:Lbjy;

.field private static final k:Lbjq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lbnx;

    invoke-direct {v0}, Lbnx;-><init>()V

    sput-object v0, Lbny;->k:Lbjq;

    new-instance v1, Lbjy;

    const-string v2, "ClientTelemetry.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbjy;-><init>(Ljava/lang/String;Lbjq;[B)V

    sput-object v1, Lbny;->j:Lbjy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbns;)V
    .locals 2

    .line 1
    sget-object v0, Lbny;->j:Lbjy;

    sget-object v1, Lbkb;->a:Lbkb;

    invoke-direct {p0, p1, v0, p2, v1}, Lbkc;-><init>(Landroid/content/Context;Lbjy;Lbjw;Lbkb;)V

    return-void
.end method


# virtual methods
.method public final a(Lbnr;)V
    .locals 4

    .line 1
    invoke-static {}, Lbmc;->a()Lbmb;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lbjb;

    sget-object v2, Lbix;->a:Lbjb;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, v0, Lbmb;->b:[Lbjb;

    .line 2
    invoke-virtual {v0}, Lbmb;->b()V

    new-instance v1, Lbnw;

    invoke-direct {v1, p1}, Lbnw;-><init>(Lbnr;)V

    iput-object v1, v0, Lbmb;->a:Lblx;

    .line 3
    invoke-virtual {v0}, Lbmb;->a()Lbmc;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lbkc;->i(Lbmc;)V

    return-void
.end method
