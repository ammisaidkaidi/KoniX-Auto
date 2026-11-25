.class public final Lbmk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbmi;


# instance fields
.field final synthetic a:Lbmn;


# direct methods
.method public constructor <init>(Lbmn;)V
    .locals 0

    iput-object p1, p0, Lbmk;->a:Lbmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbiz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lbiz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbmk;->a:Lbmn;

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Lbmy;

    iget-object v1, v1, Lbmy;->r:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lbmn;->t(Lbng;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbmk;->a:Lbmn;

    iget-object v0, v0, Lbmn;->p:Lbmx;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lbmx;->a(Lbiz;)V

    :cond_1
    return-void
.end method
