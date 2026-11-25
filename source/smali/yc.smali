.class public final Lyc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lym;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lym;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc;->a:Lym;

    iput-object p2, p0, Lyc;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lyj;)V
    .locals 3

    .line 2
    iget v0, p1, Lyj;->b:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lyj;->a:Landroid/graphics/Typeface;

    iget-object v0, p0, Lyc;->a:Lym;

    iget-object v1, p0, Lyc;->b:Landroid/os/Handler;

    new-instance v2, Lya;

    invoke-direct {v2, v0, p1}, Lya;-><init>(Lym;Landroid/graphics/Typeface;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lyc;->b:Landroid/os/Handler;

    new-instance v0, Lyb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyb;-><init>(I)V

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
