.class public final Lbik;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbjy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/util/List;

.field public static volatile d:I

.field public static final m:Lbjq;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/EnumSet;

.field public final h:Lbii;

.field public final i:Ljava/util/List;

.field public j:Ljava/lang/String;

.field public k:I

.field final l:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lbif;

    invoke-direct {v0}, Lbif;-><init>()V

    sput-object v0, Lbik;->m:Lbjq;

    new-instance v1, Lbjy;

    const-string v2, "ClearcutLogger.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lbjy;-><init>(Ljava/lang/String;Lbjq;[B)V

    sput-object v1, Lbik;->a:Lbjy;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lbik;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lbik;->c:Ljava/util/List;

    const/4 v0, -0x1

    sput v0, Lbik;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v3, Lbij;->e:Ljava/util/EnumSet;

    .line 2
    invoke-static {p1}, Lbkc;->h(Landroid/content/Context;)Lbkc;

    move-result-object v4

    new-instance v5, Lbiv;

    invoke-direct {v5, p1}, Lbiv;-><init>(Landroid/content/Context;)V

    .line 1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lbik;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;Lbkc;Lbii;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;Lbkc;Lbii;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbik;->i:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lbik;->k:I

    .line 4
    sget-object v1, Lbij;->d:Lbij;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string v1, "Upload account name cannot be used with a deidentified or pseudonymous logger."

    invoke-static {v0, v1}, Lhr;->f(ZLjava/lang/Object;)V

    :cond_0
    sget-object v1, Lbij;->g:Ljava/util/EnumSet;

    .line 6
    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lbij;->e:Ljava/util/EnumSet;

    .line 7
    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lbij;->f:Ljava/util/EnumSet;

    .line 8
    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p2, "piiLevelSet must be one of ZWIEBACK_ONLY, NO_RESTRICTIONS, or PIILevel.DEIDENTIFIED"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lbik;->e:Landroid/content/Context;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbik;->f:Ljava/lang/String;

    iput-object p2, p0, Lbik;->j:Ljava/lang/String;

    iput-object p3, p0, Lbik;->g:Ljava/util/EnumSet;

    iput-object p4, p0, Lbik;->l:Lbkc;

    iput v0, p0, Lbik;->k:I

    iput-object p5, p0, Lbik;->h:Lbii;

    return-void
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ", "

    invoke-static {p0, v0}, Lex;->x(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/ArrayList;)[I
    .locals 6

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3
    aput v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Lder;)Lbih;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lbie;

    invoke-direct {v0, p1}, Lbie;-><init>(Lder;)V

    new-instance p1, Lbih;

    .line 2
    invoke-direct {p1, p0, v0}, Lbih;-><init>(Lbik;Lbie;)V

    return-object p1
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lbik;->g:Ljava/util/EnumSet;

    sget-object v1, Lbij;->f:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
