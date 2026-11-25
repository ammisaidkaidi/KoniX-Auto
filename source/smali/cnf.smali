.class final Lcnf;
.super Lcmx;
.source "PG"

# interfaces
.implements Lcmz;


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcmz;Lcni;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcmx;-><init>(Ljava/lang/String;Lcnj;)V

    iget-boolean p1, p3, Lcni;->b:Z

    .line 2
    invoke-static {p1}, Lex;->l(Z)V

    .line 3
    invoke-interface {p2}, Lcmz;->e()Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, p0, Lcnf;->a:Ljava/lang/Exception;

    iput-boolean p4, p0, Lcnf;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcni;Z)V
    .locals 1

    .line 4
    sget-object v0, Lcna;->a:Lcna;

    invoke-virtual {v0}, Lcna;->b()Ljava/util/UUID;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcmx;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    iget-boolean p1, p2, Lcni;->b:Z

    .line 6
    invoke-static {p1}, Lex;->l(Z)V

    .line 7
    sget-object p1, Lcne;->a:Lcmy;

    iput-object p1, p0, Lcnf;->a:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcnf;->b:Z

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lcni;Z)Lcnj;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcnf;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcnr;->a:Ljava/util/WeakHashMap;

    :cond_0
    new-instance v0, Lcnf;

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcnf;->b:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    goto :goto_1

    .line 1
    :cond_2
    :goto_0
    iget-boolean p3, p0, Lcnf;->b:Z

    if-eqz p3, :cond_3

    goto :goto_1

    .line 2
    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p0, p2, v1}, Lcnf;-><init>(Ljava/lang/String;Lcmz;Lcni;Z)V

    return-object v0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcnf;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Lcni;)Lcnj;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcnf;->d(Ljava/lang/String;Lcni;Z)Lcnj;

    move-result-object p1

    return-object p1
.end method
