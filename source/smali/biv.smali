.class public final Lbiv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbii;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lceg;

.field public static final c:Lj$/util/concurrent/ConcurrentHashMap;

.field static d:Ljava/lang/Boolean;

.field static e:Ljava/lang/Long;


# instance fields
.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lbiv;->a:Ljava/nio/charset/Charset;

    new-instance v0, Lceg;

    .line 2
    const-string v1, "com.google.android.gms.clearcut.public"

    invoke-static {v1}, Lcdw;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lceg;-><init>(Landroid/net/Uri;)V

    .line 3
    const-string v1, "gms:playlog:service:samplingrules_"

    invoke-virtual {v0, v1}, Lceg;->c(Ljava/lang/String;)Lceg;

    move-result-object v0

    new-instance v8, Lceg;

    iget-object v2, v0, Lceg;->a:Ljava/lang/String;

    iget-object v3, v0, Lceg;->b:Landroid/net/Uri;

    iget-object v4, v0, Lceg;->c:Ljava/lang/String;

    iget-boolean v6, v0, Lceg;->e:Z

    iget-boolean v7, v0, Lceg;->f:Z

    const-string v5, "LogSamplingRulesV2__"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lceg;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v8, Lbiv;->b:Lceg;

    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbiv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    sput-object v0, Lbiv;->d:Ljava/lang/Boolean;

    sput-object v0, Lbiv;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbiv;->f:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcei;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
