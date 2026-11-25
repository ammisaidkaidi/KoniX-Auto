.class public final Lbwp;
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


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwp;->a:Ldny;

    iput-object p2, p0, Lbwp;->b:Ldny;

    iput-object p3, p0, Lbwp;->c:Ldny;

    iput-object p4, p0, Lbwp;->d:Ldny;

    iput-object p5, p0, Lbwp;->e:Ldny;

    iput-object p6, p0, Lbwp;->f:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbwp;->b()Lbwo;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbwo;
    .locals 8

    .line 1
    iget-object v1, p0, Lbwp;->a:Ldny;

    iget-object v2, p0, Lbwp;->b:Ldny;

    iget-object v3, p0, Lbwp;->c:Ldny;

    iget-object v4, p0, Lbwp;->d:Ldny;

    iget-object v5, p0, Lbwp;->e:Ldny;

    iget-object v6, p0, Lbwp;->f:Ldny;

    new-instance v7, Lbwo;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lbwo;-><init>(Ldny;Ldny;Ldny;Ldny;Ldny;Ldny;)V

    return-object v7
.end method
