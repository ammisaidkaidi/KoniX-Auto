.class public Landroid/support/v4/app/Fragment$5;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzo;


# instance fields
.field final synthetic a:Lbr;


# direct methods
.method public constructor <init>(Lbr;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$5;->a:Lbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lzq;Lzl;)V
    .locals 0

    .line 1
    sget-object p1, Lzl;->ON_STOP:Lzl;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/Fragment$5;->a:Lbr;

    iget-object p1, p1, Lbr;->P:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
