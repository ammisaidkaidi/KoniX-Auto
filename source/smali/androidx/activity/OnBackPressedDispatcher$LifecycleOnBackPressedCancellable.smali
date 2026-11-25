.class public Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lzo;
.implements Ltd;


# instance fields
.field final synthetic a:Ltn;

.field private final b:Lzn;

.field private final c:Ltl;

.field private d:Ltd;


# direct methods
.method public constructor <init>(Ltn;Lzn;Ltl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lzn;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ltl;

    invoke-virtual {p2, p0}, Lzn;->b(Lzp;)V

    return-void
.end method


# virtual methods
.method public final a(Lzq;Lzl;)V
    .locals 1

    .line 1
    sget-object p1, Lzl;->ON_START:Lzl;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Ltn;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ltl;

    iget-object v0, p1, Ltn;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v0, Ltm;

    invoke-direct {v0, p1, p2}, Ltm;-><init>(Ltn;Ltl;)V

    .line 2
    invoke-virtual {p2, v0}, Ltl;->a(Ltd;)V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Ltd;

    return-void

    :cond_0
    sget-object p1, Lzl;->ON_STOP:Lzl;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Ltd;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ltd;->b()V

    return-void

    :cond_1
    sget-object p1, Lzl;->ON_DESTROY:Lzl;

    if-ne p2, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b()V

    return-void

    .line 3
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lzn;

    invoke-virtual {v0, p0}, Lzn;->d(Lzp;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Ltl;

    .line 2
    invoke-virtual {v0, p0}, Ltl;->b(Ltd;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Ltd;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ltd;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Ltd;

    :cond_0
    return-void
.end method
