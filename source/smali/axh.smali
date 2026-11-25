.class public final synthetic Laxh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;


# instance fields
.field public final synthetic a:Laxl;


# direct methods
.method public synthetic constructor <init>(Laxl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxh;->a:Laxl;

    return-void
.end method


# virtual methods
.method public final onKeyEvent(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Laxh;->a:Laxl;

    invoke-virtual {v0, p1}, Laxl;->b(I)V

    return-void
.end method
