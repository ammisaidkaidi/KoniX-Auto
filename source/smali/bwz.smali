.class public final synthetic Lbwz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# instance fields
.field public final synthetic a:Ldny;


# direct methods
.method public synthetic constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbwz;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lbwz;->a:Ldny;

    check-cast v0, Lbxd;

    invoke-virtual {v0}, Lbxd;->b()Lbxc;

    move-result-object v0

    return-object v0
.end method
