.class public Lcom/fsck/k9/activity/MessageInfoHolder;
.super Ljava/lang/Object;
.source "MessageInfoHolder.java"


# instance fields
.field public account:Ljava/lang/String;

.field public answered:Z

.field public compareArrival:Ljava/util/Date;

.field public compareCounterparty:Ljava/lang/String;

.field public compareDate:Ljava/util/Date;

.field public compareSubject:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public dirty:Z

.field public flagged:Z

.field public folder:Lcom/fsck/k9/activity/FolderInfoHolder;

.field public forwarded:Z

.field public message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public read:Z

.field public recipients:[Ljava/lang/String;

.field public selected:Z

.field public sender:Ljava/lang/CharSequence;

.field public senderAddress:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageInfoHolder;->selected:Z

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v1, p1, Lcom/fsck/k9/activity/MessageInfoHolder;

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/fsck/k9/activity/MessageInfoHolder;

    .line 39
    .local v0, "other":Lcom/fsck/k9/activity/MessageInfoHolder;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageInfoHolder;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageInfoHolder;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageInfoHolder;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
