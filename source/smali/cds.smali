.class public final synthetic Lcds;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcdq;


# instance fields
.field public final synthetic a:Lcdu;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcdu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcds;->a:Lcdu;

    iput-object p2, p0, Lcds;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcds;->a:Lcdu;

    iget-object v1, p0, Lcds;->b:Ljava/lang/String;

    iget-object v0, v0, Lcdu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lbrr;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
