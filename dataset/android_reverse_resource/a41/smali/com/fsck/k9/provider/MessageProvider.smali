.class public Lcom/fsck/k9/provider/MessageProvider;
.super Landroid/content/ContentProvider;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/provider/MessageProvider$MessageInfoHolderRetrieverListener;,
        Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$MonitoredCursor;,
        Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$IncrementExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$UnreadExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$HasStarExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$HasAttachmentsExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$AccountNumberExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$AccountColorExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$AccountExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SenderAddressExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SenderExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$DeleteUriExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$UriExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$PreviewExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SendDateExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$SubjectExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$CountExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$IdExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$FieldExtractor;,
        Lcom/fsck/k9/provider/MessageProvider$QueryHandler;,
        Lcom/fsck/k9/provider/MessageProvider$UnreadColumns;,
        Lcom/fsck/k9/provider/MessageProvider$AccountColumns;,
        Lcom/fsck/k9/provider/MessageProvider$MessageColumns;,
        Lcom/fsck/k9/provider/MessageProvider$ReverseDateComparator;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.fsck.k9.messageprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final UNREAD_PROJECTION:[Ljava/lang/String;


# instance fields
.field private messageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field private queryHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/provider/MessageProvider$QueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field scheduledPool:Ljava/util/concurrent/ScheduledExecutorService;

.field semaphore:Ljava/util/concurrent/Semaphore;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const-string v0, "content://com.fsck.k9.messageprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/provider/MessageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "sender"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "delUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "senderAddress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/provider/MessageProvider;->DEFAULT_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "accountNumber"

    aput-object v1, v0, v3

    const-string v1, "accountName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/provider/MessageProvider;->DEFAULT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "accountName"

    aput-object v1, v0, v3

    const-string v1, "unread"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fsck/k9/provider/MessageProvider;->UNREAD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->queryHandlers:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 92
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->scheduledPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fsck/k9/provider/MessageProvider;->DEFAULT_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fsck/k9/provider/MessageProvider;->DEFAULT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/fsck/k9/provider/MessageProvider;->UNREAD_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/provider/MessageProvider;)Lcom/fsck/k9/helper/MessageHelper;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/provider/MessageProvider;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 158
    sget-object v8, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v8, :cond_0

    .line 159
    const/4 v8, 0x0

    .line 194
    :goto_0
    return v8

    .line 162
    :cond_0
    const-string v8, "MessageProvider/delete: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    .line 167
    .local v7, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 168
    .local v1, "accountId":I
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "folderName":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 172
    .local v5, "msgUid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 173
    .local v6, "myAccount":Lcom/fsck/k9/Account;
    invoke-virtual {p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 174
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v9

    if-ne v9, v1, :cond_1

    .line 175
    move-object v6, v0

    .line 176
    invoke-virtual {p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 177
    const-string v8, "not deleting messages because account is unavailable at the moment"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    const/4 v8, 0x0

    goto :goto_0

    .line 183
    .end local v0    # "account":Lcom/fsck/k9/Account;
    :cond_2
    if-nez v6, :cond_3

    .line 184
    const-string v8, "Could not find account with id %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_3
    if-eqz v6, :cond_4

    .line 188
    new-instance v4, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v4, v8, v3, v5, v9}, Lcom/fsck/k9/activity/MessageReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Flag;)V

    .line 189
    .local v4, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-virtual {p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v2

    .line 190
    .local v2, "controller":Lcom/fsck/k9/controller/MessagingController;
    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Lcom/fsck/k9/controller/MessagingController;->deleteMessage(Lcom/fsck/k9/activity/MessageReference;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 194
    .end local v2    # "controller":Lcom/fsck/k9/controller/MessagingController;
    .end local v4    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 122
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-object v3

    .line 126
    :cond_0
    const-string v0, "MessageProvider/getType: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 199
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-object v3

    .line 203
    :cond_0
    const-string v0, "MessageProvider/insert: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/fsck/k9/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/helper/MessageHelper;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/MessageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/provider/MessageProvider;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 99
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;

    invoke-direct {v1, p0}, Lcom/fsck/k9/provider/MessageProvider$AccountsQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/provider/MessageProvider;->registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    .line 100
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;

    invoke-direct {v1, p0}, Lcom/fsck/k9/provider/MessageProvider$MessagesQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/provider/MessageProvider;->registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    .line 101
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;

    new-instance v1, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;

    invoke-direct {v1, p0}, Lcom/fsck/k9/provider/MessageProvider$UnreadQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/provider/MessageProvider$ThrottlingQueryHandler;-><init>(Lcom/fsck/k9/provider/MessageProvider;Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/provider/MessageProvider;->registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V

    .line 103
    new-instance v0, Lcom/fsck/k9/provider/MessageProvider$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/provider/MessageProvider$1;-><init>(Lcom/fsck/k9/provider/MessageProvider;)V

    invoke-static {v0}, Lcom/fsck/k9/K9;->registerApplicationAware(Lcom/fsck/k9/K9$ApplicationAware;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v1, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 134
    const/4 v7, 0x0

    .line 153
    :goto_0
    return-object v7

    .line 137
    :cond_0
    const-string v1, "MessageProvider/query: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 140
    .local v6, "code":I
    const/4 v1, -0x1

    if-ne v6, v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->queryHandlers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .local v0, "handler":Lcom/fsck/k9/provider/MessageProvider$QueryHandler;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 147
    invoke-interface/range {v0 .. v5}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 148
    .end local v0    # "handler":Lcom/fsck/k9/provider/MessageProvider$QueryHandler;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 149
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "Unable to execute query for URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v8, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected registerQueryHandler(Lcom/fsck/k9/provider/MessageProvider$QueryHandler;)V
    .locals 4
    .param p1, "handler"    # Lcom/fsck/k9/provider/MessageProvider$QueryHandler;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->queryHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->queryHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->queryHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 232
    .local v0, "code":I
    iget-object v1, p0, Lcom/fsck/k9/provider/MessageProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.fsck.k9.messageprovider"

    invoke-interface {p1}, Lcom/fsck/k9/provider/MessageProvider$QueryHandler;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return v2

    .line 214
    :cond_0
    const-string v0, "MessageProvider/update: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
