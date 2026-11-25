.class public final Ldjo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field private static final a:Ldjo;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldjo;

    invoke-direct {v0}, Ldjo;-><init>()V

    sput-object v0, Ldjo;->a:Ldjo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldjq;

    invoke-direct {v0}, Ldjq;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldjo;->b:Lcol;

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Ldjo;->a:Ldjo;

    invoke-virtual {v0}, Ldjo;->b()Ldjp;

    move-result-object v0

    invoke-interface {v0}, Ldjp;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldjo;->b()Ldjp;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldjp;
    .locals 1

    .line 1
    iget-object v0, p0, Ldjo;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjp;

    return-object v0
.end method
