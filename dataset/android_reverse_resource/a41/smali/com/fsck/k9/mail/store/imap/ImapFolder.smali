.class Lcom/fsck/k9/mail/store/imap/ImapFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "ImapFolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/mail/Folder",
        "<",
        "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final FETCH_WINDOW_SIZE:I = 0x64

.field private static final MORE_MESSAGES_WINDOW_SIZE:I = 0x1f4

.field private static final RFC3501_DATE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canCreateKeywords:Z

.field protected volatile connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

.field private volatile exists:Z

.field private final folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

.field private inSearch:Z

.field protected volatile messageCount:I

.field private mode:I

.field protected msgSeqUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field protected store:Lcom/fsck/k9/mail/store/imap/ImapStore;

.field protected volatile uidNext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolder$1;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder$1;-><init>()V

    sput-object v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->RFC3501_DATE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;)V
    .locals 1
    .param p1, "store"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getFolderNameCodec()Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;-><init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/FolderNameCodec;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/store/imap/FolderNameCodec;)V
    .locals 3
    .param p1, "store"    # Lcom/fsck/k9/mail/store/imap/ImapStore;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "folderNameCodec"    # Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->uidNext:J

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->msgSeqUidMap:Ljava/util/Map;

    .line 62
    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->inSearch:Z

    .line 63
    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->canCreateKeywords:Z

    .line 72
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    .line 73
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->name:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolder;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .param p1, "x1"    # C

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_0
    return-void
.end method

.method private static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 1
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .prologue
    .line 1509
    if-nez p0, :cond_0

    .line 1510
    const/4 v0, 0x0

    .line 1513
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private combineFlags(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1276
    .local p1, "flags":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/fsck/k9/mail/Flag;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v1, "flagNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Flag;

    .line 1278
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v3, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    if-ne v0, v3, :cond_1

    .line 1279
    const-string v3, "\\Seen"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1280
    :cond_1
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    if-ne v0, v3, :cond_2

    .line 1281
    const-string v3, "\\Deleted"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1282
    :cond_2
    sget-object v3, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    if-ne v0, v3, :cond_3

    .line 1283
    const-string v3, "\\Answered"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1284
    :cond_3
    sget-object v3, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    if-ne v0, v3, :cond_4

    .line 1285
    const-string v3, "\\Flagged"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1286
    :cond_4
    sget-object v3, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->canCreateKeywords:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    .line 1287
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getPermanentFlagsIndex()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1288
    :cond_5
    const-string v3, "$Forwarded"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1292
    .end local v0    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "escapedFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    const-string v5, "STATUS %s (RECENT)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :goto_0
    return v2

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v2

    throw v2

    .line 238
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    move v2, v3

    .line 239
    goto :goto_0
.end method

.method private existsNonDeletedMessageInRange(IILjava/lang/String;)Z
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "dateSearchString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 573
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SEARCH %d:%d%s NOT DELETED"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    aput-object p3, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 576
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 577
    .local v1, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "SEARCH"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 578
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v6

    if-le v6, v3, :cond_0

    .line 584
    .end local v1    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private extractHighestUid(Lcom/fsck/k9/mail/store/imap/SearchResponse;)J
    .locals 4
    .param p1, "searchResponse"    # Lcom/fsck/k9/mail/store/imap/SearchResponse;

    .prologue
    const/4 v3, 0x0

    .line 483
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/SearchResponse;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-wide/16 v2, -0x1

    .line 494
    :goto_0
    return-wide v2

    .line 488
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 489
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 492
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private getDateSearchString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "earliestDate"    # Ljava/util/Date;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    const-string v0, ""

    .line 541
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SINCE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->RFC3501_DATE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrefixedName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v2, ""

    .line 80
    .local v2, "prefixedName":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/fsck/k9/mail/store/StoreConfig;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .line 88
    .local v0, "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->open()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getCombinedPrefix()Ljava/lang/String;

    move-result-object v2

    .line 103
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    return-object v2

    .line 86
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    goto :goto_0

    .line 88
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 92
    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Unable to get IMAP prefix"

    invoke-direct {v3, v4, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v4, :cond_3

    .line 96
    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    :cond_3
    throw v3
.end method

.method private getRemoteMessageCount(Ljava/lang/String;)I
    .locals 11
    .param p1, "criteria"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, "count":I
    const/4 v5, 0x1

    .line 442
    .local v5, "start":I
    :try_start_0
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SEARCH %d:* %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 445
    .local v4, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 446
    .local v3, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "SEARCH"

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 447
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/2addr v1, v7

    goto :goto_0

    .line 452
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v4    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v2

    .line 453
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v6, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v6

    throw v6

    .line 451
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v4    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :cond_1
    return v1
.end method

.method private getStore()Lcom/fsck/k9/mail/store/imap/ImapStore;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    return-object v0
.end method

.method private handleFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;
    .locals 17
    .param p1, "message"    # Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .param p2, "fetchList"    # Lcom/fsck/k9/mail/store/imap/ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 864
    const/4 v11, 0x0

    .line 865
    .local v11, "result":Ljava/lang/Object;
    const-string v13, "FLAGS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 866
    const-string v13, "FLAGS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedList(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v6

    .line 867
    .local v6, "flags":Lcom/fsck/k9/mail/store/imap/ImapList;
    if-eqz v6, :cond_5

    .line 868
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v7, v3, :cond_5

    .line 869
    invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 870
    .local v5, "flag":Ljava/lang/String;
    const-string v13, "\\Deleted"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 871
    sget-object v13, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 868
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 872
    :cond_1
    const-string v13, "\\Answered"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 873
    sget-object v13, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 874
    :cond_2
    const-string v13, "\\Seen"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 875
    sget-object v13, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 876
    :cond_3
    const-string v13, "\\Flagged"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 877
    sget-object v13, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 878
    :cond_4
    const-string v13, "$Forwarded"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 879
    sget-object v13, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V

    .line 881
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getPermanentFlagsIndex()Ljava/util/Set;

    move-result-object v13

    sget-object v14, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 887
    .end local v3    # "count":I
    .end local v5    # "flag":Ljava/lang/String;
    .end local v6    # "flags":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v7    # "i":I
    :cond_5
    const-string v13, "INTERNALDATE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 888
    const-string v13, "INTERNALDATE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 889
    .local v9, "internalDate":Ljava/util/Date;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 892
    .end local v9    # "internalDate":Ljava/util/Date;
    :cond_6
    const-string v13, "RFC822.SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 893
    const-string v13, "RFC822.SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedNumber(Ljava/lang/String;)I

    move-result v12

    .line 894
    .local v12, "size":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setSize(I)V

    .line 897
    .end local v12    # "size":I
    :cond_7
    const-string v13, "BODYSTRUCTURE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 898
    const-string v13, "BODYSTRUCTURE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedList(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v2

    .line 899
    .local v2, "bs":Lcom/fsck/k9/mail/store/imap/ImapList;
    if-eqz v2, :cond_8

    .line 901
    :try_start_0
    const-string v13, "TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v13}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .end local v2    # "bs":Lcom/fsck/k9/mail/store/imap/ImapList;
    :cond_8
    :goto_2
    const-string v13, "BODY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 912
    const-string v13, "BODY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyIndex(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v8, v13, 0x2

    .line 913
    .local v8, "index":I
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v12

    .line 914
    .restart local v12    # "size":I
    if-ge v8, v12, :cond_9

    .line 915
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/fsck/k9/mail/store/imap/ImapList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    .line 918
    instance-of v13, v11, Ljava/lang/String;

    if-eqz v13, :cond_9

    move-object v10, v11

    .line 919
    check-cast v10, Ljava/lang/String;

    .line 920
    .local v10, "originOctet":Ljava/lang/String;
    const-string v13, "<"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    add-int/lit8 v13, v8, 0x1

    if-ge v13, v12, :cond_9

    .line 921
    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    .line 927
    .end local v8    # "index":I
    .end local v10    # "originOctet":Ljava/lang/String;
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "size":I
    :cond_9
    return-object v11

    .line 902
    .restart local v2    # "bs":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v11    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 903
    .local v4, "e":Lcom/fsck/k9/mail/MessagingException;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 904
    const-string v13, "Error handling message for %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v4, v13, v14}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    goto :goto_2
.end method

.method private handlePermanentFlags(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;

    move-result-object v1

    .line 172
    .local v1, "permanentFlagsResponse":Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;
    if-nez v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getPermanentFlagsIndex()Ljava/util/Set;

    move-result-object v0

    .line 177
    .local v0, "permanentFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->getFlags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/PermanentFlagsResponse;->canCreateKeywords()Z

    move-result v2

    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->canCreateKeywords:Z

    goto :goto_0
.end method

.method private handleSelectOrExamineOkResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    .line 182
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    move-result-object v0

    .line 183
    .local v0, "selectOrExamineResponse":Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->hasOpenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->getOpenMode()I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->mode:I

    goto :goto_0
.end method

.method private ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;
    .locals 4
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .param p2, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 1357
    const-string v0, "IOException for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1359
    if-eqz p1, :cond_0

    .line 1360
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->close()V

    .line 1365
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V
    .locals 24
    .param p1, "bs"    # Lcom/fsck/k9/mail/store/imap/ImapList;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 984
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 988
    invoke-static {}, Lcom/fsck/k9/mail/internet/MimeMultipart;->newInstance()Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-result-object v13

    .line 989
    .local v13, "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v9

    .local v9, "count":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 990
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 995
    new-instance v6, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    .line 996
    .local v6, "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    const-string v19, "TEXT"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 997
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v19

    add-int/lit8 v20, v11, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    .line 1001
    :goto_1
    invoke-virtual {v13, v6}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 989
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 999
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v11, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->parseBodyStructure(Lcom/fsck/k9/mail/store/imap/ImapList;Lcom/fsck/k9/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 1007
    .end local v6    # "bp":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1008
    .local v17, "subType":Ljava/lang/String;
    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1012
    .end local v17    # "subType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 1129
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v13    # "mp":Lcom/fsck/k9/mail/internet/MimeMultipart;
    :goto_2
    return-void

    .line 1035
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1036
    .local v18, "type":Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1037
    .restart local v17    # "subType":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 1039
    .local v12, "mimeType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1040
    .local v5, "bodyParams":Lcom/fsck/k9/mail/store/imap/ImapList;
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1041
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v5

    .line 1043
    :cond_4
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1044
    .local v10, "encoding":Ljava/lang/String;
    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getNumber(I)I

    move-result v16

    .line 1046
    .local v16, "size":I
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/MimeUtility;->isMessage(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1055
    new-instance v19, Lcom/fsck/k9/mail/MessagingException;

    const-string v20, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct/range {v19 .. v20}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1061
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1062
    .local v8, "contentType":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    if-eqz v5, :cond_6

    .line 1069
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v9

    .restart local v9    # "count":I
    :goto_3
    if-ge v11, v9, :cond_6

    .line 1070
    invoke-virtual {v5, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1071
    .local v14, "paramName":Ljava/lang/String;
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1072
    .local v15, "paramValue":Ljava/lang/String;
    const-string v19, ";\r\n %s=\"%s\""

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    add-int/lit8 v11, v11, 0x2

    goto :goto_3

    .line 1076
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v15    # "paramValue":Ljava/lang/String;
    :cond_6
    const-string v19, "Content-Type"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const/4 v3, 0x0

    .line 1080
    .local v3, "bodyDisposition":Lcom/fsck/k9/mail/store/imap/ImapList;
    const-string v19, "text"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v19

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1081
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v3

    .line 1086
    :cond_7
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    .local v7, "contentDisposition":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_a

    .line 1089
    const-string v19, "NIL"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1090
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_8
    invoke-virtual {v3}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1094
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v4

    .line 1099
    .local v4, "bodyDispositionParams":Lcom/fsck/k9/mail/store/imap/ImapList;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v9

    .restart local v9    # "count":I
    :goto_5
    if-ge v11, v9, :cond_a

    .line 1100
    invoke-virtual {v4, v11}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 1101
    .restart local v14    # "paramName":Ljava/lang/String;
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1102
    .restart local v15    # "paramValue":Ljava/lang/String;
    const-string v19, ";\r\n %s=\"%s\""

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 1082
    .end local v4    # "bodyDispositionParams":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v7    # "contentDisposition":Ljava/lang/StringBuilder;
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v14    # "paramName":Ljava/lang/String;
    .end local v15    # "paramValue":Ljava/lang/String;
    :cond_9
    const-string v19, "text"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1083
    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v3

    goto/16 :goto_4

    .line 1107
    .restart local v7    # "contentDisposition":Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "size"

    invoke-static/range {v19 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_b

    .line 1108
    sget-object v19, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v20, ";\r\n size=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v19 .. v21}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_b
    const-string v19, "Content-Disposition"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v19, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, p2

    .line 1124
    check-cast v19, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->setSize(I)V

    .line 1127
    :cond_c
    invoke-interface/range {p2 .. p3}, Lcom/fsck/k9/mail/Part;->setServerExtra(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private search(Lcom/fsck/k9/mail/store/imap/ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 10
    .param p1, "searcher"    # Lcom/fsck/k9/mail/store/imap/ImapSearcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/store/imap/ImapSearcher;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 619
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/imap/ImapSearcher;->search()Ljava/util/List;

    move-result-object v5

    .line 623
    .local v5, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-static {v5}, Lcom/fsck/k9/mail/store/imap/SearchResponse;->parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/SearchResponse;

    move-result-object v6

    .line 624
    .local v6, "searchResponse":Lcom/fsck/k9/mail/store/imap/SearchResponse;
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/SearchResponse;->getNumbers()Ljava/util/List;

    move-result-object v8

    .line 630
    .local v8, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 633
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    .line 634
    .local v7, "uid":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 635
    invoke-interface {p2, v7, v1, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 638
    :cond_0
    new-instance v3, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    invoke-direct {v3, v7, p0}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    .line 639
    .local v3, "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    if-eqz p2, :cond_1

    .line 642
    invoke-interface {p2, v3, v1, v0}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "message":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .end local v5    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    .end local v6    # "searchResponse":Lcom/fsck/k9/mail/store/imap/SearchResponse;
    .end local v7    # "uid":Ljava/lang/String;
    .end local v8    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v2

    .line 646
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v9, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v9

    throw v9

    .line 649
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v5    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    .restart local v6    # "searchResponse":Lcom/fsck/k9/mail/store/imap/SearchResponse;
    .restart local v8    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-object v4
.end method


# virtual methods
.method public appendMessages(Ljava/util/List;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1146
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->open(I)V

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 1150
    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1151
    .local v14, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/mail/Message;

    .line 1152
    .local v8, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->calculateSize()J

    move-result-wide v10

    .line 1154
    .local v10, "messageSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    .local v4, "encodeFolderName":Ljava/lang/String;
    invoke-static {v4}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1156
    .local v6, "escapedFolderName":Ljava/lang/String;
    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "APPEND %s (%s) {%d}"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v6, v18, v19

    const/16 v19, 0x1

    .line 1157
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getFlags()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combineFlags(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1156
    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1158
    .local v3, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1162
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readResponse()Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v12

    .line 1164
    .local v12, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 1166
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1167
    new-instance v5, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1168
    .local v5, "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    invoke-virtual {v8, v5}, Lcom/fsck/k9/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1169
    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->write(I)V

    .line 1170
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->write(I)V

    .line 1171
    invoke-virtual {v5}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 1173
    .end local v5    # "eolOut":Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;
    :cond_2
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 1175
    invoke-virtual {v12}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 1184
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1186
    .local v13, "responseList":Ljava/lang/Object;
    instance-of v0, v13, Lcom/fsck/k9/mail/store/imap/ImapList;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 1187
    move-object v0, v13

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    move-object v2, v0

    .line 1188
    .local v2, "appendList":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "APPENDUID"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1189
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1191
    .local v9, "newUid":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 1192
    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1221
    .end local v2    # "appendList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "encodeFolderName":Ljava/lang/String;
    .end local v6    # "escapedFolderName":Ljava/lang/String;
    .end local v8    # "message":Lcom/fsck/k9/mail/Message;
    .end local v9    # "newUid":Ljava/lang/String;
    .end local v10    # "messageSize":J
    .end local v12    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v13    # "responseList":Ljava/lang/Object;
    .end local v14    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1222
    .local v7, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v15

    throw v15

    .line 1204
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v3    # "command":Ljava/lang/String;
    .restart local v4    # "encodeFolderName":Ljava/lang/String;
    .restart local v6    # "escapedFolderName":Ljava/lang/String;
    .restart local v8    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v10    # "messageSize":J
    .restart local v12    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .restart local v14    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v9

    .line 1205
    .restart local v9    # "newUid":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1206
    const-string v16, "Got UID %s for message for %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1210
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1220
    .end local v3    # "command":Ljava/lang/String;
    .end local v4    # "encodeFolderName":Ljava/lang/String;
    .end local v6    # "escapedFolderName":Ljava/lang/String;
    .end local v8    # "message":Lcom/fsck/k9/mail/Message;
    .end local v9    # "newUid":Ljava/lang/String;
    .end local v10    # "messageSize":J
    .end local v12    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_5
    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    if-eqz v15, :cond_6

    const/4 v14, 0x0

    .end local v14    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    return-object v14
.end method

.method public areMoreMessagesAvailable(ILjava/util/Date;)Z
    .locals 6
    .param p1, "indexOfOldestMessage"    # I
    .param p2, "earliestDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 550
    if-ne p1, v4, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v3

    .line 554
    :cond_1
    invoke-direct {p0, p2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getDateSearchString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "dateSearchString":Ljava/lang/String;
    add-int/lit8 v1, p1, -0x1

    .line 557
    .local v1, "endIndex":I
    :goto_1
    if-lez v1, :cond_0

    .line 558
    add-int/lit16 v5, v1, -0x1f4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 560
    .local v2, "startIndex":I
    invoke-direct {p0, v2, v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->existsNonDeletedMessageInRange(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 561
    goto :goto_0

    .line 564
    :cond_2
    add-int/lit16 v1, v1, -0x1f4

    .line 565
    goto :goto_1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    .line 207
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->inSearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-eqz v0, :cond_1

    .line 214
    const-string v0, "IMAP search was aborted, shutting down connection."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    .line 220
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 221
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 217
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 15
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Folder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;

    if-nez v11, :cond_0

    .line 334
    new-instance v11, Lcom/fsck/k9/mail/MessagingException;

    const-string v12, "ImapFolder.copyMessages passed non-ImapFolder"

    invoke-direct {v11, v12}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 337
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 338
    const/4 v11, 0x0

    .line 376
    :goto_0
    return-object v11

    :cond_1
    move-object/from16 v6, p2

    .line 341
    check-cast v6, Lcom/fsck/k9/mail/store/imap/ImapFolder;

    .line 342
    .local v6, "imapFolder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 344
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    new-array v10, v11, [Ljava/lang/String;

    .line 345
    .local v10, "uids":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 346
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 350
    :cond_2
    :try_start_0
    iget-object v11, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-direct {v6}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "encodedDestinationFolderName":Ljava/lang/String;
    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "escapedDestinationFolderName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 356
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 357
    const-string v11, "ImapFolder.copyMessages: attempting to create remote folder \'%s\' for %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    .line 358
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 357
    invoke-static {v11, v12}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :cond_3
    sget-object v11, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v6, v11}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 365
    :cond_4
    const-string v11, "UID COPY %s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x2c

    .line 366
    invoke-static {v10, v14}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    .line 365
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 369
    .local v9, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-static {v9}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->getLastResponse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v8

    .line 371
    .local v8, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-static {v8}, Lcom/fsck/k9/mail/store/imap/CopyUidResponse;->parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/CopyUidResponse;

    move-result-object v1

    .line 372
    .local v1, "copyUidResponse":Lcom/fsck/k9/mail/store/imap/CopyUidResponse;
    if-nez v1, :cond_5

    .line 373
    const/4 v11, 0x0

    goto :goto_0

    .line 376
    :cond_5
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/CopyUidResponse;->getUidMapping()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 377
    .end local v1    # "copyUidResponse":Lcom/fsck/k9/mail/store/imap/CopyUidResponse;
    .end local v3    # "encodedDestinationFolderName":Ljava/lang/String;
    .end local v4    # "escapedDestinationFolderName":Ljava/lang/String;
    .end local v8    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v9    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v7

    .line 378
    .local v7, "ioe":Ljava/io/IOException;
    iget-object v11, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v11, v7}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v11

    throw v11
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 10
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v7, :cond_1

    .line 292
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .line 296
    .local v0, "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "encodedFolderName":Ljava/lang/String;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "escapedFolderName":Ljava/lang/String;
    const-string v7, "CREATE %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 305
    .end local v2    # "encodedFolderName":Ljava/lang/String;
    .end local v3    # "escapedFolderName":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 294
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    goto :goto_0

    .line 296
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 304
    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v5, :cond_2

    .line 310
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    :cond_2
    move v5, v6

    .line 305
    goto :goto_1

    .line 306
    .end local v1    # "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    :catch_1
    move-exception v4

    .line 307
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_3
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v5, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v6, :cond_3

    .line 310
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    :cond_3
    throw v5
.end method

.method public delete(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    :goto_0
    return-void

    .line 401
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    :cond_1
    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v6}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getStore()Lcom/fsck/k9/mail/store/imap/ImapStore;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapFolder;

    move-result-object v2

    .line 405
    .local v2, "remoteTrashFolder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    iget-object v3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-direct {v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "encodedTrashFolderName":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "escapedTrashFolderName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 409
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    const-string v3, "IMAPMessage.delete: attempting to create remote \'%s\' folder for %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v7

    .line 411
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 410
    invoke-static {v3, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    :cond_3
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    .line 416
    :cond_4
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 418
    const-string v3, "IMAPMessage.delete: copying remote %d messages to \'%s\' for %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 418
    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    goto :goto_0

    .line 424
    :cond_6
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMAPMessage.delete: remote Trash folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist and could not be created for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 425
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v3
.end method

.method public delete(Z)V
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ImapFolder.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 1370
    instance-of v1, p1, Lcom/fsck/k9/mail/store/imap/ImapFolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1371
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;

    .line 1372
    .local v0, "otherFolder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1375
    .end local v0    # "otherFolder":Lcom/fsck/k9/mail/store/imap/ImapFolder;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public exists()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 245
    iget-boolean v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->exists:Z

    if-eqz v7, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v5

    .line 255
    :cond_1
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v7, :cond_2

    .line 257
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v0

    .line 261
    .local v0, "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :try_start_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "encodedFolderName":Ljava/lang/String;
    invoke-static {v2}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "escapedFolderName":Ljava/lang/String;
    const-string v7, "STATUS %s (UIDVALIDITY)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 268
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->exists:Z
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v6, :cond_0

    .line 277
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    goto :goto_0

    .line 259
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    .end local v2    # "encodedFolderName":Ljava/lang/String;
    .end local v3    # "escapedFolderName":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    goto :goto_1

    .line 261
    .end local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 271
    .restart local v0    # "connection":Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v5, :cond_3

    .line 277
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v5, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    :cond_3
    move v5, v6

    .line 272
    goto :goto_0

    .line 273
    .end local v1    # "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    :catch_1
    move-exception v4

    .line 274
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-nez v6, :cond_4

    .line 277
    iget-object v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v6, v0}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    :cond_4
    throw v5
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1265
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->open(I)V

    .line 1266
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 1269
    :try_start_0
    const-string v1, "EXPUNGE"

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v1

    throw v1
.end method

.method public fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 34
    .param p2, "fetchProfile"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;",
            "Lcom/fsck/k9/mail/FetchProfile;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 780
    :cond_0
    return-void

    .line 659
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 661
    new-instance v26, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    .local v26, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 663
    .local v17, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/mail/Message;

    .line 664
    .local v16, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v24

    .line 665
    .local v24, "uid":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 669
    .end local v16    # "message":Lcom/fsck/k9/mail/Message;
    .end local v24    # "uid":Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 670
    .local v10, "fetchFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v29, "UID"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 673
    const-string v29, "FLAGS"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_3
    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 677
    const-string v29, "INTERNALDATE"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    const-string v29, "RFC822.SIZE"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 679
    const-string v29, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc reply-to message-id references in-reply-to X-K9mail-Identity)]"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_4
    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 684
    const-string v29, "BODYSTRUCTURE"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_5
    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/fsck/k9/mail/store/StoreConfig;->getMaximumAutoDownloadMessageSize()I

    move-result v15

    .line 689
    .local v15, "maximumAutoDownloadMessageSize":I
    if-lez v15, :cond_c

    .line 690
    sget-object v29, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v30, "BODY.PEEK[]<0.%d>"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v15    # "maximumAutoDownloadMessageSize":I
    :cond_6
    :goto_1
    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 697
    const-string v29, "BODY.PEEK[]"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_7
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x20

    invoke-static/range {v29 .. v30}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v23

    .line 702
    .local v23, "spaceSeparatedFetchFields":Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "windowStart":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 703
    add-int/lit8 v29, v28, 0x64

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v30

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 704
    .local v27, "windowEnd":I
    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v25

    .line 707
    .local v25, "uidWindow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    const/16 v30, 0x2c

    invoke-static/range {v29 .. v30}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, "commaSeparatedUids":Ljava/lang/String;
    const-string v29, "UID FETCH %s (%s)"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v7, v30, v31

    const/16 v31, 0x1

    aput-object v23, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 709
    .local v8, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v8, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 712
    const/16 v18, 0x0

    .line 714
    .local v18, "messageNumber":I
    const/4 v6, 0x0

    .line 715
    .local v6, "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    sget-object v29, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 716
    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 717
    :cond_8
    new-instance v6, Lcom/fsck/k9/mail/store/imap/FetchBodyCallback;

    .end local v6    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/fsck/k9/mail/store/imap/FetchBodyCallback;-><init>(Ljava/util/Map;)V

    .restart local v6    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    move/from16 v19, v18

    .line 721
    .end local v18    # "messageNumber":I
    .local v19, "messageNumber":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v22

    .line 723
    .local v22, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_10

    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v29

    const-string v30, "FETCH"

    invoke-static/range {v29 .. v30}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 724
    const-string v29, "FETCH"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 725
    .local v11, "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    const-string v29, "UID"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 726
    .restart local v24    # "uid":Ljava/lang/String;
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getLong(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v20

    .line 727
    .local v20, "msgSeq":J
    if-eqz v24, :cond_9

    .line 729
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->msgSeqUidMap:Ljava/util/Map;

    move-object/from16 v29, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 731
    const-string v29, "Stored uid \'%s\' for msgSeq %d into map"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v24, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    :cond_9
    :goto_4
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/fsck/k9/mail/Message;

    .line 739
    .restart local v16    # "message":Lcom/fsck/k9/mail/Message;
    if-nez v16, :cond_d

    .line 740
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 741
    const-string v29, "Do not have message in messageMap for UID %s for %s"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v24, v30, v31

    const/16 v31, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    move/from16 v18, v19

    .line 775
    .end local v11    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v16    # "message":Lcom/fsck/k9/mail/Message;
    .end local v19    # "messageNumber":I
    .end local v20    # "msgSeq":J
    .end local v24    # "uid":Ljava/lang/String;
    .restart local v18    # "messageNumber":I
    :cond_b
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v29

    if-eqz v29, :cond_11

    .line 702
    add-int/lit8 v28, v28, 0x64

    goto/16 :goto_2

    .line 692
    .end local v6    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .end local v7    # "commaSeparatedUids":Ljava/lang/String;
    .end local v8    # "command":Ljava/lang/String;
    .end local v18    # "messageNumber":I
    .end local v22    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v23    # "spaceSeparatedFetchFields":Ljava/lang/String;
    .end local v25    # "uidWindow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "windowEnd":I
    .end local v28    # "windowStart":I
    .restart local v15    # "maximumAutoDownloadMessageSize":I
    :cond_c
    const-string v29, "BODY.PEEK[]"

    move-object/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 733
    .end local v15    # "maximumAutoDownloadMessageSize":I
    .restart local v6    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .restart local v7    # "commaSeparatedUids":Ljava/lang/String;
    .restart local v8    # "command":Ljava/lang/String;
    .restart local v11    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v19    # "messageNumber":I
    .restart local v20    # "msgSeq":J
    .restart local v22    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .restart local v23    # "spaceSeparatedFetchFields":Ljava/lang/String;
    .restart local v24    # "uid":Ljava/lang/String;
    .restart local v25    # "uidWindow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "windowEnd":I
    .restart local v28    # "windowStart":I
    :catch_0
    move-exception v9

    .line 734
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v29, "Unable to store uid \'%s\' for msgSeq %d"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v24, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 776
    .end local v6    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .end local v7    # "commaSeparatedUids":Ljava/lang/String;
    .end local v8    # "command":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v19    # "messageNumber":I
    .end local v20    # "msgSeq":J
    .end local v22    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v24    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 777
    .local v13, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v29

    throw v29

    .line 748
    .end local v13    # "ioe":Ljava/io/IOException;
    .restart local v6    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .restart local v7    # "commaSeparatedUids":Ljava/lang/String;
    .restart local v8    # "command":Ljava/lang/String;
    .restart local v11    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v16    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v19    # "messageNumber":I
    .restart local v20    # "msgSeq":J
    .restart local v22    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .restart local v24    # "uid":Ljava/lang/String;
    :cond_d
    if-eqz p3, :cond_12

    .line 749
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "messageNumber":I
    .restart local v18    # "messageNumber":I
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v29

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move/from16 v2, v19

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 752
    :goto_6
    move-object/from16 v0, v16

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    move-object v12, v0

    .line 753
    .local v12, "imapMessage":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    move-result-object v14

    .line 755
    .local v14, "literal":Ljava/lang/Object;
    if-eqz v14, :cond_e

    .line 756
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 757
    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 758
    .local v5, "bodyString":Ljava/lang/String;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 759
    .local v4, "bodyStream":Ljava/io/InputStream;
    invoke-virtual {v12, v4}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 768
    .end local v4    # "bodyStream":Ljava/io/InputStream;
    .end local v5    # "bodyString":Ljava/lang/String;
    :cond_e
    if-eqz p3, :cond_b

    .line 769
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v29

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v29

    invoke-interface {v0, v12, v1, v2}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V

    goto/16 :goto_5

    .line 760
    :cond_f
    instance-of v0, v14, Ljava/lang/Integer;

    move/from16 v29, v0

    if-nez v29, :cond_e

    .line 764
    new-instance v29, Lcom/fsck/k9/mail/MessagingException;

    const-string v30, "Got FETCH response with bogus parameters"

    invoke-direct/range {v29 .. v30}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 772
    .end local v11    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v12    # "imapMessage":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .end local v14    # "literal":Ljava/lang/Object;
    .end local v16    # "message":Lcom/fsck/k9/mail/Message;
    .end local v18    # "messageNumber":I
    .end local v20    # "msgSeq":J
    .end local v24    # "uid":Ljava/lang/String;
    .restart local v19    # "messageNumber":I
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v18, v19

    .end local v19    # "messageNumber":I
    .restart local v18    # "messageNumber":I
    goto/16 :goto_5

    .end local v22    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_11
    move/from16 v19, v18

    .end local v18    # "messageNumber":I
    .restart local v19    # "messageNumber":I
    goto/16 :goto_3

    .restart local v11    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v16    # "message":Lcom/fsck/k9/mail/Message;
    .restart local v20    # "msgSeq":J
    .restart local v22    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .restart local v24    # "uid":Ljava/lang/String;
    :cond_12
    move/from16 v18, v19

    .end local v19    # "messageNumber":I
    .restart local v18    # "messageNumber":I
    goto :goto_6
.end method

.method public fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mail/BodyFactory;)V
    .locals 27
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p4, "bodyFactory"    # Lcom/fsck/k9/mail/BodyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            "Lcom/fsck/k9/mail/Part;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/BodyFactory;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 785
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/Message;>;"
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 787
    invoke-interface/range {p2 .. p2}, Lcom/fsck/k9/mail/Part;->getServerExtra()Ljava/lang/String;

    move-result-object v19

    .line 790
    .local v19, "partId":Ljava/lang/String;
    const-string v22, "TEXT"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/fsck/k9/mail/store/StoreConfig;->getMaximumAutoDownloadMessageSize()I

    move-result v16

    .line 792
    .local v16, "maximumAutoDownloadMessageSize":I
    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v23, "BODY.PEEK[TEXT]<0.%d>"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 798
    .end local v16    # "maximumAutoDownloadMessageSize":I
    .local v11, "fetch":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string v22, "UID FETCH %s (UID %s)"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 802
    const/16 v17, 0x0

    .line 804
    .local v17, "messageNumber":I
    new-instance v7, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/fsck/k9/mail/store/imap/FetchPartCallback;-><init>(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/BodyFactory;)V

    .local v7, "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    move/from16 v18, v17

    .line 807
    .end local v17    # "messageNumber":I
    .local v18, "messageNumber":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v20

    .line 809
    .local v20, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_7

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v22

    const-string v23, "FETCH"

    invoke-static/range {v22 .. v23}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 810
    const-string v22, "FETCH"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 811
    .local v12, "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    const-string v22, "UID"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 813
    .local v21, "uid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 814
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 815
    const-string v22, "Did not ask for UID %s for %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    move/from16 v17, v18

    .line 856
    .end local v12    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v18    # "messageNumber":I
    .end local v21    # "uid":Ljava/lang/String;
    .restart local v17    # "messageNumber":I
    :cond_1
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    if-eqz v22, :cond_8

    .line 860
    return-void

    .line 794
    .end local v7    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .end local v8    # "command":Ljava/lang/String;
    .end local v11    # "fetch":Ljava/lang/String;
    .end local v17    # "messageNumber":I
    .end local v20    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_2
    const-string v22, "BODY.PEEK[%s]"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v19, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "fetch":Ljava/lang/String;
    goto/16 :goto_0

    .line 822
    .restart local v7    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .restart local v8    # "command":Ljava/lang/String;
    .restart local v12    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v18    # "messageNumber":I
    .restart local v20    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .restart local v21    # "uid":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_9

    .line 823
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "messageNumber":I
    .restart local v17    # "messageNumber":I
    const/16 v22, 0x1

    :try_start_1
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 826
    :goto_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    move-object v13, v0

    .line 828
    .local v13, "imapMessage":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleFetchResponse(Lcom/fsck/k9/mail/store/imap/ImapMessage;Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    move-result-object v15

    .line 830
    .local v15, "literal":Ljava/lang/Object;
    if-eqz v15, :cond_4

    .line 831
    instance-of v0, v15, Lcom/fsck/k9/mail/Body;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 833
    check-cast v15, Lcom/fsck/k9/mail/Body;

    .end local v15    # "literal":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 849
    :cond_4
    :goto_4
    if-eqz p3, :cond_1

    .line 850
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messageFinished(Lcom/fsck/k9/mail/Message;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 857
    .end local v7    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .end local v8    # "command":Ljava/lang/String;
    .end local v12    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v13    # "imapMessage":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .end local v17    # "messageNumber":I
    .end local v20    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v21    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 858
    .local v14, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v22

    throw v22

    .line 834
    .end local v14    # "ioe":Ljava/io/IOException;
    .restart local v7    # "callback":Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .restart local v8    # "command":Ljava/lang/String;
    .restart local v12    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v13    # "imapMessage":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .restart local v15    # "literal":Ljava/lang/Object;
    .restart local v17    # "messageNumber":I
    .restart local v20    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .restart local v21    # "uid":Ljava/lang/String;
    :cond_5
    :try_start_2
    instance-of v0, v15, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 835
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 836
    .local v6, "bodyString":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 838
    .local v5, "bodyStream":Ljava/io/InputStream;
    const-string v22, "Content-Transfer-Encoding"

    .line 839
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v9, v22, v23

    .line 840
    .local v9, "contentTransferEncoding":Ljava/lang/String;
    const-string v22, "Content-Type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v10, v22, v23

    .line 841
    .local v10, "contentType":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v9, v10, v5}, Lcom/fsck/k9/mail/BodyFactory;->createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/Body;

    move-result-object v4

    .line 842
    .local v4, "body":Lcom/fsck/k9/mail/Body;
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/fsck/k9/mail/internet/MimeMessageHelper;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    goto :goto_4

    .line 845
    .end local v4    # "body":Lcom/fsck/k9/mail/Body;
    .end local v5    # "bodyStream":Ljava/io/InputStream;
    .end local v6    # "bodyString":Ljava/lang/String;
    .end local v9    # "contentTransferEncoding":Ljava/lang/String;
    .end local v10    # "contentType":Ljava/lang/String;
    :cond_6
    new-instance v22, Lcom/fsck/k9/mail/MessagingException;

    const-string v23, "Got FETCH response with bogus parameters"

    invoke-direct/range {v22 .. v23}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 853
    .end local v12    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v13    # "imapMessage":Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .end local v15    # "literal":Ljava/lang/Object;
    .end local v17    # "messageNumber":I
    .end local v21    # "uid":Ljava/lang/String;
    .restart local v18    # "messageNumber":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v17, v18

    .end local v18    # "messageNumber":I
    .restart local v17    # "messageNumber":I
    goto/16 :goto_2

    :cond_8
    move/from16 v18, v17

    .end local v17    # "messageNumber":I
    .restart local v18    # "messageNumber":I
    goto/16 :goto_1

    .restart local v12    # "fetchList":Lcom/fsck/k9/mail/store/imap/ImapList;
    .restart local v21    # "uid":Ljava/lang/String;
    :cond_9
    move/from16 v17, v18

    .end local v18    # "messageNumber":I
    .restart local v17    # "messageNumber":I
    goto/16 :goto_3
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 464
    const-string v0, "FLAGGED NOT DELETED"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getRemoteMessageCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getHighestUid()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    const-string v0, "UID SEARCH *:*"

    .line 470
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 472
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-static {v3}, Lcom/fsck/k9/mail/store/imap/SearchResponse;->parse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/SearchResponse;

    move-result-object v4

    .line 474
    .local v4, "searchResponse":Lcom/fsck/k9/mail/store/imap/SearchResponse;
    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->extractHighestUid(Lcom/fsck/k9/mail/store/imap/SearchResponse;)J
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 476
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    .end local v4    # "searchResponse":Lcom/fsck/k9/mail/store/imap/SearchResponse;
    :goto_0
    return-wide v6

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 477
    .end local v1    # "e":Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;
    :catch_1
    move-exception v2

    .line 478
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v5, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v5

    throw v5
.end method

.method protected getLogId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-eqz v1, :cond_0

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->getLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapMessage;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/mail/store/imap/ImapMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    return v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Date;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 510
    .local p4, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getMessages(IILjava/util/Date;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMessages(IILjava/util/Date;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .param p4, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Date;",
            "Z",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p5, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    const/4 v8, 0x1

    .line 517
    if-lt p1, v8, :cond_0

    if-lt p2, v8, :cond_0

    if-ge p2, p1, :cond_1

    .line 518
    :cond_0
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Invalid message set %d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1
    invoke-direct {p0, p3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getDateSearchString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, "dateSearchString":Ljava/lang/String;
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolder;IILjava/lang/String;Z)V

    .line 533
    .local v0, "searcher":Lcom/fsck/k9/mail/store/imap/ImapSearcher;
    invoke-direct {p0, v0, p5}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->search(Lcom/fsck/k9/mail/store/imap/ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getMessages(Ljava/util/List;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 2
    .param p2, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "mesgSeqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mail/store/imap/ImapMessage;>;"
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/util/List;Z)V

    .line 599
    .local v0, "searcher":Lcom/fsck/k9/mail/store/imap/ImapSearcher;
    invoke-direct {p0, v0, p3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->search(Lcom/fsck/k9/mail/store/imap/ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getMessagesFromUids(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "mesgUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolder$4;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder$4;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/util/List;)V

    .line 612
    .local v0, "searcher":Lcom/fsck/k9/mail/store/imap/ImapSearcher;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->search(Lcom/fsck/k9/mail/store/imap/ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 13
    .param p1, "oldSerializedPushState"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v8, 0x0

    .line 1311
    :try_start_0
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 1312
    .local v5, "uid":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1314
    .local v2, "messageUid":J
    invoke-static {p1}, Lcom/fsck/k9/mail/store/imap/ImapPushState;->parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapPushState;

    move-result-object v4

    .line 1316
    .local v4, "oldPushState":Lcom/fsck/k9/mail/store/imap/ImapPushState;
    iget-wide v10, v4, Lcom/fsck/k9/mail/store/imap/ImapPushState;->uidNext:J

    cmp-long v9, v2, v10

    if-ltz v9, :cond_0

    .line 1317
    const-wide/16 v10, 0x1

    add-long v6, v2, v10

    .line 1318
    .local v6, "uidNext":J
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapPushState;

    invoke-direct {v1, v6, v7}, Lcom/fsck/k9/mail/store/imap/ImapPushState;-><init>(J)V

    .line 1320
    .local v1, "newPushState":Lcom/fsck/k9/mail/store/imap/ImapPushState;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapPushState;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1326
    .end local v1    # "newPushState":Lcom/fsck/k9/mail/store/imap/ImapPushState;
    .end local v2    # "messageUid":J
    .end local v4    # "oldPushState":Lcom/fsck/k9/mail/store/imap/ImapPushState;
    .end local v5    # "uid":Ljava/lang/String;
    .end local v6    # "uidNext":J
    :cond_0
    :goto_0
    return-object v8

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Exception while updated push state for %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v0, v9, v10}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 12
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 1233
    :try_start_0
    const-string v7, "Message-ID"

    invoke-virtual {p1, v7}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, "messageIdHeader":[Ljava/lang/String;
    array-length v7, v3

    if-nez v7, :cond_1

    .line 1236
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1237
    const-string v7, "Did not get a message-id in order to search for UID  for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1257
    :cond_0
    :goto_0
    return-object v6

    .line 1242
    :cond_1
    const/4 v7, 0x0

    aget-object v2, v3, v7

    .line 1243
    .local v2, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1244
    const-string v7, "Looking for UID for message with message-id %s for %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    :cond_2
    const-string v7, "UID SEARCH HEADER MESSAGE-ID %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1250
    .local v5, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 1251
    .local v4, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SEARCH"

    invoke-static {v8, v9}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1252
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-le v8, v11, :cond_3

    .line 1253
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1258
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "messageIdHeader":[Ljava/lang/String;
    .end local v4    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v5    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 1259
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Could not find UID for message based on Message-ID"

    invoke-direct {v6, v7, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 459
    const-string v0, "UNSEEN NOT DELETED"

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getRemoteMessageCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handlePossibleUidNext(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 10
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 939
    invoke-virtual {p1, v9}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "OK"

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 940
    invoke-virtual {p1, v8}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 941
    .local v1, "bracketedObj":Ljava/lang/Object;
    instance-of v4, v1, Lcom/fsck/k9/mail/store/imap/ImapList;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 942
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 944
    .local v0, "bracketed":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 945
    invoke-virtual {v0, v9}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 946
    .local v3, "keyObj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 947
    check-cast v2, Ljava/lang/String;

    .line 948
    .local v2, "key":Ljava/lang/String;
    const-string v4, "UIDNEXT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 949
    invoke-virtual {v0, v8}, Lcom/fsck/k9/mail/store/imap/ImapList;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->uidNext:J

    .line 950
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 951
    const-string v4, "Got UidNext = %s for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->uidNext:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    .end local v0    # "bracketed":Lcom/fsck/k9/mail/store/imap/ImapList;
    .end local v1    # "bracketedObj":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyObj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 964
    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 965
    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EXISTS"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getNumber(I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    .line 967
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const-string v0, "Got untagged EXISTS with value %d for %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handlePossibleUidNext(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 974
    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EXPUNGE"

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    if-lez v0, :cond_1

    .line 975
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    .line 976
    invoke-static {}, Lcom/fsck/k9/mail/K9MailLib;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    const-string v0, "Got untagged EXPUNGE with messageCount %d for %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    :cond_1
    return-void
.end method

.method protected handleUntaggedResponses(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 932
    .local v0, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 935
    .end local v0    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :cond_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected internalOpen(I)Ljava/util/List;
    .locals 13
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 122
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->mode:I

    if-ne v8, p1, :cond_0

    .line 126
    :try_start_0
    const-string v8, "NOOP"

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 161
    :goto_0
    return-object v7

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "ioe":Ljava/io/IOException;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v8, v3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    .line 132
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_0
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    iget-object v9, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/imap/ImapStore;->releaseConnection(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getConnection()Lcom/fsck/k9/mail/store/imap/ImapConnection;

    move-result-object v8

    iput-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .line 136
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->msgSeqUidMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 141
    if-nez p1, :cond_1

    const-string v5, "SELECT"

    .line 142
    .local v5, "openCommand":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->folderNameCodec:Lcom/fsck/k9/mail/store/imap/FolderNameCodec;

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getPrefixedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/store/imap/FolderNameCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "encodedFolderName":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "escapedFolderName":Ljava/lang/String;
    const-string v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 151
    .local v7, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    iput p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->mode:I

    .line 153
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 154
    .local v6, "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handlePermanentFlags(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 162
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "encodedFolderName":Ljava/lang/String;
    .end local v2    # "escapedFolderName":Ljava/lang/String;
    .end local v5    # "openCommand":Ljava/lang/String;
    .end local v6    # "response":Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .end local v7    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catch_1
    move-exception v3

    .line 163
    .restart local v3    # "ioe":Ljava/io/IOException;
    iget-object v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v8, v3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v8

    throw v8

    .line 136
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 141
    :cond_1
    :try_start_4
    const-string v5, "EXAMINE"

    goto :goto_1

    .line 157
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v1    # "encodedFolderName":Ljava/lang/String;
    .restart local v2    # "escapedFolderName":Ljava/lang/String;
    .restart local v5    # "openCommand":Ljava/lang/String;
    .restart local v7    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :cond_2
    invoke-static {v7}, Lcom/fsck/k9/mail/store/imap/ImapUtility;->getLastResponse(Ljava/util/List;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->handleSelectOrExamineOkResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 159
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->exists:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 164
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "encodedFolderName":Ljava/lang/String;
    .end local v2    # "escapedFolderName":Ljava/lang/String;
    .end local v5    # "openCommand":Ljava/lang/String;
    .end local v7    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/imap/ImapResponse;>;"
    :catch_2
    move-exception v4

    .line 165
    .local v4, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v8, "Unable to open connection for %s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->getLogId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    throw v4
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 3
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/Folder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    .line 388
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;

    move-result-object v0

    .line 390
    .local v0, "uidMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_0
.end method

.method public open(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->internalOpen(I)Ljava/util/List;

    .line 116
    iget v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->messageCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Did not find message count during open"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p2, "requiredFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    .local p3, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v2, 0x0

    .line 1408
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->store:Lcom/fsck/k9/mail/store/imap/ImapStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapStore;->getStoreConfig()Lcom/fsck/k9/mail/store/StoreConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StoreConfig;->allowRemoteSearch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Your settings do not allow remote searching of this account"

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1413
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapFolder$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder$5;-><init>(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 1497
    .local v0, "searcher":Lcom/fsck/k9/mail/store/imap/ImapSearcher;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->open(I)V

    .line 1498
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 1500
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->inSearch:Z

    .line 1502
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->search(Lcom/fsck/k9/mail/store/imap/ImapSearcher;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1504
    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->inSearch:Z

    .line 1502
    return-object v1

    .line 1504
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->inSearch:Z

    throw v1
.end method

.method public setFlags(Ljava/util/List;Ljava/util/Set;Z)V
    .locals 9
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .local p2, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v5, 0x0

    .line 1333
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->open(I)V

    .line 1334
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 1336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1337
    .local v4, "uids":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1338
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Message;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1342
    :cond_0
    :try_start_0
    const-string v6, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v8, 0x2c

    invoke-static {v4, v8}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    if-eqz p3, :cond_1

    const-string v5, "+"

    :goto_1
    aput-object v5, v7, v8

    const/4 v5, 0x2

    .line 1343
    invoke-direct {p0, p2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combineFlags(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 1342
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1348
    return-void

    .line 1342
    .end local v0    # "command":Ljava/lang/String;
    :cond_1
    const-string v5, "-"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1345
    :catch_0
    move-exception v3

    .line 1346
    .local v3, "ioe":Ljava/io/IOException;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v5, v3}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v5

    throw v5
.end method

.method public setFlags(Ljava/util/Set;Z)V
    .locals 6
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v2, 0x0

    .line 1297
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->open(I)V

    .line 1298
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->checkOpen()V

    .line 1301
    :try_start_0
    const-string v3, "UID STORE 1:* %sFLAGS.SILENT (%s)"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const-string v2, "+"

    :goto_0
    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->combineFlags(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1306
    return-void

    .line 1301
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    const-string v2, "-"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v1

    .line 1304
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder;->connection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->ioExceptionHandler(Lcom/fsck/k9/mail/store/imap/ImapConnection;Ljava/io/IOException;)Lcom/fsck/k9/mail/MessagingException;

    move-result-object v2

    throw v2
.end method
