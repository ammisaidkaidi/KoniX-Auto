.class public final synthetic Lbxi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbxk;

.field public final synthetic b:Ldny;


# direct methods
.method public synthetic constructor <init>(Lbxk;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxi;->a:Lbxk;

    iput-object p2, p0, Lbxi;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbxi;->a:Lbxk;

    iget-object v1, p0, Lbxi;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lbxk;->i:Z

    return-void
.end method
