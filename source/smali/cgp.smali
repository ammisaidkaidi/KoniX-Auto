.class public final synthetic Lcgp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcfm;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcfm;I)V
    .locals 0

    iput p2, p0, Lcgp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgp;->a:Lcfm;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 7

    .line 3
    iget v0, p0, Lcgp;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcgp;->a:Lcfm;

    check-cast p1, Lcep;

    iget v1, p1, Lcep;->a:I

    const/16 v2, 0x733d

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcfm;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x44

    .line 4
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to commit due to stale snapshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", triggering flag update."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProtoDataStoreFlagStore"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-virtual {v0}, Lcfm;->d()V

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object v0, p0, Lcgp;->a:Lcfm;

    .line 1
    move-object v4, p1

    check-cast v4, Lcgw;

    iget-object v1, v0, Lcfm;->b:Lcdz;

    iget-object v2, v0, Lcfm;->c:Ljava/lang/String;

    iget-object v3, v0, Lcfm;->d:Ljava/lang/String;

    iget-boolean v5, v0, Lcfm;->g:Z

    iget-boolean v6, v0, Lcfm;->h:Z

    .line 2
    invoke-static/range {v1 .. v6}, Lcgv;->e(Lcdz;Ljava/lang/String;Ljava/lang/String;Lcgw;ZZ)Ldag;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-static {p1}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
