.class public Lx/d;
.super Ljava/lang/Object;
.source "d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/d$Onb;
    }
.end annotation


# static fields
.field private static final COUNT:I = 0x5

.field private static final IDS:[I

.field private static final KEY_BG:Ljava/lang/String; = "bg_next"

.field private static final KEY_SEEN:Ljava/lang/String; = "onb_seen"

.field private static final PREFS:Ljava/lang/String; = "achour_tweaks"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    const v0, 0x7f0800bd

    const v1, 0x7f0800be

    const v2, 0x7f0800ba

    const v3, 0x7f0800bb

    const v4, 0x7f0800bc

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lx/d;->IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 21
    sget-object v0, Lx/d;->IDS:[I

    return-object v0
.end method

.method public static applyBgToView(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    invoke-static {}, Lx/n;->ok()Z
    move-result v0
    if-nez v0, :gate_pass
    return-void
    :gate_pass

    .line 53
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p0}, Lx/d;->nextBgId(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_1
    :goto_1
    return-void
.end method

.method public static maybeOnboard(Landroid/app/Activity;)V
    .locals 4
    invoke-static {}, Lx/n;->ok()Z
    move-result v3
    if-nez v3, :gate_pass
    return-void
    :gate_pass

    .line 89
    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    const-string v0, "achour_tweaks"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    const-string v2, "onb_seen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-static {p0, v0}, Lx/d;->showOnboarding(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 96
    :goto_0
    return-void
.end method

.method public static nextBgId(Landroid/content/Context;)I
    .locals 4

    .line 38
    const-string v0, "achour_tweaks"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 39
    const-string v0, "bg_next"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    const/4 v3, 0x5

    if-ltz v2, :cond_1

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 41
    :cond_1
    :goto_0
    sget-object v2, Lx/d;->IDS:[I

    aget v2, v2, v1

    .line 43
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 47
    :goto_1
    return v2
.end method

.method public static rotateActivityRoot(Landroid/app/Activity;)V
    .locals 3
    invoke-static {}, Lx/n;->ok()Z
    move-result v2
    if-nez v2, :gate_pass
    return-void
    :gate_pass

    .line 62
    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    nop

    .line 64
    const v0, 0x1020002

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lx/d;->applyBgToView(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 71
    :goto_1
    return-void
.end method

.method public static rotateViewById(Landroid/app/Activity;I)V
    .locals 1
    invoke-static {}, Lx/n;->ok()Z
    move-result v0
    if-nez v0, :gate_pass
    return-void
    :gate_pass

    .line 76
    if-nez p0, :cond_0

    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lx/d;->applyBgToView(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 80
    :goto_0
    return-void
.end method

.method private static showOnboarding(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .locals 16

    .line 99
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 100
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 102
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 105
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v2, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 120
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 128
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v11, "Previous"

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/16 v11, 0x65

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setId(I)V

    .line 133
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v14, Landroid/widget/Button;

    invoke-direct {v14, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 137
    const-string v11, "Next"

    invoke-virtual {v14, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/16 v11, 0x66

    invoke-virtual {v14, v11}, Landroid/widget/Button;->setId(I)V

    .line 139
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 143
    const-string v11, "Accept"

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/16 v11, 0x67

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setId(I)V

    .line 145
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 151
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 152
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 153
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 159
    :cond_0
    new-instance v0, Lx/d$Onb;

    move-object v6, v0

    move-object v7, v2

    move-object v9, v5

    move-object v10, v1

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lx/d$Onb;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/content/SharedPreferences;)V

    .line 160
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v0}, Lx/d$Onb;->refresh()V

    .line 164
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 165
    return-void
.end method
