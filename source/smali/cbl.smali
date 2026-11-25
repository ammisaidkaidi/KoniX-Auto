.class public final synthetic Lcbl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# instance fields
.field public final synthetic a:Ldgz;


# direct methods
.method public synthetic constructor <init>(Ldgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ldgz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcbl;->a:Ldgz;

    invoke-interface {v0}, Ldgz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbb;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
