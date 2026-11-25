.class public Ljf;
.super Lbv;
.source "PG"

# interfaces
.implements Ldp;


# instance fields
.field private l:Ljg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbv;-><init>()V

    .line 2
    invoke-virtual {p0}, Ltk;->D()Laev;

    move-result-object v0

    new-instance v1, Ljd;

    invoke-direct {v1, p0}, Ljd;-><init>(Ljf;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Laev;->b(Ljava/lang/String;Laeu;)V

    new-instance v0, Lje;

    invoke-direct {v0, p0}, Lje;-><init>(Ljf;)V

    .line 3
    invoke-virtual {p0, v0}, Ltk;->j(Ltq;)V

    return-void
.end method

.method private final l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljf;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lxr;->b(Landroid/view/View;Lzq;)V

    .line 2
    invoke-virtual {p0}, Ljf;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lxs;->b(Landroid/view/View;Laak;)V

    .line 3
    invoke-virtual {p0}, Ljf;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lew;->r(Landroid/view/View;Laex;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {p0}, Lr;->q(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljf;->l()V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljg;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    check-cast v0, Ljw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljw;->y:Z

    invoke-virtual {v0}, Ljw;->o()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljw;->p(Landroid/content/Context;I)I

    move-result v1

    sget-boolean v2, Ljw;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {v0, p1, v1, v3}, Ljw;->r(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 3
    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-virtual {v4, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 64
    :catch_0
    move-exception v2

    .line 5
    :cond_0
    instance-of v2, p1, Lue;

    if-eqz v2, :cond_1

    .line 1
    invoke-virtual {v0, p1, v1, v3}, Ljw;->r(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6
    :try_start_1
    move-object v4, p1

    check-cast v4, Lue;

    invoke-virtual {v4, v2}, Lue;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 64
    :catch_1
    move-exception v2

    .line 6
    :cond_1
    sget-boolean v2, Ljw;->c:Z

    if-eqz v2, :cond_1b

    new-instance v2, Landroid/content/res/Configuration;

    .line 7
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    .line 8
    iput v4, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 9
    const/4 v4, 0x0

    iput v4, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 13
    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    iput v6, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 14
    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_18

    new-instance v3, Landroid/content/res/Configuration;

    .line 15
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 16
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    if-eqz v5, :cond_18

    .line 17
    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 18
    :cond_2
    iget v4, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v6, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_3

    .line 19
    iget v4, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 20
    :cond_3
    iget v4, v2, Landroid/content/res/Configuration;->mcc:I

    iget v6, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v4, v6, :cond_4

    .line 21
    iget v4, v5, Landroid/content/res/Configuration;->mcc:I

    iput v4, v3, Landroid/content/res/Configuration;->mcc:I

    .line 22
    :cond_4
    iget v4, v2, Landroid/content/res/Configuration;->mnc:I

    iget v6, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v4, v6, :cond_5

    .line 23
    iget v4, v5, Landroid/content/res/Configuration;->mnc:I

    iput v4, v3, Landroid/content/res/Configuration;->mnc:I

    .line 24
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 25
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 26
    invoke-virtual {v4, v6}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 27
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 28
    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    :cond_6
    iget v4, v2, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v4, v6, :cond_7

    .line 30
    iget v4, v5, Landroid/content/res/Configuration;->touchscreen:I

    iput v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    .line 31
    :cond_7
    iget v4, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v4, v6, :cond_8

    .line 32
    iget v4, v5, Landroid/content/res/Configuration;->keyboard:I

    iput v4, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 33
    :cond_8
    iget v4, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v4, v6, :cond_9

    .line 34
    iget v4, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 35
    :cond_9
    iget v4, v2, Landroid/content/res/Configuration;->navigation:I

    iget v6, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v4, v6, :cond_a

    .line 36
    iget v4, v5, Landroid/content/res/Configuration;->navigation:I

    iput v4, v3, Landroid/content/res/Configuration;->navigation:I

    .line 37
    :cond_a
    iget v4, v2, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v4, v6, :cond_b

    .line 38
    iget v4, v5, Landroid/content/res/Configuration;->navigationHidden:I

    iput v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    .line 39
    :cond_b
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v6, :cond_c

    .line 40
    iget v4, v5, Landroid/content/res/Configuration;->orientation:I

    iput v4, v3, Landroid/content/res/Configuration;->orientation:I

    .line 41
    :cond_c
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    if-eq v4, v6, :cond_d

    .line 42
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 43
    :cond_d
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0xc0

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    if-eq v4, v6, :cond_e

    .line 44
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 45
    :cond_e
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    if-eq v4, v6, :cond_f

    .line 46
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 47
    :cond_f
    iget v4, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v4, v4, 0x300

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    if-eq v4, v6, :cond_10

    .line 48
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 49
    :cond_10
    iget v4, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    if-eq v4, v6, :cond_11

    .line 50
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->colorMode:I

    .line 51
    :cond_11
    iget v4, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    if-eq v4, v6, :cond_12

    .line 52
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->colorMode:I

    .line 53
    :cond_12
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    if-eq v4, v6, :cond_13

    .line 54
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 55
    :cond_13
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    if-eq v4, v6, :cond_14

    .line 56
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    or-int/2addr v4, v6

    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 57
    :cond_14
    iget v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v4, v6, :cond_15

    .line 58
    iget v4, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 59
    :cond_15
    iget v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v4, v6, :cond_16

    .line 60
    iget v4, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 61
    :cond_16
    iget v4, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v4, v6, :cond_17

    .line 62
    iget v4, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 63
    :cond_17
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_18

    .line 64
    iget v2, v5, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v3, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_0

    :cond_18
    nop

    .line 1
    :goto_0
    invoke-virtual {v0, p1, v1, v3}, Ljw;->r(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Lue;

    const v2, 0x7f110154

    .line 65
    invoke-direct {v1, p1, v2}, Lue;-><init>(Landroid/content/Context;I)V

    .line 66
    invoke-virtual {v1, v0}, Lue;->a(Landroid/content/res/Configuration;)V

    .line 67
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1a

    .line 68
    invoke-virtual {v1}, Lue;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_19

    .line 69
    invoke-static {p1}, Led;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 70
    :cond_19
    invoke-static {p1}, Lec;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_1a
    goto :goto_1

    .line 64
    :catch_2
    move-exception p1

    .line 1
    :goto_1
    move-object p1, v1

    :cond_1b
    :goto_2
    invoke-super {p0, p1}, Lbv;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljf;->f()Liv;

    .line 2
    invoke-virtual {p0}, Ljf;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, Lbv;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->e()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    invoke-virtual {p0}, Ljf;->f()Liv;

    .line 3
    invoke-super {p0, p1}, Lbv;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final f()Liv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->a()Liv;

    move-result-object v0

    return-object v0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljg;
    .locals 2

    .line 1
    iget-object v0, p0, Ljf;->l:Ljg;

    if-nez v0, :cond_0

    new-instance v0, Ljw;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1, p0}, Ljw;-><init>(Landroid/content/Context;Landroid/view/Window;Ljava/lang/Object;)V

    iput-object v0, p0, Ljf;->l:Ljg;

    :cond_0
    iget-object v0, p0, Ljf;->l:Ljg;

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    check-cast v0, Ljw;

    iget-object v1, v0, Ljw;->i:Landroid/view/MenuInflater;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljw;->B()V

    .line 2
    new-instance v1, Lku;

    .line 1
    iget-object v2, v0, Ljw;->h:Liv;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Liv;->a()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 1
    :cond_0
    iget-object v2, v0, Ljw;->f:Landroid/content/Context;

    .line 3
    :goto_0
    invoke-direct {v1, v2}, Lku;-><init>(Landroid/content/Context;)V

    .line 1
    iput-object v1, v0, Ljw;->i:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, v0, Ljw;->i:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public h()Z
    .locals 6

    .line 1
    invoke-static {p0}, Lr;->q(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Ldq;

    .line 4
    invoke-direct {v0, p0}, Ldq;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-interface {p0}, Ldp;->a()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {p0}, Lr;->q(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, v0, Ldq;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    :cond_1
    iget-object v4, v0, Ldq;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :try_start_0
    iget-object v5, v0, Ldq;->b:Landroid/content/Context;

    .line 10
    invoke-static {v5, v3}, Lr;->r(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, v0, Ldq;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v5, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, v0, Ldq;->b:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v5, v3}, Lr;->r(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    iget-object v3, v0, Ldq;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :catch_0
    move-exception v0

    .line 21
    const-string v1, "TaskStackBuilder"

    const-string v2, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_3
    :goto_1
    iget-object v2, v0, Ldq;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    iget-object v2, v0, Ldq;->a:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    .line 17
    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v0, v0, Ldq;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v2, v1}, Lxq;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 19
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 20
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljf;->finish()V

    goto :goto_2

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 19
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 3
    :cond_6
    return v1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->e()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lbv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object p1

    check-cast p1, Ljw;

    iget-boolean v0, p1, Ljw;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Ljw;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljw;->a()Liv;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lkh;

    iget-object v1, v0, Lkh;->a:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lhl;->k(Landroid/content/Context;)Z

    move-result v1

    .line 2
    nop

    .line 3
    invoke-virtual {v0, v1}, Lkh;->i(Z)V

    .line 4
    :cond_0
    invoke-static {}, Lnn;->d()Lnn;

    move-result-object v0

    .line 2
    iget-object v1, p1, Ljw;->f:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, v1}, Lnn;->e(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljw;->K(Z)V

    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbv;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->f()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lbv;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljf;->f()Liv;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    check-cast p1, Lkh;

    iget-object p1, p1, Lkh;->d:Lot;

    .line 4
    invoke-interface {p1}, Lot;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljf;->h()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lbv;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object p1

    check-cast p1, Ljw;

    invoke-virtual {p1}, Ljw;->A()V

    return-void
.end method

.method protected final onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbv;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    check-cast v0, Ljw;

    invoke-virtual {v0}, Ljw;->a()Liv;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Liv;->e(Z)V

    :cond_0
    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbv;->onStart()V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    check-cast v0, Ljw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljw;->z:Z

    invoke-virtual {v0}, Ljw;->G()V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbv;->onStop()V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0}, Ljg;->g()V

    return-void
.end method

.method protected final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lbv;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljg;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljf;->f()Liv;

    .line 2
    invoke-virtual {p0}, Ljf;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0}, Lbv;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljf;->l()V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->i(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljf;->l()V

    .line 4
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljg;->j(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljf;->l()V

    .line 6
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljg;->k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lbv;->setTheme(I)V

    .line 2
    invoke-virtual {p0}, Ljf;->g()Ljg;

    move-result-object v0

    check-cast v0, Ljw;

    iput p1, v0, Ljw;->B:I

    return-void
.end method
