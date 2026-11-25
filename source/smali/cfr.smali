.class public final Lcfr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcej;

.field private static final b:Lcju;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcej;->a()Lcej;

    move-result-object v0

    sput-object v0, Lcfr;->a:Lcej;

    new-instance v0, Lcju;

    .line 2
    sget-object v1, Lcff;->b:Lcff;

    invoke-direct {v0, v1}, Lcju;-><init>(Lder;)V

    sput-object v0, Lcfr;->b:Lcju;

    return-void
.end method

.method public static a(Lcdz;)Lcjp;
    .locals 3

    .line 1
    invoke-static {}, Lcit;->a()Lcis;

    move-result-object v0

    iget-object v1, p0, Lcdz;->h:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lchq;->a(Landroid/content/Context;)Lchp;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lchp;->b()V

    .line 4
    const-string v2, "all_accounts.pb"

    invoke-virtual {v1, v2}, Lchp;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lchp;->a()Landroid/net/Uri;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcis;->e(Landroid/net/Uri;)V

    .line 7
    sget-object v1, Lcff;->b:Lcff;

    invoke-virtual {v0, v1}, Lcis;->d(Lder;)V

    sget-object v1, Lcfr;->b:Lcju;

    .line 8
    invoke-virtual {v0, v1}, Lcis;->c(Lcim;)V

    .line 9
    invoke-virtual {v0}, Lcis;->b()V

    .line 10
    invoke-virtual {v0}, Lcis;->a()Lcit;

    move-result-object v0

    iget-object v1, p0, Lcdz;->h:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Lcdz;->d()Ldai;

    move-result-object p0

    invoke-static {v1, p0}, Lcgv;->b(Landroid/content/Context;Ldai;)Lciv;

    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Lciv;->a(Lcit;)Lcjp;

    move-result-object p0

    return-object p0
.end method
