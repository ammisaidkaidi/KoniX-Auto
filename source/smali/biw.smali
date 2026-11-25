.class public final Lbiw;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:I

.field public final j:Ljava/lang/Integer;

.field public final k:Z

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lacg;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lacg;-><init>(I)V

    sput-object v0, Lbiw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Integer;ZI)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbiw;->a:Ljava/lang/String;

    iput p2, p0, Lbiw;->b:I

    iput p3, p0, Lbiw;->c:I

    iput-object p4, p0, Lbiw;->d:Ljava/lang/String;

    iput-object p5, p0, Lbiw;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lbiw;->f:Z

    iput-object p7, p0, Lbiw;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lbiw;->h:Z

    iput p9, p0, Lbiw;->i:I

    iput-object p10, p0, Lbiw;->j:Ljava/lang/Integer;

    iput-boolean p11, p0, Lbiw;->k:Z

    iput p12, p0, Lbiw;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/EnumSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lbnt;-><init>()V

    invoke-static {p1}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lbiw;->a:Ljava/lang/String;

    iput p2, p0, Lbiw;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lbiw;->c:I

    iput-object p3, p0, Lbiw;->g:Ljava/lang/String;

    .line 2
    sget-object p2, Lbij;->d:Lbij;

    invoke-virtual {p6, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    move-object p4, p3

    goto :goto_0

    .line 5
    :cond_0
    nop

    .line 2
    :goto_0
    iput-object p4, p0, Lbiw;->d:Ljava/lang/String;

    iput-object p3, p0, Lbiw;->e:Ljava/lang/String;

    sget-object p2, Lbij;->b:Lbij;

    .line 3
    invoke-virtual {p6, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lbiw;->f:Z

    sget-object p2, Lbij;->f:Ljava/util/EnumSet;

    .line 4
    invoke-virtual {p6, p2}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lbiw;->h:Z

    add-int/lit8 p2, p5, -0x1

    if-eqz p5, :cond_3

    iput p2, p0, Lbiw;->i:I

    iput-object p3, p0, Lbiw;->j:Ljava/lang/Integer;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lbiw;->k:Z

    sget-object p3, Lbij;->e:Ljava/util/EnumSet;

    .line 6
    invoke-virtual {p6, p3}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p6}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, -0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lbij;

    iget p4, p4, Lbij;->h:I

    xor-int/2addr p4, p1

    and-int/2addr p3, p4

    goto :goto_1

    :cond_2
    move p2, p3

    .line 6
    :goto_2
    iput p2, p0, Lbiw;->l:I

    return-void

    .line 7
    :cond_3
    nop

    .line 5
    goto :goto_4

    :goto_3
    throw p3

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lbiw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lbiw;

    iget-object v1, p0, Lbiw;->a:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lbiw;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lbiw;->b:I

    iget v3, p1, Lbiw;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbiw;->c:I

    iget v3, p1, Lbiw;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lbiw;->g:Ljava/lang/String;

    iget-object v3, p1, Lbiw;->g:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbiw;->d:Ljava/lang/String;

    iget-object v3, p1, Lbiw;->d:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbiw;->e:Ljava/lang/String;

    iget-object v3, p1, Lbiw;->e:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lbiw;->f:Z

    iget-boolean v3, p1, Lbiw;->f:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lbiw;->h:Z

    iget-boolean v3, p1, Lbiw;->h:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbiw;->i:I

    iget v3, p1, Lbiw;->i:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lbiw;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lbiw;->j:Ljava/lang/Integer;

    .line 7
    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lbiw;->k:Z

    iget-boolean v3, p1, Lbiw;->k:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbiw;->l:I

    iget p1, p1, Lbiw;->l:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbiw;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lbiw;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lbiw;->c:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lbiw;->g:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lbiw;->d:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lbiw;->e:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbiw;->f:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbiw;->h:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lbiw;->i:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lbiw;->j:Ljava/lang/Integer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbiw;->k:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lbiw;->l:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    const-string v1, "PlayLoggerContext[package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbiw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, ",packageVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbiw;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ",logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbiw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, ",logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbiw;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, ",uploadAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbiw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, ",loggingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbiw;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, ",logAndroidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbiw;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ",isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbiw;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, ",qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbiw;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",appMobilespecId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbiw;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ",scrubMccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbiw;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "piiLevelset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbiw;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbiw;->a:Ljava/lang/String;

    .line 2
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v0, p0, Lbiw;->b:I

    .line 3
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget v0, p0, Lbiw;->c:I

    .line 4
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lbiw;->d:Ljava/lang/String;

    .line 5
    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lbiw;->e:Ljava/lang/String;

    .line 6
    const/4 v2, 0x6

    invoke-static {p1, v2, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, Lbiw;->f:Z

    .line 7
    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lbiw;->g:Ljava/lang/String;

    .line 8
    const/16 v2, 0x8

    invoke-static {p1, v2, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-boolean v0, p0, Lbiw;->h:Z

    .line 9
    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lbiw;->i:I

    .line 10
    const/16 v2, 0xa

    invoke-static {p1, v2, v0}, Lio;->k(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lbiw;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/16 v2, 0xb

    .line 11
    invoke-static {p1, v2, v1}, Lio;->j(Landroid/os/Parcel;II)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    const/16 v0, 0xc

    iget-boolean v1, p0, Lbiw;->k:Z

    .line 13
    invoke-static {p1, v0, v1}, Lio;->i(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xd

    iget v1, p0, Lbiw;->l:I

    .line 14
    invoke-static {p1, v0, v1}, Lio;->k(Landroid/os/Parcel;II)V

    .line 15
    invoke-static {p1, p2}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method
