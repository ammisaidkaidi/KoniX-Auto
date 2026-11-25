.class public final Lcfg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcfh;


# static fields
.field public static volatile a:Lcoc;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Lcgn;

.field public final e:Lcgn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcfg;->a:Lcoc;

    return-void
.end method

.method public constructor <init>(ZZLcgn;Lcgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcfg;->b:Z

    iput-boolean p2, p0, Lcfg;->c:Z

    iput-object p3, p0, Lcfg;->d:Lcgn;

    iput-object p4, p0, Lcfg;->e:Lcgn;

    return-void
.end method
