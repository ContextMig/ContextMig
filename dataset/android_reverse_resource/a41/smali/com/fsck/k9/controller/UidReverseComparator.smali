.class Lcom/fsck/k9/controller/UidReverseComparator;
.super Ljava/lang/Object;
.source "UidReverseComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fsck/k9/mail/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUidForMessage(Lcom/fsck/k9/mail/Message;)Ljava/lang/Long;
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)I
    .locals 3
    .param p1, "messageLeft"    # Lcom/fsck/k9/mail/Message;
    .param p2, "messageRight"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/UidReverseComparator;->getUidForMessage(Lcom/fsck/k9/mail/Message;)Ljava/lang/Long;

    move-result-object v0

    .line 13
    .local v0, "uidLeft":Ljava/lang/Long;
    invoke-direct {p0, p2}, Lcom/fsck/k9/controller/UidReverseComparator;->getUidForMessage(Lcom/fsck/k9/mail/Message;)Ljava/lang/Long;

    move-result-object v1

    .line 15
    .local v1, "uidRight":Ljava/lang/Long;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 16
    const/4 v2, 0x0

    .line 24
    :goto_0
    return v2

    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 18
    const/4 v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    if-nez v1, :cond_2

    .line 20
    const/4 v2, -0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/fsck/k9/mail/Message;

    check-cast p2, Lcom/fsck/k9/mail/Message;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/UidReverseComparator;->compare(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)I

    move-result v0

    return v0
.end method
