.class public final Lx/j;
.super Ljava/lang/Object;
.source "j.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final action:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lx/j;->action:I

    .line 11
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 16
    :try_start_0
    iget p1, p0, Lx/j;->action:I

    invoke-static {p1}, Lx/i;->onAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 19
    :goto_0
    return-void
.end method
