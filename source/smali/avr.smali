.class public final synthetic Lavr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavx;


# direct methods
.method public synthetic constructor <init>(Lavx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavr;->a:Lavx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lavr;->a:Lavx;

    iget-object v1, v0, Lavx;->d:Lawa;

    iget-object v1, v1, Lawa;->a:Lawh;

    iput-object v0, v1, Lawh;->l:Lavz;

    iget-object v0, v1, Lawh;->k:Lbde;

    sget-object v1, Lbdf;->c:Lbdf;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lbde;->b(Lbdf;I)V

    return-void
.end method
