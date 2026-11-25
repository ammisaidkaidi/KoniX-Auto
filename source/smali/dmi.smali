.class public final Ldmi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final a:Ldmi;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldmi;

    invoke-direct {v0}, Ldmi;-><init>()V

    sput-object v0, Ldmi;->a:Ldmi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldmk;

    invoke-direct {v0}, Ldmk;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldmi;->b:Lcol;

    return-void
.end method

.method public static b()Ldgo;
    .locals 1

    .line 1
    sget-object v0, Ldmi;->a:Ldmi;

    invoke-virtual {v0}, Ldmi;->c()Ldmj;

    move-result-object v0

    invoke-interface {v0}, Ldmj;->c()Ldgo;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-object v0, Ldmi;->a:Ldmi;

    invoke-virtual {v0}, Ldmi;->c()Ldmj;

    move-result-object v0

    invoke-interface {v0}, Ldmj;->f()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-object v0, Ldmi;->a:Ldmi;

    invoke-virtual {v0}, Ldmi;->c()Ldmj;

    move-result-object v0

    invoke-interface {v0}, Ldmj;->g()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-object v0, Ldmi;->a:Ldmi;

    invoke-virtual {v0}, Ldmi;->c()Ldmj;

    move-result-object v0

    invoke-interface {v0}, Ldmj;->l()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-object v0, Ldmi;->a:Ldmi;

    invoke-virtual {v0}, Ldmi;->c()Ldmj;

    move-result-object v0

    invoke-interface {v0}, Ldmj;->o()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldmi;->c()Ldmj;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ldmj;
    .locals 1

    .line 1
    iget-object v0, p0, Ldmi;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmj;

    return-object v0
.end method
