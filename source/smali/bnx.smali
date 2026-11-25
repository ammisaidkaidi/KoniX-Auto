.class final Lbnx;
.super Lbjq;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbjq;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lbmp;Ljava/lang/Object;Lbky;Lblu;)Lbjx;
    .locals 6

    .line 1
    check-cast p4, Lbns;

    new-instance p4, Lbnz;

    .line 2
    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lbnz;-><init>(Landroid/content/Context;Landroid/os/Looper;Lbmp;Lbky;Lblu;)V

    return-object p4
.end method
