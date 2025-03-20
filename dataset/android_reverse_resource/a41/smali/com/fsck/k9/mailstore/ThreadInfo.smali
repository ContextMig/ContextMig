.class Lcom/fsck/k9/mailstore/ThreadInfo;
.super Ljava/lang/Object;
.source "ThreadInfo.java"


# instance fields
.field public final messageId:Ljava/lang/String;

.field public final msgId:J

.field public final parentId:J

.field public final rootId:J

.field public final threadId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;JJ)V
    .locals 0
    .param p1, "threadId"    # J
    .param p3, "msgId"    # J
    .param p5, "messageId"    # Ljava/lang/String;
    .param p6, "rootId"    # J
    .param p8, "parentId"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    .line 12
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/ThreadInfo;->msgId:J

    .line 13
    iput-object p5, p0, Lcom/fsck/k9/mailstore/ThreadInfo;->messageId:Ljava/lang/String;

    .line 14
    iput-wide p6, p0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    .line 15
    iput-wide p8, p0, Lcom/fsck/k9/mailstore/ThreadInfo;->parentId:J

    .line 16
    return-void
.end method
