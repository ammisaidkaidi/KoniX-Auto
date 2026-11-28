.class public final Lx/b;
.super Ljava/lang/Object;
.source "b.java"


# static fields
.field private static final ACCENT:I = -0xd07f13

.field private static final BG:I = -0x19efe7dc

.field private static final CARD:I = -0xe9dfd2

.field private static final SUB:I = -0x604c38

.field private static final TXT:I = -0x1

.field private static accentRow:Landroid/widget/TextView;

.field private static advRow:Landroid/widget/TextView;

.field private static appRow:Landroid/widget/TextView;

.field private static autohideRow:Landroid/widget/TextView;

.field private static autostallRow:Landroid/widget/TextView;

.field private static backupRow:Landroid/widget/TextView;

.field private static bubbleLp:Landroid/view/WindowManager$LayoutParams;

.field private static bubbleSizeRow:Landroid/widget/TextView;

.field private static bubbleView:Landroid/widget/TextView;

.field private static connectRow:Landroid/widget/TextView;

.field private static credRow:Landroid/widget/TextView;

.field private static ctx:Landroid/content/Context;

.field private static diagRow:Landroid/widget/TextView;

.field private static disconnectRow:Landroid/widget/TextView;

.field private static fontScaleRow:Landroid/widget/TextView;

.field private static fpsRow:Landroid/widget/TextView;

.field private static headerRow:Landroid/widget/TextView;

.field private static logRow:Landroid/widget/TextView;

.field private static modeRow:Landroid/widget/TextView;

.field private static panelLp:Landroid/view/WindowManager$LayoutParams;

.field private static panelScroll:Landroid/widget/ScrollView;

.field private static panelView:Landroid/widget/LinearLayout;

.field private static prefPhoneRow:Landroid/widget/TextView;

.field private static presetDeleteRow:Landroid/widget/TextView;

.field private static presetNameBox:Landroid/widget/EditText;

.field private static presetSaveRow:Landroid/widget/TextView;

.field private static pskBox:Landroid/widget/EditText;

.field private static quietRow:Landroid/widget/TextView;

.field private static railAlwaysRow:Landroid/widget/TextView;

.field private static railRow:Landroid/widget/TextView;

.field private static repairNowRow:Landroid/widget/TextView;

.field private static repairRow:Landroid/widget/TextView;

.field private static resetRow:Landroid/widget/TextView;

.field private static restoreRow:Landroid/widget/TextView;

.field private static retryRow:Landroid/widget/TextView;

.field private static screenModeRow:Landroid/widget/TextView;

.field private static soundsRow:Landroid/widget/TextView;

.field private static ssidBox:Landroid/widget/EditText;

.field private static started:Z

.field private static usbRow:Landroid/widget/TextView;

.field private static wifiRow:Landroid/widget/TextView;

.field private static wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 25
    invoke-static {}, Lx/b;->show()V

    return-void
.end method

.method static synthetic access$100()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->bubbleLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/widget/LinearLayout;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->panelView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 25
    sput-object p0, Lx/b;->panelView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1102(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .locals 0

    .line 25
    sput-object p0, Lx/b;->panelScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 25
    invoke-static {p0}, Lx/b;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->bubbleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/WindowManager;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->wm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 25
    invoke-static {}, Lx/b;->togglePanel()V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .line 25
    invoke-static {}, Lx/b;->refresh()V

    return-void
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/EditText;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->ssidBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/EditText;
    .locals 1

    .line 25
    sget-object v0, Lx/b;->pskBox:Landroid/widget/EditText;

    return-object v0
.end method

.method private static bg(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 59
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 61
    invoke-static {p1}, Lx/b;->dp(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    if-lez p3, :cond_0

    invoke-static {p3}, Lx/b;->dp(I)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 63
    :cond_0
    return-object v0
.end method

.method private static card(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .line 136
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-static {}, Lx/i;->cardTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    const/16 v1, 0xe

    invoke-static {v1}, Lx/b;->dp(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v4

    invoke-static {v1}, Lx/b;->dp(I)I

    move-result v1

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    const v1, -0xe9dfd2

    const/16 v2, 0xa

    invoke-static {}, Lx/i;->cardBorder()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lx/b;->bg(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, p0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    const/4 p0, 0x6

    invoke-static {p0}, Lx/b;->dp(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 146
    return-object v0
.end method

.method private static dp(I)I
    .locals 1

    .line 55
    int-to-float p0, p0

    sget-object v0, Lx/b;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static refresh()V
    .locals 7

    .line 150
    invoke-static {}, Lx/a;->fps()I

    move-result v0

    .line 151
    if-nez v0, :cond_0

    const-string v0, "\u062a\u0644\u0642\u0627\u0626\u064a"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    sget-object v1, Lx/b;->fpsRow:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0645\u0639\u062f\u0644 \u0627\u0644\u0625\u0637\u0627\u0631\u0627\u062a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget-object v0, Lx/b;->advRow:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0625\u0639\u0644\u0627\u0646 \u0642\u0646\u0648\u0627\u062a 5GHz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lx/a;->adv5()Z

    move-result v2

    const-string v3, "\u0645\u0641\u0639\u0651\u0644"

    const-string v4, "\u0645\u0639\u0637\u0651\u0644"

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget-object v0, Lx/b;->modeRow:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-static {}, Lx/a;->usb()Z

    move-result v1

    invoke-static {}, Lx/a;->wifi()Z

    move-result v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    const-string v5, "\u0627\u0644\u0643\u0644 (USB + \u0644\u0627\u0633\u0644\u0643\u064a)"

    goto :goto_2

    :cond_2
    const-string v5, "USB \u0641\u0642\u0637"

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const-string v5, "\u0644\u0627\u0633\u0644\u0643\u064a \u0641\u0642\u0637"

    goto :goto_2

    :cond_4
    const-string v5, "\u0628\u062f\u0648\u0646 \u0627\u062a\u0635\u0627\u0644"

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0648\u0636\u0639 \u0627\u0644\u0627\u062a\u0635\u0627\u0644: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_5
    sget-object v0, Lx/b;->appRow:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062d\u0627\u0644\u0629 \u0627\u0644\u062a\u0637\u0628\u064a\u0642: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lx/a;->enabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u064a\u0639\u0645\u0644"

    goto :goto_3

    :cond_6
    const-string v2, "\u0645\u062a\u0648\u0642\u0641"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_7
    sget-object v0, Lx/b;->repairRow:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0625\u0635\u0644\u0627\u062d \u0627\u0644\u0627\u0642\u062a\u0631\u0627\u0646 \u062a\u0644\u0642\u0627\u0626\u064a\u0627\u064b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lx/a;->autoRepair()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v3

    goto :goto_4

    :cond_8
    move-object v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_9
    invoke-static {}, Lx/a;->suppressedLeftMs()J

    move-result-wide v0

    .line 159
    sget-object v2, Lx/b;->retryRow:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lx/a;->autoRetry()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move-object v3, v4

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 161
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  (\u0645\u0648\u0642\u0648\u0641\u0629 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u062b)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    const-string v0, ""

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_c
    invoke-static {}, Lx/a;->ssid()Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_e

    :cond_d
    const-string v0, "\u0076\u0059\u0053\u0045\u0058\u005e\u0053\u0076\u0042\u0043\u0058\u0068\u0074\u0076\u0065\u000e"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    .line 165
    :cond_e
    invoke-static {}, Lx/a;->psk()Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_10

    :cond_f
    const-string v1, "AAWireless2026"

    .line 167
    :cond_10
    sget-object v2, Lx/b;->credRow:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0627\u0633\u0645 \u0627\u0644\u0634\u0628\u0643\u0629: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget-object v2, Lx/b;->ssidBox:Landroid/widget/EditText;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lx/b;->ssidBox:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 169
    :cond_11
    sget-object v0, Lx/b;->pskBox:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lx/b;->pskBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 170
    :cond_12
    sget-object v0, Lx/b;->headerRow:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lx/g;->headerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lx/i;->headerExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    sget-object v0, Lx/b;->logRow:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    invoke-static {}, Lx/g;->logText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    sget-object v0, Lx/b;->diagRow:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-static {}, Lx/g;->diagLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    sget-object v0, Lx/b;->autohideRow:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    invoke-static {}, Lx/i;->autohideLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    sget-object v0, Lx/b;->soundsRow:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    invoke-static {}, Lx/i;->soundsLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    sget-object v0, Lx/b;->autostallRow:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    invoke-static {}, Lx/i;->autostallLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    sget-object v0, Lx/b;->accentRow:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    invoke-static {}, Lx/i;->accentLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    sget-object v0, Lx/b;->bubbleSizeRow:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    invoke-static {}, Lx/i;->bubbleSizeLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    sget-object v0, Lx/b;->fontScaleRow:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    invoke-static {}, Lx/i;->fontScaleLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    sget-object v0, Lx/b;->presetDeleteRow:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    invoke-static {}, Lx/i;->deleteLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    sget-object v0, Lx/b;->prefPhoneRow:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    invoke-static {}, Lx/i;->prefPhoneLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    invoke-static {}, Lx/l;->refreshRows()V

    return-void
.end method

.method private static show()V
    .locals 11

    .line 68
    const-string v0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lx/b;->started:Z

    if-eqz v2, :cond_0

    return-void

    .line 69
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    sget-object v2, Lx/b;->ctx:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 70
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: canDrawOverlays="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bubblePref="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lx/a;->bubble()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " fps="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lx/a;->fps()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-nez v2, :cond_3

    .line 72
    sget-object v2, Lx/b;->ctx:Landroid/content/Context;

    const-string v3, "\u0627\u0645\u0646\u062d \'\u0627\u0644\u0638\u0647\u0648\u0631 \u0641\u0648\u0642 \u0627\u0644\u062a\u0637\u0628\u064a\u0642\u0627\u062a\' \u062b\u0645 \u0623\u0639\u062f \u0641\u062a\u062d \u0627\u0644\u062a\u0637\u0628\u064a\u0642"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lx/b;->ctx:Landroid/content/Context;

    .line 74
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void

    .line 79
    :cond_3
    sget-object v2, Lx/b;->ctx:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    sput-object v2, Lx/b;->wm:Landroid/view/WindowManager;

    .line 80
    if-nez v2, :cond_4

    return-void

    .line 82
    :cond_4
    new-instance v2, Landroid/widget/TextView;

    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lx/b;->bubbleView:Landroid/widget/TextView;

    .line 83
    const-string v3, "\u2699"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget-object v2, Lx/b;->bubbleView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    sget-object v2, Lx/b;->bubbleView:Landroid/widget/TextView;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    sget-object v2, Lx/b;->bubbleView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    sget-object v2, Lx/b;->bubbleView:Landroid/widget/TextView;

    const v3, -0xd07f13

    const/16 v5, 0x1c

    const v6, 0x66ffffff

    invoke-static {v3, v5, v6, v4}, Lx/b;->bg(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_5

    .line 90
    const/16 v2, 0x7f6

    move v8, v2

    goto :goto_2

    .line 91
    :cond_5
    const/16 v2, 0x7d2

    move v8, v2

    .line 92
    :goto_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lx/i;->bubbleSizeDp()I

    move-result v3

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v6

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v7

    const/16 v9, 0x208

    const/4 v10, -0x3

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v2, Lx/b;->bubbleLp:Landroid/view/WindowManager$LayoutParams;

    .line 96
    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    sget-object v2, Lx/b;->bubbleLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x10

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    sget-object v2, Lx/b;->bubbleLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x78

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v6, Lx/b;->ctx:Landroid/content/Context;

    const/4 v7, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    goto :goto_3

    :catch_0
    move-exception v7

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    move-object v6, v7

    :cond_6
    const-string v7, "achour_tweaks"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const/high16 v9, -0x80000000

    const-string v7, "bubble_x"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v9, :cond_7

    const-string v8, "bubble_y"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_7

    sget-object v6, Lx/b;->bubbleLp:Landroid/view/WindowManager$LayoutParams;

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 100
    :cond_7
    sget-object v2, Lx/b;->bubbleView:Landroid/widget/TextView;

    new-instance v3, Lx/b$2;

    invoke-direct {v3}, Lx/b$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    sget-object v2, Lx/b;->wm:Landroid/view/WindowManager;

    sget-object v3, Lx/b;->bubbleView:Landroid/widget/TextView;

    sget-object v5, Lx/b;->bubbleLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    sput-boolean v4, Lx/b;->started:Z

    .line 128
    const-string v2, "bubble added to WindowManager"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx/i;->onBubbleShown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    goto :goto_4

    .line 129
    :catchall_0
    move-exception v2

    .line 130
    sput-boolean v1, Lx/b;->started:Z

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bubble failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_4
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    invoke-static {}, Lx/n;->ok()Z
    move-result v1
    if-nez v1, :gate_pass
    return-void
    :gate_pass

    .line 43
    if-nez p0, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lx/b;->ctx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {p0}, Lx/a;->init(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lx/a;->bubble()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 47
    :cond_1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lx/b$1;

    invoke-direct {v0}, Lx/b$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void

    .line 44
    :catchall_0
    move-exception p0

    return-void
.end method

.method public static stopped()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lx/b;->started:Z

    return-void
.end method

.method private static togglePanel()V
    .locals 13

    .line 174
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lx/b;->panelView:Landroid/widget/LinearLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 175
    :try_start_1
    sget-object v0, Lx/b;->wm:Landroid/view/WindowManager;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 176
    :goto_0
    :try_start_2
    sput-object v1, Lx/b;->panelView:Landroid/widget/LinearLayout;

    sput-object v1, Lx/b;->panelScroll:Landroid/widget/ScrollView;

    .line 177
    return-void

    .line 179
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    const/16 v3, 0x14

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v4

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v5

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v6

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 182
    const v3, -0x19efe7dc

    const/16 v4, 0x10

    const v5, -0xc5842b

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lx/b;->bg(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    new-instance v3, Landroid/widget/TextView;

    sget-object v4, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    const-string v4, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a KoniX-Auto \u2014 by Achour Brahim"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {}, Lx/i;->titleColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-static {}, Lx/i;->titleTextSize()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->headerRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->fpsRow:Landroid/widget/TextView;

    .line 191
    new-instance v5, Lx/b$3;

    invoke-direct {v5}, Lx/b$3;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget-object v3, Lx/b;->fpsRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->advRow:Landroid/widget/TextView;

    .line 202
    new-instance v5, Lx/b$4;

    invoke-direct {v5}, Lx/b$4;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    sget-object v3, Lx/b;->advRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->modeRow:Landroid/widget/TextView;

    .line 208
    new-instance v5, Lx/b$15;

    invoke-direct {v5}, Lx/b$15;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget-object v3, Lx/b;->modeRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->appRow:Landroid/widget/TextView;

    .line 220
    new-instance v5, Lx/b$7;

    invoke-direct {v5}, Lx/b$7;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget-object v3, Lx/b;->appRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->retryRow:Landroid/widget/TextView;

    .line 231
    new-instance v5, Lx/b$8;

    invoke-direct {v5}, Lx/b$8;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    sget-object v3, Lx/b;->retryRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->repairRow:Landroid/widget/TextView;

    .line 237
    new-instance v5, Lx/b$9;

    invoke-direct {v5}, Lx/b$9;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget-object v3, Lx/b;->repairRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    const-string v3, "\u0625\u0639\u0627\u062f\u0629 \u0627\u0642\u062a\u0631\u0627\u0646 \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b \u0627\u0644\u0622\u0646 (\u0625\u0635\u0644\u0627\u062d \u0627\u0644\u0644\u0627\u0633\u0644\u0643\u064a)"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->repairNowRow:Landroid/widget/TextView;

    .line 243
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 244
    sget-object v3, Lx/b;->repairNowRow:Landroid/widget/TextView;

    new-instance v6, Lx/b$10;

    invoke-direct {v6}, Lx/b$10;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget-object v3, Lx/b;->repairNowRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    const-string v3, "\u0625\u064a\u0642\u0627\u0641 \u0627\u0644\u0625\u0632\u0639\u0627\u062c 5 \u062f\u0642\u0627\u0626\u0642 (\u0648\u0627\u0644\u062e\u0631\u0648\u062c \u0644\u0644\u0631\u0626\u064a\u0633\u064a\u0629)"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->quietRow:Landroid/widget/TextView;

    .line 253
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    sget-object v3, Lx/b;->quietRow:Landroid/widget/TextView;

    new-instance v6, Lx/b$11;

    invoke-direct {v6}, Lx/b$11;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget-object v3, Lx/b;->quietRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lx/b;->credRow:Landroid/widget/TextView;

    .line 270
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v0, Landroid/widget/EditText;

    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v0, Lx/b;->ssidBox:Landroid/widget/EditText;

    .line 273
    const-string v3, "SSID"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 274
    sget-object v0, Lx/b;->ssidBox:Landroid/widget/EditText;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 275
    sget-object v0, Lx/b;->ssidBox:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 276
    sget-object v0, Lx/b;->ssidBox:Landroid/widget/EditText;

    invoke-static {}, Lx/i;->boxTextSize()F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 277
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    const/16 v8, 0x8

    invoke-static {v8}, Lx/b;->dp(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    sget-object v9, Lx/b;->ssidBox:Landroid/widget/EditText;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    sget-object v9, Lx/b;->ssidBox:Landroid/widget/EditText;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v9, Landroid/widget/EditText;

    sget-object v11, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v9, Lx/b;->pskBox:Landroid/widget/EditText;

    .line 283
    const-string v11, "\u0643\u0644\u0645\u0629 \u0627\u0644\u0633\u0631 (8 \u0623\u062d\u0631\u0641 \u0639\u0644\u0649 \u0627\u0644\u0623\u0642\u0644)"

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 284
    sget-object v9, Lx/b;->pskBox:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 285
    sget-object v3, Lx/b;->pskBox:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 286
    sget-object v3, Lx/b;->pskBox:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 287
    sget-object v3, Lx/b;->pskBox:Landroid/widget/EditText;

    const/16 v4, 0x91

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 288
    sget-object v3, Lx/b;->pskBox:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    sget-object v3, Lx/b;->pskBox:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    new-instance v3, Landroid/widget/LinearLayout;

    sget-object v4, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 293
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    const-string v0, "\u062d\u0641\u0638"

    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 297
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 298
    invoke-static {v8}, Lx/b;->dp(I)I

    move-result v9

    const/4 v11, 0x4

    invoke-static {v11}, Lx/b;->dp(I)I

    move-result v12

    invoke-virtual {v4, v10, v9, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 299
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v4, Lx/b$12;

    invoke-direct {v4}, Lx/b$12;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    const-string v0, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 311
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 312
    invoke-static {v11}, Lx/b;->dp(I)I

    move-result v6

    invoke-static {v8}, Lx/b;->dp(I)I

    move-result v7

    invoke-virtual {v4, v6, v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 313
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v4, Lx/b$13;

    invoke-direct {v4}, Lx/b$13;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    const-string v0, "\u0625\u0639\u0627\u062f\u0629 \u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 (\u0644\u062a\u0637\u0628\u064a\u0642 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a)"

    invoke-static {v0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 324
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 325
    new-instance v3, Lx/b$14;

    invoke-direct {v3}, Lx/b$14;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "\u0625\u0639\u0627\u062f\u0629 \u0636\u0628\u0637 \u0627\u0644\u0627\u062a\u0635\u0627\u0644"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->resetRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/h;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lx/h;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "\u0627\u062a\u0635\u0644 \u0627\u0644\u0622\u0646"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->connectRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/h;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lx/h;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "\u0627\u0641\u0635\u0644 \u0627\u0644\u0622\u0646"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->disconnectRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/h;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lx/h;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->logRow:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->diagRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/h;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lx/h;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "\u0646\u0633\u062e \u0627\u062d\u062a\u064a\u0627\u0637\u064a \u0644\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->backupRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/h;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lx/h;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "\u0627\u0633\u062a\u0639\u0627\u062f\u0629 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->restoreRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/h;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lx/h;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->autohideRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->soundsRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->autostallRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->accentRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->bubbleSizeRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->fontScaleRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->screenModeRow:Landroid/widget/TextView;

    new-instance v4, Lx/m;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lx/m;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->railRow:Landroid/widget/TextView;

    new-instance v4, Lx/m;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lx/m;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->railAlwaysRow:Landroid/widget/TextView;

    new-instance v4, Lx/m;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lx/m;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/EditText;

    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v0, Lx/b;->presetNameBox:Landroid/widget/EditText;

    const-string v3, "\u0627\u0633\u0645 \u0627\u0644\u0648\u0636\u0639 \u0627\u0644\u0645\u062d\u0641\u0648\u0638"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget-object v0, Lx/b;->presetNameBox:Landroid/widget/EditText;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    sget-object v0, Lx/b;->presetNameBox:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    sget-object v0, Lx/b;->presetNameBox:Landroid/widget/EditText;

    invoke-static {}, Lx/i;->boxTextSize()F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    invoke-static {v3}, Lx/b;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v3, Lx/b;->presetNameBox:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lx/b;->presetNameBox:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "\u062d\u0641\u0638 \u0627\u0644\u0648\u0636\u0639 \u0627\u0644\u062d\u0627\u0644\u064a"

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->presetSaveRow:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Lx/j;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v2}, Lx/i;->buildPresetRows(Landroid/widget/LinearLayout;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->presetDeleteRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, ""

    invoke-static {v3}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lx/b;->prefPhoneRow:Landroid/widget/TextView;

    new-instance v4, Lx/j;

    const/16 v5, 0x12

    invoke-direct {v4, v5}, Lx/j;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v2}, Lx/i;->buildPhoneRows(Landroid/widget/LinearLayout;)V

    .line 335
    new-instance v0, Landroid/widget/ScrollView;

    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v0, Lx/b;->panelScroll:Landroid/widget/ScrollView;

    .line 338
    new-instance v2, Landroid/widget/LinearLayout;

    sget-object v3, Lx/b;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lx/b;->panelView:Landroid/widget/LinearLayout;

    .line 339
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 342
    const/16 v0, 0x7f6

    move v5, v0

    goto :goto_1

    .line 343
    :cond_1
    const/16 v0, 0x7d2

    move v5, v0

    .line 344
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v6, 0x20

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lx/b;->panelLp:Landroid/view/WindowManager$LayoutParams;

    .line 347
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 348
    sget-object v0, Lx/b;->panelLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 349
    sget-object v0, Lx/b;->panelLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 351
    invoke-static {}, Lx/b;->refresh()V

    invoke-static {}, Lx/l;->applyGridIfWide()V

    .line 352
    sget-object v0, Lx/b;->wm:Landroid/view/WindowManager;

    sget-object v2, Lx/b;->panelView:Landroid/widget/LinearLayout;

    sget-object v3, Lx/b;->panelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    goto :goto_2

    .line 353
    :catchall_1
    move-exception v0

    .line 354
    sput-object v1, Lx/b;->panelView:Landroid/widget/LinearLayout;

    .line 356
    :goto_2
    return-void
.end method

.method public static v6Card(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    invoke-static {p0}, Lx/b;->card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static v6HideBubble()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lx/b;->started:Z

    if-eqz v0, :cond_0

    sget-object v0, Lx/b;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    sget-object v1, Lx/b;->bubbleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-boolean v0, Lx/b;->started:Z

    const/4 v0, 0x0

    sput-object v0, Lx/b;->bubbleView:Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method public static v6PresetNameText()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    sget-object v1, Lx/b;->presetNameBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public static v6RebuildPanel()V
    .locals 1

    :try_start_0
    sget-object v0, Lx/b;->panelView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lx/b;->togglePanel()V

    invoke-static {}, Lx/b;->togglePanel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method public static v6Recolor(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lx/b;->bubbleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    return-void
.end method

.method public static v6ShowBubble()V
    .locals 0

    invoke-static {}, Lx/b;->show()V

    return-void
.end method

.method public static v7DiagRow()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lx/b;->diagRow:Landroid/widget/TextView;

    return-object v0
.end method

.method public static v7HeaderRow()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lx/b;->headerRow:Landroid/widget/TextView;

    return-object v0
.end method

.method public static v7LogRow()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lx/b;->logRow:Landroid/widget/TextView;

    return-object v0
.end method

.method public static v7PanelScroll()Landroid/widget/ScrollView;
    .locals 1

    sget-object v0, Lx/b;->panelScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static v7RailAlwaysRow()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lx/b;->railAlwaysRow:Landroid/widget/TextView;

    return-object v0
.end method

.method public static v7RailRow()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lx/b;->railRow:Landroid/widget/TextView;

    return-object v0
.end method

.method public static v7ScreenModeRow()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lx/b;->screenModeRow:Landroid/widget/TextView;

    return-object v0
.end method
