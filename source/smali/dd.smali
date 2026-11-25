.class final Ldd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laex;
.implements Laak;


# instance fields
.field public a:Laew;

.field public b:Lzn;

.field private final c:Laed;


# direct methods
.method public constructor <init>(Laed;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Ldd;->b:Lzn;

    iput-object p2, p0, Ldd;->a:Laew;

    iput-object p1, p0, Ldd;->c:Laed;

    return-void
.end method


# virtual methods
.method public final C()Lzn;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldd;->b()V

    iget-object v0, p0, Ldd;->b:Lzn;

    return-object v0
.end method

.method public final D()Laev;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldd;->b()V

    iget-object v0, p0, Ldd;->a:Laew;

    iget-object v0, v0, Laew;->a:Laev;

    return-object v0
.end method

.method final a(Lzl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldd;->b:Lzn;

    invoke-virtual {v0, p1}, Lzn;->c(Lzl;)V

    return-void
.end method

.method public final ai()Laed;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldd;->b()V

    iget-object v0, p0, Ldd;->c:Laed;

    return-object v0
.end method

.method final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldd;->b:Lzn;

    if-nez v0, :cond_0

    new-instance v0, Lzn;

    invoke-direct {v0, p0}, Lzn;-><init>(Lzq;)V

    iput-object v0, p0, Ldd;->b:Lzn;

    .line 2
    invoke-static {p0}, Laew;->a(Laex;)Laew;

    move-result-object v0

    iput-object v0, p0, Ldd;->a:Laew;

    :cond_0
    return-void
.end method
