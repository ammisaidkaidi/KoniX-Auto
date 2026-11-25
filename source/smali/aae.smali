.class public final Laae;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lzn;

.field private final b:Landroid/os/Handler;

.field private c:Laad;


# direct methods
.method public constructor <init>(Lzq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzn;

    invoke-direct {v0, p1}, Lzn;-><init>(Lzq;)V

    iput-object v0, p0, Laae;->a:Lzn;

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Laae;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lzl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Laae;->c:Laad;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laad;->run()V

    :cond_0
    new-instance v0, Laad;

    iget-object v1, p0, Laae;->a:Lzn;

    invoke-direct {v0, v1, p1}, Laad;-><init>(Lzn;Lzl;)V

    iput-object v0, p0, Laae;->c:Laad;

    iget-object p1, p0, Laae;->b:Landroid/os/Handler;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
