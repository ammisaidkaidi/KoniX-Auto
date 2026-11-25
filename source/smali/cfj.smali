.class public final synthetic Lcfj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# instance fields
.field public final synthetic a:Lcdz;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcdz;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfj;->a:Lcdz;

    iput-object p2, p0, Lcfj;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcfj;->c:Z

    iput-boolean p4, p0, Lcfj;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcfj;->a:Lcdz;

    iget-object v1, p0, Lcfj;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcfj;->c:Z

    iget-boolean v3, p0, Lcfj;->d:Z

    new-instance v4, Lcfm;

    invoke-direct {v4, v0, v1, v2, v3}, Lcfm;-><init>(Lcdz;Ljava/lang/String;ZZ)V

    return-object v4
.end method
