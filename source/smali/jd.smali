.class final Ljd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laeu;


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method public constructor <init>(Ljf;)V
    .locals 0

    iput-object p1, p0, Ljd;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ljd;->a:Ljf;

    .line 2
    invoke-virtual {v1}, Ljf;->g()Ljg;

    return-object v0
.end method
