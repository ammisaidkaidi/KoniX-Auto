.class final Lkt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field A:Lgi;

.field public B:Ljava/lang/CharSequence;

.field public C:Ljava/lang/CharSequence;

.field public D:Landroid/content/res/ColorStateList;

.field public E:Landroid/graphics/PorterDuff$Mode;

.field final synthetic F:Lku;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lku;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkt;->F:Lku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lkt;->D:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lkt;->E:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lkt;->a:Landroid/view/Menu;

    invoke-virtual {p0}, Lkt;->c()V

    return-void
.end method

.method public static final e(Ljava/lang/String;)C
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Landroid/view/SubMenu;
    .locals 5

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkt;->h:Z

    iget-object v0, p0, Lkt;->a:Landroid/view/Menu;

    iget v1, p0, Lkt;->b:I

    iget v2, p0, Lkt;->i:I

    iget v3, p0, Lkt;->j:I

    iget-object v4, p0, Lkt;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkt;->d(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lkt;->F:Lku;

    iget-object v1, v1, Lku;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkt;->b:I

    iput v0, p0, Lkt;->c:I

    iput v0, p0, Lkt;->d:I

    iput v0, p0, Lkt;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkt;->f:Z

    iput-boolean v0, p0, Lkt;->g:Z

    return-void
.end method

.method public final d(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lkt;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lkt;->t:Z

    .line 2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lkt;->u:Z

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lkt;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lkt;->l:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lkt;->m:I

    .line 6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lkt;->v:I

    if-ltz v0, :cond_1

    .line 7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Lkt;->z:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkt;->F:Lku;

    iget-object v0, v0, Lku;->e:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lks;

    iget-object v1, p0, Lkt;->F:Lku;

    iget-object v4, v1, Lku;->f:Ljava/lang/Object;

    if-nez v4, :cond_2

    iget-object v4, v1, Lku;->e:Landroid/content/Context;

    .line 11
    invoke-virtual {v1, v4}, Lku;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lku;->f:Ljava/lang/Object;

    :cond_2
    iget-object v1, v1, Lku;->f:Ljava/lang/Object;

    iget-object v4, p0, Lkt;->z:Ljava/lang/String;

    .line 12
    invoke-direct {v0, v1, v4}, Lks;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_1
    iget v0, p0, Lkt;->r:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 13
    instance-of v0, p1, Llr;

    if-eqz v0, :cond_5

    .line 14
    move-object v0, p1

    check-cast v0, Llr;

    invoke-virtual {v0, v3}, Llr;->j(Z)V

    goto :goto_2

    .line 15
    :cond_5
    instance-of v0, p1, Llx;

    if-eqz v0, :cond_7

    .line 16
    move-object v0, p1

    check-cast v0, Llx;

    :try_start_0
    iget-object v1, v0, Llx;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6

    iget-object v1, v0, Llx;->c:Leu;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "setExclusiveCheckable"

    .line 17
    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Llx;->d:Ljava/lang/reflect/Method;

    :cond_6
    iget-object v1, v0, Llx;->d:Ljava/lang/reflect/Method;

    iget-object v0, v0, Llx;->c:Leu;

    new-array v4, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 19
    const-string v1, "MenuItemWrapper"

    const-string v4, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_7
    :goto_2
    iget-object v0, p0, Lkt;->x:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 20
    sget-object v1, Lku;->a:[Ljava/lang/Class;

    iget-object v2, p0, Lkt;->F:Lku;

    iget-object v2, v2, Lku;->c:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lkt;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 21
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    goto :goto_3

    .line 23
    :cond_8
    nop

    .line 21
    :goto_3
    iget v0, p0, Lkt;->w:I

    if-lez v0, :cond_a

    if-nez v2, :cond_9

    .line 22
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 26
    :cond_9
    nop

    .line 23
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_a
    :goto_4
    iget-object v0, p0, Lkt;->A:Lgi;

    if-eqz v0, :cond_c

    .line 24
    instance-of v1, p1, Leu;

    if-eqz v1, :cond_b

    .line 25
    move-object v1, p1

    check-cast v1, Leu;

    invoke-interface {v1, v0}, Leu;->c(Lgi;)V

    goto :goto_5

    .line 29
    :cond_b
    nop

    .line 26
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_c
    :goto_5
    iget-object v0, p0, Lkt;->B:Ljava/lang/CharSequence;

    .line 27
    instance-of v1, p1, Leu;

    if-eqz v1, :cond_d

    .line 28
    move-object v2, p1

    check-cast v2, Leu;

    invoke-interface {v2, v0}, Leu;->b(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 29
    :cond_d
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 28
    :goto_6
    iget-object v0, p0, Lkt;->C:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    .line 30
    move-object v2, p1

    check-cast v2, Leu;

    invoke-interface {v2, v0}, Leu;->d(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 31
    :cond_e
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 30
    :goto_7
    iget-char v0, p0, Lkt;->n:C

    iget v2, p0, Lkt;->o:I

    if-eqz v1, :cond_f

    .line 32
    move-object v3, p1

    check-cast v3, Leu;

    invoke-interface {v3, v0, v2}, Leu;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_8

    .line 33
    :cond_f
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 32
    :goto_8
    iget-char v0, p0, Lkt;->p:C

    iget v2, p0, Lkt;->q:I

    if-eqz v1, :cond_10

    .line 34
    move-object v3, p1

    check-cast v3, Leu;

    invoke-interface {v3, v0, v2}, Leu;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_9

    .line 35
    :cond_10
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 34
    :goto_9
    iget-object v0, p0, Lkt;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_12

    if-eqz v1, :cond_11

    .line 36
    move-object v2, p1

    check-cast v2, Leu;

    invoke-interface {v2, v0}, Leu;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_a

    .line 37
    :cond_11
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 36
    :cond_12
    :goto_a
    iget-object v0, p0, Lkt;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14

    if-eqz v1, :cond_13

    .line 38
    check-cast p1, Leu;

    invoke-interface {p1, v0}, Leu;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-void

    .line 39
    :cond_13
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_14
    return-void
.end method
