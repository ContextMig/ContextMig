.class public Lcom/fsck/k9/mailstore/LocalStore;
.super Lcom/fsck/k9/mail/Store;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;,
        Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    }
.end annotation


# static fields
.field private static final ATTACH_DATA_INDEX:I = 0x4

.field private static final ATTACH_ENCODING_INDEX:I = 0x3

.field private static final ATTACH_LOCATION_INDEX:I = 0x2

.field private static final ATTACH_PART_ID_INDEX:I = 0x0

.field private static final ATTACH_ROOT_INDEX:I = 0x1

.field public static final DB_VERSION:I = 0x3d

.field static final EMPTY_BYTE_ARRAY:[B

.field static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final FLAG_UPDATE_BATCH_SIZE:I = 0x1f4

.field static final FOLDER_DISPLAY_CLASS_INDEX:I = 0xb

.field static final FOLDER_ID_INDEX:I = 0x0

.field static final FOLDER_INTEGRATE_INDEX:I = 0x7

.field static final FOLDER_LAST_CHECKED_INDEX:I = 0x3

.field static final FOLDER_LAST_PUSHED_INDEX:I = 0x6

.field static final FOLDER_NAME_INDEX:I = 0x1

.field static final FOLDER_NOTIFY_CLASS_INDEX:I = 0xc

.field static final FOLDER_PUSH_CLASS_INDEX:I = 0xa

.field static final FOLDER_PUSH_STATE_INDEX:I = 0x5

.field static final FOLDER_STATUS_INDEX:I = 0x4

.field static final FOLDER_SYNC_CLASS_INDEX:I = 0x9

.field static final FOLDER_TOP_GROUP_INDEX:I = 0x8

.field static final FOLDER_VISIBLE_LIMIT_INDEX:I = 0x2

.field private static final GET_ATTACHMENT_COLS:[Ljava/lang/String;

.field static final GET_FOLDER_COLS:Ljava/lang/String; = "folders.id, name, visible_limit, last_updated, status, push_state, last_pushed, integrate, top_group, poll_class, push_class, display_class, notify_class, more_messages"

.field static GET_MESSAGES_COLS:Ljava/lang/String; = null

.field static final MORE_MESSAGES_INDEX:I = 0xd

.field static final MSG_INDEX_ATTACHMENT_COUNT:I = 0xa

.field static final MSG_INDEX_BCC:I = 0x8

.field static final MSG_INDEX_CC:I = 0x7

.field static final MSG_INDEX_DATE:I = 0x2

.field static final MSG_INDEX_FLAGS:I = 0x4

.field static final MSG_INDEX_FLAG_ANSWERED:I = 0x14

.field static final MSG_INDEX_FLAG_DELETED:I = 0x11

.field static final MSG_INDEX_FLAG_FLAGGED:I = 0x13

.field static final MSG_INDEX_FLAG_FORWARDED:I = 0x15

.field static final MSG_INDEX_FLAG_READ:I = 0x12

.field static final MSG_INDEX_FOLDER_ID:I = 0xd

.field static final MSG_INDEX_HEADER_DATA:I = 0x19

.field static final MSG_INDEX_ID:I = 0x5

.field static final MSG_INDEX_INTERNAL_DATE:I = 0xb

.field static final MSG_INDEX_MESSAGE_ID_HEADER:I = 0xc

.field static final MSG_INDEX_MESSAGE_PART_ID:I = 0x16

.field static final MSG_INDEX_MIME_TYPE:I = 0x17

.field static final MSG_INDEX_PREVIEW:I = 0xe

.field static final MSG_INDEX_PREVIEW_TYPE:I = 0x18

.field static final MSG_INDEX_REPLY_TO:I = 0x9

.field static final MSG_INDEX_SENDER_LIST:I = 0x1

.field static final MSG_INDEX_SUBJECT:I = 0x0

.field static final MSG_INDEX_THREAD_ID:I = 0xf

.field static final MSG_INDEX_THREAD_ROOT_ID:I = 0x10

.field static final MSG_INDEX_TO:I = 0x6

.field static final MSG_INDEX_UID:I = 0x3

.field private static final THREAD_FLAG_UPDATE_BATCH_SIZE:I = 0x1f4

.field static final UID_CHECK_BATCH_SIZE:I = 0x1f4

.field static final UID_CHECK_PROJECTION:[Ljava/lang/String;

.field private static sAccountLocks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalStores:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mailstore/LocalStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final account:Lcom/fsck/k9/Account;

.field private final attachmentCounter:Lcom/fsck/k9/message/extractors/AttachmentCounter;

.field private final attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;

.field private final database:Lcom/fsck/k9/mailstore/LockableDatabase;

.field private final messageFulltextCreator:Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

.field private final messagePreviewCreator:Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

.field private final pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 79
    new-array v0, v2, [B

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_BYTE_ARRAY:[B

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->sAccountLocks:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->sLocalStores:Ljava/util/concurrent/ConcurrentMap;

    .line 97
    const-string v0, "subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header "

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    .line 149
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "uid"

    aput-object v1, v0, v2

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->UID_CHECK_PROJECTION:[Ljava/lang/String;

    .line 151
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v2

    const-string v1, "root"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data_location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->GET_ATTACHMENT_COLS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/fsck/k9/Account;Landroid/content/Context;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/fsck/k9/mail/Store;-><init>()V

    .line 199
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore;->context:Landroid/content/Context;

    .line 200
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->contentResolver:Landroid/content/ContentResolver;

    .line 202
    invoke-static {}, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->newInstance()Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->messagePreviewCreator:Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    .line 203
    invoke-static {}, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->newInstance()Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->messageFulltextCreator:Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    .line 204
    invoke-static {}, Lcom/fsck/k9/message/extractors/AttachmentCounter;->newInstance()Lcom/fsck/k9/message/extractors/AttachmentCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->attachmentCounter:Lcom/fsck/k9/message/extractors/AttachmentCounter;

    .line 205
    invoke-static {}, Lcom/fsck/k9/controller/PendingCommandSerializer;->getInstance()Lcom/fsck/k9/controller/PendingCommandSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 206
    invoke-static {}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->getInstance()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 208
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    .line 210
    new-instance v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/mailstore/StoreSchemaDefinition;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/StoreSchemaDefinition;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fsck/k9/mailstore/LockableDatabase$SchemaDefinition;)V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 211
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->setStorageProviderId(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->open()V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/mailstore/LockableDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/mailstore/LocalStore;)Lcom/fsck/k9/controller/PendingCommandSerializer;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalStore;->writeAttachmentDataToOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/fsck/k9/mailstore/LocalStore;->GET_ATTACHMENT_COLS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mailstore/LocalStore;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Landroid/database/Cursor;
    .param p3, "x3"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalStore;->writeCursorPartsToOutputStream(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/OutputStream;)V

    return-void
.end method

.method private deleteAllMessageDataFromDisk()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalStore;->markAllMessagePartsDataAsMissing()V

    .line 447
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalStore;->deleteAllMessagePartsDataFromDisk()V

    .line 448
    return-void
.end method

.method private deleteAllMessagePartsDataFromDisk()V
    .locals 7

    .prologue
    .line 464
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v3

    .line 465
    .local v3, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    .line 466
    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v5

    .line 465
    invoke-virtual {v3, v4, v5}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 467
    .local v0, "attachmentDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 468
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 477
    :cond_0
    return-void

    .line 472
    :cond_1
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 473
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 472
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;I)V
    .locals 10
    .param p1, "selectionCallback"    # Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;
    .param p2, "batchSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v5, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1022
    .local v6, "start":I
    :goto_0
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->getListSize()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    .local v4, "selection":Ljava/lang/StringBuilder;
    const-string v7, " IN ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->getListSize()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1029
    .local v0, "count":I
    move v3, v6

    .local v3, "i":I
    add-int v2, v6, v0

    .local v2, "end":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1030
    if-le v3, v6, :cond_0

    .line 1031
    const-string v7, ",?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :goto_2
    invoke-interface {p1, v3}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->getListItem(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1033
    :cond_0
    const-string v7, "?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1039
    :cond_1
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    :try_start_0
    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v8, 0x1

    new-instance v9, Lcom/fsck/k9/mailstore/LocalStore$20;

    invoke-direct {v9, p0, p1, v4, v5}, Lcom/fsck/k9/mailstore/LocalStore$20;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v7, v8, v9}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1054
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->postDbWork()V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1061
    add-int/2addr v6, v0

    .line 1062
    goto :goto_0

    .line 1056
    :catch_0
    move-exception v1

    .line 1057
    .local v1, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/MessagingException;

    throw v7

    .line 1063
    .end local v0    # "count":I
    .end local v1    # "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "selection":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method static findPartById(Lcom/fsck/k9/mail/Part;J)Lcom/fsck/k9/mail/Part;
    .locals 11
    .param p0, "searchRoot"    # Lcom/fsck/k9/mail/Part;
    .param p1, "partId"    # J

    .prologue
    .line 763
    instance-of v7, p0, Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v7, :cond_0

    move-object v4, p0

    .line 764
    check-cast v4, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 765
    .local v4, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v8

    cmp-long v7, v8, p1

    if-nez v7, :cond_0

    .line 796
    .end local v4    # "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    :goto_0
    return-object v4

    .line 770
    :cond_0
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 771
    .local v6, "partStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {v6, p0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 774
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Part;

    .line 776
    .local v5, "part":Lcom/fsck/k9/mail/Part;
    instance-of v7, v5, Lcom/fsck/k9/mailstore/LocalPart;

    if-eqz v7, :cond_2

    move-object v3, v5

    .line 777
    check-cast v3, Lcom/fsck/k9/mailstore/LocalPart;

    .line 778
    .local v3, "localBodyPart":Lcom/fsck/k9/mailstore/LocalPart;
    invoke-interface {v3}, Lcom/fsck/k9/mailstore/LocalPart;->getPartId()J

    move-result-wide v8

    cmp-long v7, v8, p1

    if-nez v7, :cond_2

    move-object v4, v5

    .line 779
    goto :goto_0

    .line 783
    .end local v3    # "localBodyPart":Lcom/fsck/k9/mailstore/LocalPart;
    :cond_2
    invoke-interface {v5}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 784
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v7, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v7, :cond_3

    move-object v1, v0

    .line 785
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 786
    .local v1, "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/BodyPart;

    .line 787
    .local v2, "innerPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v6, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 791
    .end local v1    # "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    .end local v2    # "innerPart":Lcom/fsck/k9/mail/BodyPart;
    :cond_3
    instance-of v7, v0, Lcom/fsck/k9/mail/Part;

    if-eqz v7, :cond_1

    .line 792
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v6, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 796
    .end local v5    # "part":Lcom/fsck/k9/mail/Part;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;
    .locals 2
    .param p0, "flag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 1292
    sget-object v0, Lcom/fsck/k9/mailstore/LocalStore$24;->$SwitchMap$com$fsck$k9$mail$Flag:[I

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Flag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Flag must be a special column flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :pswitch_0
    const-string v0, "read"

    .line 1303
    :goto_0
    return-object v0

    .line 1297
    :pswitch_1
    const-string v0, "flagged"

    goto :goto_0

    .line 1300
    :pswitch_2
    const-string v0, "answered"

    goto :goto_0

    .line 1303
    :pswitch_3
    const-string v0, "forwarded"

    goto :goto_0

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getFolderCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$5;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalStore$5;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInstance(Lcom/fsck/k9/Account;Landroid/content/Context;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 4
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "accountUuid":Ljava/lang/String;
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->sAccountLocks:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->sAccountLocks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 232
    :try_start_0
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->sLocalStores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/LocalStore;

    .line 234
    .local v1, "store":Lcom/fsck/k9/mailstore/LocalStore;
    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore;

    .end local v1    # "store":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore;-><init>(Lcom/fsck/k9/Account;Landroid/content/Context;)V

    .line 239
    .restart local v1    # "store":Lcom/fsck/k9/mailstore/LocalStore;
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->sLocalStores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    monitor-exit v3

    return-object v1

    .line 243
    .end local v1    # "store":Lcom/fsck/k9/mailstore/LocalStore;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getMessageCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$4;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalStore$4;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getRawAttachmentInputStream(Ljava/lang/String;ILandroid/database/Cursor;)Ljava/io/InputStream;
    .locals 4
    .param p1, "partId"    # Ljava/lang/String;
    .param p2, "location"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 856
    packed-switch p2, :pswitch_data_0

    .line 866
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unhandled case"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :pswitch_0
    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 859
    .local v0, "data":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 863
    .end local v0    # "data":[B
    :goto_0
    return-object v2

    .line 862
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 863
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadLocalMessageByMessageId(J)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 11
    .param p1, "messageId"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 820
    .line 821
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7, v9}, Lcom/fsck/k9/mailstore/LocalStore;->getFoldersAndUids(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v3

    .line 822
    .local v3, "foldersAndUids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v8

    .line 837
    :goto_0
    return-object v5

    .line 826
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 827
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 828
    .local v2, "folderName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 830
    .local v6, "uid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v1

    .line 831
    .local v1, "folder":Lcom/fsck/k9/mailstore/LocalFolder;
    invoke-virtual {v1, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v5

    .line 833
    .local v5, "localMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    new-instance v4, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v4}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 834
    .local v4, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v7, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    goto :goto_0
.end method

.method private loadLocalMessageByRootPartId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rootPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 800
    const-string v1, "messages"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v6

    const-string v3, "message_part_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 806
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 812
    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 815
    :goto_0
    return-object v5

    .line 810
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 812
    .local v10, "messageId":J
    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 815
    invoke-direct {p0, v10, v11}, Lcom/fsck/k9/mailstore/LocalStore;->loadLocalMessageByMessageId(J)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v5

    goto :goto_0

    .line 812
    .end local v10    # "messageId":J
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method private markAllMessagePartsDataAsMissing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$7;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public static removeAccount(Lcom/fsck/k9/Account;)V
    .locals 5
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 248
    :try_start_0
    invoke-static {p0}, Lcom/fsck/k9/mailstore/LocalStore;->removeInstance(Lcom/fsck/k9/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to reset local store for account %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static removeInstance(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "accountUuid":Ljava/lang/String;
    sget-object v1, Lcom/fsck/k9/mailstore/LocalStore;->sLocalStores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method static serializeFlags(Ljava/lang/Iterable;)Ljava/lang/String;
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
    .line 956
    .local p0, "flags":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/fsck/k9/mail/Flag;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v0, "extraFlags":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Flag;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Flag;

    .line 959
    .local v1, "flag":Lcom/fsck/k9/mail/Flag;
    sget-object v3, Lcom/fsck/k9/mailstore/LocalStore$24;->$SwitchMap$com$fsck$k9$mail$Flag:[I

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Flag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 968
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 973
    .end local v1    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_0
    const/16 v2, 0x2c

    invoke-static {v0, v2}, Lcom/fsck/k9/helper/Utility;->combine(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeAttachmentDataToOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "partId"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalStore$16;

    invoke-direct {v3, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalStore$16;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 723
    return-void

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Got a MessagingException while writing attachment data!"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 720
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    :catch_1
    move-exception v0

    .line 721
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private writeCursorPartsToOutputStream(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 727
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 728
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "partId":Ljava/lang/String;
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 731
    .local v0, "location":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_2

    .line 732
    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/fsck/k9/mailstore/LocalStore;->writeSimplePartToOutputStream(Ljava/lang/String;Landroid/database/Cursor;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 733
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 734
    invoke-direct {p0, p2, p1, p3}, Lcom/fsck/k9/mailstore/LocalStore;->writeRawBodyToStream(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 737
    .end local v0    # "location":I
    .end local v1    # "partId":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private writeRawBodyToStream(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 741
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 742
    .local v4, "partId":J
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "rootPart":Ljava/lang/String;
    invoke-direct {p0, p2, v3}, Lcom/fsck/k9/mailstore/LocalStore;->loadLocalMessageByRootPartId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v1

    .line 745
    .local v1, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    if-nez v1, :cond_0

    .line 746
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Unable to find message for attachment!"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 749
    :cond_0
    invoke-static {v1, v4, v5}, Lcom/fsck/k9/mailstore/LocalStore;->findPartById(Lcom/fsck/k9/mail/Part;J)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    .line 750
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    if-nez v2, :cond_1

    .line 751
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Unable to find attachment part in associated message (db integrity error?)"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 754
    :cond_1
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 755
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    if-nez v0, :cond_2

    .line 756
    new-instance v6, Lcom/fsck/k9/mail/MessagingException;

    const-string v7, "Attachment part isn\'t available!"

    invoke-direct {v6, v7}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 759
    :cond_2
    invoke-interface {v0, p3}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 760
    return-void
.end method

.method private writeSimplePartToOutputStream(Ljava/lang/String;Landroid/database/Cursor;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "partId"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 843
    .local v2, "location":I
    invoke-direct {p0, p1, v2, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getRawAttachmentInputStream(Ljava/lang/String;ILandroid/database/Cursor;)Ljava/io/InputStream;

    move-result-object v1

    .line 846
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x3

    :try_start_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDecodingInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 848
    invoke-static {v1, p3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 852
    return-void

    .line 850
    .end local v0    # "encoding":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3
.end method


# virtual methods
.method public addPendingCommand(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    .locals 4
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 524
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "command"

    invoke-virtual {p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->getCommandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v1, "data"

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/controller/PendingCommandSerializer;->serialize(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalStore$10;

    invoke-direct {v3, p0, v0}, Lcom/fsck/k9/mailstore/LocalStore$10;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 533
    return-void
.end method

.method public checkSettings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 435
    return-void
.end method

.method public clear()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "Before prune size = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalStore;->deleteAllMessageDataFromDisk()V

    .line 327
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    const-string v0, "After prune / before compaction size = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    const-string v0, "Before clear folder count = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getFolderCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    const-string v0, "Before clear message count = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    const-string v0, "After prune / before clear size = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$3;

    invoke-direct {v1, p0}, Lcom/fsck/k9/mailstore/LocalStore$3;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 351
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->compact()V

    .line 353
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const-string v0, "After clear message count = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    const-string v0, "After clear size = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_2
    return-void
.end method

.method public compact()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 302
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "Before compaction size = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/mailstore/LocalStore$2;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 314
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    const-string v0, "After compaction size = %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_1
    return-void
.end method

.method public createFolders(Ljava/util/List;I)V
    .locals 3
    .param p2, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 907
    .local p1, "foldersToCreate":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$19;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalStore$19;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;I)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 952
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->delete()V

    .line 439
    return-void
.end method

.method getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method getAttachmentCounter()Lcom/fsck/k9/message/extractors/AttachmentCounter;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->attachmentCounter:Lcom/fsck/k9/message/extractors/AttachmentCounter;

    return-object v0
.end method

.method public getAttachmentDataSource(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
    .locals 1
    .param p1, "partId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 689
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$15;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$15;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method getAttachmentFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "attachmentId"    # Ljava/lang/String;

    .prologue
    .line 894
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v1

    .line 895
    .local v1, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    .line 896
    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v3

    .line 895
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 897
    .local v0, "attachmentDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public getAttachmentInfo(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;
    .locals 3
    .param p1, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$14;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$14;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$AttachmentInfo;

    return-object v0
.end method

.method getAttachmentInfoExtractor()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    return-object v0
.end method

.method getDecodingInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "rawInputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 871
    const-string v0, "base64"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$17;

    invoke-direct {v0, p0, p1, p1}, Lcom/fsck/k9/mailstore/LocalStore$17;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object p1, v0

    .line 890
    .end local p1    # "rawInputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p1

    .line 880
    .restart local p1    # "rawInputStream":Ljava/io/InputStream;
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$18;

    invoke-direct {v0, p0, p1, p1}, Lcom/fsck/k9/mailstore/LocalStore$18;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFoldersAndUids(Ljava/util/List;Z)Ljava/util/Map;
    .locals 3
    .param p2, "threadedList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1223
    .local p1, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1225
    .local v0, "folderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$23;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/fsck/k9/mailstore/LocalStore$23;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;ZLjava/util/Map;)V

    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;I)V

    .line 1288
    return-object v0
.end method

.method public getMessageFulltextCreator()Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->messageFulltextCreator:Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    return-object v0
.end method

.method getMessagePreviewCreator()Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->messagePreviewCreator:Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    return-object v0
.end method

.method getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p2, "folder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p3, "queryString"    # Ljava/lang/String;
    .param p4, "placeHolders"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    iget-object v8, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v9, 0x0

    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$13;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/mailstore/LocalStore$13;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Lcom/fsck/k9/mail/MessageRetrievalListener;)V

    invoke-virtual {v8, v9, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 640
    .local v7, "j":I
    if-eqz p1, :cond_0

    .line 641
    invoke-interface {p1, v7}, Lcom/fsck/k9/mail/MessageRetrievalListener;->messagesFinished(I)V

    .line 644
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInThread(J)Ljava/util/List;
    .locals 5
    .param p1, "rootId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "rootIdString":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    .line 652
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$SearchField;->THREAD_ID:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {v1, v2, v0, v3}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 654
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/fsck/k9/mailstore/LocalStore;->searchForMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/search/LocalSearch;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getPendingCommands()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$9;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalStore$9;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPersonalNamespaces(Z)Ljava/util/List;
    .locals 5
    .param p1, "forceListAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 401
    .local v1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mailstore/LocalStore$6;

    invoke-direct {v4, p0, v1}, Lcom/fsck/k9/mailstore/LocalStore$6;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;)V

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    return-object v1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/MessagingException;

    throw v2
.end method

.method public getSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v1

    .line 279
    .local v1, "storageManager":Lcom/fsck/k9/mailstore/StorageManager;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 280
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->getStorageProviderId()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/StorageManager;->getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 282
    .local v0, "attachmentDirectory":Ljava/io/File;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mailstore/LocalStore$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/io/File;Lcom/fsck/k9/mailstore/StorageManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method protected getStorage()Lcom/fsck/k9/preferences/Storage;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v0

    return-object v0
.end method

.method public isCopyCapable()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveCapable()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method notifyChange()V
    .locals 4

    .prologue
    .line 998
    sget-object v1, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/messages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 999
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1000
    return-void
.end method

.method public recreate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mailstore/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->recreate()V

    .line 443
    return-void
.end method

.method public removePendingCommand(Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V
    .locals 3
    .param p1, "command"    # Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$11;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$11;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public removePendingCommands()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$12;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalStore$12;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 553
    return-void
.end method

.method public resetVisibleLimits(I)V
    .locals 4
    .param p1, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "visible_limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "more_messages"

    sget-object v2, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalStore$8;

    invoke-direct {v3, p0, v0}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Landroid/content/ContentValues;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method public searchForMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/search/LocalSearch;)Ljava/util/List;
    .locals 10
    .param p2, "search"    # Lcom/fsck/k9/search/LocalSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;",
            "Lcom/fsck/k9/search/LocalSearch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "retrievalListener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v0, "query":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v1, "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lcom/fsck/k9/Account;

    invoke-virtual {p2}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v6

    invoke-static {v5, v6, v0, v1}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClause(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 573
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "id"

    aput-object v6, v5, v8

    const-string v6, "messages."

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 573
    invoke-static {v5, v6, v7}, Lcom/fsck/k9/search/SqlQueryBuilder;->addPrefixToSelection([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "where":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 578
    .local v2, "selectionArgs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/mailstore/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "FROM messages LEFT JOIN threads ON (threads.message_id = messages.id) LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN folders ON (folders.id = messages.folder_id) WHERE (empty = 0 AND deleted = 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 583
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY date DESC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "sqlQuery":Ljava/lang/String;
    const-string v5, "Query = %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v3, v2}, Lcom/fsck/k9/mailstore/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 583
    .end local v3    # "sqlQuery":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    goto :goto_0
.end method

.method public setFlag(Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 3
    .param p2, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p3, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1124
    .local p1, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1125
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1127
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$21;

    invoke-direct {v1, p0, p1, v0}, Lcom/fsck/k9/mailstore/LocalStore$21;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;Landroid/content/ContentValues;)V

    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;I)V

    .line 1152
    return-void
.end method

.method public setFlagForThreads(Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 3
    .param p2, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p3, "newState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/fsck/k9/mail/Flag;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1172
    .local p1, "threadRootIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p2}, Lcom/fsck/k9/mailstore/LocalStore;->getColumnNameForFlag(Lcom/fsck/k9/mail/Flag;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "flagColumn":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/mailstore/LocalStore$22;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/fsck/k9/mailstore/LocalStore$22;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;I)V

    .line 1204
    return-void
.end method

.method public switchLocalStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "newStorageProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->switchProvider(Ljava/lang/String;)V

    .line 261
    return-void
.end method
