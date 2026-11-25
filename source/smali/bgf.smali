.class public final synthetic Lbgf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbgg;


# direct methods
.method public synthetic constructor <init>(Lbgg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgf;->a:Lbgg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbgf;->a:Lbgg;

    invoke-virtual {v0}, Lbgg;->a()V

    return-void
.end method
