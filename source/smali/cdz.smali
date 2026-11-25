.class public final Lcdz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/content/Context;

.field public static c:Z

.field public static volatile d:Z

.field public static volatile e:Ljava/lang/Exception;

.field public static volatile f:Z

.field public static volatile g:Ljava/lang/Exception;

.field private static volatile i:Lcdz;

.field private static volatile j:Lcdz;

.field private static final k:Lcol;


# instance fields
.field public final h:Landroid/content/Context;

.field private final l:Lcol;

.field private final m:Lcol;

.field private final n:Lcoc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcdz;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcdz;->b:Landroid/content/Context;

    const/4 v1, 0x0

    sput-boolean v1, Lcdz;->c:Z

    sput-object v0, Lcdz;->i:Lcdz;

    sput-boolean v1, Lcdz;->d:Z

    sput-object v0, Lcdz;->e:Ljava/lang/Exception;

    sput-boolean v1, Lcdz;->f:Z

    sput-object v0, Lcdz;->g:Ljava/lang/Exception;

    sput-object v0, Lcdz;->j:Lcdz;

    sget-object v0, Lbpe;->s:Lbpe;

    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    sput-object v0, Lcdz;->k:Lcol;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcdz;->k:Lcol;

    new-instance v1, Lbya;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lbya;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Lex;->i(Lcol;)Lcol;

    move-result-object v1

    new-instance v2, Lcfw;

    invoke-direct {v2, v0}, Lcfw;-><init>(Lcol;)V

    .line 2
    invoke-static {v2}, Lcoc;->e(Ljava/lang/Object;)Lcoc;

    move-result-object v2

    .line 3
    invoke-direct {p0, p1, v0, v1, v2}, Lcdz;-><init>(Landroid/content/Context;Lcol;Lcol;Lcoc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcol;Lcol;Lcoc;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcdz;->h:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lcdz;->l:Lcol;

    .line 9
    invoke-static {p3}, Lex;->i(Lcol;)Lcol;

    move-result-object p1

    iput-object p1, p0, Lcdz;->m:Lcol;

    iput-object p4, p0, Lcdz;->n:Lcoc;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcdz;
    .locals 5

    .line 1
    sget-boolean v0, Lcdz;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcdz;->i:Lcdz;

    if-nez v0, :cond_6

    sget-object v2, Lcdz;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcdz;->i:Lcdz;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v0, Lcdy;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3
    instance-of v4, v3, Ldht;

    if-eqz v4, :cond_1

    .line 4
    check-cast v3, Ldht;

    invoke-interface {v3}, Ldht;->aT()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    check-cast v0, Lcdy;

    move-object v1, v0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?"

    .line 6
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    const-string v4, "Given application context does not implement GeneratedComponentManager: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    .line 7
    :goto_0
    :try_start_4
    sget-object v0, Lcns;->a:Lcns;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Lcdy;->b()Lcoc;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    instance-of v1, p0, Lcdy;

    if-eqz v1, :cond_3

    .line 11
    move-object v0, p0

    check-cast v0, Lcdy;

    invoke-interface {v0}, Lcdy;->b()Lcoc;

    move-result-object v0

    :cond_3
    nop

    .line 9
    :goto_1
    invoke-virtual {v0}, Lcoc;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Lcoc;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcdz;

    goto :goto_2

    .line 14
    :cond_4
    new-instance v0, Lcdz;

    .line 13
    invoke-direct {v0, p0}, Lcdz;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 12
    :goto_2
    sput-object p0, Lcdz;->i:Lcdz;

    move-object v0, p0

    goto :goto_3

    .line 11
    :cond_5
    nop

    .line 14
    :goto_3
    monitor-exit v2

    goto :goto_4

    .line 11
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 11
    :cond_6
    nop

    .line 14
    :goto_4
    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcdz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcdz;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    sget-boolean v1, Lcdz;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcdz;->b:Landroid/content/Context;

    .line 3
    monitor-exit v0

    return-void

    .line 1
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b()Lceo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcdz;->m:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceo;

    return-object v0
.end method

.method public final c()Lcgg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcdz;->n:Lcoc;

    check-cast v0, Lcof;

    iget-object v0, v0, Lcof;->a:Ljava/lang/Object;

    check-cast v0, Lcgg;

    return-object v0
.end method

.method public final d()Ldai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcdz;->l:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldai;

    return-object v0
.end method
