.class public final Lcom/achour/tweaks/V7;
.super Ljava/lang/Object;
.source "V7.java"


# static fields
.field private static gridFor:Landroid/widget/ScrollView;

.field private static volatile myState:I

.field private static volatile myTransport:I

.field private static railClock:Landroid/widget/TextView;

.field private static railData:Landroid/widget/TextView;

.field private static railShown:Z

.field private static railStall:Landroid/widget/TextView;

.field private static final railTick:Ljava/lang/Runnable;

.field private static railTransport:Landroid/widget/TextView;

.field private static railView:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$sfgetrailShown()Z
    .locals 1

    sget-boolean v0, Lcom/achour/tweaks/V7;->railShown:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lcom/achour/tweaks/V7$2;

    invoke-direct {v0}, Lcom/achour/tweaks/V7$2;-><init>()V

    sput-object v0, Lcom/achour/tweaks/V7;->railTick:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWaitingBar(Landroid/app/Activity;)V
    .locals 5

    .line 155
    const v0, 0x1020002

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-void

    .line 157
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 158
    const/high16 v2, -0x4d000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 159
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 161
    const/16 v3, 0x10

    invoke-static {p0, v3}, Lcom/achour/tweaks/V7;->dp(Landroid/content/Context;I)I

    move-result p0

    .line 162
    invoke-virtual {v1, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    const/16 p0, 0x11

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    invoke-static {}, Lcom/achour/tweaks/V7;->waitText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 168
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance p0, Lcom/achour/tweaks/V7$1;

    invoke-direct {p0, v1}, Lcom/achour/tweaks/V7$1;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 179
    return-void
.end method

.method public static applyGridIfWide()V
    .locals 13

    .line 99
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V7;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_c

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    goto/16 :goto_5

    .line 103
    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v1

    const v1, 0x44898000    # 1100.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    return-void

    .line 104
    :cond_2
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7PanelScroll()Landroid/widget/ScrollView;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_b

    sget-object v2, Lcom/achour/tweaks/V7;->gridFor:Landroid/widget/ScrollView;

    if-ne v1, v2, :cond_3

    goto/16 :goto_4

    .line 106
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 107
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 108
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-nez v4, :cond_5

    return-void

    .line 109
    :cond_5
    check-cast v3, Landroid/widget/LinearLayout;

    .line 110
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 111
    const/4 v5, 0x2

    if-ge v4, v5, :cond_6

    return-void

    .line 112
    :cond_6
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7HeaderRow()Landroid/widget/TextView;

    move-result-object v5

    .line 113
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7LogRow()Landroid/widget/TextView;

    move-result-object v6

    .line 114
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7DiagRow()Landroid/widget/TextView;

    move-result-object v7

    .line 115
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    move v9, v2

    :goto_0
    if-ge v9, v4, :cond_7

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 117
    :cond_7
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    .line 121
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v12

    .line 120
    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 122
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 127
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 128
    if-eq v8, v5, :cond_9

    if-eq v8, v6, :cond_9

    if-ne v8, v7, :cond_8

    goto :goto_2

    .line 129
    :cond_8
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 128
    :cond_9
    :goto_2
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    :goto_3
    goto :goto_1

    .line 131
    :cond_a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3fa00000    # 1.25f

    const/4 v6, -0x2

    invoke-direct {v0, v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    sput-object v1, Lcom/achour/tweaks/V7;->gridFor:Landroid/widget/ScrollView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 105
    :cond_b
    :goto_4
    return-void

    .line 102
    :cond_c
    :goto_5
    return-void

    .line 139
    :catchall_0
    move-exception v0

    :goto_6
    nop

    .line 140
    return-void
.end method

.method static buildRail(Landroid/content/Context;)V
    .locals 4

    .line 252
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 254
    const/high16 v1, -0x4d000000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 255
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/achour/tweaks/V7;->dp(Landroid/content/Context;I)I

    move-result v2

    .line 256
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 257
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/achour/tweaks/V7;->railText(Landroid/content/Context;F)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/achour/tweaks/V7;->railClock:Landroid/widget/TextView;

    .line 258
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/achour/tweaks/V7;->railText(Landroid/content/Context;F)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/achour/tweaks/V7;->railTransport:Landroid/widget/TextView;

    .line 259
    invoke-static {p0, v2}, Lcom/achour/tweaks/V7;->railText(Landroid/content/Context;F)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/achour/tweaks/V7;->railData:Landroid/widget/TextView;

    .line 260
    invoke-static {p0, v2}, Lcom/achour/tweaks/V7;->railText(Landroid/content/Context;F)Landroid/widget/TextView;

    move-result-object p0

    sput-object p0, Lcom/achour/tweaks/V7;->railStall:Landroid/widget/TextView;

    .line 261
    const v2, -0xadae

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    sget-object p0, Lcom/achour/tweaks/V7;->railStall:Landroid/widget/TextView;

    const-string v2, "\u26a0 \u062a\u062c\u0645\u0651\u062f"

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    sget-object p0, Lcom/achour/tweaks/V7;->railStall:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    sget-object p0, Lcom/achour/tweaks/V7;->railClock:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    sget-object p0, Lcom/achour/tweaks/V7;->railTransport:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    sget-object p0, Lcom/achour/tweaks/V7;->railData:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    sget-object p0, Lcom/achour/tweaks/V7;->railStall:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    sput-object v0, Lcom/achour/tweaks/V7;->railView:Landroid/widget/LinearLayout;

    .line 269
    return-void
.end method

.method static clockNow()Ljava/lang/String;
    .locals 3

    .line 43
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    const-string v0, ""

    return-object v0
.end method

.method static ctx()Landroid/content/Context;
    .locals 1

    .line 28
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->v5Context()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method static dp(Landroid/content/Context;I)I
    .locals 1

    .line 36
    int-to-float v0, p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 37
    :catchall_0
    move-exception p0

    return p1
.end method

.method static evalRail()V
    .locals 1

    .line 247
    invoke-static {}, Lcom/achour/tweaks/V7;->railWanted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/achour/tweaks/V7;->showRail()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lcom/achour/tweaks/V7;->hideRail()V

    .line 249
    :goto_0
    return-void
.end method

.method static hideRail()V
    .locals 2

    .line 309
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V7;->mainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    sget-object v1, Lcom/achour/tweaks/V7;->railTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    :cond_0
    sget-boolean v0, Lcom/achour/tweaks/V7;->railShown:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/achour/tweaks/V7;->railView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lcom/achour/tweaks/V7;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_1

    .line 314
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 315
    if-eqz v0, :cond_1

    sget-object v1, Lcom/achour/tweaks/V7;->railView:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 319
    const/4 v0, 0x0

    sput-boolean v0, Lcom/achour/tweaks/V7;->railShown:Z

    .line 320
    return-void
.end method

.method static mainHandler()Landroid/os/Handler;
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static onAction(I)V
    .locals 6

    .line 70
    const-string v0, "rail_always"

    const-string v1, "rail"

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 71
    :try_start_0
    const-string p0, "screen_mode"

    invoke-static {}, Lcom/achour/tweaks/V7;->screenMode()I

    move-result v0

    add-int/2addr v0, v3

    rem-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/achour/tweaks/V6;->pi(Ljava/lang/String;I)V

    .line 72
    const-string p0, "\u064a\u064f\u0637\u0628\u064e\u0651\u0642 \u0639\u0644\u0649 \u0627\u0644\u062c\u0644\u0633\u0629 \u0627\u0644\u0642\u0627\u062f\u0645\u0629"

    invoke-static {p0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :catchall_0
    move-exception p0

    goto :goto_3

    .line 73
    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p0, v4, :cond_2

    .line 74
    invoke-static {v1, v3}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-static {v1, v3}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V

    goto :goto_2

    .line 75
    :cond_2
    if-ne p0, v2, :cond_4

    .line 76
    invoke-static {v0, v5}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    invoke-static {v0, v3}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V

    .line 78
    :cond_4
    :goto_2
    invoke-static {}, Lcom/achour/tweaks/V7;->refreshRows()V

    .line 79
    invoke-static {}, Lcom/achour/tweaks/V7;->evalRail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_3
    nop

    .line 81
    return-void
.end method

.method static onOff(Z)Ljava/lang/String;
    .locals 0

    .line 40
    if-eqz p0, :cond_0

    const-string p0, "\u0645\u0641\u0639\u0651\u0644"

    goto :goto_0

    :cond_0
    const-string p0, "\u0645\u0639\u0637\u0651\u0644"

    :goto_0
    return-object p0
.end method

.method public static onStatus(IIILandroid/car/projection/ProjectionStatus;)V
    .locals 0

    .line 223
    :try_start_0
    sput p1, Lcom/achour/tweaks/V7;->myState:I

    .line 224
    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    :cond_0
    sput p2, Lcom/achour/tweaks/V7;->myTransport:I

    .line 225
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V7;->mainHandler()Landroid/os/Handler;

    move-result-object p0

    .line 226
    if-nez p0, :cond_2

    return-void

    .line 227
    :cond_2
    new-instance p2, Lcom/achour/tweaks/V7$3;

    invoke-direct {p2, p1}, Lcom/achour/tweaks/V7$3;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 236
    return-void
.end method

.method public static onStatusSafe(IIILandroid/car/projection/ProjectionStatus;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/achour/tweaks/V7;->onStatus(IIILandroid/car/projection/ProjectionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method static railText(Landroid/content/Context;F)Landroid/widget/TextView;
    .locals 2

    .line 272
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 275
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 276
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    return-object v0
.end method

.method static railWanted()Z
    .locals 5

    .line 240
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "rail"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 241
    :cond_0
    sget v1, Lcom/achour/tweaks/V7;->myState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    sget v1, Lcom/achour/tweaks/V7;->myState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    return v0

    .line 242
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V7;->screenMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "rail_always"

    invoke-static {v1, v0}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    .line 243
    :catchall_0
    move-exception v1

    return v0
.end method

.method static refreshRailTexts()V
    .locals 9

    .line 324
    :try_start_0
    sget-object v0, Lcom/achour/tweaks/V7;->railView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    sget-object v0, Lcom/achour/tweaks/V7;->railClock:Landroid/widget/TextView;

    invoke-static {}, Lcom/achour/tweaks/V7;->clockNow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    sget-object v0, Lcom/achour/tweaks/V7;->railTransport:Landroid/widget/TextView;

    sget v1, Lcom/achour/tweaks/V7;->myTransport:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "\u2014"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    :try_start_1
    const-string v1, "USB"

    goto :goto_0

    :cond_1
    sget v1, Lcom/achour/tweaks/V7;->myTransport:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const-string v1, "\u0644\u0627\u0633\u0644\u0643\u064a"

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    nop

    .line 328
    :try_start_2
    invoke-static {}, Lcom/achour/tweaks/V6;->sessionBytes()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-wide/16 v0, -0x1

    .line 329
    :goto_1
    :try_start_3
    sget-object v4, Lcom/achour/tweaks/V7;->railData:Landroid/widget/TextView;

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    const/4 v6, 0x0

    if-gez v5, :cond_3

    goto :goto_2

    .line 330
    :cond_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1fMB"

    new-array v3, v3, [Ljava/lang/Object;

    long-to-double v0, v0

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 329
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    sget-object v0, Lcom/achour/tweaks/V7;->railStall:Landroid/widget/TextView;

    const-string v1, "stall_flag"

    invoke-static {v1, v6}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 332
    :catchall_1
    move-exception v0

    :goto_4
    nop

    .line 333
    return-void
.end method

.method public static refreshRows()V
    .locals 4

    .line 85
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7ScreenModeRow()Landroid/widget/TextView;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/achour/tweaks/V7;->screenModeLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7RailRow()Landroid/widget/TextView;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    const-string v1, "rail"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/achour/tweaks/V7;->onOff(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0627\u0644\u0634\u0631\u064a\u0637 \u0627\u0644\u062c\u0627\u0646\u0628\u064a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v7RailAlwaysRow()Landroid/widget/TextView;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    const-string v1, "rail_always"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/achour/tweaks/V7;->onOff(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0627\u0644\u0634\u0631\u064a\u0637 \u062f\u0627\u0626\u0645\u0627\u064b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :cond_2
    :goto_0
    nop

    .line 92
    return-void
.end method

.method public static screenH(I)I
    .locals 2

    .line 56
    invoke-static {}, Lcom/achour/tweaks/V7;->screenMode()I

    move-result v0

    .line 57
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 p0, 0x2d0

    :cond_1
    return p0
.end method

.method public static screenMode()I
    .locals 2

    .line 48
    const-string v0, "screen_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gi(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static screenModeLabel()Ljava/lang/String;
    .locals 2

    .line 61
    invoke-static {}, Lcom/achour/tweaks/V7;->screenMode()I

    move-result v0

    .line 62
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u0648\u0636\u0639 \u0627\u0644\u0634\u0627\u0634\u0629: \u0623\u0635\u0644\u064a 1920x720"

    return-object v0

    .line 63
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\u0648\u0636\u0639 \u0627\u0644\u0634\u0627\u0634\u0629: \u0642\u064a\u0627\u0633\u064a 1280x720"

    return-object v0

    .line 64
    :cond_1
    const-string v0, "\u0648\u0636\u0639 \u0627\u0644\u0634\u0627\u0634\u0629: \u062a\u0644\u0642\u0627\u0626\u064a"

    return-object v0
.end method

.method public static screenW(I)I
    .locals 2

    .line 51
    invoke-static {}, Lcom/achour/tweaks/V7;->screenMode()I

    move-result v0

    .line 52
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 p0, 0x780

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 p0, 0x500

    :cond_1
    :goto_0
    return p0
.end method

.method static showRail()V
    .locals 9

    .line 283
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V7;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 284
    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 286
    if-nez v1, :cond_1

    return-void

    .line 287
    :cond_1
    sget-object v2, Lcom/achour/tweaks/V7;->railView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/achour/tweaks/V7;->buildRail(Landroid/content/Context;)V

    .line 288
    :cond_2
    invoke-static {}, Lcom/achour/tweaks/V7;->refreshRailTexts()V

    .line 289
    sget-boolean v2, Lcom/achour/tweaks/V7;->railShown:Z

    if-nez v2, :cond_3

    .line 290
    const/16 v6, 0x7d2

    .line 291
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 292
    const/16 v3, 0x6e

    invoke-static {v0, v3}, Lcom/achour/tweaks/V7;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, -0x1

    const/16 v7, 0x218

    const/4 v8, -0x3

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 293
    const/16 v0, 0x35

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 294
    const/4 v0, 0x0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 295
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 296
    sget-object v0, Lcom/achour/tweaks/V7;->railView:Landroid/widget/LinearLayout;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    const/4 v0, 0x1

    sput-boolean v0, Lcom/achour/tweaks/V7;->railShown:Z

    .line 298
    invoke-static {}, Lcom/achour/tweaks/V7;->mainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_3

    .line 300
    sget-object v1, Lcom/achour/tweaks/V7;->railTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    :cond_3
    :goto_0
    nop

    .line 305
    return-void
.end method

.method public static splashRes(Landroid/content/Context;)I
    .locals 1

    .line 145
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x5dc

    if-lt p0, v0, :cond_0

    .line 146
    const p0, 0x7f0800b9

    return p0

    .line 148
    :catchall_0
    move-exception p0

    :cond_0
    nop

    .line 149
    const p0, 0x7f0800b8

    return p0
.end method

.method static waitText()Ljava/lang/String;
    .locals 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v1, "\ud83d\udd50 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/achour/tweaks/V7;->clockNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " \u00b7 \u0641\u064a \u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 \u00b7 \u0627\u0644\u0634\u0628\u0643\u0629: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    nop

    .line 186
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/P;->ssid()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v2, v1

    .line 187
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    :cond_0
    const-string v2, "AndroidAuto_CAR9"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :try_start_1
    invoke-static {}, Lcom/achour/tweaks/V5;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    if-nez v2, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    const-string v1, "connlog"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 191
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 192
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 193
    const-string v3, " \u00b7 \u0622\u062e\u0631 \u0645\u062d\u0627\u0648\u0644\u0629: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ltz v2, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 195
    :catchall_1
    move-exception v1

    :cond_4
    :goto_3
    nop

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
