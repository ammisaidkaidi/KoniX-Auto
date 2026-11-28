.class public final Lx/h;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final action:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lx/h;->action:I

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 17
    :try_start_0
    iget p1, p0, Lx/h;->action:I

    invoke-static {p1}, Lx/g;->onAction(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 20
    :goto_0
    return-void
.end method
