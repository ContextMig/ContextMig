.class public Lcom/fsck/k9/activity/misc/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/misc/Attachment$LoadingState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final loaderId:I

.field public final name:Ljava/lang/String;

.field public final size:Ljava/lang/Long;

.field public final state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment$1;

    invoke-direct {v0}, Lcom/fsck/k9/activity/misc/Attachment$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/fsck/k9/activity/misc/Attachment$LoadingState;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "state"    # Lcom/fsck/k9/activity/misc/Attachment$LoadingState;
    .param p3, "loaderId"    # I
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "size"    # Ljava/lang/Long;
    .param p7, "filename"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 68
    iput-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    .line 69
    iput p3, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 70
    iput-object p4, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 73
    iput-object p7, p0, Lcom/fsck/k9/activity/misc/Attachment;->filename:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 87
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->filename:Ljava/lang/String;

    .line 88
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/fsck/k9/activity/misc/Attachment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/fsck/k9/activity/misc/Attachment$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createAttachment(Landroid/net/Uri;ILjava/lang/String;)Lcom/fsck/k9/activity/misc/Attachment;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "loaderId"    # I
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 91
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/activity/misc/Attachment$LoadingState;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public deriveWithLoadCancelled()Lcom/fsck/k9/activity/misc/Attachment;
    .locals 8

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "deriveWitLoadCancelled can only be called on a METADATA attachment!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v1, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->CANCELLED:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    iget v3, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    iget-object v4, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/activity/misc/Attachment$LoadingState;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public deriveWithLoadComplete(Ljava/lang/String;)Lcom/fsck/k9/activity/misc/Attachment;
    .locals 8
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "deriveWithLoadComplete can only be called on a METADATA attachment!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v1, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    iget v3, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    iget-object v4, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/activity/misc/Attachment$LoadingState;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public deriveWithMetadataLoaded(Ljava/lang/String;Ljava/lang/String;J)Lcom/fsck/k9/activity/misc/Attachment;
    .locals 9
    .param p1, "usableContentType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    sget-object v1, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "deriveWithMetadataLoaded can only be called on a URI_ONLY attachment!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    iget-object v1, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/fsck/k9/activity/misc/Attachment$LoadingState;->METADATA:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    iget v3, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/activity/misc/Attachment$LoadingState;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/activity/misc/Attachment$LoadingState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 126
    iget v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
