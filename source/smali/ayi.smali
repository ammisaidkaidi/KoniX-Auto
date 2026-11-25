.class public final Layi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layi;->a:Ldny;

    iput-object p2, p0, Layi;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Layi;->b()Layh;

    move-result-object v0

    return-object v0
.end method

.method public final b()Layh;
    .locals 3

    .line 1
    iget-object v0, p0, Layi;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Layi;->b:Ldny;

    check-cast v1, Layg;

    const/4 v1, 0x0

    new-instance v2, Layh;

    invoke-direct {v2, v0, v1}, Layh;-><init>(Landroid/content/Context;Landroid/content/om/OverlayManager;)V

    return-object v2
.end method
