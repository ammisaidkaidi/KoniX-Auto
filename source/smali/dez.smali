.class public final Ldez;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldez;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Ldej;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldez;

    invoke-direct {v0}, Ldez;-><init>()V

    sput-object v0, Ldez;->a:Ldez;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldez;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ldej;

    .line 2
    invoke-direct {v0}, Ldej;-><init>()V

    iput-object v0, p0, Ldez;->c:Ldej;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ldfg;
    .locals 8

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Ldds;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ldez;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfg;

    if-nez v1, :cond_6

    iget-object v1, p0, Ldez;->c:Ldej;

    .line 3
    invoke-static {p1}, Ldfh;->p(Ljava/lang/Class;)V

    iget-object v1, v1, Ldej;->a:Ldep;

    .line 4
    invoke-interface {v1, p1}, Ldep;->a(Ljava/lang/Class;)Ldeo;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ldeo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lddk;

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ldfh;->c:Lev;

    .line 31
    sget-object v3, Ldda;->a:Lhl;

    .line 32
    invoke-interface {v2}, Ldeo;->a()Lder;

    move-result-object v2

    .line 33
    invoke-static {v1, v3, v2}, Ldeu;->c(Lev;Lhl;Lder;)Ldeu;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_0
    sget-object v1, Ldfh;->a:Lev;

    .line 28
    invoke-static {}, Ldda;->a()Lhl;

    move-result-object v3

    .line 29
    invoke-interface {v2}, Ldeo;->a()Lder;

    move-result-object v2

    .line 30
    invoke-static {v1, v3, v2}, Ldeu;->c(Lev;Lhl;Lder;)Ldeu;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-class v1, Lddk;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {v2}, Ldej;->a(Ldeo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v3, Ldew;->b:Lev;

    .line 9
    sget-object v4, Ldef;->b:Ldef;

    sget-object v5, Ldfh;->c:Lev;

    .line 10
    sget-object v6, Ldda;->a:Lhl;

    .line 11
    sget-object v7, Lden;->b:Lev;

    .line 12
    invoke-static/range {v2 .. v7}, Ldet;->m(Ldeo;Lev;Ldef;Lev;Lhl;Lev;)Ldet;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_2
    sget-object v3, Ldew;->b:Lev;

    .line 14
    sget-object v4, Ldef;->b:Ldef;

    sget-object v5, Ldfh;->c:Lev;

    const/4 v6, 0x0

    .line 15
    sget-object v7, Lden;->b:Lev;

    .line 16
    invoke-static/range {v2 .. v7}, Ldet;->m(Ldeo;Lev;Ldef;Lev;Lhl;Lev;)Ldet;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {v2}, Ldej;->a(Ldeo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    sget-object v3, Ldew;->a:Lev;

    .line 19
    sget-object v4, Ldef;->a:Ldef;

    sget-object v5, Ldfh;->a:Lev;

    .line 20
    invoke-static {}, Ldda;->a()Lhl;

    move-result-object v6

    .line 21
    sget-object v7, Lden;->a:Lev;

    .line 22
    invoke-static/range {v2 .. v7}, Ldet;->m(Ldeo;Lev;Ldef;Lev;Lhl;Lev;)Ldet;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_4
    sget-object v3, Ldew;->a:Lev;

    .line 24
    sget-object v4, Ldef;->a:Ldef;

    sget-object v5, Ldfh;->b:Lev;

    const/4 v6, 0x0

    .line 25
    sget-object v7, Lden;->a:Lev;

    .line 26
    invoke-static/range {v2 .. v7}, Ldet;->m(Ldeo;Lev;Ldef;Lev;Lhl;Lev;)Ldet;

    move-result-object v1

    .line 33
    :goto_0
    nop

    .line 34
    invoke-static {p1, v0}, Ldds;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string v0, "schema"

    invoke-static {v1, v0}, Ldds;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldez;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 36
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldfg;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return-object p1

    .line 26
    :cond_6
    nop

    .line 36
    :goto_1
    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Ldfg;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object p1

    return-object p1
.end method
