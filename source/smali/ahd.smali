.class public final Lahd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lagv;


# instance fields
.field private final c:Lzz;

.field private final d:Lame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzz;

    invoke-direct {v0}, Lzz;-><init>()V

    iput-object v0, p0, Lahd;->c:Lzz;

    .line 2
    invoke-static {}, Lame;->h()Lame;

    move-result-object v0

    iput-object v0, p0, Lahd;->d:Lame;

    sget-object v0, Lagv;->b:Lagt;

    .line 3
    invoke-virtual {p0, v0}, Lahd;->a(Lez;)V

    return-void
.end method


# virtual methods
.method public final a(Lez;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lahd;->c:Lzz;

    invoke-virtual {v0, p1}, Lzz;->h(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lagu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahd;->d:Lame;

    .line 3
    check-cast p1, Lagu;

    invoke-virtual {v0, p1}, Lame;->e(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lags;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lags;

    iget-object v0, p0, Lahd;->d:Lame;

    iget-object p1, p1, Lags;->a:Ljava/lang/Throwable;

    .line 6
    invoke-virtual {v0, p1}, Lame;->f(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
