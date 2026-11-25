.class public final synthetic Lbt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laeu;


# instance fields
.field public final synthetic a:Lbv;


# direct methods
.method public synthetic constructor <init>(Lbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbt;->a:Lbv;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lbt;->a:Lbv;

    invoke-virtual {v0}, Lbv;->aS()V

    iget-object v0, v0, Lbv;->e:Lzn;

    sget-object v1, Lzl;->ON_STOP:Lzl;

    invoke-virtual {v0, v1}, Lzn;->c(Lzl;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
