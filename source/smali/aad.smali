.class final Laad;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lzl;

.field private b:Z

.field private final c:Lzn;


# direct methods
.method public constructor <init>(Lzn;Lzl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laad;->b:Z

    iput-object p1, p0, Laad;->c:Lzn;

    iput-object p2, p0, Laad;->a:Lzl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Laad;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laad;->c:Lzn;

    iget-object v1, p0, Laad;->a:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laad;->b:Z

    :cond_0
    return-void
.end method
