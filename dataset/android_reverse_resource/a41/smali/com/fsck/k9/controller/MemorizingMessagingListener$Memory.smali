.class Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;
.super Ljava/lang/Object;
.source "MemorizingMessagingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/controller/MemorizingMessagingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Memory"
.end annotation


# instance fields
.field account:Lcom/fsck/k9/Account;

.field failureMessage:Ljava/lang/String;

.field folderCompleted:I

.field folderName:Ljava/lang/String;

.field folderTotal:I

.field processingCommandTitle:Ljava/lang/String;

.field processingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

.field pushingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

.field sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

.field syncingNumNewMessages:I

.field syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

.field syncingTotalMessagesInMailbox:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 2
    .param p1, "nAccount"    # Lcom/fsck/k9/Account;
    .param p2, "nFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->syncingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 226
    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->sendingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 227
    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->pushingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 228
    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingState:Lcom/fsck/k9/controller/MemorizingMessagingListener$MemorizingState;

    .line 229
    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->failureMessage:Ljava/lang/String;

    .line 234
    iput v1, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderCompleted:I

    .line 235
    iput v1, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderTotal:I

    .line 236
    iput-object v0, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->processingCommandTitle:Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->account:Lcom/fsck/k9/Account;

    .line 240
    iput-object p2, p0, Lcom/fsck/k9/controller/MemorizingMessagingListener$Memory;->folderName:Ljava/lang/String;

    .line 241
    return-void
.end method
