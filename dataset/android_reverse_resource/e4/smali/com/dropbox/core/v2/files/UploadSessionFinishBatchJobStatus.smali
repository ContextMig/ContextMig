.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
.super Ljava/lang/Object;
.source "UploadSessionFinishBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;,
        Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

.field private completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    .line 64
    .local v0, "result":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    .line 65
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;-><init>()V

    .line 80
    .local v0, "result":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    .line 81
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .line 82
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-eqz p1, :cond_0

    .line 180
    instance-of v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 181
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .line 182
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 185
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 169
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
