.class public final Lbss;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldny;

.field public final b:Ldny;

.field public final c:Ldny;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ldhy;->b(Ljava/lang/Object;)Ldhx;

    move-result-object p1

    iput-object p1, p0, Lbss;->a:Ldny;

    new-instance v0, Lbsq;

    invoke-direct {v0, p1}, Lbsq;-><init>(Ldny;)V

    iput-object v0, p0, Lbss;->b:Ldny;

    new-instance v1, Latx;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Latx;-><init>(Ldny;Ldny;I[Z)V

    .line 5
    invoke-static {v1}, Ldhw;->c(Ldny;)Ldny;

    move-result-object p1

    iput-object p1, p0, Lbss;->c:Ldny;

    return-void
.end method

.method public constructor <init>(Ldny;Ldny;Ldny;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lbss;->c:Ldny;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lbss;->b:Ldny;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lbss;->a:Ldny;

    return-void
.end method
