.class public final Lbuc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;

.field private final d:Ldny;

.field private final e:Ldny;

.field private final f:Ldny;

.field private final g:Ldny;

.field private final h:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbuc;->a:Ldny;

    iput-object p2, p0, Lbuc;->b:Ldny;

    iput-object p3, p0, Lbuc;->c:Ldny;

    iput-object p4, p0, Lbuc;->d:Ldny;

    iput-object p5, p0, Lbuc;->e:Ldny;

    iput-object p6, p0, Lbuc;->f:Ldny;

    iput-object p7, p0, Lbuc;->g:Ldny;

    iput-object p8, p0, Lbuc;->h:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbuc;->b()Lbub;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbub;
    .locals 10

    .line 1
    iget-object v0, p0, Lbuc;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    iget-object v0, p0, Lbuc;->b:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbul;

    iget-object v3, p0, Lbuc;->c:Ldny;

    iget-object v4, p0, Lbuc;->d:Ldny;

    iget-object v5, p0, Lbuc;->e:Ldny;

    iget-object v6, p0, Lbuc;->f:Ldny;

    iget-object v0, p0, Lbuc;->g:Ldny;

    check-cast v0, Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcoc;

    iget-object v0, p0, Lbuc;->h:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcvv;

    new-instance v0, Lbub;

    .line 2
    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lbub;-><init>(Lbul;Ldny;Ldny;Ldny;Ldny;Lcoc;Lcvv;[B)V

    return-object v0
.end method
