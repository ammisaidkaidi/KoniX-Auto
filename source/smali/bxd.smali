.class public final Lbxd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxd;->a:Ldny;

    iput-object p2, p0, Lbxd;->b:Ldny;

    iput-object p3, p0, Lbxd;->c:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbxd;->b()Lbxc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbxc;
    .locals 2

    .line 1
    iget-object v0, p0, Lbxd;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    iget-object v0, p0, Lbxd;->b:Ldny;

    invoke-static {v0}, Ldhw;->b(Ldny;)Ldgz;

    iget-object v0, p0, Lbxd;->c:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lbxc;

    invoke-direct {v1, v0}, Lbxc;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
