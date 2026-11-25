.class public final synthetic Lazo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lazy;

.field public final synthetic b:Lckb;


# direct methods
.method public synthetic constructor <init>(Lazy;Lckb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazo;->a:Lazy;

    iput-object p2, p0, Lazo;->b:Lckb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lazo;->a:Lazy;

    iget-object v1, p0, Lazo;->b:Lckb;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lazy;->g(Lckb;I)V

    return-void
.end method
