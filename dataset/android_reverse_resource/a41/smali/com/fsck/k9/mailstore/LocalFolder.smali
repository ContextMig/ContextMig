.class public Lcom/fsck/k9/mailstore/LocalFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "LocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;,
        Lcom/fsck/k9/mailstore/LocalFolder$DataLocation;,
        Lcom/fsck/k9/mailstore/LocalFolder$MessagePartType;,
        Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;,
        Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fsck/k9/mail/Folder",
        "<",
        "Lcom/fsck/k9/mailstore/LocalMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_MESSAGE_PART_ID:J = -0x1L

.field private static final MAX_BODY_SIZE_FOR_DATABASE:I = 0x4000


# instance fields
.field private final attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

.field private databaseId:J

.field private displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private isInTopGroup:Z

.field private isIntegrate:Z

.field private lastUid:Ljava/lang/Integer;

.field private final localStore:Lcom/fsck/k9/mailstore/LocalStore;

.field private moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

.field private name:Ljava/lang/String;

.field private notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private prefId:Ljava/lang/String;

.field private pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private pushState:Ljava/lang/String;

.field private syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private visibleLimit:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;J)V
    .locals 4
    .param p1, "localStore"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p2, "databaseId"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    .line 80
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    .line 83
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->prefId:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 86
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 87
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 88
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 90
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushState:Ljava/lang/String;

    .line 91
    iput-boolean v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    .line 92
    iput-boolean v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    .line 96
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->lastUid:Ljava/lang/Integer;

    .line 97
    sget-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 115
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 116
    iput-wide p2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 117
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentInfoExtractor()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V
    .locals 4
    .param p1, "localStore"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/fsck/k9/mail/Folder;-><init>()V

    .line 80
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    .line 83
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->prefId:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 86
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 87
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 88
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 90
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushState:Ljava/lang/String;

    .line 91
    iput-boolean v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    .line 92
    iput-boolean v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    .line 96
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->lastUid:Ljava/lang/Integer;

    .line 97
    sget-object v0, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 102
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 103
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentInfoExtractor()Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 106
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 108
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mailstore/LocalFolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/mailstore/LocalFolder;)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/mailstore/LocalFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    return v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->loadMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalMessage;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mailstore/LocalStore;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mailstore/ThreadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mailstore/ThreadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;ZLjava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Lcom/fsck/k9/mail/Message;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->saveMessage(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;ZLjava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;J)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Landroid/content/ContentValues;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Part;
    .param p4, "x4"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/fsck/k9/mailstore/LocalFolder;->updateOrInsertMessagePart(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessageDataFromDisk(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->hasThreadChildren(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getEmptyThreadParent(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessageRow(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # J

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessagePartsFromDisk(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/mailstore/LocalFolder;)Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/mailstore/LocalFolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    return v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/mailstore/LocalFolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    return v0
.end method

.method static synthetic access$801(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Folder;->setLastChecked(J)V

    return-void
.end method

.method static synthetic access$901(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Folder;->setLastPush(J)V

    return-void
.end method

.method private addChildrenToStack(Ljava/util/Stack;Lcom/fsck/k9/mail/Part;J)V
    .locals 7
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "parentMessageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;",
            ">;",
            "Lcom/fsck/k9/mail/Part;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1644
    .local p1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;>;"
    invoke-interface {p2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 1645
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v5, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 1646
    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 1647
    .local v4, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1648
    invoke-virtual {v4, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    .line 1649
    .local v1, "childPart":Lcom/fsck/k9/mail/BodyPart;
    new-instance v5, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;

    invoke-direct {v5, p3, p4, v1}, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;-><init>(JLcom/fsck/k9/mail/Part;)V

    invoke-virtual {p1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1651
    .end local v1    # "childPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "i":I
    .end local v4    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_0
    instance-of v5, v0, Lcom/fsck/k9/mail/Message;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 1652
    check-cast v3, Lcom/fsck/k9/mail/Message;

    .line 1653
    .local v3, "innerMessage":Lcom/fsck/k9/mail/Message;
    new-instance v5, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;

    invoke-direct {v5, p3, p4, v3}, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;-><init>(JLcom/fsck/k9/mail/Part;)V

    invoke-virtual {p1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    .end local v3    # "innerMessage":Lcom/fsck/k9/mail/Message;
    :cond_1
    return-void
.end method

.method private appendMessages(Ljava/util/List;Z)Ljava/util/Map;
    .locals 5
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;Z)",
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
    .line 1282
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1284
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1285
    .local v1, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/fsck/k9/mailstore/LocalFolder$17;

    invoke-direct {v4, p0, p1, p2, v1}, Lcom/fsck/k9/mailstore/LocalFolder$17;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZLjava/util/Map;)V

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1299
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    return-object v1

    .line 1302
    .end local v1    # "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/MessagingException;

    throw v2
.end method

.method private decodeAndCountBytes(Ljava/io/File;Ljava/lang/String;J)J
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "fallbackValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1598
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->decodeAndCountBytes(Ljava/io/InputStream;Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1600
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1598
    return-wide v2

    .line 1600
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private decodeAndCountBytes(Ljava/io/InputStream;Ljava/lang/String;J)J
    .locals 5
    .param p1, "rawInputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "fallbackValue"    # J

    .prologue
    .line 1605
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v3, p1, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getDecodingInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1607
    .local v1, "decodingInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    invoke-direct {v0}, Lcom/fsck/k9/mail/filter/CountingOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1609
    .local v0, "countingOutputStream":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    :try_start_1
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1611
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/CountingOutputStream;->getCount()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p3

    .line 1617
    .end local p3    # "fallbackValue":J
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1613
    :goto_0
    return-wide p3

    .line 1612
    .restart local p3    # "fallbackValue":J
    :catch_0
    move-exception v2

    .line 1617
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1618
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1616
    .end local v0    # "countingOutputStream":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1617
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1618
    :goto_1
    throw v3

    .end local p3    # "fallbackValue":J
    .restart local v0    # "countingOutputStream":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0    # "countingOutputStream":Lcom/fsck/k9/mail/filter/CountingOutputStream;
    .restart local p3    # "fallbackValue":J
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private decodeAndCountBytes([BLjava/lang/String;J)J
    .locals 5
    .param p1, "bodyData"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "fallbackValue"    # J

    .prologue
    .line 1590
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1591
    .local v0, "rawInputStream":Ljava/io/ByteArrayInputStream;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/fsck/k9/mailstore/LocalFolder;->decodeAndCountBytes(Ljava/io/InputStream;Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private deleteMessageDataFromDisk(J)V
    .locals 3
    .param p1, "rootMessagePartId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$25;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$25;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2036
    return-void
.end method

.method private deleteMessageParts(J)V
    .locals 3
    .param p1, "rootMessagePartId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$24;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$24;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2026
    return-void
.end method

.method private deleteMessagePartsFromDisk(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rootMessagePartId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2039
    const-string v1, "message_parts"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v6

    const-string v3, "root = ? AND data_location = 2"

    new-array v4, v4, [Ljava/lang/String;

    .line 2041
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 2039
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2043
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2045
    .local v10, "messagePartId":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0, v10}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 2046
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    const-string v0, "Couldn\'t delete message part file: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2053
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "messagePartId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2055
    return-void
.end method

.method private deleteMessageRow(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # J

    .prologue
    .line 1998
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2001
    .local v0, "idArg":[Ljava/lang/String;
    const-string v1, "messages"

    const-string v2, "id = ?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2005
    const-string v1, "threads"

    const-string v2, "message_id = ?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2006
    return-void
.end method

.method private destroyMessage(JJLjava/lang/String;)V
    .locals 11
    .param p1, "messageId"    # J
    .param p3, "messagePartId"    # J
    .param p5, "messageIdHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v8

    const/4 v9, 0x1

    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$23;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder$23;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;JJLjava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1935
    return-void

    .line 1930
    :catch_0
    move-exception v7

    .line 1931
    .local v7, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method private doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mailstore/ThreadInfo;
    .locals 34
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2137
    const-wide/16 v26, -0x1

    .line 2138
    .local v26, "rootId":J
    const-wide/16 v22, -0x1

    .line 2140
    .local v22, "parentId":J
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v9

    .line 2143
    .local v9, "messageId":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/ThreadInfo;

    move-result-object v18

    .line 2146
    .local v18, "msgThreadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    const-string v4, "References"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 2147
    .local v24, "referencesArray":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2148
    .local v17, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    array-length v4, v0

    if-lez v4, :cond_0

    .line 2149
    const/4 v4, 0x0

    aget-object v4, v24, v4

    invoke-static {v4}, Lcom/fsck/k9/helper/Utility;->extractMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 2153
    :cond_0
    const-string v4, "In-Reply-To"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2155
    .local v16, "inReplyToArray":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v4, v0

    if-lez v4, :cond_1

    .line 2156
    const/4 v4, 0x0

    aget-object v4, v16, v4

    invoke-static {v4}, Lcom/fsck/k9/helper/Utility;->extractMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2157
    .local v15, "inReplyTo":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 2158
    if-nez v17, :cond_2

    .line 2159
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2160
    .restart local v17    # "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2167
    .end local v15    # "inReplyTo":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v17, :cond_4

    .line 2169
    if-eqz v18, :cond_3

    .end local v18    # "msgThreadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    :goto_1
    move-wide/from16 v12, v22

    .end local v22    # "parentId":J
    .local v12, "parentId":J
    move-wide/from16 v10, v26

    .line 2235
    .end local v26    # "rootId":J
    .local v10, "rootId":J
    :goto_2
    return-object v18

    .line 2161
    .end local v10    # "rootId":J
    .end local v12    # "parentId":J
    .restart local v15    # "inReplyTo":Ljava/lang/String;
    .restart local v18    # "msgThreadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    .restart local v22    # "parentId":J
    .restart local v26    # "rootId":J
    :cond_2
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2162
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2169
    .end local v15    # "inReplyTo":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/fsck/k9/mailstore/ThreadInfo;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    invoke-direct/range {v4 .. v13}, Lcom/fsck/k9/mailstore/ThreadInfo;-><init>(JJLjava/lang/String;JJ)V

    move-object/from16 v18, v4

    goto :goto_1

    .line 2173
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide/from16 v12, v22

    .end local v22    # "parentId":J
    .restart local v12    # "parentId":J
    move-wide/from16 v10, v26

    .end local v26    # "rootId":J
    .restart local v10    # "rootId":J
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2174
    .local v19, "reference":Ljava/lang/String;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/ThreadInfo;

    move-result-object v25

    .line 2176
    .local v25, "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    if-nez v25, :cond_8

    .line 2178
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2179
    .local v14, "cv":Landroid/content/ContentValues;
    const-string v28, "message_id"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    const-string v28, "folder_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2181
    const-string v28, "empty"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2183
    const-string v28, "messages"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 2186
    .local v20, "newMsgId":J
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 2187
    const-string v28, "message_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2188
    const-wide/16 v28, -0x1

    cmp-long v28, v10, v28

    if-eqz v28, :cond_6

    .line 2189
    const-string v28, "root"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2191
    :cond_6
    const-wide/16 v28, -0x1

    cmp-long v28, v12, v28

    if-eqz v28, :cond_7

    .line 2192
    const-string v28, "parent"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2195
    :cond_7
    const-string v28, "threads"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 2196
    const-wide/16 v28, -0x1

    cmp-long v28, v10, v28

    if-nez v28, :cond_5

    .line 2197
    move-wide v10, v12

    goto/16 :goto_3

    .line 2200
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v20    # "newMsgId":J
    :cond_8
    const-wide/16 v28, -0x1

    cmp-long v28, v10, v28

    if-eqz v28, :cond_9

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-nez v28, :cond_9

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    move-wide/from16 v28, v0

    cmp-long v28, v10, v28

    if-eqz v28, :cond_9

    .line 2206
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2207
    .restart local v14    # "cv":Landroid/content/ContentValues;
    const-string v28, "root"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2208
    const-string v28, "threads"

    const-string v29, "root = ?"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    move-wide/from16 v32, v0

    .line 2209
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 2208
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2212
    const-string v28, "parent"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2213
    const-string v28, "threads"

    const-string v29, "id = ?"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    move-wide/from16 v32, v0

    .line 2214
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 2213
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2219
    .end local v14    # "cv":Landroid/content/ContentValues;
    :goto_4
    move-object/from16 v0, v25

    iget-wide v12, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    goto/16 :goto_3

    .line 2216
    :cond_9
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-nez v28, :cond_a

    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    :goto_5
    goto :goto_4

    :cond_a
    move-object/from16 v0, v25

    iget-wide v10, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    goto :goto_5

    .line 2227
    .end local v19    # "reference":Ljava/lang/String;
    .end local v25    # "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    :cond_b
    if-eqz v18, :cond_c

    .line 2228
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->threadId:J

    .line 2229
    .local v5, "threadId":J
    move-object/from16 v0, v18

    iget-wide v7, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->msgId:J

    .line 2235
    .local v7, "msgId":J
    :goto_6
    new-instance v4, Lcom/fsck/k9/mailstore/ThreadInfo;

    invoke-direct/range {v4 .. v13}, Lcom/fsck/k9/mailstore/ThreadInfo;-><init>(JJLjava/lang/String;JJ)V

    move-object/from16 v18, v4

    goto/16 :goto_2

    .line 2231
    .end local v5    # "threadId":J
    .end local v7    # "msgId":J
    :cond_c
    const-wide/16 v5, -0x1

    .line 2232
    .restart local v5    # "threadId":J
    const-wide/16 v7, -0x1

    .restart local v7    # "msgId":J
    goto :goto_6
.end method

.method private getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    return-object v0
.end method

.method private getBodyBytes(Lcom/fsck/k9/mail/Body;)[B
    .locals 2
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1629
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1630
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 1631
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private getEmptyThreadParent(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1974
    const-string v1, "SELECT m.id FROM threads t1 JOIN threads t2 ON (t1.parent = t2.id) LEFT JOIN messages m ON (t2.message_id = m.id) WHERE t1.message_id = ? AND m.empty = 1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1980
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1974
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1983
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1985
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1983
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 1985
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getHeaderBytes(Lcom/fsck/k9/mail/Part;)[B
    .locals 2
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1623
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1624
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lcom/fsck/k9/mail/Part;->writeHeaderTo(Ljava/io/OutputStream;)V

    .line 1625
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private getPrefId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 577
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getPrefId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->prefId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->prefId:Ljava/lang/String;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->prefId:Ljava/lang/String;

    return-object v0
.end method

.method private getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/ThreadInfo;
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "onlyEmpty"    # Z

    .prologue
    .line 1236
    if-nez p2, :cond_0

    .line 1237
    const/4 v2, 0x0

    .line 1265
    :goto_0
    return-object v2

    .line 1240
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT t.id, t.message_id, t.root, t.parent FROM messages m LEFT JOIN threads t ON (t.message_id = m.id) WHERE m.folder_id = ? AND m.message_id = ? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_1

    const-string v2, "AND m.empty = 1 "

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "ORDER BY m.id LIMIT 1"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1246
    .local v14, "sql":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v2

    const/4 v2, 0x1

    aput-object p2, v13, v2

    .line 1247
    .local v13, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1249
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 1251
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1252
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1253
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1254
    .local v3, "threadId":J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1255
    .local v5, "msgId":J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v8, -0x1

    .line 1256
    .local v8, "rootId":J
    :goto_2
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v10, -0x1

    .line 1258
    .local v10, "parentId":J
    :goto_3
    new-instance v2, Lcom/fsck/k9/mailstore/ThreadInfo;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v11}, Lcom/fsck/k9/mailstore/ThreadInfo;-><init>(JJLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1240
    .end local v3    # "threadId":J
    .end local v5    # "msgId":J
    .end local v8    # "rootId":J
    .end local v10    # "parentId":J
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "sql":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 1255
    .restart local v3    # "threadId":J
    .restart local v5    # "msgId":J
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "sql":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_2

    .line 1256
    .restart local v8    # "rootId":J
    :cond_3
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    goto :goto_3

    .line 1261
    .end local v3    # "threadId":J
    .end local v5    # "msgId":J
    .end local v8    # "rootId":J
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1265
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1261
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getTransferEncoding(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 3
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 1635
    const-string v1, "Content-Transfer-Encoding"

    invoke-interface {p1, v1}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "contentTransferEncoding":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1637
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "7bit"

    goto :goto_0
.end method

.method private hasThreadChildren(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1948
    const-string v3, "SELECT COUNT(t2.id) FROM threads t1 JOIN threads t2 ON (t2.parent = t1.id) WHERE t1.message_id = ?"

    new-array v4, v1, [Ljava/lang/String;

    .line 1953
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1948
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1956
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1958
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1956
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1958
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private leafPartToContentValues(Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)Ljava/io/File;
    .locals 12
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    iget-object v10, p0, Lcom/fsck/k9/mailstore/LocalFolder;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    invoke-virtual {v10, p2}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfoForDatabase(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v0

    .line 1532
    .local v0, "attachment":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    const-string v10, "display_name"

    iget-object v11, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getTransferEncoding(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v3

    .line 1536
    .local v3, "encoding":Ljava/lang/String;
    instance-of v10, p3, Lcom/fsck/k9/mail/internet/SizeAware;

    if-nez v10, :cond_0

    .line 1537
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Body needs to implement SizeAware"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    move-object v5, p3

    .line 1540
    check-cast v5, Lcom/fsck/k9/mail/internet/SizeAware;

    .line 1541
    .local v5, "sizeAwareBody":Lcom/fsck/k9/mail/internet/SizeAware;
    invoke-interface {v5}, Lcom/fsck/k9/mail/internet/SizeAware;->getSize()J

    move-result-wide v6

    .line 1543
    .local v6, "fileSize":J
    const/4 v4, 0x0

    .line 1545
    .local v4, "file":Ljava/io/File;
    const-wide/16 v10, 0x4000

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 1546
    const/4 v2, 0x2

    .line 1548
    .local v2, "dataLocation":I
    invoke-direct {p0, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->writeBodyToDiskIfNecessary(Lcom/fsck/k9/mail/Part;)Ljava/io/File;

    move-result-object v4

    .line 1550
    invoke-direct {p0, v4, v3, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->decodeAndCountBytes(Ljava/io/File;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1551
    .local v8, "size":J
    const-string v10, "decoded_body_size"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1561
    :goto_0
    const-string v10, "data_location"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    const-string v10, "encoding"

    invoke-virtual {p1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v10, "content_id"

    invoke-interface {p2}, Lcom/fsck/k9/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-object v4

    .line 1553
    .end local v2    # "dataLocation":I
    .end local v8    # "size":J
    :cond_1
    const/4 v2, 0x1

    .line 1555
    .restart local v2    # "dataLocation":I
    invoke-direct {p0, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getBodyBytes(Lcom/fsck/k9/mail/Body;)[B

    move-result-object v1

    .line 1556
    .local v1, "bodyData":[B
    const-string v10, "data"

    invoke-virtual {p1, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1558
    array-length v10, v1

    int-to-long v10, v10

    invoke-direct {p0, v1, v3, v10, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->decodeAndCountBytes([BLjava/lang/String;J)J

    move-result-wide v8

    .line 1559
    .restart local v8    # "size":J
    const-string v10, "decoded_body_size"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private loadMessagePart(Lcom/fsck/k9/mailstore/LocalMessage;Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 29
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 744
    .local p2, "partById":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/fsck/k9/mail/Part;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 745
    .local v8, "id":J
    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 746
    .local v22, "parentId":J
    const/4 v6, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 747
    .local v20, "mimeType":Ljava/lang/String;
    const/4 v6, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 748
    .local v10, "size":J
    const/4 v6, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    .line 749
    .local v18, "header":[B
    const/16 v6, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 750
    .local v14, "dataLocation":I
    const/16 v6, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 758
    .local v28, "serverExtra":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    .line 759
    move-object/from16 v26, p1

    .line 781
    .local v26, "part":Lcom/fsck/k9/mail/Part;
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setServerExtra(Ljava/lang/String;)V

    .line 784
    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/mail/internet/MimeUtility;->isMultipart(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 785
    const/16 v6, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    .line 786
    .local v27, "preamble":[B
    const/16 v6, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 787
    .local v16, "epilogue":[B
    const/16 v6, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 789
    .local v12, "boundary":Ljava/lang/String;
    new-instance v21, Lcom/fsck/k9/mail/internet/MimeMultipart;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .local v21, "multipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 791
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setPreamble([B)V

    .line 792
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setEpilogue([B)V

    .line 808
    .end local v12    # "boundary":Ljava/lang/String;
    .end local v16    # "epilogue":[B
    .end local v21    # "multipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    .end local v27    # "preamble":[B
    :cond_0
    :goto_1
    return-void

    .line 761
    .end local v26    # "part":Lcom/fsck/k9/mail/Part;
    :cond_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/mail/Part;

    .line 762
    .local v25, "parentPart":Lcom/fsck/k9/mail/Part;
    if-nez v25, :cond_2

    .line 763
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Parent part not found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 766
    :cond_2
    invoke-interface/range {v25 .. v25}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v24

    .line 767
    .local v24, "parentMimeType":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/MimeUtility;->isMultipart(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 768
    new-instance v5, Lcom/fsck/k9/mailstore/LocalBodyPart;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccountUuid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/fsck/k9/mailstore/LocalBodyPart;-><init>(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;JJ)V

    .line 769
    .local v5, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-interface/range {v25 .. v25}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Multipart;

    invoke-virtual {v6, v5}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 770
    move-object/from16 v26, v5

    .line 779
    .end local v5    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .restart local v26    # "part":Lcom/fsck/k9/mail/Part;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->parseHeaderBytes(Lcom/fsck/k9/mail/Part;[B)V

    goto/16 :goto_0

    .line 771
    .end local v26    # "part":Lcom/fsck/k9/mail/Part;
    :cond_3
    invoke-static/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/MimeUtility;->isMessage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 772
    new-instance v19, Lcom/fsck/k9/mailstore/LocalMimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccountUuid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1, v8, v9}, Lcom/fsck/k9/mailstore/LocalMimeMessage;-><init>(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;J)V

    .line 773
    .local v19, "innerMessage":Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 774
    move-object/from16 v26, v19

    .line 775
    .restart local v26    # "part":Lcom/fsck/k9/mail/Part;
    goto :goto_2

    .line 776
    .end local v19    # "innerMessage":Lcom/fsck/k9/mail/Message;
    .end local v26    # "part":Lcom/fsck/k9/mail/Part;
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Parent is neither a multipart nor a message"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 793
    .end local v24    # "parentMimeType":Ljava/lang/String;
    .end local v25    # "parentPart":Lcom/fsck/k9/mail/Part;
    .restart local v26    # "part":Lcom/fsck/k9/mail/Part;
    :cond_5
    const/4 v6, 0x1

    if-ne v14, v6, :cond_6

    .line 794
    const/4 v6, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 795
    .local v15, "encoding":Ljava/lang/String;
    const/16 v6, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 797
    .local v13, "data":[B
    new-instance v4, Lcom/fsck/k9/mailstore/BinaryMemoryBody;

    invoke-direct {v4, v13, v15}, Lcom/fsck/k9/mailstore/BinaryMemoryBody;-><init>([BLjava/lang/String;)V

    .line 798
    .local v4, "body":Lcom/fsck/k9/mail/Body;
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    goto/16 :goto_1

    .line 799
    .end local v4    # "body":Lcom/fsck/k9/mail/Body;
    .end local v13    # "data":[B
    .end local v15    # "encoding":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x2

    if-ne v14, v6, :cond_0

    .line 800
    const/4 v6, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 802
    .restart local v15    # "encoding":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 803
    .local v17, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 804
    new-instance v4, Lcom/fsck/k9/mailstore/FileBackedBody;

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v15}, Lcom/fsck/k9/mailstore/FileBackedBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    .restart local v4    # "body":Lcom/fsck/k9/mail/Body;
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    goto/16 :goto_1
.end method

.method private loadMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 710
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 712
    .local v9, "partById":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/fsck/k9/mail/Part;>;"
    const/16 v0, 0x10

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v10

    const-string v0, "type"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "parent"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "decoded_body_size"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "header"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "encoding"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "charset"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "data_location"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "data"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "preamble"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "epilogue"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "boundary"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "server_extra"

    aput-object v1, v2, v0

    .line 730
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "message_parts"

    const-string v3, "root = ?"

    new-array v4, v4, [Ljava/lang/String;

    .line 731
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const-string v7, "seq"

    move-object v0, p1

    move-object v6, v5

    .line 730
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 733
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-direct {p0, p2, v9, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->loadMessagePart(Lcom/fsck/k9/mailstore/LocalMessage;Ljava/util/Map;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 739
    return-void
.end method

.method private messageMarkerToContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1526
    const-string v0, "data_location"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1527
    return-void
.end method

.method private missingPartToContentValues(Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;)V
    .locals 4
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;->extractAttachmentInfoForDatabase(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    move-result-object v0

    .line 1516
    .local v0, "attachment":Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    const-string v1, "display_name"

    iget-object v2, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string v1, "data_location"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1518
    const-string v1, "decoded_body_size"

    iget-wide v2, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1520
    invoke-interface {p2}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->isMultipart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    const-string v1, "boundary"

    invoke-static {}, Lcom/fsck/k9/mail/BoundaryGenerator;->getInstance()Lcom/fsck/k9/mail/BoundaryGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :cond_0
    return-void
.end method

.method private moveTemporaryFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "messagePartId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1, p2}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1469
    .local v0, "destinationFile":Ljava/io/File;
    invoke-static {p1, v0}, Lcom/fsck/k9/helper/FileHelper;->renameOrMoveByCopying(Ljava/io/File;Ljava/io/File;)V

    .line 1470
    return-void
.end method

.method private multipartToContentValues(Landroid/content/ContentValues;Lcom/fsck/k9/mail/Multipart;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "multipart"    # Lcom/fsck/k9/mail/Multipart;

    .prologue
    .line 1508
    const-string v0, "data_location"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    const-string v0, "preamble"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Multipart;->getPreamble()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1510
    const-string v0, "epilogue"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Multipart;->getEpilogue()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1511
    const-string v0, "boundary"

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Multipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method private parseHeaderBytes(Lcom/fsck/k9/mail/Part;[B)V
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 811
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1, v0}, Lcom/fsck/k9/mail/message/MessageHeaderParser;->parse(Lcom/fsck/k9/mail/Part;Ljava/io/InputStream;)V

    .line 812
    return-void
.end method

.method private saveMessage(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;ZLjava/util/Map;)V
    .locals 37
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/fsck/k9/mail/Message;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1309
    .local p4, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 1310
    new-instance v32, Ljava/lang/Error;

    const-string v33, "LocalStore can only store Messages that extend MimeMessage"

    invoke-direct/range {v32 .. v33}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v32

    .line 1313
    :cond_0
    const-wide/16 v16, -0x1

    .line 1314
    .local v16, "oldMessageId":J
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v31

    .line 1315
    .local v31, "uid":Ljava/lang/String;
    if-eqz v31, :cond_1

    if-eqz p3, :cond_8

    :cond_1
    const/16 v25, 0x1

    .line 1316
    .local v25, "shouldCreateNewMessage":Z
    :goto_0
    if-eqz v25, :cond_a

    .line 1317
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "K9LOCAL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1319
    .local v24, "randomLocalUid":Ljava/lang/String;
    if-eqz p3, :cond_9

    .line 1321
    move-object/from16 v0, p4

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :goto_1
    move-object/from16 v31, v24

    .line 1340
    .end local v24    # "randomLocalUid":Ljava/lang/String;
    :cond_2
    :goto_2
    const-wide/16 v26, -0x1

    .line 1341
    .local v26, "rootId":J
    const-wide/16 v20, -0x1

    .line 1344
    .local v20, "parentId":J
    const-wide/16 v32, -0x1

    cmp-long v32, v16, v32

    if-nez v32, :cond_3

    .line 1346
    invoke-direct/range {p0 .. p2}, Lcom/fsck/k9/mailstore/LocalFolder;->doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mailstore/ThreadInfo;

    move-result-object v30

    .line 1347
    .local v30, "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->msgId:J

    move-wide/from16 v16, v0

    .line 1348
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->rootId:J

    move-wide/from16 v26, v0

    .line 1349
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/ThreadInfo;->parentId:J

    move-wide/from16 v20, v0

    .line 1353
    .end local v30    # "threadInfo":Lcom/fsck/k9/mailstore/ThreadInfo;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mailstore/LocalStore;->getMessagePreviewCreator()Lcom/fsck/k9/message/extractors/MessagePreviewCreator;

    move-result-object v15

    .line 1354
    .local v15, "previewCreator":Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/fsck/k9/message/extractors/MessagePreviewCreator;->createPreview(Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/message/extractors/PreviewResult;

    move-result-object v22

    .line 1355
    .local v22, "previewResult":Lcom/fsck/k9/message/extractors/PreviewResult;
    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/message/extractors/PreviewResult;->getPreviewType()Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;

    move-result-object v23

    .line 1356
    .local v23, "previewType":Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->fromPreviewType(Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;)Lcom/fsck/k9/mailstore/DatabasePreviewType;

    move-result-object v7

    .line 1358
    .local v7, "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mailstore/LocalStore;->getMessageFulltextCreator()Lcom/fsck/k9/message/extractors/MessageFulltextCreator;

    move-result-object v10

    .line 1359
    .local v10, "fulltextCreator":Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/fsck/k9/message/extractors/MessageFulltextCreator;->createFulltext(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v9

    .line 1361
    .local v9, "fulltext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentCounter()Lcom/fsck/k9/message/extractors/AttachmentCounter;

    move-result-object v5

    .line 1362
    .local v5, "attachmentCounter":Lcom/fsck/k9/message/extractors/AttachmentCounter;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/fsck/k9/message/extractors/AttachmentCounter;->getAttachmentCount(Lcom/fsck/k9/mail/Message;)I

    move-result v4

    .line 1364
    .local v4, "attachmentCount":I
    invoke-direct/range {p0 .. p2}, Lcom/fsck/k9/mailstore/LocalFolder;->saveMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)J

    move-result-wide v28

    .line 1366
    .local v28, "rootMessagePartId":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1367
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v32, "message_part_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1368
    const-string v32, "uid"

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v32, "subject"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v32, "sender_list"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v34, "date"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v32

    if-nez v32, :cond_b

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1371
    :goto_3
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1373
    const-string v32, "flags"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getFlags()Ljava/util/Set;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mailstore/LocalStore;->serializeFlags(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v33, "deleted"

    sget-object v32, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v32

    if-eqz v32, :cond_c

    const/16 v32, 0x1

    :goto_4
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    const-string v33, "read"

    sget-object v32, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v32

    if-eqz v32, :cond_d

    const/16 v32, 0x1

    :goto_5
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    const-string v33, "flagged"

    sget-object v32, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v32

    if-eqz v32, :cond_e

    const/16 v32, 0x1

    :goto_6
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1377
    const-string v33, "answered"

    sget-object v32, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v32

    if-eqz v32, :cond_f

    const/16 v32, 0x1

    :goto_7
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    const-string v33, "forwarded"

    sget-object v32, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v32

    if-eqz v32, :cond_10

    const/16 v32, 0x1

    :goto_8
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    const-string v32, "folder_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1380
    const-string v32, "to_list"

    sget-object v33, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v32, "cc_list"

    sget-object v33, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v32, "bcc_list"

    sget-object v33, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v32, "reply_to_list"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/fsck/k9/mail/Address;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v32, "attachment_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string v34, "internal_date"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v32

    if-nez v32, :cond_11

    .line 1386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1385
    :goto_9
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1387
    const-string v32, "mime_type"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getMimeType()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v32, "empty"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    const-string v32, "preview_type"

    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/DatabasePreviewType;->getDatabaseValue()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/message/extractors/PreviewResult;->isPreviewTextAvailable()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1392
    const-string v32, "preview"

    invoke-virtual/range {v22 .. v22}, Lcom/fsck/k9/message/extractors/PreviewResult;->getPreviewText()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v11

    .line 1398
    .local v11, "messageId":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 1399
    const-string v32, "message_id"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_4
    const-wide/16 v32, -0x1

    cmp-long v32, v16, v32

    if-nez v32, :cond_13

    .line 1403
    const-string v32, "messages"

    const-string v33, "uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 1406
    .local v12, "msgId":J
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1407
    const-string v32, "message_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1409
    const-wide/16 v32, -0x1

    cmp-long v32, v26, v32

    if-eqz v32, :cond_5

    .line 1410
    const-string v32, "root"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1412
    :cond_5
    const-wide/16 v32, -0x1

    cmp-long v32, v20, v32

    if-eqz v32, :cond_6

    .line 1413
    const-string v32, "parent"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1416
    :cond_6
    const-string v32, "threads"

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1422
    :goto_b
    if-eqz v9, :cond_7

    .line 1423
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1424
    const-string v32, "docid"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1425
    const-string v32, "fulltext"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v32, "messages_fulltext"

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :cond_7
    return-void

    .line 1315
    .end local v4    # "attachmentCount":I
    .end local v5    # "attachmentCounter":Lcom/fsck/k9/message/extractors/AttachmentCounter;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .end local v9    # "fulltext":Ljava/lang/String;
    .end local v10    # "fulltextCreator":Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    .end local v11    # "messageId":Ljava/lang/String;
    .end local v12    # "msgId":J
    .end local v15    # "previewCreator":Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    .end local v20    # "parentId":J
    .end local v22    # "previewResult":Lcom/fsck/k9/message/extractors/PreviewResult;
    .end local v23    # "previewType":Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .end local v25    # "shouldCreateNewMessage":Z
    .end local v26    # "rootId":J
    .end local v28    # "rootMessagePartId":J
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1324
    .restart local v24    # "randomLocalUid":Ljava/lang/String;
    .restart local v25    # "shouldCreateNewMessage":Z
    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1330
    .end local v24    # "randomLocalUid":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v14

    .line 1332
    .local v14, "oldMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    if-eqz v14, :cond_2

    .line 1333
    invoke-virtual {v14}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v16

    .line 1335
    invoke-virtual {v14}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v18

    .line 1336
    .local v18, "oldRootMessagePartId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessagePartsAndDataFromDisk(J)V

    goto/16 :goto_2

    .line 1372
    .end local v14    # "oldMessage":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v18    # "oldRootMessagePartId":J
    .restart local v4    # "attachmentCount":I
    .restart local v5    # "attachmentCounter":Lcom/fsck/k9/message/extractors/AttachmentCounter;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .restart local v9    # "fulltext":Ljava/lang/String;
    .restart local v10    # "fulltextCreator":Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    .restart local v15    # "previewCreator":Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    .restart local v20    # "parentId":J
    .restart local v22    # "previewResult":Lcom/fsck/k9/message/extractors/PreviewResult;
    .restart local v23    # "previewType":Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .restart local v26    # "rootId":J
    .restart local v28    # "rootMessagePartId":J
    :cond_b
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    goto/16 :goto_3

    .line 1374
    :cond_c
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 1375
    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1376
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_6

    .line 1377
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 1378
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_8

    .line 1386
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    goto/16 :goto_9

    .line 1394
    :cond_12
    const-string v32, "preview"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 1428
    .end local v4    # "attachmentCount":I
    .end local v5    # "attachmentCounter":Lcom/fsck/k9/message/extractors/AttachmentCounter;
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v7    # "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .end local v9    # "fulltext":Ljava/lang/String;
    .end local v10    # "fulltextCreator":Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    .end local v15    # "previewCreator":Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    .end local v22    # "previewResult":Lcom/fsck/k9/message/extractors/PreviewResult;
    .end local v23    # "previewType":Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .end local v28    # "rootMessagePartId":J
    :catch_0
    move-exception v8

    .line 1429
    .local v8, "e":Ljava/lang/Exception;
    new-instance v32, Lcom/fsck/k9/mail/MessagingException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error appending message: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v8}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 1418
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "attachmentCount":I
    .restart local v5    # "attachmentCounter":Lcom/fsck/k9/message/extractors/AttachmentCounter;
    .restart local v6    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "databasePreviewType":Lcom/fsck/k9/mailstore/DatabasePreviewType;
    .restart local v9    # "fulltext":Ljava/lang/String;
    .restart local v10    # "fulltextCreator":Lcom/fsck/k9/message/extractors/MessageFulltextCreator;
    .restart local v11    # "messageId":Ljava/lang/String;
    .restart local v15    # "previewCreator":Lcom/fsck/k9/message/extractors/MessagePreviewCreator;
    .restart local v22    # "previewResult":Lcom/fsck/k9/message/extractors/PreviewResult;
    .restart local v23    # "previewType":Lcom/fsck/k9/message/extractors/PreviewResult$PreviewType;
    .restart local v28    # "rootMessagePartId":J
    :cond_13
    move-wide/from16 v12, v16

    .line 1419
    .restart local v12    # "msgId":J
    :try_start_2
    const-string v32, "messages"

    const-string v33, "id = ?"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b
.end method

.method private saveMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;JI)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "partContainer"    # Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;
    .param p3, "rootMessagePartId"    # J
    .param p5, "order"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 1454
    iget-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;->part:Lcom/fsck/k9/mail/Part;

    .line 1456
    .local v3, "part":Lcom/fsck/k9/mail/Part;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    .local v2, "cv":Landroid/content/ContentValues;
    cmp-long v0, p3, v4

    if-eqz v0, :cond_0

    .line 1458
    const-string v0, "root"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1460
    :cond_0
    const-string v0, "parent"

    iget-wide v6, p2, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;->parent:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1461
    const-string v0, "seq"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    const-string v0, "server_extra"

    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getServerExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 1464
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mailstore/LocalFolder;->updateOrInsertMessagePart(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private saveMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/Message;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 1434
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;

    invoke-direct {v3, v4, v5, p2}, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;-><init>(JLcom/fsck/k9/mail/Part;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder;->saveMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;JI)J

    move-result-wide v4

    .line 1436
    .local v4, "rootMessagePartId":J
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1437
    .local v0, "partsToSave":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;>;"
    invoke-direct {p0, v0, p2, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->addChildrenToStack(Ljava/util/Stack;Lcom/fsck/k9/mail/Part;J)V

    .line 1439
    const/4 v6, 0x1

    .line 1440
    .local v6, "order":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1441
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;

    .local v3, "partContainer":Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;
    move-object v1, p0

    move-object v2, p1

    .line 1442
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder;->saveMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;JI)J

    move-result-wide v8

    .line 1443
    .local v8, "messagePartId":J
    add-int/lit8 v6, v6, 0x1

    .line 1445
    iget-object v1, v3, Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;->part:Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v0, v1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;->addChildrenToStack(Ljava/util/Stack;Lcom/fsck/k9/mail/Part;J)V

    goto :goto_0

    .line 1448
    .end local v3    # "partContainer":Lcom/fsck/k9/mailstore/LocalFolder$PartContainer;
    .end local v8    # "messagePartId":J
    :cond_0
    return-wide v4
.end method

.method private updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$7;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method private updateMoreMessagesOnVisibleLimitChange(II)V
    .locals 7
    .param p1, "newVisibleLimit"    # I
    .param p2, "oldVisibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 452
    if-le p1, p2, :cond_2

    move v0, v3

    .line 453
    .local v0, "growVisibleLimit":Z
    :goto_0
    if-ge p1, p2, :cond_3

    move v2, v3

    .line 454
    .local v2, "shrinkVisibleLimit":Z
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMoreMessages()Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->TRUE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    if-ne v5, v6, :cond_4

    move v1, v3

    .line 456
    .local v1, "moreMessagesWereAvailable":Z
    :goto_2
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 457
    :cond_0
    sget-object v3, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->setMoreMessages(Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;)V

    .line 459
    :cond_1
    return-void

    .end local v0    # "growVisibleLimit":Z
    .end local v1    # "moreMessagesWereAvailable":Z
    .end local v2    # "shrinkVisibleLimit":Z
    :cond_2
    move v0, v4

    .line 452
    goto :goto_0

    .restart local v0    # "growVisibleLimit":Z
    :cond_3
    move v2, v4

    .line 453
    goto :goto_1

    .restart local v2    # "shrinkVisibleLimit":Z
    :cond_4
    move v1, v4

    .line 454
    goto :goto_2
.end method

.method private updateOrInsertMessagePart(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;J)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "part"    # Lcom/fsck/k9/mail/Part;
    .param p4, "existingMessagePartId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1474
    invoke-direct {p0, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->getHeaderBytes(Lcom/fsck/k9/mail/Part;)[B

    move-result-object v2

    .line 1476
    .local v2, "headerBytes":[B
    const-string v3, "mime_type"

    invoke-interface {p3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v3, "header"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1478
    const-string v3, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1480
    const/4 v1, 0x0

    .line 1481
    .local v1, "file":Ljava/io/File;
    invoke-interface {p3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 1482
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v3, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v3, :cond_1

    .line 1483
    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-direct {p0, p2, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->multipartToContentValues(Landroid/content/ContentValues;Lcom/fsck/k9/mail/Multipart;)V

    .line 1493
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v3, p4, v6

    if-eqz v3, :cond_4

    .line 1494
    move-wide v4, p4

    .line 1495
    .local v4, "messagePartId":J
    const-string v3, "message_parts"

    const-string v6, "id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1, v3, p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1500
    :goto_1
    if-eqz v1, :cond_0

    .line 1501
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->moveTemporaryFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1504
    :cond_0
    return-wide v4

    .line 1484
    .end local v4    # "messagePartId":J
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_1
    if-nez v0, :cond_2

    .line 1485
    invoke-direct {p0, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder;->missingPartToContentValues(Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;)V

    goto :goto_0

    .line 1486
    :cond_2
    instance-of v3, v0, Lcom/fsck/k9/mail/Message;

    if-eqz v3, :cond_3

    .line 1487
    invoke-direct {p0, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->messageMarkerToContentValues(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1489
    :cond_3
    invoke-direct {p0, p2, p3, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->leafPartToContentValues(Landroid/content/ContentValues;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 1497
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_4
    const-string v3, "message_parts"

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .restart local v4    # "messagePartId":J
    goto :goto_1
.end method

.method private writeBodyToDisk(Lcom/fsck/k9/mail/Body;)Ljava/io/File;
    .locals 5
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1578
    const-string v2, "body"

    const/4 v3, 0x0

    invoke-static {}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getTempDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1579
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1581
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1586
    return-object v0

    .line 1583
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method private writeBodyToDiskIfNecessary(Lcom/fsck/k9/mail/Part;)Ljava/io/File;
    .locals 2
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 1570
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v1, v0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    if-eqz v1, :cond_0

    .line 1571
    check-cast v0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getFile()Ljava/io/File;

    move-result-object v1

    .line 1573
    :goto_0
    return-object v1

    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->writeBodyToDisk(Lcom/fsck/k9/mail/Body;)Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addPartToMessage(Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;)V
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1668
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1670
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$18;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;)V

    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1698
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1699
    return-void
.end method

.method public appendMessages(Ljava/util/List;)Ljava/util/Map;
    .locals 1
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
    .line 1212
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public areMoreMessagesAvailable(ILjava/util/Date;)Z
    .locals 2
    .param p1, "indexOfOldestMessage"    # I
    .param p2, "earliestDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 825
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeUid(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1706
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1707
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1708
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$19;

    invoke-direct {v2, p0, v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$19;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Landroid/content/ContentValues;Lcom/fsck/k9/mailstore/LocalMessage;)V

    invoke-virtual {v1, v3, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1719
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1720
    return-void
.end method

.method public clearAllMessages()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1783
    new-array v1, v5, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1785
    .local v1, "folderIdArg":[Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1788
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mailstore/LocalFolder$21;

    invoke-direct {v4, p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder$21;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1822
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->setPushState(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->setLastPush(J)V

    .line 1824
    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->setLastChecked(J)V

    .line 1825
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->setVisibleLimit(I)V

    .line 1826
    return-void

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/MessagingException;

    throw v2
.end method

.method public clearMessagesOlderThan(J)V
    .locals 11
    .param p1, "cutoff"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 1765
    invoke-virtual {p0, v10}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1767
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fsck/k9/mailstore/LocalStore;->GET_MESSAGES_COLS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE empty = 0 AND (folder_id = ? and date < ?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 1773
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 1767
    invoke-virtual {v2, v3, p0, v4, v5}, Lcom/fsck/k9/mailstore/LocalStore;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1775
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Message;

    .line 1776
    .local v0, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->destroy()V

    goto :goto_0

    .line 1779
    .end local v0    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 1780
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 280
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 281
    return-void
.end method

.method public copyMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 2
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
    .line 1039
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    instance-of v0, p2, Lcom/fsck/k9/mailstore/LocalFolder;

    if-nez v0, :cond_0

    .line 1040
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "copyMessages called with incorrect Folder"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_0
    check-cast p2, Lcom/fsck/k9/mailstore/LocalFolder;

    .end local p2    # "folder":Lcom/fsck/k9/mail/Folder;
    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->appendMessages(Ljava/util/List;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z

    move-result v0

    return v0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
    .locals 4
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .param p2, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .local v0, "foldersToCreate":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalFolder;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1, v0, p2}, Lcom/fsck/k9/mailstore/LocalStore;->createFolders(Ljava/util/List;I)V

    .line 266
    return v2
.end method

.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 585
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pushMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".inTopGroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".integrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 591
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 592
    return-void
.end method

.method public delete(Z)V
    .locals 4
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1831
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$22;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalFolder$22;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    return-void

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method deleteFulltextIndexEntry(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageId"    # J

    .prologue
    .line 2009
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2010
    .local v0, "idArg":[Ljava/lang/String;
    const-string v1, "messages_fulltext"

    const-string v2, "docid = ?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2011
    return-void
.end method

.method deleteMessagePartsAndDataFromDisk(J)V
    .locals 1
    .param p1, "rootMessagePartId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2014
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessageDataFromDisk(J)V

    .line 2015
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->deleteMessageParts(J)V

    .line 2016
    return-void
.end method

.method destroyMessage(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 7
    .param p1, "localMessage"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1868
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getDatabaseId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessagePartId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder;->destroyMessage(JJLjava/lang/String;)V

    .line 1869
    return-void
.end method

.method public destroyMessages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$16;

    invoke-direct {v3, p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$16;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    return-void

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1856
    instance-of v0, p1, Lcom/fsck/k9/mailstore/LocalFolder;

    if-eqz v0, :cond_0

    .line 1857
    check-cast p1, Lcom/fsck/k9/mailstore/LocalFolder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1859
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalFolder$2;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public extractNewMessages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2242
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$28;

    invoke-direct {v3, p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$28;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;)V
    .locals 4
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;",
            "Lcom/fsck/k9/mail/FetchProfile;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    .local p3, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$8;

    invoke-direct {v3, p0, p2, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/FetchProfile;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getAccountUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessageUids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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
    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$13;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalFolder$13;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getAllMessagesAndEffectiveDates()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$11;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalFolder$11;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getDatabaseId()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    return-wide v0
.end method

.method public getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getFlaggedMessageCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 345
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p0, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 350
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$5;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalFolder$5;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getLastUid()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->lastUid:Ljava/lang/Integer;

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
    .line 71
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$10;

    invoke-direct {v3, p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$10;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/LocalMessage;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getMessageCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$3;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalFolder$3;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getMessageUidById(J)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$9;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Date;",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)",
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
    .line 817
    .local p4, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 818
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "LocalStore.getMessages(int, int, MessageRetrievalListener) not yet implemented"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)",
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
    .line 935
    .local p1, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;Z)Ljava/util/List;
    .locals 4
    .param p2, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/MessageRetrievalListener",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;Z)",
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
    .line 941
    .local p1, "listener":Lcom/fsck/k9/mail/MessageRetrievalListener;, "Lcom/fsck/k9/mail/MessageRetrievalListener<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$12;

    invoke-direct {v3, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/MessageRetrievalListener;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getMessagesByReference(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
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
    .line 1015
    .local p1, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1017
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccountUuid()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, "folderName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/activity/MessageReference;

    .line 1022
    .local v3, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1023
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "all message references must belong to this Account!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1025
    :cond_1
    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1026
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "all message references must belong to this LocalFolder!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1029
    :cond_2
    invoke-virtual {v3}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v2

    .line 1030
    .local v2, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    if-eqz v2, :cond_0

    .line 1031
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1034
    .end local v2    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v3    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    :cond_3
    return-object v4
.end method

.method public getMessagesByUids(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
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
    .line 1002
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1005
    .local v2, "uid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v0

    .line 1006
    .local v0, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    if-eqz v0, :cond_0

    .line 1007
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    .end local v0    # "message":Lcom/fsck/k9/mailstore/LocalMessage;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreMessages()Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 2

    .prologue
    .line 509
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_0
.end method

.method public getOldestMessageDate()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$27;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalFolder$27;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_0
.end method

.method public getPushState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushState:Ljava/lang/String;

    return-object v0
.end method

.method public getRawNotifyClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getRawPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getRawSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getSignatureUse()Z
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getSignatureUse()Z

    move-result v0

    return v0
.end method

.method public getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1761
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Cannot call getUidFromMessageId on LocalFolder"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnreadMessageCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 314
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {p0, v6}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 319
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$4;

    invoke-direct {v3, p0}, Lcom/fsck/k9/mailstore/LocalFolder$4;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public getVisibleLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 398
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    return v0
.end method

.method public hasMoreMessages()Z
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    sget-object v1, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->FALSE:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInTopGroup()Z
    .locals 1

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    return v0
.end method

.method public isIntegrate()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    return v0
.end method

.method public isOpen()Z
    .locals 4

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveMessages(Ljava/util/List;Lcom/fsck/k9/mail/Folder;)Ljava/util/Map;
    .locals 6
    .param p2, "destFolder"    # Lcom/fsck/k9/mail/Folder;
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
    .line 1047
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    instance-of v3, p2, Lcom/fsck/k9/mailstore/LocalFolder;

    if-nez v3, :cond_0

    .line 1048
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "moveMessages called with non-LocalFolder"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 1051
    check-cast v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 1053
    .local v1, "lDestFolder":Lcom/fsck/k9/mailstore/LocalFolder;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1056
    .local v2, "uidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/fsck/k9/mailstore/LocalFolder$14;

    invoke-direct {v5, p0, v1, p1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$14;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1164
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    return-object v2

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/MessagingException;

    throw v3
.end method

.method public open(I)V
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMode()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->close()V

    .line 153
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$1;

    invoke-direct {v3, p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$1;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;I)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method open(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 191
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v10, v6

    iput-wide v10, p0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 192
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 193
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    .line 194
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushState:Ljava/lang/String;

    .line 195
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Lcom/fsck/k9/mail/Folder;->setStatus(Ljava/lang/String;)V

    .line 198
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-super {p0, v10, v11}, Lcom/fsck/k9/mail/Folder;->setLastChecked(J)V

    .line 199
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-super {p0, v10, v11}, Lcom/fsck/k9/mail/Folder;->setLastPush(J)V

    .line 200
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    .line 201
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    :goto_1
    iput-boolean v7, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    .line 202
    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder$FolderClass;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "noClass":Ljava/lang/String;
    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "displayClass":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, v2

    .end local v0    # "displayClass":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 205
    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "notifyClass":Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v3, v2

    .end local v3    # "notifyClass":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 207
    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "pushClass":Ljava/lang/String;
    if-nez v4, :cond_2

    move-object v4, v2

    .end local v4    # "pushClass":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 209
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "syncClass":Ljava/lang/String;
    if-nez v5, :cond_5

    .end local v2    # "noClass":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 211
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "moreMessagesValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->fromDatabaseName(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 213
    return-void

    .end local v1    # "moreMessagesValue":Ljava/lang/String;
    .end local v5    # "syncClass":Ljava/lang/String;
    :cond_3
    move v6, v8

    .line 200
    goto :goto_0

    :cond_4
    move v7, v8

    .line 201
    goto :goto_1

    .restart local v2    # "noClass":Ljava/lang/String;
    .restart local v5    # "syncClass":Ljava/lang/String;
    :cond_5
    move-object v2, v5

    .line 210
    goto :goto_2
.end method

.method public purgeToVisibleLimit(Lcom/fsck/k9/mailstore/MessageRemovalListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/fsck/k9/mailstore/MessageRemovalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-static {}, Lcom/fsck/k9/activity/Search;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 413
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$6;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$6;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/MessageRemovalListener;)V

    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public refresh(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefHolder"    # Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 634
    invoke-direct {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder;->getPrefId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalStore;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v2

    .line 639
    .local v2, "storage":Lcom/fsck/k9/preferences/Storage;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".displayMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 640
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    .line 639
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v3

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    iget-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v3, v4, :cond_0

    .line 645
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 649
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".syncMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 650
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v3

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :goto_1
    iget-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v3, v4, :cond_1

    .line 656
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 660
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".notifyMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 661
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    .line 660
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v3

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 665
    :goto_2
    iget-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v3, v4, :cond_2

    .line 666
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 670
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pushMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 671
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v3

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 675
    :goto_3
    iget-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v3, v4, :cond_3

    .line 676
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 678
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".inTopGroup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->inTopGroup:Z

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->inTopGroup:Z

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".integrate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->integrate:Z

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p2, Lcom/fsck/k9/mailstore/LocalFolder$PreferencesHolder;->integrate:Z

    .line 680
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Unable to load displayMode for %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 652
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Unable to load syncMode for %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 662
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 663
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Unable to load notifyMode for %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 673
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Unable to load pushMode for %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 596
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 597
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 598
    return-void
.end method

.method public save(Lcom/fsck/k9/preferences/StorageEditor;)V
    .locals 3
    .param p1, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".displayMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".syncMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 616
    :goto_1
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".notifyMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 622
    :goto_2
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pushMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 627
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".inTopGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".integrate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 631
    return-void

    .line 607
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".displayMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    goto/16 :goto_0

    .line 613
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".syncMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    goto/16 :goto_1

    .line 619
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".notifyMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    goto/16 :goto_2

    .line 625
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pushMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    goto/16 :goto_3
.end method

.method public setDisplayClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 2
    .param p1, "displayClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 526
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 527
    const-string v0, "display_class"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public setFlags(Ljava/util/List;Ljava/util/Set;Z)V
    .locals 4
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
    .line 1725
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Message;>;"
    .local p2, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1729
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder$20;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder$20;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;Ljava/util/Set;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    return-void

    .line 1745
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "e":Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public setFlags(Ljava/util/Set;Z)V
    .locals 3
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
    .line 1753
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Flag;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 1754
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Lcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Message;

    .line 1755
    .local v0, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v0, p1, p2}, Lcom/fsck/k9/mail/Message;->setFlags(Ljava/util/Set;Z)V

    goto :goto_0

    .line 1757
    .end local v0    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    return-void
.end method

.method public setInTopGroup(Z)V
    .locals 2
    .param p1, "inTopGroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2063
    iput-boolean p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    .line 2064
    const-string v1, "top_group"

    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2065
    return-void

    .line 2064
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIntegrate(Z)V
    .locals 2
    .param p1, "integrate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    .line 551
    const-string v1, "integrate"

    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastChecked(J)V
    .locals 3
    .param p1, "lastChecked"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 377
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 378
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->access$801(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const-string v1, "last_updated"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setLastPush(J)V
    .locals 3
    .param p1, "lastChecked"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V

    .line 389
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->access$901(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    const-string v1, "last_pushed"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    new-instance v1, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;

    invoke-direct {v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase$WrappedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setLastSelectedFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "destFolderName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Account;->setLastSelectedFolderName(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setMoreMessages(Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;)V
    .locals 2
    .param p1, "moreMessages"    # Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 563
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;

    .line 564
    const-string v0, "more_messages"

    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalFolder$MoreMessages;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public setNotifyClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 2
    .param p1, "notifyClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 541
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 542
    const-string v0, "notify_class"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->notifyClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public setPushClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 2
    .param p1, "pushClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 536
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 537
    const-string v0, "push_class"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    return-void
.end method

.method public setPushState(Ljava/lang/String;)V
    .locals 1
    .param p1, "pushState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 467
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->pushState:Ljava/lang/String;

    .line 468
    const-string v0, "push_state"

    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 463
    const-string v0, "status"

    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public setSyncClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 2
    .param p1, "syncClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 531
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 532
    const-string v0, "poll_class"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public setVisibleLimit(I)V
    .locals 2
    .param p1, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 443
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->updateMoreMessagesOnVisibleLimitChange(II)V

    .line 445
    iput p1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    .line 446
    const-string v0, "visible_limit"

    iget v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->visibleLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;->updateFolderColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    return-void
.end method

.method public storeSmallMessage(Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$15;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$15;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    return-object v0
.end method

.method public syncRemoteDeletions()Z
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->syncRemoteDeletions()Z

    move-result v0

    return v0
.end method

.method public updateLastUid()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2087
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->getDatabase()Lcom/fsck/k9/mailstore/LockableDatabase;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$26;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mailstore/LocalFolder$26;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;)V

    invoke-virtual {v1, v4, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2108
    .local v0, "lastUid":Ljava/lang/Integer;
    const-string v1, "Updated last UID for folder %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2109
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder;->lastUid:Ljava/lang/Integer;

    .line 2110
    return-void
.end method
