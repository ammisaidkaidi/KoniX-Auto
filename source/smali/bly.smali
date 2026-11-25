.class final Lbly;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbma;


# direct methods
.method public constructor <init>(Lbma;)V
    .locals 0

    iput-object p1, p0, Lbly;->a:Lbma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbly;->a:Lbma;

    iget-object v0, v0, Lbma;->f:Lblm;

    new-instance v1, Lbiz;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lbiz;-><init>(I)V

    invoke-virtual {v0, v1}, Lblm;->b(Lbiz;)V

    return-void
.end method
