.class public final Lij;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lij;

.field public static final b:Lij;

.field public static final c:Lij;

.field public static final d:Lij;


# instance fields
.field final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lij;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 2
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 3
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 4
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 5
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 6
    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 7
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 8
    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 9
    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lij;-><init>(I[B)V

    new-instance v0, Lij;

    .line 10
    const/16 v1, 0x200

    invoke-direct {v0, v1, v2}, Lij;-><init>(I[B)V

    new-instance v0, Lij;

    .line 11
    const/16 v1, 0x400

    invoke-direct {v0, v1, v2}, Lij;-><init>(I[B)V

    new-instance v0, Lij;

    .line 12
    const/16 v1, 0x800

    invoke-direct {v0, v1, v2}, Lij;-><init>(I[B)V

    new-instance v0, Lij;

    .line 13
    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    sput-object v0, Lij;->a:Lij;

    new-instance v0, Lij;

    .line 14
    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    sput-object v0, Lij;->b:Lij;

    new-instance v0, Lij;

    .line 15
    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 16
    const v1, 0x8000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 17
    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 18
    const/high16 v1, 0x20000

    invoke-direct {v0, v1, v2}, Lij;-><init>(I[B)V

    new-instance v0, Lij;

    .line 19
    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 20
    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 21
    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lij;-><init>(I)V

    new-instance v0, Lij;

    .line 22
    const/high16 v1, 0x200000

    invoke-direct {v0, v1, v2}, Lij;-><init>(I[B)V

    new-instance v0, Lij;

    .line 23
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020036

    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 24
    const v3, 0x1020037

    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 25
    const v3, 0x1020038

    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lij;->c:Lij;

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 26
    const v3, 0x1020039

    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 27
    const v3, 0x102003a

    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lij;->d:Lij;

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 28
    const v3, 0x102003b

    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    .line 39
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    const v4, 0x1020046

    .line 29
    invoke-direct {v0, v1, v4}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    .line 39
    :cond_1
    move-object v1, v2

    .line 29
    :goto_1
    const v4, 0x1020047

    .line 30
    invoke-direct {v0, v1, v4}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    .line 39
    :cond_2
    move-object v1, v2

    .line 30
    :goto_2
    const v4, 0x1020048

    .line 31
    invoke-direct {v0, v1, v4}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    .line 39
    :cond_3
    move-object v1, v2

    .line 31
    :goto_3
    const v3, 0x1020049

    .line 32
    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x102003c

    .line 33
    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x102003d

    .line 34
    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020042

    .line 35
    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020044

    .line 36
    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020045

    .line 37
    invoke-direct {v0, v1, v3}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_4

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PRESS_AND_HOLD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4

    .line 39
    :cond_4
    move-object v1, v2

    .line 37
    :goto_4
    const v4, 0x102004a

    .line 38
    invoke-direct {v0, v1, v4}, Lij;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lij;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_IME_ENTER:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5

    .line 39
    :cond_5
    nop

    .line 38
    :goto_5
    const v1, 0x1020054

    .line 39
    invoke-direct {v0, v2, v1}, Lij;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lij;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 0

    .line 2
    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lij;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lij;->e:Ljava/lang/Object;

    return-void

    :cond_0
    iput-object p1, p0, Lij;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->e:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lij;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lij;

    iget-object v1, p0, Lij;->e:Ljava/lang/Object;

    iget-object p1, p1, Lij;->e:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lij;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
