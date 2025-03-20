.class final Landroid/support/v4/b/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Landroid/support/v4/b/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/b/ak;

    invoke-direct {v0}, Landroid/support/v4/b/ak;-><init>()V

    sput-object v0, Landroid/support/v4/b/aj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/aj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/aj;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/b/aj;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/aj;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/aj;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/aj;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/b/aj;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/b/aj;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/aj;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/aj;->j:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/b/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/aj;->a:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/b/o;->g:I

    iput v0, p0, Landroid/support/v4/b/aj;->b:I

    iget-boolean v0, p1, Landroid/support/v4/b/o;->p:Z

    iput-boolean v0, p0, Landroid/support/v4/b/aj;->c:Z

    iget v0, p1, Landroid/support/v4/b/o;->x:I

    iput v0, p0, Landroid/support/v4/b/aj;->d:I

    iget v0, p1, Landroid/support/v4/b/o;->y:I

    iput v0, p0, Landroid/support/v4/b/aj;->e:I

    iget-object v0, p1, Landroid/support/v4/b/o;->z:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/b/aj;->f:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/support/v4/b/o;->C:Z

    iput-boolean v0, p0, Landroid/support/v4/b/aj;->g:Z

    iget-boolean v0, p1, Landroid/support/v4/b/o;->B:Z

    iput-boolean v0, p0, Landroid/support/v4/b/aj;->h:Z

    iget-object v0, p1, Landroid/support/v4/b/o;->i:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/b/aj;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/b/x;Landroid/support/v4/b/o;)Landroid/support/v4/b/o;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/b/x;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/b/aj;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/b/aj;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/b/aj;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/b/aj;->i:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/support/v4/b/o;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/b/o;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-object v1, p0, Landroid/support/v4/b/aj;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/b/aj;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-object v1, p0, Landroid/support/v4/b/aj;->j:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/b/o;->e:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget v1, p0, Landroid/support/v4/b/aj;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/b/o;->a(ILandroid/support/v4/b/o;)V

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-boolean v1, p0, Landroid/support/v4/b/aj;->c:Z

    iput-boolean v1, v0, Landroid/support/v4/b/o;->p:Z

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/b/o;->r:Z

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget v1, p0, Landroid/support/v4/b/aj;->d:I

    iput v1, v0, Landroid/support/v4/b/o;->x:I

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget v1, p0, Landroid/support/v4/b/aj;->e:I

    iput v1, v0, Landroid/support/v4/b/o;->y:I

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-object v1, p0, Landroid/support/v4/b/aj;->f:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/b/o;->z:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-boolean v1, p0, Landroid/support/v4/b/aj;->g:Z

    iput-boolean v1, v0, Landroid/support/v4/b/o;->C:Z

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-boolean v1, p0, Landroid/support/v4/b/aj;->h:Z

    iput-boolean v1, v0, Landroid/support/v4/b/o;->B:Z

    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    iget-object v1, p1, Landroid/support/v4/b/x;->d:Landroid/support/v4/b/aa;

    iput-object v1, v0, Landroid/support/v4/b/o;->t:Landroid/support/v4/b/aa;

    sget-boolean v0, Landroid/support/v4/b/aa;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/b/aj;->k:Landroid/support/v4/b/o;

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/b/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/b/aj;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v4/b/aj;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/b/aj;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/b/aj;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/b/aj;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/aj;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v4/b/aj;->h:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/b/aj;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/b/aj;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
