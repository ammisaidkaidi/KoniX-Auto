.class final Lhy;
.super Lia;
.source "PG"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Constructor;

.field private static d:Z


# instance fields
.field private e:Landroid/view/WindowInsets;

.field private f:Leh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lhy;->b:Z

    sput-boolean v0, Lhy;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lia;-><init>()V

    .line 2
    invoke-static {}, Lhy;->d()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lhy;->e:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lih;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lia;-><init>(Lih;)V

    .line 4
    invoke-virtual {p1}, Lih;->m()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lhy;->e:Landroid/view/WindowInsets;

    return-void
.end method

.method private static d()Landroid/view/WindowInsets;
    .locals 5

    .line 1
    sget-boolean v0, Lhy;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroid/view/WindowInsets;

    const-string v2, "CONSUMED"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lhy;->a:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 1
    :goto_0
    sput-boolean v1, Lhy;->b:Z

    :cond_0
    sget-object v0, Lhy;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    new-instance v3, Landroid/view/WindowInsets;

    .line 3
    invoke-direct {v3, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 5
    :catch_1
    move-exception v0

    .line 3
    :cond_1
    sget-boolean v0, Lhy;->d:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    :try_start_2
    new-array v0, v1, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v0, v3

    const-class v4, Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lhy;->c:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 5
    :catch_2
    move-exception v0

    .line 4
    :goto_1
    sput-boolean v1, Lhy;->d:Z

    :cond_2
    sget-object v0, Lhy;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public final a()Lih;
    .locals 2

    .line 1
    iget-object v0, p0, Lhy;->e:Landroid/view/WindowInsets;

    invoke-static {v0}, Lih;->k(Landroid/view/WindowInsets;)Lih;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lih;->o([Leh;)V

    iget-object v1, p0, Lhy;->f:Leh;

    .line 3
    invoke-virtual {v0, v1}, Lih;->q(Leh;)V

    return-object v0
.end method

.method public final b(Leh;)V
    .locals 0

    iput-object p1, p0, Lhy;->f:Leh;

    return-void
.end method

.method public final c(Leh;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhy;->e:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget v1, p1, Leh;->b:I

    iget v2, p1, Leh;->c:I

    iget v3, p1, Leh;->d:I

    iget p1, p1, Leh;->e:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Lhy;->e:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
