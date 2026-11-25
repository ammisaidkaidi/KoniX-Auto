.class public abstract Lada;
.super Lbr;
.source "PG"

# interfaces
.implements Ladk;
.implements Ladi;
.implements Ladj;
.implements Lacd;


# instance fields
.field public a:Ladl;

.field private final ae:Ljava/lang/Runnable;

.field b:Landroid/support/v7/widget/RecyclerView;

.field public c:Z

.field public d:Z

.field public final e:Landroid/os/Handler;

.field private final eu:Lacw;

.field private ev:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbr;-><init>()V

    new-instance v0, Lacw;

    invoke-direct {v0, p0}, Lacw;-><init>(Lada;)V

    iput-object v0, p0, Lada;->eu:Lacw;

    const v0, 0x7f0c0070

    iput v0, p0, Lada;->ev:I

    new-instance v0, Lacu;

    .line 2
    invoke-direct {v0, p0}, Lacu;-><init>(Lada;)V

    iput-object v0, p0, Lada;->e:Landroid/os/Handler;

    new-instance v0, Lacv;

    invoke-direct {v0, p0}, Lacv;-><init>(Lada;)V

    iput-object v0, p0, Lada;->ae:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final aO(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    .line 1
    iget-object v0, p0, Lada;->a:Ladl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ladl;->e(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public final ag(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ladp;->h:[I

    const/4 v2, 0x0

    const v3, 0x7f0401ef

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Lada;->ev:I

    .line 2
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lada;->ev:I

    .line 3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4
    const/4 v3, 0x2

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 5
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lada;->ev:I

    .line 8
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 9
    const v0, 0x102003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {p0, p1, v0}, Lada;->am(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iput-object p1, p0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lada;->eu:Lacw;

    .line 15
    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->p(Lqx;)V

    iget-object p1, p0, Lada;->eu:Lacw;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p1, Lacw;->b:I

    goto :goto_0

    .line 21
    :cond_0
    iput v4, p1, Lacw;->b:I

    .line 16
    :goto_0
    iput-object v2, p1, Lacw;->a:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lacw;->d:Lada;

    iget-object p1, p1, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    .line 17
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->I()V

    if-eq v3, v5, :cond_1

    iget-object p1, p0, Lada;->eu:Lacw;

    iput v3, p1, Lacw;->b:I

    iget-object p1, p1, Lacw;->d:Lada;

    iget-object p1, p1, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    .line 18
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->I()V

    :cond_1
    iget-object p1, p0, Lada;->eu:Lacw;

    iput-boolean v1, p1, Lacw;->c:Z

    iget-object p1, p0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    .line 19
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lada;->e:Landroid/os/Handler;

    iget-object v0, p0, Lada;->ae:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 14
    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aj(Landroidx/preference/Preference;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final ak(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lacy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    .line 4
    check-cast v0, Lacy;

    .line 5
    invoke-interface {v0}, Lacy;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    nop

    .line 6
    const-string v0, "PreferenceFragment"

    const-string v1, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lbr;->A()Lcr;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcr;->e()Lcb;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lbr;->y()Lbv;

    move-result-object v3

    invoke-virtual {v3}, Lbv;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v2, p1}, Lcb;->b(Ljava/lang/String;)Lbr;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Lbr;->Q(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p1, p0}, Lbr;->af(Lbr;)V

    .line 13
    invoke-virtual {v0}, Lcr;->h()Lda;

    move-result-object v0

    iget-object v1, p0, Lbr;->P:Landroid/view/View;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lda;->n(ILbr;)V

    .line 15
    invoke-virtual {v0}, Lda;->k()V

    .line 16
    invoke-virtual {v0}, Lda;->g()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public abstract al(Ljava/lang/String;)V
.end method

.method public am(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final an()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lacz;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr;->x()Lbv;

    move-result-object v0

    .line 3
    check-cast v0, Lacz;

    .line 4
    invoke-interface {v0}, Lacz;->a()V

    :cond_0
    return-void
.end method

.method public final b()Landroidx/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lada;->a:Ladl;

    iget-object v0, v0, Ladl;->b:Landroidx/preference/PreferenceScreen;

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lbr;->d(Landroid/os/Bundle;)V

    new-instance p1, Landroid/util/TypedValue;

    .line 2
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0401f5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    const p1, 0x7f1100df

    .line 5
    :cond_0
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance p1, Ladl;

    .line 6
    invoke-virtual {p0}, Lbr;->r()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ladl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lada;->a:Ladl;

    iput-object p0, p1, Ladl;->e:Ladj;

    iget-object p1, p0, Lbr;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 7
    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lada;->al(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lada;->e:Landroid/os/Handler;

    iget-object v1, p0, Lada;->ae:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lada;->e:Landroid/os/Handler;

    .line 2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lada;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->Y(Lqq;)V

    .line 4
    invoke-virtual {p0}, Lada;->b()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/preference/Preference;->onDetached()V

    :cond_0
    iput-object v1, p0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    .line 6
    invoke-super {p0}, Lbr;->e()V

    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lada;->b()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbr;->h()V

    iget-object v0, p0, Lada;->a:Ladl;

    iput-object p0, v0, Ladl;->c:Ladk;

    iput-object p0, v0, Ladl;->d:Ladi;

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbr;->i()V

    iget-object v0, p0, Lada;->a:Ladl;

    const/4 v1, 0x0

    iput-object v1, v0, Ladl;->c:Ladk;

    iput-object v1, v0, Ladl;->d:Ladi;

    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lada;->b()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Ladg;

    .line 2
    invoke-direct {v2, v0}, Ladg;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->Y(Lqq;)V

    .line 4
    invoke-virtual {v0}, Landroidx/preference/Preference;->onAttached()V

    :cond_0
    return-void
.end method
