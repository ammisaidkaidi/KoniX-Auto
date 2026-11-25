.class public final Larn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lare;


# instance fields
.field private final A:Ljava/util/Set;

.field private final B:Lapu;

.field private final C:Z

.field private D:Lard;

.field private E:Z

.field private F:Laqa;

.field private final G:Laqg;

.field private H:Ljava/util/List;

.field private final I:Ljava/util/List;

.field private final J:Ljava/util/List;

.field private final K:Z

.field private final L:Z

.field private final M:Laps;

.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Laop;

.field public h:[Landroid/view/View;

.field public i:Landroid/app/AlertDialog;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/ImageView;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/view/ViewGroup;

.field private final n:Landroid/view/ViewGroup;

.field private final o:Landroid/widget/TextView;

.field private p:Ljava/lang/CharSequence;

.field private final q:Landroid/widget/TextView;

.field private r:Ljava/lang/CharSequence;

.field private final s:Landroid/view/ViewGroup;

.field private final t:Lcom/android/car/ui/toolbar/TabLayout;

.field private final u:Landroid/widget/FrameLayout;

.field private v:Laqm;

.field private final w:Ljava/lang/CharSequence;

.field private final x:Ljava/util/Set;

.field private final y:Ljava/util/Set;

.field private final z:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Larn;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Larn;->r:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larn;->x:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larn;->y:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larn;->z:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larn;->A:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larn;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Larn;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8
    sget-object v0, Lard;->a:Lard;

    iput-object v0, p0, Larn;->D:Lard;

    const/4 v0, 0x0

    iput-boolean v0, p0, Larn;->E:Z

    .line 9
    sget-object v0, Laqa;->d:Laqa;

    iput-object v0, p0, Larn;->F:Laqa;

    .line 10
    sget-object v0, Laqg;->a:Laqg;

    iput-object v0, p0, Larn;->G:Laqg;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Larn;->H:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larn;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larn;->f:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Larn;->I:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Larn;->J:Ljava/util/List;

    new-instance v1, Lari;

    invoke-direct {v1, p0}, Lari;-><init>(Larn;)V

    iput-object v1, p0, Larn;->M:Laps;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Larn;->b:Landroid/content/Context;

    .line 17
    invoke-static {v1}, Lapu;->a(Landroid/content/Context;)Lapq;

    move-result-object v2

    iget-object v3, v2, Lapq;->a:Landroid/content/Context;

    .line 18
    const v4, 0x7f08006a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lapq;->h:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, Lapq;->a:Landroid/content/Context;

    .line 19
    const v4, 0x7f100030

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lapq;->g:Ljava/lang/CharSequence;

    new-instance v3, Larj;

    invoke-direct {v3, p0}, Larj;-><init>(Larn;)V

    iput-object v3, v2, Lapq;->i:Lapt;

    .line 20
    invoke-virtual {v2}, Lapq;->a()Lapu;

    move-result-object v2

    iput-object v2, p0, Larn;->B:Lapu;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Larn;->C:Z

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Larn;->K:Z

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Larn;->L:Z

    .line 25
    const v2, 0x7f10002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Larn;->w:Ljava/lang/CharSequence;

    .line 26
    const v2, 0x7f0900ab

    invoke-static {p1, v2}, Laro;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Larn;->j:Landroid/view/View;

    .line 27
    const v3, 0x7f0900c3

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/car/ui/toolbar/TabLayout;

    iput-object v3, p0, Larn;->t:Lcom/android/car/ui/toolbar/TabLayout;

    .line 28
    const v3, 0x7f0900b6

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Larn;->k:Landroid/widget/ImageView;

    .line 29
    const v3, 0x7f0900af

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Larn;->l:Landroid/widget/ImageView;

    .line 30
    const v3, 0x7f0900b7

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Larn;->m:Landroid/view/ViewGroup;

    .line 31
    const v3, 0x7f0900b5

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Larn;->a:Landroid/view/ViewGroup;

    .line 32
    const v3, 0x7f0900c5

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Larn;->n:Landroid/view/ViewGroup;

    .line 33
    const v3, 0x7f0900c0

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Larn;->q:Landroid/widget/TextView;

    .line 34
    const v3, 0x7f0900c4

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Larn;->o:Landroid/widget/TextView;

    .line 35
    const v3, 0x7f0900c7

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Larn;->s:Landroid/view/ViewGroup;

    .line 36
    const v3, 0x7f0900c6

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 37
    const v3, 0x7f0900be

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Larn;->u:Landroid/widget/FrameLayout;

    .line 38
    const v3, 0x7f0900b8

    invoke-static {p1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    const p1, 0x7f080086

    .line 39
    invoke-static {v1, p1}, Lxr;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance p1, Laop;

    .line 41
    invoke-direct {p1, v0}, Laop;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Larn;->g:Laop;

    .line 42
    invoke-virtual {p0}, Larn;->c()V

    return-void
.end method

.method private static final d(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p0, Larl;

    invoke-direct {p0, v1, p1, v0}, Larl;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)V

    .line 3
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lapu;)Laoe;
    .locals 2

    .line 1
    iget-boolean v0, p1, Lapu;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoe;

    sget-object v1, Laob;->b:Laob;

    invoke-direct {v0, v1}, Laoe;-><init>(Laob;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Laoe;

    .line 2
    sget-object v1, Laob;->a:Laob;

    invoke-direct {v0, v1}, Laoe;-><init>(Laob;)V

    .line 1
    :goto_0
    iget-object v1, p1, Lapu;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Laoe;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p1, Lapu;->o:Z

    iput-boolean v1, v0, Laoe;->g:Z

    iget-boolean v1, p1, Lapu;->m:Z

    .line 3
    invoke-virtual {v0, v1}, Laoe;->a(Z)V

    iget-boolean v1, p1, Lapu;->l:Z

    iput-boolean v1, v0, Laoe;->f:Z

    iget-object v1, p1, Lapu;->h:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v0, v1}, Laoe;->b(Ljava/lang/CharSequence;)V

    new-instance v1, Larh;

    invoke-direct {v1, p0, p1}, Larh;-><init>(Larn;Lapu;)V

    iput-object v1, v0, Laoe;->i:Larh;

    return-object v0
.end method

.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Larn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Larn;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapu;

    iget-boolean v2, v1, Lapu;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Larn;->f:Ljava/util/List;

    .line 3
    invoke-virtual {p0, v1}, Larn;->a(Lapu;)Laoe;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lamn;

    iget-object v1, p0, Larn;->b:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lamn;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Larn;->g:Laop;

    iget-object v2, v0, Lamn;->b:Landroid/content/Context;

    .line 5
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090147

    .line 6
    invoke-static {v2, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    .line 7
    invoke-direct {v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->Z(Lra;)V

    .line 8
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->Y(Lqq;)V

    iget-object v1, v0, Lamn;->a:Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lamn;->b:Landroid/content/Context;

    .line 10
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c001f

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09007c

    .line 11
    invoke-static {v1, v2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09007b

    .line 12
    invoke-static {v1, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 13
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v5, 0x7f09007a

    .line 14
    invoke-static {v1, v5}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-eq v8, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    .line 30
    :cond_2
    const/16 v6, 0x8

    .line 16
    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v8, v2, :cond_3

    goto :goto_2

    .line 30
    :cond_3
    const/16 v7, 0x8

    .line 18
    :goto_2
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lamn;->a:Landroid/app/AlertDialog$Builder;

    .line 21
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lamn;->b:Landroid/content/Context;

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lamn;->b:Landroid/content/Context;

    const v2, 0x7f100020

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lamn;->a:Landroid/app/AlertDialog$Builder;

    sget-object v3, Lamk;->a:Lamk;

    .line 24
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    iget-object v1, v0, Lamn;->a:Landroid/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lamn;->c:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/car/ui/FocusParkingView;

    iget-object v3, v0, Lamn;->b:Landroid/content/Context;

    .line 27
    invoke-direct {v2, v3}, Lcom/android/car/ui/FocusParkingView;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lamn;->c:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lamn;->c:Landroid/view/ViewGroup;

    iget-object v3, v0, Lamn;->d:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 29
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v2, v0, Lamn;->e:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v0, v0, Lamn;->a:Landroid/app/AlertDialog$Builder;

    .line 30
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Larn;->i:Landroid/app/AlertDialog;

    return-void
.end method

.method public final c()V
    .locals 13

    .line 1
    iget-object v0, p0, Larn;->F:Laqa;

    iget-boolean v1, p0, Larn;->E:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Larn;->D:Lard;

    sget-object v2, Lard;->a:Lard;

    if-ne v1, v2, :cond_0

    .line 2
    sget-object v0, Laqa;->d:Laqa;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Laqa;->d:Laqa;

    if-ne v0, v1, :cond_1

    sget-object v0, Laqa;->a:Laqa;

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Larn;->G:Laqg;

    iget-boolean v2, p0, Larn;->E:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Larn;->D:Lard;

    .line 4
    sget-object v2, Lard;->c:Lard;

    if-ne v1, v2, :cond_2

    .line 5
    sget-object v1, Laqg;->b:Laqg;

    goto :goto_1

    .line 25
    :cond_2
    iget-object v1, p0, Larn;->D:Lard;

    sget-object v2, Lard;->d:Lard;

    if-ne v1, v2, :cond_3

    .line 6
    sget-object v1, Laqg;->c:Laqg;

    goto :goto_1

    .line 7
    :cond_3
    sget-object v1, Laqg;->a:Laqg;

    .line 5
    :cond_4
    :goto_1
    iget-boolean v2, p0, Larn;->E:Z

    if-eqz v2, :cond_5

    .line 8
    sget-object v2, Lard;->a:Lard;

    :cond_5
    iget-object v2, p0, Larn;->t:Lcom/android/car/ui/toolbar/TabLayout;

    iget-object v2, v2, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-boolean v4, p0, Larn;->E:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    iget-object v4, p0, Larn;->D:Lard;

    .line 10
    sget-object v6, Lard;->a:Lard;

    if-eq v4, v6, :cond_6

    sget-object v2, Lard;->b:Lard;

    const/4 v2, 0x0

    .line 11
    :cond_6
    sget-object v4, Laqg;->a:Laqg;

    if-eq v1, v4, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    .line 25
    :cond_7
    const/4 v6, 0x0

    .line 11
    :goto_2
    iget-object v7, p0, Larn;->v:Laqm;

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-nez v7, :cond_9

    if-eqz v6, :cond_9

    new-instance v7, Laqm;

    iget-object v10, p0, Larn;->b:Landroid/content/Context;

    .line 12
    invoke-direct {v7, v10}, Laqm;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Larn;->w:Ljava/lang/CharSequence;

    iput-object v10, v7, Laqm;->l:Ljava/lang/CharSequence;

    iget-boolean v11, v7, Laqm;->m:Z

    if-nez v11, :cond_8

    iget-object v11, v7, Laqm;->k:Landroid/widget/EditText;

    .line 13
    invoke-virtual {v11, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v10, v7, Laqm;->j:Landroid/widget/ImageView;

    const v11, 0x7f08006c

    .line 14
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, v7, Laqm;->k:Landroid/widget/EditText;

    .line 15
    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v7, Laqm;->k:Landroid/widget/EditText;

    .line 16
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v10, p0, Larn;->z:Ljava/util/Set;

    iget-object v11, p0, Larn;->x:Ljava/util/Set;

    iput-object v11, v7, Laqm;->r:Ljava/util/Set;

    iput-object v10, v7, Laqm;->t:Ljava/util/Set;

    iget-object v10, p0, Larn;->A:Ljava/util/Set;

    iget-object v11, p0, Larn;->y:Ljava/util/Set;

    iput-object v11, v7, Laqm;->s:Ljava/util/Set;

    iput-object v10, v7, Laqm;->u:Ljava/util/Set;

    .line 17
    invoke-virtual {v7, v9}, Laqm;->setVisibility(I)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    const/4 v11, -0x1

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v11, p0, Larn;->u:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v11, v7, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v7, Laqm;->i:Laqs;

    .line 20
    invoke-virtual {v10, v8}, Laqs;->d(Laqf;)V

    iput-object v7, p0, Larn;->v:Laqm;

    :cond_9
    iget-object v7, p0, Larn;->I:Ljava/util/List;

    .line 21
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lapx;

    sget-object v11, Laqg;->b:Laqg;

    if-ne v1, v11, :cond_b

    const/4 v11, 0x1

    goto :goto_4

    .line 22
    :cond_b
    const/4 v11, 0x0

    .line 21
    :goto_4
    iget-boolean v12, v10, Lapx;->a:Z

    if-eq v11, v12, :cond_a

    iput-boolean v11, v10, Lapx;->a:Z

    iget-object v11, v10, Lapx;->b:Lapu;

    iget-boolean v11, v11, Lapu;->c:Z

    if-eqz v11, :cond_a

    .line 22
    invoke-virtual {v10}, Lapx;->a()V

    goto :goto_3

    :cond_c
    new-instance v7, Larf;

    invoke-direct {v7, p0}, Larf;-><init>(Larn;)V

    .line 23
    sget-object v10, Laqa;->a:Laqa;

    sget-object v10, Laqy;->a:Laqy;

    invoke-virtual {v0}, Laqa;->ordinal()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    iget-object v10, p0, Larn;->k:Landroid/widget/ImageView;

    const v11, 0x7f080062

    .line 26
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 47
    :pswitch_0
    iget-object v10, p0, Larn;->k:Landroid/widget/ImageView;

    const v11, 0x7f080066

    .line 24
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :pswitch_1
    iget-object v10, p0, Larn;->k:Landroid/widget/ImageView;

    const v11, 0x7f080064

    .line 25
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_5
    iget-object v10, p0, Larn;->k:Landroid/widget/ImageView;

    sget-object v11, Laqa;->d:Laqa;

    if-eq v0, v11, :cond_d

    const/4 v11, 0x0

    goto :goto_6

    .line 47
    :cond_d
    const/16 v11, 0x8

    .line 27
    :goto_6
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Larn;->l:Landroid/widget/ImageView;

    .line 28
    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Larn;->s:Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v10, p0, Larn;->m:Landroid/view/ViewGroup;

    sget-object v12, Laqa;->d:Laqa;

    if-ne v0, v12, :cond_f

    iget-boolean v12, p0, Larn;->K:Z

    if-eqz v12, :cond_e

    goto :goto_7

    .line 47
    :cond_e
    const/16 v11, 0x8

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    .line 30
    :goto_7
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v10, p0, Larn;->m:Landroid/view/ViewGroup;

    sget-object v11, Laqa;->d:Laqa;

    if-eq v0, v11, :cond_10

    goto :goto_8

    .line 47
    :cond_10
    move-object v7, v8

    .line 31
    :goto_8
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Larn;->m:Landroid/view/ViewGroup;

    sget-object v10, Laqa;->d:Laqa;

    if-eq v0, v10, :cond_11

    const/4 v10, 0x1

    goto :goto_9

    .line 47
    :cond_11
    const/4 v10, 0x0

    .line 32
    :goto_9
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v7, p0, Larn;->m:Landroid/view/ViewGroup;

    sget-object v10, Laqa;->d:Laqa;

    if-eq v0, v10, :cond_12

    iget-object v0, p0, Larn;->b:Landroid/content/Context;

    const v8, 0x7f100033

    .line 33
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 47
    :cond_12
    nop

    .line 34
    :goto_a
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Larn;->n:Landroid/view/ViewGroup;

    if-eqz v2, :cond_13

    iget-boolean v7, p0, Larn;->C:Z

    if-eqz v7, :cond_14

    :cond_13
    if-nez v6, :cond_14

    const/4 v7, 0x0

    goto :goto_b

    .line 47
    :cond_14
    const/16 v7, 0x8

    .line 35
    :goto_b
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Larn;->q:Landroid/widget/TextView;

    iget-object v7, p0, Larn;->r:Ljava/lang/CharSequence;

    .line 36
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eq v3, v7, :cond_15

    const/4 v7, 0x0

    goto :goto_c

    .line 47
    :cond_15
    const/16 v7, 0x8

    .line 37
    :goto_c
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Larn;->t:Lcom/android/car/ui/toolbar/TabLayout;

    if-eqz v2, :cond_17

    iget-object v2, p0, Larn;->G:Laqg;

    sget-object v7, Laqg;->a:Laqg;

    if-eq v2, v7, :cond_16

    iget-boolean v2, p0, Larn;->C:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_d

    .line 47
    :cond_16
    const/4 v2, 0x0

    goto :goto_d

    :cond_17
    const/16 v2, 0x8

    .line 38
    :goto_d
    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/TabLayout;->setVisibility(I)V

    iget-object v0, p0, Larn;->v:Laqm;

    if-eqz v0, :cond_1c

    if-eqz v6, :cond_1b

    sget-object v2, Laqg;->c:Laqg;

    if-ne v1, v2, :cond_18

    const/4 v2, 0x1

    goto :goto_e

    .line 44
    :cond_18
    const/4 v2, 0x0

    .line 38
    :goto_e
    iget-boolean v7, v0, Laqm;->v:Z

    if-eq v2, v7, :cond_1a

    if-eqz v2, :cond_19

    iget-object v7, v0, Laqm;->k:Landroid/widget/EditText;

    iget v8, v0, Laqm;->o:I

    iget v10, v0, Laqm;->q:I

    .line 39
    invoke-virtual {v7, v8, v5, v10, v5}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object v7, v0, Laqm;->k:Landroid/widget/EditText;

    const/4 v8, 0x6

    .line 40
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v7, v0, Laqm;->j:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 50
    :cond_19
    iget-object v7, v0, Laqm;->k:Landroid/widget/EditText;

    iget v8, v0, Laqm;->p:I

    iget v10, v0, Laqm;->q:I

    .line 42
    invoke-virtual {v7, v8, v5, v10, v5}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object v7, v0, Laqm;->k:Landroid/widget/EditText;

    const/4 v8, 0x3

    .line 43
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v7, v0, Laqm;->j:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_f
    iput-boolean v2, v0, Laqm;->v:Z

    iget-object v2, v0, Laqm;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Laqm;->k:Landroid/widget/EditText;

    .line 45
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Larn;->v:Laqm;

    .line 46
    invoke-virtual {v0, v5}, Laqm;->setVisibility(I)V

    goto :goto_10

    .line 44
    :cond_1b
    nop

    .line 47
    invoke-virtual {v0, v9}, Laqm;->setVisibility(I)V

    .line 46
    :cond_1c
    :goto_10
    xor-int/lit8 v0, v6, 0x1

    iget-object v2, p0, Larn;->a:Landroid/view/ViewGroup;

    if-eq v1, v4, :cond_1d

    goto :goto_11

    .line 50
    :cond_1d
    const/4 v9, 0x0

    .line 48
    :goto_11
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Larn;->B:Lapu;

    if-eqz v0, :cond_20

    iget-object v0, p0, Larn;->e:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1e
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapu;

    iget-boolean v4, v4, Lapu;->n:Z

    if-eqz v4, :cond_1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1f
    if-lez v2, :cond_20

    goto :goto_13

    .line 50
    :cond_20
    const/4 v3, 0x0

    .line 49
    :goto_13
    iput-boolean v3, v1, Lapu;->n:Z

    .line 50
    invoke-virtual {v1}, Lapu;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isStateSet()Z
    .locals 1

    iget-boolean v0, p0, Larn;->E:Z

    return v0
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Larn;->L:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Larn;->c()V

    return-void
.end method

.method public final setMenuItems(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Larn;->H:Ljava/util/List;

    .line 5
    invoke-interface {p1, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lapu;

    iget-object v6, v5, Lapu;->k:Lapr;

    .line 8
    sget-object v7, Lapr;->b:Lapr;

    if-ne v6, v7, :cond_1

    .line 9
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Larn;->M:Laps;

    .line 10
    invoke-virtual {v5, v6}, Lapu;->c(Laps;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Larn;->H:Ljava/util/List;

    iput-object v1, p0, Larn;->e:Ljava/util/List;

    iget-object p1, p0, Larn;->I:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Larn;->a:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Larn;->B:Lapu;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Larn;->b()V

    .line 18
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Larn;->h:[Landroid/view/View;

    .line 19
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapu;

    .line 21
    new-instance v4, Lapx;

    iget-object v5, p0, Larn;->a:Landroid/view/ViewGroup;

    invoke-direct {v4, v1, v5}, Lapx;-><init>(Lapu;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Larn;->I:Ljava/util/List;

    .line 22
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Larg;

    invoke-direct {v1, p0, p1, v3, v2}, Larg;-><init>(Larn;[Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v5, Luu;

    iget-object v6, v4, Lapx;->c:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Luu;-><init>(Landroid/content/Context;)V

    iget-object v6, v4, Lapx;->c:Landroid/view/ViewGroup;

    new-instance v7, Lapw;

    invoke-direct {v7, v4, v1}, Lapw;-><init>(Lapx;Lj$/util/function/Consumer;)V

    iget-object v1, v5, Luu;->c:Lut;

    iget-object v1, v1, Lut;->c:Lgf;

    .line 25
    invoke-virtual {v1}, Lge;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus;

    if-nez v1, :cond_4

    new-instance v1, Lus;

    invoke-direct {v1}, Lus;-><init>()V

    :cond_4
    iput-object v5, v1, Lus;->a:Luu;

    const v4, 0x7f0c0043

    iput v4, v1, Lus;->c:I

    iput-object v6, v1, Lus;->b:Landroid/view/ViewGroup;

    iput-object v7, v1, Lus;->e:Lapw;

    iget-object v4, v5, Luu;->c:Lut;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v4, Lut;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 26
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to enqueue async inflate request"

    .line 27
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-virtual {p0}, Larn;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 28
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final setNavButtonMode(Laqa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Larn;->F:Laqa;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Larn;->F:Laqa;

    invoke-virtual {p0}, Larn;->c()V

    :cond_0
    return-void
.end method

.method public final setNavButtonMode(Laqy;)V
    .locals 1

    .line 2
    sget-object v0, Laqa;->a:Laqa;

    sget-object v0, Laqy;->a:Laqy;

    invoke-virtual {p1}, Laqy;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Laqa;->d:Laqa;

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object p1, Laqa;->c:Laqa;

    goto :goto_0

    :pswitch_1
    sget-object p1, Laqa;->b:Laqa;

    goto :goto_0

    :pswitch_2
    sget-object p1, Laqa;->a:Laqa;

    :goto_0
    invoke-virtual {p0, p1}, Larn;->setNavButtonMode(Laqa;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setState(Lard;)V
    .locals 1

    .line 1
    iget-object v0, p0, Larn;->D:Lard;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Larn;->E:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Larn;->D:Lard;

    const/4 p1, 0x1

    iput-boolean p1, p0, Larn;->E:Z

    invoke-virtual {p0}, Larn;->c()V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    const-string p1, ""

    iput-object p1, p0, Larn;->r:Ljava/lang/CharSequence;

    iget-object v0, p0, Larn;->q:Landroid/widget/TextView;

    sget-object v1, Larm;->a:Larm;

    invoke-static {v0, p1, v1}, Larn;->d(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-virtual {p0}, Larn;->c()V

    return-void
.end method

.method public final setTabs(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Larn;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "Tab position is invalid: 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    nop

    .line 2
    :goto_0
    iget-object v2, p0, Larn;->t:Lcom/android/car/ui/toolbar/TabLayout;

    if-nez p1, :cond_3

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v2, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v2, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    .line 4
    :goto_1
    iput v0, v2, Lcom/android/car/ui/toolbar/TabLayout;->c:I

    .line 6
    invoke-virtual {v2}, Lcom/android/car/ui/toolbar/TabLayout;->removeAllViews()V

    const/4 p1, 0x0

    :goto_2
    iget-object v0, v2, Lcom/android/car/ui/toolbar/TabLayout;->b:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 6
    invoke-virtual {v2}, Lcom/android/car/ui/toolbar/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v3, v2, Lcom/android/car/ui/toolbar/TabLayout;->a:I

    .line 9
    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v2, v0}, Lcom/android/car/ui/toolbar/TabLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Lcom/android/car/ui/toolbar/TabLayout;->a(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p0}, Larn;->c()V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Larn;->p:Ljava/lang/CharSequence;

    iget-object v0, p0, Larn;->o:Landroid/widget/TextView;

    sget-object v1, Larm;->a:Larm;

    invoke-static {v0, p1, v1}, Larn;->d(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-virtual {p0}, Larn;->c()V

    return-void
.end method
