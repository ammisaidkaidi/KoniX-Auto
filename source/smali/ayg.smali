.class public final Layg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layg;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Layg;->b()Landroid/content/om/OverlayManager;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/om/OverlayManager;
    .locals 2

    .line 1
    iget-object v0, p0, Layg;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/om/OverlayManager;

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayManager;

    .line 3
    invoke-static {v0}, Ldpx;->m(Ljava/lang/Object;)V

    return-object v0
.end method
