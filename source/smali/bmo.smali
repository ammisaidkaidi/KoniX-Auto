.class public final Lbmo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Lvd;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private final e:Lbqo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbqo;->b:Lbqo;

    iput-object v0, p0, Lbmo;->e:Lbqo;

    return-void
.end method


# virtual methods
.method public final a()Lbmp;
    .locals 7

    .line 1
    new-instance v6, Lbmp;

    iget-object v1, p0, Lbmo;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lbmo;->b:Lvd;

    iget-object v3, p0, Lbmo;->c:Ljava/lang/String;

    iget-object v4, p0, Lbmo;->d:Ljava/lang/String;

    iget-object v5, p0, Lbmo;->e:Lbqo;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbmp;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lbqo;)V

    return-object v6
.end method
