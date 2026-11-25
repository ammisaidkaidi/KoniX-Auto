.class public final synthetic Lbtm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbrc;


# instance fields
.field public final synthetic a:Ldas;


# direct methods
.method public synthetic constructor <init>(Ldas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtm;->a:Ldas;

    return-void
.end method


# virtual methods
.method public final a(Lbrh;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbtm;->a:Ldas;

    move-object v1, p1

    check-cast v1, Lbro;

    iget-boolean v1, v1, Lbro;->d:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ldas;->cancel(Z)Z

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lbrh;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lbrh;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldas;->k(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lbrh;->a()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Ldas;->l(Ljava/lang/Throwable;)Z

    return-void

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
