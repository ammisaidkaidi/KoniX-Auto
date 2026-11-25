.class public final synthetic Lcga;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcfn;

.field public final synthetic c:Lcdz;

.field public final synthetic d:Lcgw;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcfn;Lcdz;Lcgw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcga;->a:Ljava/lang/String;

    iput-object p2, p0, Lcga;->b:Lcfn;

    iput-object p3, p0, Lcga;->c:Lcdz;

    iput-object p4, p0, Lcga;->d:Lcgw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 4

    .line 1
    iget-object v0, p0, Lcga;->a:Ljava/lang/String;

    iget-object v1, p0, Lcga;->b:Lcfn;

    iget-object v2, p0, Lcga;->c:Lcdz;

    iget-object v3, p0, Lcga;->d:Lcgw;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ldad;->a:Ldag;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcgf;->c:Lcej;

    iget-object v1, v1, Lcfn;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcod;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcpu;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Ldad;->a:Ldag;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcdz;->b()Lceo;

    move-result-object p1

    iget-object v0, v3, Lcgw;->b:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Lceo;->a(Ljava/lang/String;)Ldag;

    move-result-object p1

    .line 2
    :goto_0
    return-object p1
.end method
