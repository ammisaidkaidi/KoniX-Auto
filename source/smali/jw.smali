.class public final Ljw;
.super Ljg;
.source "PG"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Llm;


# static fields
.field private static final H:Lvi;

.field private static final I:[I

.field public static final c:Z

.field public static final d:Z


# instance fields
.field A:Z

.field public B:I

.field C:Z

.field D:I

.field public E:Landroid/graphics/Rect;

.field public F:Landroid/graphics/Rect;

.field G:Lbew;

.field private J:Ljo;

.field private K:Ljava/lang/CharSequence;

.field private L:Ljv;

.field private M:Landroid/widget/TextView;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:[Lju;

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Ljr;

.field private X:Ljr;

.field private final Y:Ljava/lang/Runnable;

.field private Z:Z

.field private aa:Landroid/support/v7/app/AppCompatViewInflater;

.field private ab:Ljv;

.field final e:Ljava/lang/Object;

.field final f:Landroid/content/Context;

.field public g:Landroid/view/Window;

.field h:Liv;

.field i:Landroid/view/MenuInflater;

.field public j:Los;

.field k:Lko;

.field l:Landroid/support/v7/widget/ActionBarContextView;

.field public m:Landroid/widget/PopupWindow;

.field public n:Ljava/lang/Runnable;

.field public o:Z

.field public p:Z

.field q:Landroid/view/ViewGroup;

.field public r:Landroid/view/View;

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field public x:Lju;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lvi;

    invoke-direct {v0}, Lvi;-><init>()V

    sput-object v0, Ljw;->H:Lvi;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    sput-object v1, Ljw;->I:[I

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Ljw;->c:Z

    sput-boolean v0, Ljw;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljg;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljw;->G:Lbew;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljw;->o:Z

    const/16 v2, -0x64

    iput v2, p0, Ljw;->T:I

    new-instance v3, Ljk;

    invoke-direct {v3, p0, v1}, Ljk;-><init>(Ljw;I)V

    iput-object v3, p0, Ljw;->Y:Ljava/lang/Runnable;

    iput-object p1, p0, Ljw;->f:Landroid/content/Context;

    iput-object p3, p0, Ljw;->e:Ljava/lang/Object;

    iget v1, p0, Ljw;->T:I

    if-ne v1, v2, :cond_2

    instance-of p3, p3, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    instance-of p3, p1, Ljf;

    if-eqz p3, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Ljf;

    goto :goto_1

    .line 3
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 4
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    nop

    .line 5
    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljf;->g()Ljg;

    move-result-object p1

    check-cast p1, Ljw;

    iget p1, p1, Ljw;->T:I

    iput p1, p0, Ljw;->T:I

    :cond_2
    iget p1, p0, Ljw;->T:I

    if-ne p1, v2, :cond_3

    sget-object p1, Ljw;->H:Lvi;

    iget-object p3, p0, Ljw;->e:Ljava/lang/Object;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lvi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Ljw;->T:I

    iget-object p3, p0, Ljw;->e:Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    invoke-direct {p0, p2}, Ljw;->N(Landroid/view/Window;)V

    .line 11
    :cond_4
    invoke-static {}, Lnn;->f()V

    return-void
.end method

.method private final L(Landroid/content/Context;)Ljr;
    .locals 1

    .line 1
    iget-object v0, p0, Ljw;->X:Ljr;

    if-nez v0, :cond_0

    new-instance v0, Ljp;

    invoke-direct {v0, p0, p1}, Ljp;-><init>(Ljw;Landroid/content/Context;)V

    iput-object v0, p0, Ljw;->X:Ljr;

    :cond_0
    iget-object p1, p0, Ljw;->X:Ljr;

    return-object p1
.end method

.method private final M(Landroid/content/Context;)Ljr;
    .locals 3

    .line 1
    iget-object v0, p0, Ljw;->W:Ljr;

    if-nez v0, :cond_1

    new-instance v0, Ljs;

    sget-object v1, Lkc;->a:Lkc;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lkc;

    .line 2
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lkc;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lkc;->a:Lkc;

    :cond_0
    sget-object p1, Lkc;->a:Lkc;

    invoke-direct {v0, p0, p1}, Ljs;-><init>(Ljw;Lkc;)V

    iput-object v0, p0, Ljw;->W:Ljr;

    :cond_1
    iget-object p1, p0, Ljw;->W:Ljr;

    return-object p1
.end method

.method private final N(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ljo;

    if-nez v2, :cond_1

    .line 4
    new-instance v1, Ljo;

    .line 5
    invoke-direct {v1, p0, v0}, Ljo;-><init>(Ljw;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ljw;->J:Ljo;

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Ljw;->I:[I

    .line 7
    invoke-static {v0, v1, v2}, Lsm;->k(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lsm;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lsm;->i(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lsm;->n()V

    iput-object p1, p0, Ljw;->g:Landroid/view/Window;

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljw;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Ljw;->N(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 3
    return-void

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final P(I)V
    .locals 2

    .line 1
    iget v0, p0, Ljw;->D:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ljw;->D:I

    iget-boolean p1, p0, Ljw;->C:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ljw;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ljw;->Y:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lhs;->r(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Ljw;->C:Z

    :cond_0
    return-void
.end method

.method private final Q(Lju;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1
    iget-boolean v0, p1, Lju;->m:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ljw;->A:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget v0, p1, Lju;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v2, p1, Lju;->a:I

    iget-object v3, p1, Lju;->h:Llo;

    .line 4
    invoke-interface {v0, v2, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 44
    :cond_3
    nop

    .line 49
    invoke-virtual {p0, p1, v1}, Ljw;->x(Lju;Z)V

    return-void

    .line 4
    :cond_4
    :goto_1
    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    .line 5
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p1, Lju;->e:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz p2, :cond_9

    iget-boolean v5, p1, Lju;->n:Z

    if-eqz v5, :cond_7

    goto :goto_2

    .line 26
    :cond_7
    iget-object p2, p1, Lju;->g:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 44
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v2, :cond_8

    const/4 v6, -0x1

    goto/16 :goto_8

    :cond_8
    const/4 v6, -0x2

    goto/16 :goto_8

    .line 6
    :cond_9
    :goto_2
    if-nez p2, :cond_d

    .line 7
    invoke-virtual {p0}, Ljw;->q()Landroid/content/Context;

    move-result-object p2

    new-instance v2, Landroid/util/TypedValue;

    .line 8
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f040006

    .line 11
    invoke-virtual {v5, v6, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    .line 13
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f0401db

    .line 14
    invoke-virtual {v5, v6, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_b

    .line 16
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    .line 32
    :cond_b
    const v2, 0x7f110148

    .line 17
    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 16
    :goto_3
    new-instance v2, Lue;

    .line 18
    invoke-direct {v2, p2, v3}, Lue;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v2, p1, Lju;->j:Landroid/content/Context;

    .line 20
    sget-object p2, Lki;->j:[I

    invoke-virtual {v2, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v2, 0x56

    .line 21
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lju;->b:I

    .line 22
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lju;->d:I

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Ljt;

    iget-object v2, p1, Lju;->j:Landroid/content/Context;

    .line 24
    invoke-direct {p2, p0, v2}, Ljt;-><init>(Ljw;Landroid/content/Context;)V

    iput-object p2, p1, Lju;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Lju;->c:I

    iget-object p2, p1, Lju;->e:Landroid/view/ViewGroup;

    if-eqz p2, :cond_c

    goto :goto_4

    .line 32
    :cond_c
    return-void

    .line 17
    :cond_d
    iget-boolean v2, p1, Lju;->n:Z

    if-eqz v2, :cond_e

    .line 25
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_e

    iget-object p2, p1, Lju;->e:Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    :cond_e
    :goto_4
    iget-object p2, p1, Lju;->g:Landroid/view/View;

    if-eqz p2, :cond_f

    iput-object p2, p1, Lju;->f:Landroid/view/View;

    goto :goto_6

    .line 33
    :cond_f
    iget-object p2, p1, Lju;->h:Llo;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Ljw;->L:Ljv;

    if-nez p2, :cond_10

    new-instance p2, Ljv;

    invoke-direct {p2, p0, v3}, Ljv;-><init>(Ljw;I)V

    iput-object p2, p0, Ljw;->L:Ljv;

    :cond_10
    iget-object p2, p0, Ljw;->L:Ljv;

    iget-object v2, p1, Lju;->h:Llo;

    if-nez v2, :cond_11

    const/4 p2, 0x0

    goto :goto_5

    :cond_11
    iget-object v2, p1, Lju;->i:Llk;

    if-nez v2, :cond_12

    new-instance v2, Llk;

    iget-object v5, p1, Lju;->j:Landroid/content/Context;

    .line 27
    invoke-direct {v2, v5}, Llk;-><init>(Landroid/content/Context;)V

    iput-object v2, p1, Lju;->i:Llk;

    iget-object v2, p1, Lju;->i:Llk;

    iput-object p2, v2, Llk;->e:Lmb;

    iget-object p2, p1, Lju;->h:Llo;

    .line 28
    invoke-virtual {p2, v2}, Llo;->g(Lmc;)V

    :cond_12
    iget-object p2, p1, Lju;->i:Llk;

    iget-object v2, p1, Lju;->e:Landroid/view/ViewGroup;

    iget-object v5, p2, Llk;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v5, :cond_14

    iget-object v5, p2, Llk;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f0c000d

    .line 29
    invoke-virtual {v5, v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object v2, p2, Llk;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v2, p2, Llk;->f:Llj;

    if-nez v2, :cond_13

    new-instance v2, Llj;

    .line 30
    invoke-direct {v2, p2}, Llj;-><init>(Llk;)V

    iput-object v2, p2, Llk;->f:Llj;

    :cond_13
    iget-object v2, p2, Llk;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v5, p2, Llk;->f:Llj;

    .line 31
    invoke-virtual {v2, v5}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p2, Llk;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 32
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_14
    iget-object p2, p2, Llk;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    .line 33
    :goto_5
    iput-object p2, p1, Lju;->f:Landroid/view/View;

    iget-object p2, p1, Lju;->f:Landroid/view/View;

    if-eqz p2, :cond_1a

    .line 24
    :goto_6
    iget-object p2, p1, Lju;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    :cond_15
    iget-object p2, p1, Lju;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_7

    .line 48
    :cond_16
    iget-object p2, p1, Lju;->i:Llk;

    .line 33
    invoke-virtual {p2}, Llk;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_1a

    .line 24
    :goto_7
    iget-object p2, p1, Lju;->f:Landroid/view/View;

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_17

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 35
    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_17
    iget v2, p1, Lju;->b:I

    iget-object v5, p1, Lju;->e:Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v2, p1, Lju;->f:Landroid/view/View;

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 38
    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    .line 39
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, p1, Lju;->f:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    iget-object v2, p1, Lju;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lju;->f:Landroid/view/View;

    .line 40
    invoke-virtual {v2, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lju;->f:Landroid/view/View;

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_19

    iget-object p2, p1, Lju;->f:Landroid/view/View;

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    const/4 v6, -0x2

    goto :goto_8

    .line 48
    :cond_19
    const/4 v6, -0x2

    .line 42
    :goto_8
    iput-boolean v3, p1, Lju;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    .line 45
    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Lju;->c:I

    .line 46
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Lju;->d:I

    .line 47
    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Lju;->e:Landroid/view/ViewGroup;

    .line 48
    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Lju;->m:Z

    return-void

    .line 24
    :cond_1a
    :goto_9
    iput-boolean v1, p1, Lju;->n:Z

    return-void

    .line 1
    :cond_1b
    :goto_a
    return-void
.end method

.method private final R()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljw;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Ljw;->p:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    sget-object v1, Lki;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    const/16 v2, 0x7e

    .line 5
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v5}, Ljw;->n(I)V

    goto :goto_0

    .line 31
    :cond_0
    nop

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, v4}, Ljw;->n(I)V

    .line 6
    :cond_1
    :goto_0
    const/16 v1, 0x76

    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0, v2}, Ljw;->n(I)V

    :cond_2
    const/16 v1, 0x77

    .line 11
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 12
    invoke-virtual {p0, v1}, Ljw;->n(I)V

    :cond_3
    nop

    .line 13
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ljw;->v:Z

    .line 14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-direct {p0}, Ljw;->O()V

    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Ljw;->w:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Ljw;->v:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0c000c

    .line 18
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Ljw;->t:Z

    iput-boolean v3, p0, Ljw;->s:Z

    goto/16 :goto_2

    .line 51
    :cond_4
    iget-boolean v0, p0, Ljw;->s:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    .line 19
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f04000d

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Lue;

    iget-object v7, p0, Ljw;->f:Landroid/content/Context;

    .line 22
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lue;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 29
    :cond_5
    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    .line 23
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0017

    .line 24
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0900f0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Los;

    iput-object v1, p0, Ljw;->j:Los;

    .line 26
    invoke-virtual {p0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Los;->o(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Ljw;->t:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljw;->j:Los;

    .line 27
    invoke-interface {v1, v2}, Los;->i(I)V

    :cond_6
    iget-boolean v1, p0, Ljw;->N:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Ljw;->j:Los;

    const/4 v2, 0x2

    .line 28
    invoke-interface {v1, v2}, Los;->i(I)V

    :cond_7
    iget-boolean v1, p0, Ljw;->O:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljw;->j:Los;

    const/4 v2, 0x5

    .line 29
    invoke-interface {v1, v2}, Los;->i(I)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Ljw;->u:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0c0016

    .line 30
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0c0015

    .line 31
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    :cond_b
    :goto_2
    if-eqz v0, :cond_1e

    .line 32
    new-instance v1, Ljh;

    invoke-direct {v1, p0}, Ljh;-><init>(Ljw;)V

    .line 33
    invoke-static {v0, v1}, Lhs;->A(Landroid/view/View;Lgx;)V

    iget-object v1, p0, Ljw;->j:Los;

    if-nez v1, :cond_c

    const v1, 0x7f0901c8

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljw;->M:Landroid/widget/TextView;

    .line 35
    :cond_c
    invoke-static {v0}, Ltb;->a(Landroid/view/View;)V

    const v1, 0x7f09003f

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v2, p0, Ljw;->g:Landroid/view/Window;

    .line 37
    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    .line 38
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_d

    .line 39
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 41
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    const/4 v8, -0x1

    .line 42
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 43
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 44
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    .line 45
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v2, p0, Ljw;->g:Landroid/view/Window;

    .line 46
    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Lji;

    invoke-direct {v2, p0}, Lji;-><init>(Ljw;)V

    iput-object v2, v1, Landroid/support/v7/widget/ContentFrameLayout;->i:Lji;

    iput-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    iget-object v0, p0, Ljw;->e:Ljava/lang/Object;

    .line 47
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 48
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 51
    :cond_f
    iget-object v0, p0, Ljw;->K:Ljava/lang/CharSequence;

    .line 49
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Ljw;->j:Los;

    if-eqz v1, :cond_10

    .line 52
    invoke-interface {v1, v0}, Los;->p(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 80
    :cond_10
    iget-object v1, p0, Ljw;->h:Liv;

    if-eqz v1, :cond_11

    .line 50
    invoke-virtual {v1, v0}, Liv;->f(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_11
    iget-object v1, p0, Ljw;->M:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_12
    :goto_5
    iget-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iget-object v1, p0, Ljw;->g:Landroid/view/Window;

    .line 54
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v8, v0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    invoke-static {v0}, Lhs;->G(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 55
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_13
    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    sget-object v2, Lki;->j:[I

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    if-nez v2, :cond_14

    new-instance v2, Landroid/util/TypedValue;

    .line 61
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    :cond_14
    const/16 v2, 0x7c

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 62
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    if-nez v2, :cond_15

    new-instance v2, Landroid/util/TypedValue;

    .line 63
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    :cond_15
    const/16 v2, 0x7d

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 64
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 65
    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    if-nez v6, :cond_16

    new-instance v6, Landroid/util/TypedValue;

    .line 66
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    :cond_16
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 67
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    nop

    .line 68
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    if-nez v6, :cond_18

    new-instance v6, Landroid/util/TypedValue;

    .line 69
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    :cond_18
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 70
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    nop

    .line 71
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    if-nez v6, :cond_1a

    new-instance v6, Landroid/util/TypedValue;

    .line 72
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :cond_1a
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 73
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1b
    nop

    .line 74
    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    if-nez v6, :cond_1c

    new-instance v6, Landroid/util/TypedValue;

    .line 75
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    :cond_1c
    iget-object v6, v0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    .line 76
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 77
    :cond_1d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    iput-boolean v5, p0, Ljw;->p:Z

    .line 79
    invoke-virtual {p0, v3}, Ljw;->H(I)Lju;

    move-result-object v0

    iget-boolean v1, p0, Ljw;->A:Z

    if-nez v1, :cond_20

    iget-object v0, v0, Lju;->h:Llo;

    if-nez v0, :cond_20

    .line 80
    invoke-direct {p0, v4}, Ljw;->P(I)V

    return-void

    .line 18
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljw;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljw;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljw;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljw;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ljw;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_20
    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljw;->A()V

    iget-boolean v0, p0, Ljw;->s:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljw;->h:Liv;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljw;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Lkh;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Ljw;->t:Z

    invoke-direct {v1, v0, v2}, Lkh;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Ljw;->h:Liv;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Lkh;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lkh;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Ljw;->h:Liv;

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Ljw;->h:Liv;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ljw;->Z:Z

    .line 6
    invoke-virtual {v0, v1}, Liv;->c(Z)V

    :cond_3
    return-void

    .line 1
    :cond_4
    :goto_1
    return-void
.end method

.method final C(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ljw;->e:Ljava/lang/Object;

    instance-of v1, v0, Lgr;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljy;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    sget v0, Lhs;->a:I

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ljw;->J:Ljo;

    iget-object v0, v0, Lkx;->b:Landroid/view/Window$Callback;

    .line 5
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    return v2

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    sparse-switch v0, :sswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 27
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 28
    invoke-virtual {p0, v3}, Ljw;->H(I)Lju;

    move-result-object v0

    iget-boolean v1, v0, Lju;->m:Z

    if-nez v1, :cond_4

    .line 29
    invoke-virtual {p0, v0, p1}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    goto/16 :goto_5

    :cond_4
    goto/16 :goto_5

    .line 30
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Ljw;->R:Z

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 29
    :cond_6
    sparse-switch v0, :sswitch_data_1

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 25
    :sswitch_2
    iget-object v0, p0, Ljw;->k:Lko;

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 8
    :cond_7
    invoke-virtual {p0, v3}, Ljw;->H(I)Lju;

    move-result-object v0

    iget-object v1, p0, Ljw;->j:Los;

    if-eqz v1, :cond_9

    .line 9
    invoke-interface {v1}, Los;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    .line 10
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Ljw;->j:Los;

    .line 14
    invoke-interface {v1}, Los;->t()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Ljw;->A:Z

    if-nez v1, :cond_f

    .line 15
    invoke-virtual {p0, v0, p1}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Ljw;->j:Los;

    .line 16
    invoke-interface {p1}, Los;->u()Z

    move-result p1

    goto :goto_3

    .line 21
    :cond_8
    iget-object p1, p0, Ljw;->j:Los;

    .line 17
    invoke-interface {p1}, Los;->r()Z

    move-result p1

    goto :goto_3

    :cond_9
    iget-boolean v1, v0, Lju;->m:Z

    if-nez v1, :cond_d

    iget-boolean v4, v0, Lju;->l:Z

    if-eqz v4, :cond_a

    goto :goto_2

    .line 11
    :cond_a
    iget-boolean v1, v0, Lju;->k:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lju;->o:Z

    if-eqz v1, :cond_b

    iput-boolean v3, v0, Lju;->k:Z

    .line 12
    invoke-virtual {p0, v0, p1}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 13
    :cond_b
    invoke-direct {p0, v0, p1}, Ljw;->Q(Lju;Landroid/view/KeyEvent;)V

    goto :goto_4

    :cond_c
    goto :goto_5

    .line 11
    :cond_d
    :goto_2
    invoke-virtual {p0, v0, v2}, Ljw;->x(Lju;Z)V

    move p1, v1

    .line 16
    :goto_3
    if-eqz p1, :cond_f

    :goto_4
    iget-object p1, p0, Ljw;->f:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 19
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_e

    .line 20
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_5

    :cond_e
    nop

    .line 21
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    goto :goto_5

    .line 29
    :sswitch_3
    iget-boolean p1, p0, Ljw;->R:Z

    iput-boolean v3, p0, Ljw;->R:Z

    .line 22
    invoke-virtual {p0, v3}, Ljw;->H(I)Lju;

    move-result-object v0

    iget-boolean v1, v0, Lju;->m:Z

    if-eqz v1, :cond_11

    if-nez p1, :cond_10

    .line 26
    invoke-virtual {p0, v0, v2}, Ljw;->x(Lju;Z)V

    goto :goto_5

    :cond_10
    goto :goto_5

    :cond_11
    iget-object p1, p0, Ljw;->k:Lko;

    if-eqz p1, :cond_12

    .line 23
    invoke-virtual {p1}, Lko;->f()V

    goto :goto_5

    .line 24
    :cond_12
    invoke-virtual {p0}, Ljw;->a()Liv;

    move-result-object p1

    if-eqz p1, :cond_13

    check-cast p1, Lkh;

    iget-object v0, p1, Lkh;->d:Lot;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lot;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lkh;->d:Lot;

    .line 25
    invoke-interface {p1}, Lot;->d()V

    goto :goto_5

    :cond_13
    const/4 v2, 0x0

    .line 7
    :goto_5
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public final D(Llo;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Ljw;->A:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Llo;->a()Llo;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Ljw;->s(Landroid/view/Menu;)Lju;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lju;->a:I

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final E(Lju;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Ljw;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lju;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Ljw;->x:Lju;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Ljw;->x(Lju;Z)V

    .line 2
    :cond_2
    invoke-virtual {p0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lju;->a:I

    .line 3
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lju;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Lju;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .line 13
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 3
    :goto_0
    if-eqz v3, :cond_6

    iget-object v5, p0, Ljw;->j:Los;

    if-eqz v5, :cond_6

    .line 4
    invoke-interface {v5}, Los;->n()V

    :cond_6
    iget-object v5, p1, Lju;->g:Landroid/view/View;

    if-nez v5, :cond_1a

    iget-object v5, p1, Lju;->h:Llo;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-boolean v7, p1, Lju;->o:Z

    if-eqz v7, :cond_14

    :cond_7
    if-nez v5, :cond_f

    iget-object v5, p0, Ljw;->f:Landroid/content/Context;

    iget v7, p1, Lju;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v4, :cond_d

    :cond_8
    iget-object v4, p0, Ljw;->j:Los;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    .line 5
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f04000d

    .line 7
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 8
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f04000e

    if-eqz v8, :cond_9

    .line 9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 10
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 11
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 12
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_1

    .line 36
    :cond_9
    nop

    .line 13
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 14
    :goto_1
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    .line 15
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 16
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 17
    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v8, :cond_c

    new-instance v4, Lue;

    .line 18
    invoke-direct {v4, v5, v1}, Lue;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    goto :goto_2

    .line 36
    :cond_c
    goto :goto_2

    .line 13
    :cond_d
    nop

    .line 20
    :goto_2
    new-instance v4, Llo;

    invoke-direct {v4, v5}, Llo;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Llo;->b:Llm;

    .line 21
    invoke-virtual {p1, v4}, Lju;->a(Llo;)V

    iget-object v4, p1, Lju;->h:Llo;

    if-eqz v4, :cond_e

    goto :goto_3

    .line 36
    :cond_e
    return v1

    .line 21
    :cond_f
    :goto_3
    if-eqz v3, :cond_11

    iget-object v4, p0, Ljw;->j:Los;

    if-eqz v4, :cond_11

    iget-object v4, p0, Ljw;->ab:Ljv;

    if-nez v4, :cond_10

    new-instance v4, Ljv;

    invoke-direct {v4, p0, v2}, Ljv;-><init>(Ljw;I)V

    iput-object v4, p0, Ljw;->ab:Ljv;

    :cond_10
    iget-object v4, p0, Ljw;->j:Los;

    iget-object v5, p1, Lju;->h:Llo;

    iget-object v7, p0, Ljw;->ab:Ljv;

    .line 22
    invoke-interface {v4, v5, v7}, Los;->m(Landroid/view/Menu;Lmb;)V

    :cond_11
    iget-object v4, p1, Lju;->h:Llo;

    .line 23
    invoke-virtual {v4}, Llo;->s()V

    iget v4, p1, Lju;->a:I

    iget-object v5, p1, Lju;->h:Llo;

    .line 24
    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 25
    invoke-virtual {p1, v6}, Lju;->a(Llo;)V

    if-eqz v3, :cond_12

    iget-object p1, p0, Ljw;->j:Los;

    if-eqz p1, :cond_12

    iget-object p2, p0, Ljw;->ab:Ljv;

    .line 26
    invoke-interface {p1, v6, p2}, Los;->m(Landroid/view/Menu;Lmb;)V

    :cond_12
    return v1

    :cond_13
    iput-boolean v1, p1, Lju;->o:Z

    :cond_14
    iget-object v4, p1, Lju;->h:Llo;

    .line 27
    invoke-virtual {v4}, Llo;->s()V

    iget-object v4, p1, Lju;->p:Landroid/os/Bundle;

    if-eqz v4, :cond_15

    iget-object v5, p1, Lju;->h:Llo;

    .line 28
    invoke-virtual {v5, v4}, Llo;->n(Landroid/os/Bundle;)V

    iput-object v6, p1, Lju;->p:Landroid/os/Bundle;

    :cond_15
    iget-object v4, p1, Lju;->g:Landroid/view/View;

    iget-object v5, p1, Lju;->h:Llo;

    .line 29
    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v3, :cond_16

    iget-object p2, p0, Ljw;->j:Los;

    if-eqz p2, :cond_16

    iget-object v0, p0, Ljw;->ab:Ljv;

    .line 30
    invoke-interface {p2, v6, v0}, Los;->m(Landroid/view/Menu;Lmb;)V

    :cond_16
    iget-object p1, p1, Lju;->h:Llo;

    .line 31
    invoke-virtual {p1}, Llo;->r()V

    return v1

    :cond_17
    if-eqz p2, :cond_18

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_4

    .line 36
    :cond_18
    const/4 p2, -0x1

    .line 33
    :goto_4
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_19

    const/4 p2, 0x1

    goto :goto_5

    .line 36
    :cond_19
    const/4 p2, 0x0

    .line 34
    :goto_5
    iget-object v0, p1, Lju;->h:Llo;

    .line 35
    invoke-virtual {v0, p2}, Llo;->setQwertyMode(Z)V

    iget-object p2, p1, Lju;->h:Llo;

    .line 36
    invoke-virtual {p2}, Llo;->r()V

    :cond_1a
    iput-boolean v2, p1, Lju;->k:Z

    iput-boolean v1, p1, Lju;->l:Z

    iput-object p1, p0, Ljw;->x:Lju;

    return v2
.end method

.method final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljw;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lhs;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljw;->K(Z)V

    return-void
.end method

.method public final H(I)Lju;
    .locals 4

    .line 1
    iget-object v0, p0, Ljw;->Q:[Lju;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lju;

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v1, p0, Ljw;->Q:[Lju;

    move-object v0, v1

    .line 2
    :goto_1
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lju;

    invoke-direct {v1, p1}, Lju;-><init>(I)V

    .line 3
    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final I()V
    .locals 6

    .line 1
    iget-object v0, p0, Ljw;->j:Los;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Los;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljw;->j:Los;

    .line 3
    invoke-interface {v0}, Los;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v3, p0, Ljw;->j:Los;

    .line 8
    invoke-interface {v3}, Los;->t()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_1

    iget-object v1, p0, Ljw;->j:Los;

    .line 15
    invoke-interface {v1}, Los;->r()Z

    iget-boolean v1, p0, Ljw;->A:Z

    if-nez v1, :cond_3

    .line 16
    invoke-virtual {p0, v2}, Ljw;->H(I)Lju;

    move-result-object v1

    iget-object v1, v1, Lju;->h:Llo;

    .line 17
    invoke-interface {v0, v4, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Ljw;->A:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Ljw;->C:Z

    if-eqz v3, :cond_2

    iget v3, p0, Ljw;->D:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljw;->g:Landroid/view/Window;

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Ljw;->Y:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Ljw;->Y:Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    nop

    .line 11
    invoke-virtual {p0, v2}, Ljw;->H(I)Lju;

    move-result-object v1

    iget-object v3, v1, Lju;->h:Llo;

    if-eqz v3, :cond_3

    iget-boolean v5, v1, Lju;->o:Z

    if-nez v5, :cond_3

    iget-object v5, v1, Lju;->g:Landroid/view/View;

    .line 12
    invoke-interface {v0, v2, v5, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lju;->h:Llo;

    .line 13
    invoke-interface {v0, v4, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v0, p0, Ljw;->j:Los;

    .line 14
    invoke-interface {v0}, Los;->u()Z

    return-void

    .line 17
    :cond_3
    return-void

    .line 14
    :cond_4
    nop

    .line 4
    invoke-virtual {p0, v2}, Ljw;->H(I)Lju;

    move-result-object v0

    iput-boolean v1, v0, Lju;->n:Z

    .line 5
    invoke-virtual {p0, v0, v2}, Ljw;->x(Lju;Z)V

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Ljw;->Q(Lju;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final J(Lju;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lju;->k:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p3}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lju;->h:Llo;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, p2, p3, v0}, Llo;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final K(Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Ljw;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljw;->o()I

    move-result v0

    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Ljw;->p(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Ljw;->f:Landroid/content/Context;

    .line 2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Ljw;->r(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-boolean v2, p0, Ljw;->V:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Ljw;->e:Ljava/lang/Object;

    .line 3
    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljw;->f:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 24
    :cond_1
    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_2

    const/high16 v6, 0x100c0000

    goto :goto_0

    .line 7
    :cond_2
    const/high16 v6, 0xc0000

    .line 24
    :goto_0
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Ljw;->f:Landroid/content/Context;

    iget-object v9, p0, Ljw;->e:Ljava/lang/Object;

    .line 5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {v2, v7, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Ljw;->U:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    iput-boolean v5, p0, Ljw;->U:Z

    :cond_4
    :goto_2
    iput-boolean v4, p0, Ljw;->V:Z

    iget-boolean v5, p0, Ljw;->U:Z

    .line 4
    :goto_3
    iget-object v2, p0, Ljw;->f:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    .line 9
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eq v2, v1, :cond_6

    if-eqz p1, :cond_6

    if-nez v5, :cond_6

    iget-boolean p1, p0, Ljw;->y:Z

    if-eqz p1, :cond_6

    sget-boolean p1, Ljw;->c:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ljw;->S:Z

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Ljw;->e:Ljava/lang/Object;

    .line 10
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_6

    check-cast p1, Landroid/app/Activity;

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Ljw;->e:Ljava/lang/Object;

    .line 25
    check-cast p1, Landroid/app/Activity;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_4

    .line 32
    :cond_6
    if-eq v2, v1, :cond_a

    iget-object p1, p0, Ljw;->f:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v2, Landroid/content/res/Configuration;

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, -0x31

    or-int/2addr v1, v6

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 15
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p1, p0, Ljw;->B:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    .line 16
    invoke-virtual {v1, p1}, Landroid/content/Context;->setTheme(I)V

    iget-object p1, p0, Ljw;->f:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v1, p0, Ljw;->B:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    if-eqz v5, :cond_9

    iget-object p1, p0, Ljw;->e:Ljava/lang/Object;

    .line 18
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_9

    .line 19
    check-cast p1, Landroid/app/Activity;

    .line 20
    instance-of v1, p1, Lzq;

    if-eqz v1, :cond_8

    .line 21
    move-object v1, p1

    check-cast v1, Lzq;

    invoke-interface {v1}, Lzq;->C()Lzn;

    move-result-object v1

    iget-object v1, v1, Lzn;->a:Lzm;

    .line 22
    sget-object v3, Lzm;->d:Lzm;

    invoke-virtual {v1, v3}, Lzm;->a(Lzm;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_4

    :cond_8
    iget-boolean v1, p0, Ljw;->z:Z

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {p1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    :cond_9
    :goto_4
    iget-object p1, p0, Ljw;->e:Ljava/lang/Object;

    .line 27
    instance-of v1, p1, Ljf;

    if-eqz v1, :cond_a

    .line 28
    check-cast p1, Ljf;

    :cond_a
    if-nez v0, :cond_b

    iget-object p1, p0, Ljw;->f:Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Ljw;->M(Landroid/content/Context;)Ljr;

    move-result-object p1

    invoke-virtual {p1}, Ljr;->d()V

    goto :goto_5

    .line 31
    :cond_b
    iget-object p1, p0, Ljw;->W:Ljr;

    if-eqz p1, :cond_c

    .line 30
    invoke-virtual {p1}, Ljr;->c()V

    :cond_c
    const/4 p1, 0x3

    if-ne v0, p1, :cond_d

    iget-object p1, p0, Ljw;->f:Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Ljw;->L(Landroid/content/Context;)Ljr;

    move-result-object p1

    invoke-virtual {p1}, Ljr;->d()V

    return-void

    .line 29
    :cond_d
    :goto_5
    iget-object p1, p0, Ljw;->X:Ljr;

    if-eqz p1, :cond_e

    .line 31
    invoke-virtual {p1}, Ljr;->c()V

    :cond_e
    return-void
.end method

.method public final a()Liv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljw;->B()V

    iget-object v0, p0, Ljw;->h:Liv;

    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljw;->A()V

    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljw;->A()V

    iget-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    .line 2
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ljw;->J:Ljo;

    iget-object p1, p1, Lkx;->b:Landroid/view/Window$Callback;

    .line 4
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljw;->a()Liv;

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljw;->P(I)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljw;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Ljg;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljg;->h(Ljg;)V

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Ljw;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ljw;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljw;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljw;->A:Z

    iget v0, p0, Ljw;->T:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ljw;->e:Ljava/lang/Object;

    .line 5
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljw;->H:Lvi;

    iget-object v1, p0, Ljw;->e:Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ljw;->T:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Ljw;->H:Lvi;

    iget-object v1, p0, Ljw;->e:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_1
    iget-object v0, p0, Ljw;->W:Ljr;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Ljr;->c()V

    :cond_3
    iget-object v0, p0, Ljw;->X:Ljr;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Ljr;->c()V

    :cond_4
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljw;->z:Z

    invoke-virtual {p0}, Ljw;->a()Liv;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Liv;->e(Z)V

    :cond_0
    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljw;->A()V

    iget-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    .line 2
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Ljw;->f:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Ljw;->J:Ljo;

    iget-object p1, p1, Lkx;->b:Landroid/view/Window$Callback;

    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljw;->A()V

    iget-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    .line 2
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Ljw;->J:Ljo;

    iget-object p1, p1, Lkx;->b:Landroid/view/Window$Callback;

    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljw;->A()V

    iget-object v0, p0, Ljw;->q:Landroid/view/ViewGroup;

    .line 2
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ljw;->J:Ljo;

    iget-object p1, p1, Lkx;->b:Landroid/view/Window$Callback;

    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ljw;->K:Ljava/lang/CharSequence;

    iget-object v0, p0, Ljw;->j:Los;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljw;->h:Liv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Liv;->f(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljw;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-interface {v0, p1}, Los;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljw;->y:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljw;->K(Z)V

    .line 2
    invoke-direct {p0}, Ljw;->O()V

    iget-object v1, p0, Ljw;->e:Ljava/lang/Object;

    .line 3
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 4
    :try_start_0
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lr;->s(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 4
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Ljw;->h:Liv;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Ljw;->Z:Z

    goto :goto_1

    .line 8
    :cond_0
    nop

    .line 5
    invoke-virtual {v1, v0}, Liv;->c(Z)V

    .line 4
    :cond_1
    :goto_1
    sget-object v1, Ljg;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    invoke-static {p0}, Ljg;->h(Ljg;)V

    sget-object v2, Ljg;->a:Lvd;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lvd;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v1

    goto :goto_2

    .line 5
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iput-boolean v0, p0, Ljw;->S:Z

    return-void
.end method

.method public final n(I)V
    .locals 2

    .line 7
    const/16 v0, 0x6c

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const/16 p1, 0x6c

    goto :goto_0

    .line 6
    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const/16 p1, 0x6d

    .line 7
    :cond_1
    :goto_0
    iget-boolean v1, p0, Ljw;->w:Z

    if-eqz v1, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    return-void

    .line 7
    :cond_3
    :goto_1
    iget-boolean v0, p0, Ljw;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljw;->s:Z

    :cond_4
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    return-void

    .line 1
    :sswitch_0
    invoke-direct {p0}, Ljw;->R()V

    iput-boolean v1, p0, Ljw;->t:Z

    return-void

    .line 2
    :sswitch_1
    invoke-direct {p0}, Ljw;->R()V

    iput-boolean v1, p0, Ljw;->s:Z

    return-void

    .line 3
    :sswitch_2
    invoke-direct {p0}, Ljw;->R()V

    iput-boolean v1, p0, Ljw;->u:Z

    return-void

    .line 4
    :sswitch_3
    invoke-direct {p0}, Ljw;->R()V

    iput-boolean v1, p0, Ljw;->O:Z

    return-void

    .line 5
    :sswitch_4
    invoke-direct {p0}, Ljw;->R()V

    iput-boolean v1, p0, Ljw;->N:Z

    return-void

    .line 6
    :sswitch_5
    invoke-direct {p0}, Ljw;->R()V

    iput-boolean v1, p0, Ljw;->w:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public final o()I
    .locals 2

    iget v0, p0, Ljw;->T:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljw;->t(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Ljw;->t(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final p(Landroid/content/Context;I)I
    .locals 21

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Ljw;->L(Landroid/content/Context;)Ljr;

    move-result-object v0

    check-cast v0, Ljp;

    iget-object v0, v0, Ljp;->a:Landroid/os/PowerManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 3
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 4
    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    .line 5
    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    if-eqz v3, :cond_f

    .line 6
    invoke-direct/range {p0 .. p1}, Ljw;->M(Landroid/content/Context;)Ljr;

    move-result-object v0

    check-cast v0, Ljs;

    iget-object v0, v0, Ljs;->a:Lkc;

    iget-object v3, v0, Lkc;->c:Lkb;

    iget-wide v4, v3, Lkb;->b:J

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-boolean v0, v3, Lkb;->a:Z

    goto/16 :goto_7

    :cond_1
    iget-object v4, v0, Lkc;->b:Landroid/content/Context;

    .line 8
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Lr;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 9
    const-string v4, "network"

    invoke-virtual {v0, v4}, Lkc;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    goto :goto_0

    .line 24
    :cond_2
    move-object v4, v5

    .line 9
    :goto_0
    iget-object v6, v0, Lkc;->b:Landroid/content/Context;

    .line 10
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v6, v7}, Lr;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 9
    const-string v5, "gps"

    invoke-virtual {v0, v5}, Lkc;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    goto :goto_1

    .line 24
    :cond_3
    nop

    .line 9
    :goto_1
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_5

    goto :goto_2

    .line 24
    :cond_4
    if-eqz v5, :cond_5

    .line 11
    :goto_2
    move-object v4, v5

    :cond_5
    if-eqz v4, :cond_c

    iget-object v0, v0, Lkc;->c:Lkb;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v5, Lka;->a:Lka;

    if-nez v5, :cond_6

    new-instance v5, Lka;

    invoke-direct {v5}, Lka;-><init>()V

    sput-object v5, Lka;->a:Lka;

    :cond_6
    sget-object v10, Lka;->a:Lka;

    const-wide/32 v5, -0x5265c00

    add-long v15, v12, v5

    .line 13
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 14
    move-object v14, v10

    invoke-virtual/range {v14 .. v20}, Lka;->a(JDD)V

    .line 15
    iget-wide v5, v10, Lka;->b:J

    .line 16
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v5, v10

    move-wide v6, v12

    move-object v1, v10

    move-wide v10, v14

    invoke-virtual/range {v5 .. v11}, Lka;->a(JDD)V

    .line 17
    iget v5, v1, Lka;->d:I

    .line 18
    iget-wide v6, v1, Lka;->c:J

    .line 19
    iget-wide v8, v1, Lka;->b:J

    const-wide/32 v10, 0x5265c00

    add-long v15, v12, v10

    .line 20
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 21
    move-object v14, v1

    invoke-virtual/range {v14 .. v20}, Lka;->a(JDD)V

    .line 22
    iget-wide v10, v1, Lka;->c:J

    const-wide/16 v14, -0x1

    cmp-long v1, v6, v14

    if-eqz v1, :cond_a

    cmp-long v1, v8, v14

    if-nez v1, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    cmp-long v1, v12, v8

    if-lez v1, :cond_8

    move-wide v6, v10

    goto :goto_3

    :cond_8
    cmp-long v1, v12, v6

    if-lez v1, :cond_9

    move-wide v6, v8

    :cond_9
    :goto_3
    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    goto :goto_5

    .line 22
    :cond_a
    :goto_4
    const-wide/32 v6, 0x2932e00

    add-long/2addr v6, v12

    :goto_5
    nop

    .line 17
    if-eq v2, v5, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, v0, Lkb;->a:Z

    iput-wide v6, v0, Lkb;->b:J

    iget-boolean v0, v3, Lkb;->a:Z

    .line 7
    :goto_7
    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    .line 23
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    const/16 v1, 0x16

    if-ge v0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    .line 7
    :cond_d
    const/4 v0, 0x2

    return v0

    .line 24
    :cond_e
    const/4 v0, 0x2

    const/4 v1, 0x2

    .line 7
    :goto_8
    return v1

    .line 24
    :cond_f
    return v0

    :sswitch_2
    return p2

    .line 25
    :sswitch_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method final q()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljw;->a()Liv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Liv;->a()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final r(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    .line 6
    :pswitch_0
    const/16 p1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x10

    .line 2
    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    .line 3
    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_0
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final s(Landroid/view/Menu;)Lju;
    .locals 5

    .line 1
    iget-object v0, p0, Ljw;->Q:[Lju;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    iget-object v4, v3, Lju;->h:Llo;

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final t(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Ljw;->aa:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    sget-object v1, Lki;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x74

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Ljw;->aa:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v0, p0, Ljw;->aa:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Ljw;->aa:Landroid/support/v7/app/AppCompatViewInflater;

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Ljw;->aa:Landroid/support/v7/app/AppCompatViewInflater;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 8
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final u()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Ljw;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final v(ILju;Landroid/view/Menu;)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    iget-object p3, p2, Lju;->h:Llo;

    :cond_0
    iget-boolean p2, p2, Lju;->m:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Ljw;->A:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Ljw;->J:Ljo;

    iget-object p2, p2, Lkx;->b:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method final w(Llo;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljw;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljw;->P:Z

    iget-object v0, p0, Ljw;->j:Los;

    invoke-interface {v0}, Los;->g()V

    .line 2
    invoke-virtual {p0}, Ljw;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ljw;->A:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljw;->P:Z

    return-void
.end method

.method final x(Lju;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    iget v0, p1, Lju;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ljw;->j:Los;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Los;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lju;->h:Llo;

    .line 5
    invoke-virtual {p0, p1}, Ljw;->w(Llo;)V

    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Ljw;->f:Landroid/content/Context;

    .line 2
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Lju;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lju;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_2

    iget p2, p1, Lju;->a:I

    .line 4
    invoke-virtual {p0, p2, p1, v1}, Ljw;->v(ILju;Landroid/view/Menu;)V

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p1, Lju;->k:Z

    iput-boolean p2, p1, Lju;->l:Z

    iput-boolean p2, p1, Lju;->m:Z

    iput-object v1, p1, Lju;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lju;->n:Z

    iget-object p2, p0, Ljw;->x:Lju;

    if-ne p2, p1, :cond_3

    iput-object v1, p0, Ljw;->x:Lju;

    :cond_3
    return-void
.end method

.method final y(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljw;->H(I)Lju;

    move-result-object v0

    iget-object v1, v0, Lju;->h:Llo;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lju;->h:Llo;

    .line 3
    invoke-virtual {v2, v1}, Llo;->o(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lju;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lju;->h:Llo;

    .line 5
    invoke-virtual {v1}, Llo;->s()V

    iget-object v1, v0, Lju;->h:Llo;

    .line 6
    invoke-virtual {v1}, Llo;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lju;->o:Z

    iput-boolean v1, v0, Lju;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Ljw;->j:Los;

    if-eqz p1, :cond_3

    .line 7
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljw;->H(I)Lju;

    move-result-object v0

    iput-boolean p1, v0, Lju;->k:Z

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, v0, p1}, Ljw;->E(Lju;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljw;->G:Lbew;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbew;->a()V

    :cond_0
    return-void
.end method
