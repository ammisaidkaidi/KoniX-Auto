.class public final synthetic Lces;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcny;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ldny;

.field public final synthetic c:Ldny;

.field public final synthetic d:Lbqh;

.field public final synthetic e:Lhh;

.field public final synthetic f:Ldhq;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lbqh;Lhh;Ldhq;Ldny;Ldny;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lces;->a:Landroid/content/Context;

    iput-object p2, p0, Lces;->d:Lbqh;

    iput-object p3, p0, Lces;->e:Lhh;

    iput-object p4, p0, Lces;->f:Ldhq;

    iput-object p5, p0, Lces;->b:Ldny;

    iput-object p6, p0, Lces;->c:Ldny;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v1, p0, Lces;->a:Landroid/content/Context;

    iget-object v3, p0, Lces;->d:Lbqh;

    iget-object v4, p0, Lces;->f:Ldhq;

    iget-object v5, p0, Lces;->b:Ldny;

    move-object v2, p1

    check-cast v2, Lbps;

    new-instance p1, Lbqf;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lbqf;-><init>(Landroid/content/Context;Lbps;Lbqh;Ldhq;Ldny;[B[B)V

    return-object p1
.end method
