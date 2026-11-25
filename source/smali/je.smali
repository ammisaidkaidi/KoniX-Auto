.class final Lje;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Ljf;


# direct methods
.method public constructor <init>(Ljf;)V
    .locals 0

    iput-object p1, p0, Lje;->a:Ljf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lje;->a:Ljf;

    invoke-virtual {v0}, Ljf;->g()Ljg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljg;->d()V

    iget-object v1, p0, Lje;->a:Ljf;

    .line 3
    invoke-virtual {v1}, Ltk;->D()Laev;

    move-result-object v1

    .line 4
    const-string v2, "androidx:appcompat"

    invoke-virtual {v1, v2}, Laev;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0}, Ljg;->m()V

    return-void
.end method
