.class public final Lcom/achour/tweaks/V7Click;
.super Ljava/lang/Object;
.source "V7Click.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final action:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/achour/tweaks/V7Click;->action:I

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 15
    :try_start_0
    iget p1, p0, Lcom/achour/tweaks/V7Click;->action:I

    invoke-static {p1}, Lcom/achour/tweaks/V7;->onAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 17
    return-void
.end method
