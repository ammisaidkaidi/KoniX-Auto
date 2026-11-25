.class public final synthetic Lcas;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# instance fields
.field public final synthetic a:Lcbv;

.field public final synthetic b:Ldgz;


# direct methods
.method public synthetic constructor <init>(Lcbv;Ldgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcas;->a:Lcbv;

    iput-object p2, p0, Lcas;->b:Ldgz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcas;->a:Lcbv;

    iget-object v1, p0, Lcas;->b:Ldgz;

    sget v2, Lcau;->f:I

    invoke-interface {v1}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcap;

    iget v1, v1, Lcap;->b:F

    .line 2
    invoke-virtual {v0, v1}, Lcbv;->a(F)Lcbu;

    move-result-object v0

    return-object v0
.end method
