.class public final Ldik;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# static fields
.field public static final a:Ldik;


# instance fields
.field private final b:Lcol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldik;

    invoke-direct {v0}, Ldik;-><init>()V

    sput-object v0, Ldik;->a:Ldik;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldim;

    invoke-direct {v0}, Ldim;-><init>()V

    invoke-static {v0}, Lex;->j(Ljava/lang/Object;)Lcol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lex;->i(Lcol;)Lcol;

    move-result-object v0

    iput-object v0, p0, Ldik;->b:Lcol;

    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Ldik;->a:Ldik;

    invoke-virtual {v0}, Ldik;->b()Ldil;

    move-result-object v0

    invoke-interface {v0}, Ldil;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldik;->b()Ldil;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldil;
    .locals 1

    .line 1
    iget-object v0, p0, Ldik;->b:Lcol;

    invoke-interface {v0}, Lcol;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldil;

    return-object v0
.end method
