.class public Lcom/fsck/k9/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Lcom/fsck/k9/BaseAccount;
.implements Lcom/fsck/k9/mail/store/StoreConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/Account$MessageFormat;,
        Lcom/fsck/k9/Account$QuoteStyle;,
        Lcom/fsck/k9/Account$Searchable;,
        Lcom/fsck/k9/Account$ShowPictures;,
        Lcom/fsck/k9/Account$FolderMode;,
        Lcom/fsck/k9/Account$SortType;,
        Lcom/fsck/k9/Account$DeletePolicy;,
        Lcom/fsck/k9/Account$Expunge;
    }
.end annotation


# static fields
.field public static final ACCOUNT_DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field public static final DEFAULT_MESSAGE_FORMAT:Lcom/fsck/k9/Account$MessageFormat;

.field public static final DEFAULT_MESSAGE_FORMAT_AUTO:Z = false

.field public static final DEFAULT_MESSAGE_READ_RECEIPT:Z = false

.field public static final DEFAULT_QUOTED_TEXT_SHOWN:Z = true

.field public static final DEFAULT_QUOTE_PREFIX:Ljava/lang/String; = ">"

.field public static final DEFAULT_QUOTE_STYLE:Lcom/fsck/k9/Account$QuoteStyle;

.field public static final DEFAULT_REMOTE_SEARCH_NUM_RESULTS:I = 0x19

.field public static final DEFAULT_REPLY_AFTER_QUOTE:Z = false

.field public static final DEFAULT_SORT_ASCENDING:Z = false

.field public static final DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

.field public static final DEFAULT_STRIP_SIGNATURE:Z = true

.field public static final IDENTITY_DESCRIPTION_KEY:Ljava/lang/String; = "description"

.field public static final IDENTITY_EMAIL_KEY:Ljava/lang/String; = "email"

.field public static final IDENTITY_NAME_KEY:Ljava/lang/String; = "name"

.field private static final INBOX:Ljava/lang/String; = "INBOX"

.field public static final NO_OPENPGP_KEY:J = 0x0L

.field public static final OUTBOX:Ljava/lang/String; = "K9MAIL_INTERNAL_OUTBOX"

.field private static final PREDEFINED_COLORS:[Ljava/lang/Integer;

.field public static final STORE_URI_KEY:Ljava/lang/String; = "storeUri"

.field public static final TRANSPORT_URI_KEY:Ljava/lang/String; = "transportUri"


# instance fields
.field private accountNumber:I

.field private final accountUuid:Ljava/lang/String;

.field private allowRemoteSearch:Z

.field private alwaysBcc:Ljava/lang/String;

.field private alwaysShowCcBcc:Z

.field private archiveFolderName:Ljava/lang/String;

.field private autoExpandFolderName:Ljava/lang/String;

.field private automaticCheckIntervalMinutes:I

.field private chipColor:I

.field private final compressionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/mail/NetworkType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private defaultQuotedTextShown:Z

.field private deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;

.field private description:Ljava/lang/String;

.field private displayCount:I

.field private draftsFolderName:Ljava/lang/String;

.field private expungePolicy:Lcom/fsck/k9/Account$Expunge;

.field private flaggedReadColorChip:Lcom/fsck/k9/view/ColorChip;

.field private flaggedUnreadColorChip:Lcom/fsck/k9/view/ColorChip;

.field private folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

.field private folderNotifyNewMailMode:Lcom/fsck/k9/Account$FolderMode;

.field private folderPushMode:Lcom/fsck/k9/Account$FolderMode;

.field private folderSyncMode:Lcom/fsck/k9/Account$FolderMode;

.field private folderTargetMode:Lcom/fsck/k9/Account$FolderMode;

.field private goToUnreadMessageSearch:Z

.field private identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private idleRefreshMinutes:I

.field private inboxFolderName:Ljava/lang/String;

.field private isEnabled:Z

.field private isSignatureBeforeQuotedText:Z

.field private lastSelectedFolderName:Ljava/lang/String;

.field private latestOldMessageSeenTime:J

.field private localStorageProviderId:Ljava/lang/String;

.field private markMessageAsReadOnView:Z

.field private maxPushFolders:I

.field private maximumAutoDownloadMessageSize:I

.field private maximumPolledMessageAge:I

.field private messageFormat:Lcom/fsck/k9/Account$MessageFormat;

.field private messageFormatAuto:Z

.field private messageReadReceipt:Z

.field private notificationSetting:Lcom/fsck/k9/NotificationSetting;

.field private notifyContactsMailOnly:Z

.field private notifyNewMail:Z

.field private notifySelfNewMail:Z

.field private notifySync:Z

.field private pgpCryptoKey:J

.field private pushPollOnConnect:Z

.field private quotePrefix:Ljava/lang/String;

.field private quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

.field private readColorChip:Lcom/fsck/k9/view/ColorChip;

.field private remoteSearchFullText:Z

.field private remoteSearchNumResults:I

.field private replyAfterQuote:Z

.field private ringNotified:Z

.field private searchableFolders:Lcom/fsck/k9/Account$Searchable;

.field private sentFolderName:Ljava/lang/String;

.field private showPictures:Lcom/fsck/k9/Account$ShowPictures;

.field private sortAscending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/Account$SortType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sortType:Lcom/fsck/k9/Account$SortType;

.field private spamFolderName:Ljava/lang/String;

.field private storeUri:Ljava/lang/String;

.field private stripSignature:Z

.field private subscribedFoldersOnly:Z

.field private syncRemoteDeletions:Z

.field private transportUri:Ljava/lang/String;

.field private trashFolderName:Ljava/lang/String;

.field private unreadColorChip:Lcom/fsck/k9/view/ColorChip;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/fsck/k9/Account$MessageFormat;->HTML:Lcom/fsck/k9/Account$MessageFormat;

    sput-object v0, Lcom/fsck/k9/Account;->DEFAULT_MESSAGE_FORMAT:Lcom/fsck/k9/Account$MessageFormat;

    .line 103
    sget-object v0, Lcom/fsck/k9/Account$QuoteStyle;->PREFIX:Lcom/fsck/k9/Account$QuoteStyle;

    sput-object v0, Lcom/fsck/k9/Account;->DEFAULT_QUOTE_STYLE:Lcom/fsck/k9/Account$QuoteStyle;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const-string v2, "#0099CC"

    .line 123
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#669900"

    .line 124
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#FF8800"

    .line 125
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#CC0000"

    .line 126
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#9933CC"

    .line 127
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/Account;->PREDEFINED_COLORS:[Ljava/lang/Integer;

    .line 158
    sget-object v0, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    sput-object v0, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x19

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v1, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    iput-object v1, p0, Lcom/fsck/k9/Account;->deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    .line 201
    sget-object v1, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    iput-object v1, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;

    .line 205
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;

    .line 256
    new-instance v1, Lcom/fsck/k9/NotificationSetting;

    invoke-direct {v1}, Lcom/fsck/k9/NotificationSetting;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    .line 279
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/StorageManager;->getDefaultProviderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    .line 281
    iput v6, p0, Lcom/fsck/k9/Account;->automaticCheckIntervalMinutes:I

    .line 282
    const/16 v1, 0x18

    iput v1, p0, Lcom/fsck/k9/Account;->idleRefreshMinutes:I

    .line 283
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->pushPollOnConnect:Z

    .line 284
    iput v7, p0, Lcom/fsck/k9/Account;->displayCount:I

    .line 285
    iput v6, p0, Lcom/fsck/k9/Account;->accountNumber:I

    .line 286
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->notifyNewMail:Z

    .line 287
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->folderNotifyNewMailMode:Lcom/fsck/k9/Account$FolderMode;

    .line 288
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->notifySync:Z

    .line 289
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->notifySelfNewMail:Z

    .line 290
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->notifyContactsMailOnly:Z

    .line 291
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    .line 292
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->folderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 293
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->folderPushMode:Lcom/fsck/k9/Account$FolderMode;

    .line 294
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->folderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    .line 295
    sget-object v1, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    iput-object v1, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;

    .line 296
    iget-object v1, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    sget-object v2, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v1, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    iput-object v1, p0, Lcom/fsck/k9/Account;->showPictures:Lcom/fsck/k9/Account$ShowPictures;

    .line 298
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText:Z

    .line 299
    sget-object v1, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    iput-object v1, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;

    .line 300
    const-string v1, "INBOX"

    iput-object v1, p0, Lcom/fsck/k9/Account;->autoExpandFolderName:Ljava/lang/String;

    .line 301
    const-string v1, "INBOX"

    iput-object v1, p0, Lcom/fsck/k9/Account;->inboxFolderName:Ljava/lang/String;

    .line 302
    const/16 v1, 0xa

    iput v1, p0, Lcom/fsck/k9/Account;->maxPushFolders:I

    .line 303
    invoke-direct {p0, p1}, Lcom/fsck/k9/Account;->pickColor(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/Account;->chipColor:I

    .line 304
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z

    .line 305
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z

    .line 306
    iput v6, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I

    .line 307
    const v1, 0x8000

    iput v1, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I

    .line 308
    sget-object v1, Lcom/fsck/k9/Account;->DEFAULT_MESSAGE_FORMAT:Lcom/fsck/k9/Account$MessageFormat;

    iput-object v1, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    .line 309
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->messageFormatAuto:Z

    .line 310
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->messageReadReceipt:Z

    .line 311
    sget-object v1, Lcom/fsck/k9/Account;->DEFAULT_QUOTE_STYLE:Lcom/fsck/k9/Account$QuoteStyle;

    iput-object v1, p0, Lcom/fsck/k9/Account;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 312
    const-string v1, ">"

    iput-object v1, p0, Lcom/fsck/k9/Account;->quotePrefix:Ljava/lang/String;

    .line 313
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->defaultQuotedTextShown:Z

    .line 314
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->replyAfterQuote:Z

    .line 315
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->stripSignature:Z

    .line 316
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->syncRemoteDeletions:Z

    .line 317
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/fsck/k9/Account;->pgpCryptoKey:J

    .line 318
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->allowRemoteSearch:Z

    .line 319
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->remoteSearchFullText:Z

    .line 320
    iput v7, p0, Lcom/fsck/k9/Account;->remoteSearchNumResults:I

    .line 321
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->isEnabled:Z

    .line 322
    iput-boolean v5, p0, Lcom/fsck/k9/Account;->markMessageAsReadOnView:Z

    .line 323
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->alwaysShowCcBcc:Z

    .line 325
    sget-object v1, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    iput-object v1, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    .line 329
    new-instance v0, Lcom/fsck/k9/Identity;

    invoke-direct {v0}, Lcom/fsck/k9/Identity;-><init>()V

    .line 330
    .local v0, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v0, v5}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 331
    const v1, 0x7f07019b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 332
    const v1, 0x7f07019a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Identity;->setDescription(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lcom/fsck/k9/NotificationSetting;

    invoke-direct {v1}, Lcom/fsck/k9/NotificationSetting;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    .line 336
    iget-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/NotificationSetting;->setVibrate(Z)V

    .line 337
    iget-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/NotificationSetting;->setVibratePattern(I)V

    .line 338
    iget-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/fsck/k9/NotificationSetting;->setVibrateTimes(I)V

    .line 339
    iget-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v1, v5}, Lcom/fsck/k9/NotificationSetting;->setRingEnabled(Z)V

    .line 340
    iget-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    const-string v2, "content://settings/system/notification_sound"

    invoke-virtual {v1, v2}, Lcom/fsck/k9/NotificationSetting;->setRingtone(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    iget v2, p0, Lcom/fsck/k9/Account;->chipColor:I

    invoke-virtual {v1, v2}, Lcom/fsck/k9/NotificationSetting;->setLedColor(I)V

    .line 343
    invoke-direct {p0}, Lcom/fsck/k9/Account;->cacheChips()V

    .line 344
    return-void
.end method

.method protected constructor <init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    iput-object v0, p0, Lcom/fsck/k9/Account;->deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    .line 201
    sget-object v0, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    iput-object v0, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;

    .line 205
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/fsck/k9/NotificationSetting;

    invoke-direct {v0}, Lcom/fsck/k9/NotificationSetting;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    .line 369
    iput-object p2, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    .line 370
    invoke-direct {p0, p1}, Lcom/fsck/k9/Account;->loadAccount(Lcom/fsck/k9/Preferences;)V

    .line 371
    return-void
.end method

.method private declared-synchronized cacheChips()V
    .locals 4

    .prologue
    .line 875
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/fsck/k9/view/ColorChip;

    iget v1, p0, Lcom/fsck/k9/Account;->chipColor:I

    const/4 v2, 0x1

    sget-object v3, Lcom/fsck/k9/view/ColorChip;->CIRCULAR:Landroid/graphics/Path;

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/view/ColorChip;-><init>(IZLandroid/graphics/Path;)V

    iput-object v0, p0, Lcom/fsck/k9/Account;->readColorChip:Lcom/fsck/k9/view/ColorChip;

    .line 876
    new-instance v0, Lcom/fsck/k9/view/ColorChip;

    iget v1, p0, Lcom/fsck/k9/Account;->chipColor:I

    const/4 v2, 0x0

    sget-object v3, Lcom/fsck/k9/view/ColorChip;->CIRCULAR:Landroid/graphics/Path;

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/view/ColorChip;-><init>(IZLandroid/graphics/Path;)V

    iput-object v0, p0, Lcom/fsck/k9/Account;->unreadColorChip:Lcom/fsck/k9/view/ColorChip;

    .line 877
    new-instance v0, Lcom/fsck/k9/view/ColorChip;

    iget v1, p0, Lcom/fsck/k9/Account;->chipColor:I

    const/4 v2, 0x1

    sget-object v3, Lcom/fsck/k9/view/ColorChip;->STAR:Landroid/graphics/Path;

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/view/ColorChip;-><init>(IZLandroid/graphics/Path;)V

    iput-object v0, p0, Lcom/fsck/k9/Account;->flaggedReadColorChip:Lcom/fsck/k9/view/ColorChip;

    .line 878
    new-instance v0, Lcom/fsck/k9/view/ColorChip;

    iget v1, p0, Lcom/fsck/k9/Account;->chipColor:I

    const/4 v2, 0x0

    sget-object v3, Lcom/fsck/k9/view/ColorChip;->STAR:Landroid/graphics/Path;

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/view/ColorChip;-><init>(IZLandroid/graphics/Path;)V

    iput-object v0, p0, Lcom/fsck/k9/Account;->flaggedUnreadColorChip:Lcom/fsck/k9/view/ColorChip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    monitor-exit p0

    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deleteCertificates()V
    .locals 6

    .prologue
    .line 1881
    invoke-static {}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getInstance()Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    move-result-object v0

    .line 1883
    .local v0, "localKeyStore":Lcom/fsck/k9/mail/ssl/LocalKeyStore;
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, "storeUri":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1885
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1886
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->deleteCertificate(Ljava/lang/String;I)V

    .line 1888
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v2

    .line 1889
    .local v2, "transportUri":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1890
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1891
    .restart local v3    # "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->deleteCertificate(Ljava/lang/String;I)V

    .line 1893
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private declared-synchronized deleteIdentities(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;)V
    .locals 5
    .param p1, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p2, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 1397
    monitor-enter p0

    const/4 v2, 0x0

    .line 1400
    .local v2, "ident":I
    :cond_0
    const/4 v1, 0x0

    .line 1401
    .local v1, "gotOne":Z
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signatureUse."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".replyTo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    const/4 v1, 0x1

    .line 1411
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1412
    if-nez v1, :cond_0

    .line 1413
    monitor-exit p0

    return-void

    .line 1397
    .end local v0    # "email":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V
    .locals 2
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1833
    if-eqz p2, :cond_0

    const-string v0, "-NONE-"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    sget-object v0, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {p1, v0, p2, v1}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1836
    :cond_0
    return-void
.end method

.method private static findNewAccountNumber(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "accountNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 585
    .local v1, "newAccountNumber":I
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 586
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    .local v0, "accountNumber":I
    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_1

    .line 592
    .end local v0    # "accountNumber":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 593
    return v1

    .line 590
    .restart local v0    # "accountNumber":I
    :cond_1
    move v1, v0

    .line 591
    goto :goto_0
.end method

.method public static generateAccountNumber(Lcom/fsck/k9/Preferences;)I
    .locals 2
    .param p0, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    .line 605
    invoke-static {p0}, Lcom/fsck/k9/Account;->getExistingAccountNumbers(Lcom/fsck/k9/Preferences;)Ljava/util/List;

    move-result-object v0

    .line 606
    .local v0, "accountNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/fsck/k9/Account;->findNewAccountNumber(Ljava/util/List;)I

    move-result v1

    return v1
.end method

.method private static getExistingAccountNumbers(Lcom/fsck/k9/Preferences;)Ljava/util/List;
    .locals 5
    .param p0, "preferences"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Preferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v2

    .line 598
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    .local v1, "accountNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 600
    .local v0, "a":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 602
    .end local v0    # "a":Lcom/fsck/k9/Account;
    :cond_0
    return-object v1
.end method

.method private declared-synchronized loadAccount(Lcom/fsck/k9/Preferences;)V
    .locals 8
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    const/4 v4, 0x0

    .line 378
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v0

    .line 380
    .local v0, "storage":Lcom/fsck/k9/preferences/Storage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".storeUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->storeUri:Ljava/lang/String;

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".localStorageProvider"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    .line 382
    invoke-static {v5}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/StorageManager;->getDefaultProviderId()Ljava/lang/String;

    move-result-object v5

    .line 381
    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".transportUri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->transportUri:Ljava/lang/String;

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".description"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".alwaysBcc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/fsck/k9/Account;->alwaysBcc:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->alwaysBcc:Ljava/lang/String;

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".automaticCheckIntervalMinutes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->automaticCheckIntervalMinutes:I

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".idleRefreshMinutes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x18

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->idleRefreshMinutes:I

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".pushPollOnConnect"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->pushPollOnConnect:Z

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".displayCount"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x19

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->displayCount:I

    .line 390
    iget v3, p0, Lcom/fsck/k9/Account;->displayCount:I

    if-gez v3, :cond_0

    .line 391
    const/16 v3, 0x19

    iput v3, p0, Lcom/fsck/k9/Account;->displayCount:I

    .line 393
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".latestOldMessageSeenTime"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v3, v6, v7}, Lcom/fsck/k9/preferences/Storage;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fsck/k9/Account;->latestOldMessageSeenTime:J

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".notifyNewMail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->notifyNewMail:Z

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".folderNotifyNewMailMode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    invoke-static {v0, v3, v5}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$FolderMode;

    iput-object v3, p0, Lcom/fsck/k9/Account;->folderNotifyNewMailMode:Lcom/fsck/k9/Account$FolderMode;

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".notifySelfNewMail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->notifySelfNewMail:Z

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".notifyContactsMailOnly"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->notifyContactsMailOnly:Z

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".notifyMailCheck"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->notifySync:Z

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".deletePolicy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/Account$DeletePolicy;->NEVER:Lcom/fsck/k9/Account$DeletePolicy;

    iget v5, v5, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/fsck/k9/Account$DeletePolicy;->fromInt(I)Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".inboxFolderName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "INBOX"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->inboxFolderName:Ljava/lang/String;

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".draftsFolderName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Drafts"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->draftsFolderName:Ljava/lang/String;

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".sentFolderName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Sent"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->sentFolderName:Ljava/lang/String;

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".trashFolderName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Trash"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->trashFolderName:Ljava/lang/String;

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".archiveFolderName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Archive"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->archiveFolderName:Ljava/lang/String;

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".spamFolderName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Spam"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->spamFolderName:Ljava/lang/String;

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".expungePolicy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/Account$Expunge;->EXPUNGE_IMMEDIATELY:Lcom/fsck/k9/Account$Expunge;

    invoke-static {v0, v3, v5}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$Expunge;

    iput-object v3, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".syncRemoteDeletions"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->syncRemoteDeletions:Z

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".maxPushFolders"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->maxPushFolders:I

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".goToUnreadMessageSearch"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".subscribedFoldersOnly"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".maximumPolledMessageAge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".maximumAutoDownloadMessageSize"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v5, 0x8000

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".messageFormat"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/Account;->DEFAULT_MESSAGE_FORMAT:Lcom/fsck/k9/Account$MessageFormat;

    invoke-static {v0, v3, v5}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$MessageFormat;

    iput-object v3, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".messageFormatAuto"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->messageFormatAuto:Z

    .line 417
    iget-boolean v3, p0, Lcom/fsck/k9/Account;->messageFormatAuto:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    sget-object v5, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    if-ne v3, v5, :cond_1

    .line 418
    sget-object v3, Lcom/fsck/k9/Account$MessageFormat;->AUTO:Lcom/fsck/k9/Account$MessageFormat;

    iput-object v3, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    .line 420
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".messageReadReceipt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->messageReadReceipt:Z

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".quoteStyle"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/fsck/k9/Account;->DEFAULT_QUOTE_STYLE:Lcom/fsck/k9/Account$QuoteStyle;

    invoke-static {v0, v3, v5}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$QuoteStyle;

    iput-object v3, p0, Lcom/fsck/k9/Account;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".quotePrefix"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->quotePrefix:Ljava/lang/String;

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".defaultQuotedTextShown"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->defaultQuotedTextShown:Z

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".replyAfterQuote"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->replyAfterQuote:Z

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".stripSignature"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->stripSignature:Z

    .line 426
    invoke-static {}, Lcom/fsck/k9/mail/NetworkType;->values()[Lcom/fsck/k9/mail/NetworkType;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v5, v3

    .line 427
    .local v1, "type":Lcom/fsck/k9/mail/NetworkType;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".useCompression."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 429
    .local v2, "useCompression":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "type":Lcom/fsck/k9/mail/NetworkType;
    .end local v2    # "useCompression":Ljava/lang/Boolean;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".autoExpandFolderName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INBOX"

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->autoExpandFolderName:Ljava/lang/String;

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".accountNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->accountNumber:I

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".chipColor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/larswerkman/colorpicker/ColorPicker;->getRandomColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->chipColor:I

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sortTypeEnum"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$SortType;->SORT_DATE:Lcom/fsck/k9/Account$SortType;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$SortType;

    iput-object v3, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;

    .line 440
    iget-object v3, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    iget-object v4, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sortAscending"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".showPicturesEnum"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$ShowPictures;

    iput-object v3, p0, Lcom/fsck/k9/Account;->showPictures:Lcom/fsck/k9/Account$ShowPictures;

    .line 444
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vibrate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setVibrate(Z)V

    .line 445
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vibratePattern"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setVibratePattern(I)V

    .line 446
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vibrateTimes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setVibrateTimes(I)V

    .line 447
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setRingEnabled(Z)V

    .line 448
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://settings/system/notification_sound"

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setRingtone(Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".led"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setLed(Z)V

    .line 451
    iget-object v3, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ledColor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/fsck/k9/Account;->chipColor:I

    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/NotificationSetting;->setLedColor(I)V

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".folderDisplayMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$FolderMode;

    iput-object v3, p0, Lcom/fsck/k9/Account;->folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".folderSyncMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$FolderMode;

    iput-object v3, p0, Lcom/fsck/k9/Account;->folderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".folderPushMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$FolderMode;

    iput-object v3, p0, Lcom/fsck/k9/Account;->folderPushMode:Lcom/fsck/k9/Account$FolderMode;

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".folderTargetMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$FolderMode;

    iput-object v3, p0, Lcom/fsck/k9/Account;->folderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".searchableFolders"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    invoke-static {v0, v3, v4}, Lcom/fsck/k9/Preferences;->getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/Account$Searchable;

    iput-object v3, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signatureBeforeQuotedText"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText:Z

    .line 464
    invoke-direct {p0, v0}, Lcom/fsck/k9/Account;->loadIdentities(Lcom/fsck/k9/preferences/Storage;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".cryptoKey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/fsck/k9/Account;->pgpCryptoKey:J

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".allowRemoteSearch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->allowRemoteSearch:Z

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".remoteSearchFullText"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->remoteSearchFullText:Z

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".remoteSearchNumResults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/fsck/k9/Account;->remoteSearchNumResults:I

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->isEnabled:Z

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".markMessageAsReadOnView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->markMessageAsReadOnView:Z

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".alwaysShowCcBcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fsck/k9/Account;->alwaysShowCcBcc:Z

    .line 475
    invoke-direct {p0}, Lcom/fsck/k9/Account;->cacheChips()V

    .line 478
    iget-object v3, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_3
    monitor-exit p0

    return-void

    .line 378
    .end local v0    # "storage":Lcom/fsck/k9/preferences/Storage;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized loadIdentities(Lcom/fsck/k9/preferences/Storage;)Ljava/util/List;
    .locals 12
    .param p1, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/preferences/Storage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1354
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    .local v6, "newIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    const/4 v3, 0x0

    .line 1358
    .local v3, "ident":I
    :cond_0
    const/4 v2, 0x0

    .line 1359
    .local v2, "gotOne":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1360
    .local v5, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "email"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1361
    .local v1, "email":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signatureUse."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1362
    .local v9, "signatureUse":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signature."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1363
    .local v8, "signature":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "description"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, "description":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".replyTo."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1365
    .local v7, "replyTo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1366
    new-instance v4, Lcom/fsck/k9/Identity;

    invoke-direct {v4}, Lcom/fsck/k9/Identity;-><init>()V

    .line 1367
    .local v4, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v4, v5}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {v4, v9}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 1370
    invoke-virtual {v4, v8}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v4, v0}, Lcom/fsck/k9/Identity;->setDescription(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v4, v7}, Lcom/fsck/k9/Identity;->setReplyTo(Ljava/lang/String;)V

    .line 1373
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    const/4 v2, 0x1

    .line 1376
    .end local v4    # "identity":Lcom/fsck/k9/Identity;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1377
    if-nez v2, :cond_0

    .line 1379
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1380
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1381
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".email"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signatureUse"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signature"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1384
    new-instance v4, Lcom/fsck/k9/Identity;

    invoke-direct {v4}, Lcom/fsck/k9/Identity;-><init>()V

    .line 1385
    .restart local v4    # "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v4, v5}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v4, v9}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 1388
    invoke-virtual {v4, v8}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Identity;->setDescription(Ljava/lang/String;)V

    .line 1390
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    .end local v4    # "identity":Lcom/fsck/k9/Identity;
    :cond_2
    monitor-exit p0

    return-object v6

    .line 1354
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "gotOne":Z
    .end local v3    # "ident":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "newIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    .end local v7    # "replyTo":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    .end local v9    # "signatureUse":Z
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private loadUnreadCountForFolder(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 846
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "account/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 847
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stats"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 846
    invoke-static {v5, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 849
    .local v1, "uri":Landroid/net/Uri;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "unread_count"

    aput-object v10, v2, v5

    .line 853
    .local v2, "projection":[Ljava/lang/String;
    new-instance v9, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v9}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    .line 854
    .local v9, "search":Lcom/fsck/k9/search/LocalSearch;
    invoke-virtual {v9, p2}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .local v7, "query":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v8, "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v6

    .line 860
    .local v6, "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    invoke-static {p0, v6, v7, v8}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClause(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 862
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "selection":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 865
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private pickColor(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 352
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/fsck/k9/Account;->PREDEFINED_COLORS:[Ljava/lang/Integer;

    array-length v4, v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v2, "availableColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/fsck/k9/Account;->PREDEFINED_COLORS:[Ljava/lang/Integer;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 356
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 357
    .local v3, "color":Ljava/lang/Integer;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v3    # "color":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/larswerkman/colorpicker/ColorPicker;->getRandomColor()I

    move-result v4

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method private resetVisibleLimits()V
    .locals 3

    .prologue
    .line 762
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalStore;->resetVisibleLimits(I)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v1, "Unable to reset visible limits"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized saveIdentities(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;)V
    .locals 5
    .param p1, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p2, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 1416
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/Account;->deleteIdentities(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 1417
    const/4 v0, 0x0

    .line 1419
    .local v0, "ident":I
    iget-object v2, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Identity;

    .line 1420
    .local v1, "identity":Lcom/fsck/k9/Identity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signatureUse."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 1425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".replyTo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getReplyTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    add-int/lit8 v0, v0, 0x1

    .line 1427
    goto/16 :goto_0

    .line 1428
    .end local v1    # "identity":Lcom/fsck/k9/Identity;
    :cond_0
    monitor-exit p0

    return-void

    .line 1416
    .end local v0    # "ident":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private switchLocalStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "newStorageProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalStore;->switchLocalStorage(Ljava/lang/String;)V

    .line 1510
    :cond_0
    return-void
.end method


# virtual methods
.method public addCertificate(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "direction"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1843
    sget-object v2, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    if-ne p1, v2, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1848
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getInstance()Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    move-result-object v0

    .line 1849
    .local v0, "localKeyStore":Lcom/fsck/k9/mail/ssl/LocalKeyStore;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->addCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    .line 1850
    return-void

    .line 1846
    .end local v0    # "localKeyStore":Lcom/fsck/k9/mail/ssl/LocalKeyStore;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public allowRemoteSearch()Z
    .locals 1

    .prologue
    .line 1643
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->allowRemoteSearch:Z

    return v0
.end method

.method protected declared-synchronized delete(Lcom/fsck/k9/Preferences;)V
    .locals 11
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    const/4 v6, 0x0

    .line 484
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/Account;->deleteCertificates()V

    .line 487
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v7

    const-string v8, "accountUuids"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "uuids":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    .local v2, "newUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v8, v5

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v4, v5, v7

    .line 492
    .local v4, "uuid":Ljava/lang/String;
    iget-object v9, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 493
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 497
    .end local v4    # "uuid":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v1

    .line 500
    .local v1, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    array-length v8, v5

    if-ge v7, v8, :cond_2

    .line 501
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-static {v7, v8}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "accountUuids":Ljava/lang/String;
    const-string v7, "accountUuids"

    invoke-virtual {v1, v7, v0}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 505
    .end local v0    # "accountUuids":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".storeUri"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".transportUri"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".description"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".email"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 510
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".alwaysBcc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".automaticCheckIntervalMinutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pushPollOnConnect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 513
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".idleRefreshMinutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 514
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lastAutomaticCheckTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 515
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".latestOldMessageSeenTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".notifyNewMail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".notifySelfNewMail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".deletePolicy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".draftsFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".sentFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 521
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".trashFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".archiveFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 523
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".spamFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 524
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".autoExpandFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 525
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".accountNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".vibrate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".vibratePattern"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".vibrateTimes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ringtone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderDisplayMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderSyncMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderPushMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 534
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderTargetMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".signatureBeforeQuotedText"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".expungePolicy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".syncRemoteDeletions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".maxPushFolders"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 539
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".searchableFolders"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".chipColor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 541
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".led"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 542
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ledColor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".goToUnreadMessageSearch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".subscribedFoldersOnly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".maximumPolledMessageAge"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".maximumAutoDownloadMessageSize"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".messageFormatAuto"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".quoteStyle"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".quotePrefix"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".sortTypeEnum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".sortAscending"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 552
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".showPicturesEnum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".replyAfterQuote"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".stripSignature"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoAutoSignature"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 557
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoAutoEncrypt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoKey"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 560
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoSupportSignOnly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 561
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".enabled"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".markMessageAsReadOnView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".alwaysShowCcBcc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".allowRemoteSearch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".remoteSearchFullText"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".remoteSearchNumResults"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".defaultQuotedTextShown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".displayCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".inboxFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".localStorageProvider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".messageFormat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".messageReadReceipt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 573
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".notifyMailCheck"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 574
    invoke-static {}, Lcom/fsck/k9/mail/NetworkType;->values()[Lcom/fsck/k9/mail/NetworkType;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v3, v7, v6

    .line 575
    .local v3, "type":Lcom/fsck/k9/mail/NetworkType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".useCompression."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/fsck/k9/mail/NetworkType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 574
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 577
    .end local v3    # "type":Lcom/fsck/k9/mail/NetworkType;
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/fsck/k9/Account;->deleteIdentities(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 580
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 484
    .end local v1    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v2    # "newUuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "uuids":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public deleteCertificate(Ljava/lang/String;ILcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;)V
    .locals 5
    .param p1, "newHost"    # Ljava/lang/String;
    .param p2, "newPort"    # I
    .param p3, "direction"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    .prologue
    .line 1859
    sget-object v4, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;->INCOMING:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$CheckDirection;

    if-ne p3, v4, :cond_1

    .line 1860
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1864
    .local v3, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, "oldHost":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 1866
    .local v2, "oldPort":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1874
    :cond_0
    :goto_1
    return-void

    .line 1862
    .end local v1    # "oldHost":Ljava/lang/String;
    .end local v2    # "oldPort":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1870
    .restart local v1    # "oldHost":Ljava/lang/String;
    .restart local v2    # "oldPort":I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq p2, v2, :cond_0

    .line 1871
    :cond_3
    invoke-static {}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getInstance()Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    move-result-object v0

    .line 1872
    .local v0, "localKeyStore":Lcom/fsck/k9/mail/ssl/LocalKeyStore;
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->deleteCertificate(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1342
    instance-of v0, p1, Lcom/fsck/k9/Account;

    if-eqz v0, :cond_0

    .line 1343
    check-cast p1, Lcom/fsck/k9/Account;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1345
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public excludeSpecialFolders(Lcom/fsck/k9/search/LocalSearch;)V
    .locals 4
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1805
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 1806
    return-void
.end method

.method public excludeUnwantedFolders(Lcom/fsck/k9/search/LocalSearch;)V
    .locals 4
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;

    .prologue
    .line 1826
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/Account;->excludeSpecialFolder(Lcom/fsck/k9/search/LocalSearch;Ljava/lang/String;)V

    .line 1829
    new-instance v0, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v1, Lcom/fsck/k9/search/SearchSpecification$SearchField;->FOLDER:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v2, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    .line 1830
    return-void
.end method

.method public declared-synchronized findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;
    .locals 4
    .param p1, "addr"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 1463
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Identity;

    .line 1464
    .local v1, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1465
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "identity":Lcom/fsck/k9/Identity;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public generateColorChip(ZZ)Lcom/fsck/k9/view/ColorChip;
    .locals 1
    .param p1, "messageRead"    # Z
    .param p2, "messageFlagged"    # Z

    .prologue
    .line 889
    if-eqz p1, :cond_1

    .line 890
    if-eqz p2, :cond_0

    .line 891
    iget-object v0, p0, Lcom/fsck/k9/Account;->flaggedReadColorChip:Lcom/fsck/k9/view/ColorChip;

    .line 903
    .local v0, "chip":Lcom/fsck/k9/view/ColorChip;
    :goto_0
    return-object v0

    .line 893
    .end local v0    # "chip":Lcom/fsck/k9/view/ColorChip;
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->readColorChip:Lcom/fsck/k9/view/ColorChip;

    .restart local v0    # "chip":Lcom/fsck/k9/view/ColorChip;
    goto :goto_0

    .line 896
    .end local v0    # "chip":Lcom/fsck/k9/view/ColorChip;
    :cond_1
    if-eqz p2, :cond_2

    .line 897
    iget-object v0, p0, Lcom/fsck/k9/Account;->flaggedUnreadColorChip:Lcom/fsck/k9/view/ColorChip;

    .restart local v0    # "chip":Lcom/fsck/k9/view/ColorChip;
    goto :goto_0

    .line 899
    .end local v0    # "chip":Lcom/fsck/k9/view/ColorChip;
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/Account;->unreadColorChip:Lcom/fsck/k9/view/ColorChip;

    .restart local v0    # "chip":Lcom/fsck/k9/view/ColorChip;
    goto :goto_0
.end method

.method public declared-synchronized getAccountNumber()I
    .locals 1

    .prologue
    .line 1180
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->accountNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysBcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->alwaysBcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getArchiveFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->archiveFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoExpandFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->autoExpandFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutomaticCheckIntervalMinutes()I
    .locals 1

    .prologue
    .line 1018
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->automaticCheckIntervalMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChipColor()I
    .locals 1

    .prologue
    .line 882
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->chipColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCryptoKey()J
    .locals 2

    .prologue
    .line 1635
    iget-wide v0, p0, Lcom/fsck/k9/Account;->pgpCryptoKey:J

    return-wide v0
.end method

.method public declared-synchronized getDeletePolicy()Lcom/fsck/k9/Account$DeletePolicy;
    .locals 1

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayCount()I
    .locals 1

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->displayCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDraftsFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->draftsFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEarliestPollDate()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1545
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getMaximumPolledMessageAge()I

    move-result v0

    .line 1546
    .local v0, "age":I
    if-ltz v0, :cond_1

    .line 1547
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1548
    .local v1, "now":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1549
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1550
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1551
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1552
    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    .line 1553
    const/4 v2, 0x5

    mul-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1572
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1575
    .end local v1    # "now":Ljava/util/Calendar;
    :goto_1
    return-object v2

    .line 1554
    .restart local v1    # "now":Ljava/util/Calendar;
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1556
    :sswitch_0
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1559
    :sswitch_1
    const/4 v2, -0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1562
    :sswitch_2
    const/4 v2, -0x3

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1565
    :sswitch_3
    const/4 v2, -0x6

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1568
    :sswitch_4
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1575
    .end local v1    # "now":Ljava/util/Calendar;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1554
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x38 -> :sswitch_1
        0x54 -> :sswitch_2
        0xa8 -> :sswitch_3
        0x16d -> :sswitch_4
    .end sparse-switch
.end method

.method public declared-synchronized getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 963
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExpungePolicy()Lcom/fsck/k9/Account$Expunge;
    .locals 1

    .prologue
    .line 1289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderNotifyNewMailMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1061
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderNotifyNewMailMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderPushMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderSyncMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderTargetMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFolderUnreadCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 825
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 840
    :goto_0
    return v1

    .line 829
    :cond_0
    const/4 v1, 0x0

    .line 831
    .local v1, "unreadMessageCount":I
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/Account;->loadUnreadCountForFolder(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 833
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 837
    :cond_1
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v2
.end method

.method public declared-synchronized getIdentities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIdentity(I)Lcom/fsck/k9/Identity;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1442
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identity with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIdleRefreshMinutes()I
    .locals 1

    .prologue
    .line 1481
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->idleRefreshMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInboxFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/fsck/k9/Account;->inboxFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLastSelectedFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1675
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestOldMessageSeenTime()J
    .locals 2

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/fsck/k9/Account;->latestOldMessageSeenTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalStorageProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1307
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {p0, v0}, Lcom/fsck/k9/mailstore/LocalStore;->getInstance(Lcom/fsck/k9/Account;Landroid/content/Context;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMaxPushFolders()I
    .locals 1

    .prologue
    .line 1297
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->maxPushFolders:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumAutoDownloadMessageSize()I
    .locals 1

    .prologue
    .line 1537
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumPolledMessageAge()I
    .locals 1

    .prologue
    .line 1529
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessageFormat()Lcom/fsck/k9/Account$MessageFormat;
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    return-object v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 938
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotificationSetting()Lcom/fsck/k9/NotificationSetting;
    .locals 1

    .prologue
    .line 1683
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutboxFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_0
    const-string v0, "K9MAIL_INTERNAL_OUTBOX"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQuotePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1603
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->quotePrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQuoteStyle()Lcom/fsck/k9/Account$QuoteStyle;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/fsck/k9/Account;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    return-object v0
.end method

.method public getRemoteSearchNumResults()I
    .locals 1

    .prologue
    .line 1651
    iget v0, p0, Lcom/fsck/k9/Account;->remoteSearchNumResults:I

    return v0
.end method

.method public getRemoteStore()Lcom/fsck/k9/mail/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1311
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/fsck/k9/mail/store/RemoteStore;->getInstance(Landroid/content/Context;Lcom/fsck/k9/mail/store/StoreConfig;)Lcom/fsck/k9/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSearchableFolders()Lcom/fsck/k9/Account$Searchable;
    .locals 1

    .prologue
    .line 1473
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSentFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->sentFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowPictures()Lcom/fsck/k9/Account$ShowPictures;
    .locals 1

    .prologue
    .line 1249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->showPictures:Lcom/fsck/k9/Account$ShowPictures;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignatureUse()Z
    .locals 2

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getSignatureUse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSortType()Lcom/fsck/k9/Account$SortType;
    .locals 1

    .prologue
    .line 1230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpamFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->spamFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 776
    const/4 v14, 0x0

    .line 821
    :cond_0
    :goto_0
    return-object v14

    .line 779
    :cond_1
    new-instance v14, Lcom/fsck/k9/AccountStats;

    invoke-direct {v14}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 781
    .local v14, "stats":Lcom/fsck/k9/AccountStats;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 783
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v7, Lcom/fsck/k9/provider/EmailProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "account/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/stats"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 783
    invoke-static {v7, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 786
    .local v3, "uri":Landroid/net/Uri;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v15, "unread_count"

    aput-object v15, v4, v7

    const/4 v7, 0x1

    const-string v15, "flagged_count"

    aput-object v15, v4, v7

    .line 793
    .local v4, "projection":[Ljava/lang/String;
    new-instance v13, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v13}, Lcom/fsck/k9/search/LocalSearch;-><init>()V

    .line 794
    .local v13, "search":Lcom/fsck/k9/search/LocalSearch;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/fsck/k9/Account;->excludeSpecialFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 795
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/fsck/k9/Account;->limitToDisplayableFolders(Lcom/fsck/k9/search/LocalSearch;)V

    .line 798
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v11, "query":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v12, "queryArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v8

    .line 801
    .local v8, "conditions":Lcom/fsck/k9/search/ConditionsTreeNode;
    move-object/from16 v0, p0

    invoke-static {v0, v8, v11, v12}, Lcom/fsck/k9/search/SqlQueryBuilder;->buildWhereClause(Lcom/fsck/k9/Account;Lcom/fsck/k9/search/ConditionsTreeNode;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 803
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    .local v5, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v12, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 806
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 808
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 809
    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v14, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 810
    const/4 v7, 0x1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v14, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_2
    invoke-static {v9}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v10

    .line 817
    .local v10, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-static {}, Lcom/fsck/k9/K9;->measureAccounts()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 818
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalStore;->getSize()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/fsck/k9/AccountStats;->size:J

    goto/16 :goto_0

    .line 813
    .end local v10    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catchall_0
    move-exception v7

    invoke-static {v9}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    throw v7
.end method

.method public declared-synchronized getStoreUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->storeUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransportUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->transportUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrashFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->trashFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized goToUnreadMessageSearch()Z
    .locals 1

    .prologue
    .line 1513
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasArchiveFolder()Z
    .locals 2

    .prologue
    .line 1148
    monitor-enter p0

    :try_start_0
    const-string v0, "-NONE-"

    iget-object v1, p0, Lcom/fsck/k9/Account;->archiveFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraftsFolder()Z
    .locals 2

    .prologue
    .line 1099
    monitor-enter p0

    :try_start_0
    const-string v0, "-NONE-"

    iget-object v1, p0, Lcom/fsck/k9/Account;->draftsFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasSentFolder()Z
    .locals 2

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    const-string v0, "-NONE-"

    iget-object v1, p0, Lcom/fsck/k9/Account;->sentFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasSpamFolder()Z
    .locals 2

    .prologue
    .line 1164
    monitor-enter p0

    :try_start_0
    const-string v0, "-NONE-"

    iget-object v1, p0, Lcom/fsck/k9/Account;->spamFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasTrashFolder()Z
    .locals 2

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    const-string v0, "-NONE-"

    iget-object v1, p0, Lcom/fsck/k9/Account;->trashFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isAlwaysShowCcBcc()Z
    .locals 1

    .prologue
    .line 1713
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->alwaysShowCcBcc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAnIdentity(Lcom/fsck/k9/mail/Address;)Z
    .locals 1
    .param p1, "addr"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 1459
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnIdentity([Lcom/fsck/k9/mail/Address;)Z
    .locals 5
    .param p1, "addrs"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v1, 0x0

    .line 1446
    if-nez p1, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return v1

    .line 1449
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 1450
    .local v0, "addr":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1451
    const/4 v1, 0x1

    goto :goto_0

    .line 1449
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1691
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1692
    .local v0, "localStorageProviderId":Ljava/lang/String;
    if-nez v0, :cond_2

    move v1, v3

    .line 1693
    .local v1, "storageProviderIsInternalMemory":Z
    :goto_0
    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mailstore/StorageManager;->isReady(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .end local v1    # "storageProviderIsInternalMemory":Z
    :cond_2
    move v1, v2

    .line 1692
    goto :goto_0
.end method

.method public declared-synchronized isDefaultQuotedTextShown()Z
    .locals 1

    .prologue
    .line 1611
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->defaultQuotedTextShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    .line 1697
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->isEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMarkMessageAsReadOnView()Z
    .locals 1

    .prologue
    .line 1705
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->markMessageAsReadOnView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMessageReadReceiptAlways()Z
    .locals 1

    .prologue
    .line 1587
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->messageReadReceipt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotifyContactsMailOnly()Z
    .locals 1

    .prologue
    .line 1281
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->notifyContactsMailOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotifyNewMail()Z
    .locals 1

    .prologue
    .line 1053
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->notifyNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotifySelfNewMail()Z
    .locals 1

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->notifySelfNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPushPollOnConnect()Z
    .locals 1

    .prologue
    .line 1489
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->pushPollOnConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRemoteSearchFullText()Z
    .locals 1

    .prologue
    .line 1720
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isReplyAfterQuote()Z
    .locals 1

    .prologue
    .line 1619
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->replyAfterQuote:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRingNotified()Z
    .locals 1

    .prologue
    .line 981
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->ringNotified:Z

    return v0
.end method

.method public isSearchByDateCapable()Z
    .locals 2

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isShowOngoing()Z
    .locals 1

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->notifySync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSignatureBeforeQuotedText()Z
    .locals 1

    .prologue
    .line 1265
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSortAscending(Lcom/fsck/k9/Account$SortType;)Z
    .locals 2
    .param p1, "sortType"    # Lcom/fsck/k9/Account$SortType;

    .prologue
    .line 1238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fsck/k9/Account$SortType;->isDefaultAscending()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpecialFolder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1077
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1077
    :goto_0
    return v0

    .line 1083
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isStripSignature()Z
    .locals 1

    .prologue
    .line 1627
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->stripSignature:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public limitToDisplayableFolders(Lcom/fsck/k9/search/LocalSearch;)V
    .locals 6
    .param p1, "search"    # Lcom/fsck/k9/search/LocalSearch;

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v0

    .line 1743
    .local v0, "displayMode":Lcom/fsck/k9/Account$FolderMode;
    sget-object v3, Lcom/fsck/k9/Account$1;->$SwitchMap$com$fsck$k9$Account$FolderMode:[I

    invoke-virtual {v0}, Lcom/fsck/k9/Account$FolderMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1778
    :goto_0
    return-void

    .line 1746
    :pswitch_0
    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {p1, v3, v4, v5}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    goto :goto_0

    .line 1752
    :pswitch_1
    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {p1, v3, v4, v5}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    .line 1756
    new-instance v2, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;

    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v4, Lcom/fsck/k9/search/SearchSpecification$Attribute;->EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    sget-object v5, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1757
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/fsck/k9/search/SearchSpecification$SearchCondition;-><init>(Lcom/fsck/k9/search/SearchSpecification$SearchField;Lcom/fsck/k9/search/SearchSpecification$Attribute;Ljava/lang/String;)V

    .line 1758
    .local v2, "searchCondition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    invoke-virtual {p1}, Lcom/fsck/k9/search/LocalSearch;->getConditions()Lcom/fsck/k9/search/ConditionsTreeNode;

    move-result-object v1

    .line 1759
    .local v1, "root":Lcom/fsck/k9/search/ConditionsTreeNode;
    iget-object v3, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    if-eqz v3, :cond_0

    .line 1760
    iget-object v3, v1, Lcom/fsck/k9/search/ConditionsTreeNode;->mRight:Lcom/fsck/k9/search/ConditionsTreeNode;

    invoke-virtual {v3, v2}, Lcom/fsck/k9/search/ConditionsTreeNode;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    goto :goto_0

    .line 1762
    :cond_0
    invoke-virtual {p1, v2}, Lcom/fsck/k9/search/LocalSearch;->or(Lcom/fsck/k9/search/SearchSpecification$SearchCondition;)Lcom/fsck/k9/search/ConditionsTreeNode;

    goto :goto_0

    .line 1768
    .end local v1    # "root":Lcom/fsck/k9/search/ConditionsTreeNode;
    .end local v2    # "searchCondition":Lcom/fsck/k9/search/SearchSpecification$SearchCondition;
    :pswitch_2
    sget-object v3, Lcom/fsck/k9/search/SearchSpecification$SearchField;->DISPLAY_CLASS:Lcom/fsck/k9/search/SearchSpecification$SearchField;

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/fsck/k9/search/SearchSpecification$Attribute;->NOT_EQUALS:Lcom/fsck/k9/search/SearchSpecification$Attribute;

    invoke-virtual {p1, v3, v4, v5}, Lcom/fsck/k9/search/LocalSearch;->and(Lcom/fsck/k9/search/SearchSpecification$SearchField;Ljava/lang/String;Lcom/fsck/k9/search/SearchSpecification$Attribute;)V

    goto :goto_0

    .line 1743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public move(Lcom/fsck/k9/Preferences;Z)V
    .locals 8
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .param p2, "moveUp"    # Z

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v5

    const-string v6, "accountUuids"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "uuids":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v1

    .line 612
    .local v1, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    array-length v5, v4

    new-array v3, v5, [Ljava/lang/String;

    .line 613
    .local v3, "newUuids":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 614
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 615
    if-lez v2, :cond_0

    aget-object v5, v4, v2

    iget-object v6, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 616
    add-int/lit8 v5, v2, -0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v2

    .line 617
    add-int/lit8 v5, v2, -0x1

    iget-object v6, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 614
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    :cond_0
    aget-object v5, v4, v2

    aput-object v5, v3, v2

    goto :goto_1

    .line 625
    .end local v2    # "i":I
    :cond_1
    array-length v5, v4

    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 626
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    aget-object v5, v4, v2

    iget-object v6, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v2

    .line 628
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    aput-object v6, v3, v5

    .line 625
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 631
    :cond_2
    aget-object v5, v4, v2

    aput-object v5, v3, v2

    goto :goto_3

    .line 635
    :cond_3
    const/16 v5, 0x2c

    invoke-static {v3, v5}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "accountUuids":Ljava/lang/String;
    const-string v5, "accountUuids"

    invoke-virtual {v1, v5, v0}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 637
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 638
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 639
    return-void
.end method

.method public declared-synchronized save(Lcom/fsck/k9/Preferences;)V
    .locals 13
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    const/4 v9, 0x0

    .line 642
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v4

    .line 644
    .local v4, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v8

    const-string v10, "accountUuids"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 656
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v3

    .line 657
    .local v3, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 658
    .local v1, "accountNumbers":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 659
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v8

    aput v8, v1, v5

    .line 658
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 661
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 662
    array-length v10, v1

    move v8, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget v0, v1, v8

    .line 663
    .local v0, "accountNumber":I
    iget v11, p0, Lcom/fsck/k9/Account;->accountNumber:I

    add-int/lit8 v11, v11, 0x1

    if-le v0, v11, :cond_4

    .line 668
    .end local v0    # "accountNumber":I
    :cond_1
    iget v8, p0, Lcom/fsck/k9/Account;->accountNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/fsck/k9/Account;->accountNumber:I

    .line 670
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v8

    const-string v10, "accountUuids"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "accountUuids":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, ","

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    const-string v8, "accountUuids"

    invoke-virtual {v4, v8, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 675
    .end local v1    # "accountNumbers":[I
    .end local v2    # "accountUuids":Ljava/lang/String;
    .end local v3    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v5    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".storeUri"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->storeUri:Ljava/lang/String;

    invoke-static {v10}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 676
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".localStorageProvider"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 677
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".transportUri"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->transportUri:Ljava/lang/String;

    invoke-static {v10}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".description"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 679
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".alwaysBcc"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->alwaysBcc:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 680
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".automaticCheckIntervalMinutes"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->automaticCheckIntervalMinutes:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 681
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".idleRefreshMinutes"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->idleRefreshMinutes:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 682
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".pushPollOnConnect"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->pushPollOnConnect:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 683
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".displayCount"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->displayCount:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 684
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".latestOldMessageSeenTime"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/fsck/k9/Account;->latestOldMessageSeenTime:J

    invoke-virtual {v4, v8, v10, v11}, Lcom/fsck/k9/preferences/StorageEditor;->putLong(Ljava/lang/String;J)Lcom/fsck/k9/preferences/StorageEditor;

    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".notifyNewMail"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->notifyNewMail:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".folderNotifyNewMailMode"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->folderNotifyNewMailMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 687
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".notifySelfNewMail"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->notifySelfNewMail:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".notifyContactsMailOnly"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->notifyContactsMailOnly:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 689
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".notifyMailCheck"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->notifySync:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 690
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".deletePolicy"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;

    iget v10, v10, Lcom/fsck/k9/Account$DeletePolicy;->setting:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 691
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".inboxFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->inboxFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 692
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".draftsFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->draftsFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 693
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".sentFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->sentFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 694
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".trashFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->trashFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".archiveFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->archiveFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".spamFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->spamFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".autoExpandFolderName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->autoExpandFolderName:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 698
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".accountNumber"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->accountNumber:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 699
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".sortTypeEnum"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$SortType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 700
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".sortAscending"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    iget-object v11, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v10, v8}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 701
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".showPicturesEnum"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->showPictures:Lcom/fsck/k9/Account$ShowPictures;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$ShowPictures;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".folderDisplayMode"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".folderSyncMode"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->folderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".folderPushMode"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->folderPushMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 705
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".folderTargetMode"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->folderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".signatureBeforeQuotedText"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 707
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".expungePolicy"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$Expunge;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".syncRemoteDeletions"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->syncRemoteDeletions:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 709
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".maxPushFolders"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->maxPushFolders:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 710
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".searchableFolders"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$Searchable;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 711
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".chipColor"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->chipColor:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 712
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".goToUnreadMessageSearch"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".subscribedFoldersOnly"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 714
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".maximumPolledMessageAge"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 715
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".maximumAutoDownloadMessageSize"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 716
    sget-object v8, Lcom/fsck/k9/Account$MessageFormat;->AUTO:Lcom/fsck/k9/Account$MessageFormat;

    iget-object v10, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    invoke-virtual {v8, v10}, Lcom/fsck/k9/Account$MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 719
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".messageFormat"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$MessageFormat;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 720
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/fsck/k9/Account;->messageFormatAuto:Z

    .line 725
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".messageFormatAuto"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->messageFormatAuto:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 726
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".messageReadReceipt"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->messageReadReceipt:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 727
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".quoteStyle"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$QuoteStyle;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 728
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".quotePrefix"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->quotePrefix:Ljava/lang/String;

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 729
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".defaultQuotedTextShown"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->defaultQuotedTextShown:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 730
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".replyAfterQuote"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->replyAfterQuote:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 731
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".stripSignature"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->stripSignature:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 732
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".cryptoKey"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v10, p0, Lcom/fsck/k9/Account;->pgpCryptoKey:J

    invoke-virtual {v4, v8, v10, v11}, Lcom/fsck/k9/preferences/StorageEditor;->putLong(Ljava/lang/String;J)Lcom/fsck/k9/preferences/StorageEditor;

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".allowRemoteSearch"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->allowRemoteSearch:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 734
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".remoteSearchFullText"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->remoteSearchFullText:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 735
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".remoteSearchNumResults"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/fsck/k9/Account;->remoteSearchNumResults:I

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 736
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".enabled"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->isEnabled:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 737
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".markMessageAsReadOnView"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->markMessageAsReadOnView:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 738
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".alwaysShowCcBcc"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/fsck/k9/Account;->alwaysShowCcBcc:Z

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 740
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".vibrate"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->isVibrateEnabled()Z

    move-result v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 741
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".vibratePattern"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getVibratePattern()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".vibrateTimes"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getVibrateTimes()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 743
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".ring"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->isRingEnabled()Z

    move-result v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 744
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".ringtone"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getRingtone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 745
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".led"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->isLedEnabled()Z

    move-result v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 746
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".ledColor"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->notificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v10}, Lcom/fsck/k9/NotificationSetting;->getLedColor()I

    move-result v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 748
    invoke-static {}, Lcom/fsck/k9/mail/NetworkType;->values()[Lcom/fsck/k9/mail/NetworkType;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_4
    if-ge v8, v11, :cond_7

    aget-object v6, v10, v8

    .line 749
    .local v6, "type":Lcom/fsck/k9/mail/NetworkType;
    iget-object v9, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 750
    .local v7, "useCompression":Ljava/lang/Boolean;
    if-eqz v7, :cond_3

    .line 751
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ".useCompression."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v4, v9, v12}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 748
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 666
    .end local v6    # "type":Lcom/fsck/k9/mail/NetworkType;
    .end local v7    # "useCompression":Ljava/lang/Boolean;
    .restart local v0    # "accountNumber":I
    .restart local v1    # "accountNumbers":[I
    .restart local v3    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .restart local v5    # "i":I
    :cond_4
    iput v0, p0, Lcom/fsck/k9/Account;->accountNumber:I

    .line 662
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 671
    .end local v0    # "accountNumber":I
    .restart local v2    # "accountUuids":Ljava/lang/String;
    :cond_5
    const-string v8, ""

    goto/16 :goto_2

    .line 722
    .end local v1    # "accountNumbers":[I
    .end local v2    # "accountUuids":Ljava/lang/String;
    .end local v3    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v5    # "i":I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/fsck/k9/Account;->accountUuid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".messageFormat"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$MessageFormat;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 723
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/fsck/k9/Account;->messageFormatAuto:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 642
    .end local v4    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 754
    .restart local v4    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :cond_7
    :try_start_1
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/fsck/k9/Account;->saveIdentities(Lcom/fsck/k9/preferences/Storage;Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 756
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    monitor-exit p0

    return-void
.end method

.method public setAllowRemoteSearch(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1647
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->allowRemoteSearch:Z

    .line 1648
    return-void
.end method

.method public declared-synchronized setAlwaysBcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "alwaysBcc"    # Ljava/lang/String;

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->alwaysBcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAlwaysShowCcBcc(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1717
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->alwaysShowCcBcc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1718
    monitor-exit p0

    return-void

    .line 1717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setArchiveFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "archiveFolderName"    # Ljava/lang/String;

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->archiveFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    monitor-exit p0

    return-void

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoExpandFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1176
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->autoExpandFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    monitor-exit p0

    return-void

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutomaticCheckIntervalMinutes(I)Z
    .locals 2
    .param p1, "automaticCheckIntervalMinutes"    # I

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->automaticCheckIntervalMinutes:I

    .line 1026
    .local v0, "oldInterval":I
    iput p1, p0, Lcom/fsck/k9/Account;->automaticCheckIntervalMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1025
    .end local v0    # "oldInterval":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setChipColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->chipColor:I

    .line 871
    invoke-direct {p0}, Lcom/fsck/k9/Account;->cacheChips()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    monitor-exit p0

    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCompression(Lcom/fsck/k9/mail/NetworkType;Z)V
    .locals 2
    .param p1, "networkType"    # Lcom/fsck/k9/mail/NetworkType;
    .param p2, "useCompression"    # Z

    .prologue
    .line 1328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    monitor-exit p0

    return-void

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCryptoKey(J)V
    .locals 1
    .param p1, "keyId"    # J

    .prologue
    .line 1639
    iput-wide p1, p0, Lcom/fsck/k9/Account;->pgpCryptoKey:J

    .line 1640
    return-void
.end method

.method public declared-synchronized setDefaultQuotedTextShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1615
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->defaultQuotedTextShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    monitor-exit p0

    return-void

    .line 1615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeletePolicy(Lcom/fsck/k9/Account$DeletePolicy;)V
    .locals 1
    .param p1, "deletePolicy"    # Lcom/fsck/k9/Account$DeletePolicy;

    .prologue
    .line 1073
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->deletePolicy:Lcom/fsck/k9/Account$DeletePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    monitor-exit p0

    return-void

    .line 1073
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 934
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    monitor-exit p0

    return-void

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisplayCount(I)V
    .locals 1
    .param p1, "displayCount"    # I

    .prologue
    .line 1036
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1037
    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->displayCount:I

    .line 1041
    :goto_0
    invoke-direct {p0}, Lcom/fsck/k9/Account;->resetVisibleLimits()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    .line 1039
    :cond_0
    const/16 v0, 0x19

    :try_start_1
    iput v0, p0, Lcom/fsck/k9/Account;->displayCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1036
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftsFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->draftsFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    monitor-exit p0

    return-void

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 968
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    monitor-exit p0

    return-void

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1701
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->isEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    monitor-exit p0

    return-void

    .line 1701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExpungePolicy(Lcom/fsck/k9/Account$Expunge;)V
    .locals 1
    .param p1, "expungePolicy"    # Lcom/fsck/k9/Account$Expunge;

    .prologue
    .line 1293
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->expungePolicy:Lcom/fsck/k9/Account$Expunge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    monitor-exit p0

    return-void

    .line 1293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFolderDisplayMode(Lcom/fsck/k9/Account$FolderMode;)Z
    .locals 2
    .param p1, "displayMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 1188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1189
    .local v0, "oldDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    iput-object p1, p0, Lcom/fsck/k9/Account;->folderDisplayMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1188
    .end local v0    # "oldDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFolderNotifyNewMailMode(Lcom/fsck/k9/Account$FolderMode;)V
    .locals 1
    .param p1, "folderNotifyNewMailMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 1065
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->folderNotifyNewMailMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    monitor-exit p0

    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)Z
    .locals 2
    .param p1, "pushMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 1215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderPushMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1217
    .local v0, "oldPushMode":Lcom/fsck/k9/Account$FolderMode;
    iput-object p1, p0, Lcom/fsck/k9/Account;->folderPushMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1215
    .end local v0    # "oldPushMode":Lcom/fsck/k9/Account$FolderMode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)Z
    .locals 3
    .param p1, "syncMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    const/4 v1, 0x1

    .line 1198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->folderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1199
    .local v0, "oldSyncMode":Lcom/fsck/k9/Account$FolderMode;
    iput-object p1, p0, Lcom/fsck/k9/Account;->folderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1201
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_1

    .line 1207
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1204
    :cond_1
    :try_start_1
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_0

    .line 1207
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1198
    .end local v0    # "oldSyncMode":Lcom/fsck/k9/Account$FolderMode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFolderTargetMode(Lcom/fsck/k9/Account$FolderMode;)V
    .locals 1
    .param p1, "folderTargetMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 1261
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->folderTargetMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    monitor-exit p0

    return-void

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGoToUnreadMessageSearch(Z)V
    .locals 1
    .param p1, "goToUnreadMessageSearch"    # Z

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    monitor-exit p0

    return-void

    .line 1517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdentities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1435
    .local p1, "newIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    monitor-exit p0

    return-void

    .line 1435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdleRefreshMinutes(I)V
    .locals 1
    .param p1, "idleRefreshMinutes"    # I

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->idleRefreshMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    monitor-exit p0

    return-void

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInboxFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/fsck/k9/Account;->inboxFolderName:Ljava/lang/String;

    .line 1664
    return-void
.end method

.method public declared-synchronized setLastSelectedFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1679
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    monitor-exit p0

    return-void

    .line 1679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLatestOldMessageSeenTime(J)V
    .locals 1
    .param p1, "latestOldMessageSeenTime"    # J

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/fsck/k9/Account;->latestOldMessageSeenTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    monitor-exit p0

    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocalStorageProviderId(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 994
    iget-object v2, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 996
    const/4 v1, 0x0

    .line 998
    .local v1, "successful":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/Account;->switchLocalStorage(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    const/4 v1, 0x1

    .line 1005
    :goto_0
    if-nez v1, :cond_1

    .line 1012
    .end local v1    # "successful":Z
    :cond_0
    :goto_1
    return-void

    .line 1000
    .restart local v1    # "successful":Z
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v2, "Switching local storage provider from %s to %s failed."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1009
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_1
    iput-object p1, p0, Lcom/fsck/k9/Account;->localStorageProviderId:Ljava/lang/String;

    goto :goto_1
.end method

.method public declared-synchronized setMarkMessageAsReadOnView(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1709
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->markMessageAsReadOnView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    monitor-exit p0

    return-void

    .line 1709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxPushFolders(I)Z
    .locals 2
    .param p1, "maxPushFolders"    # I

    .prologue
    .line 1301
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->maxPushFolders:I

    .line 1302
    .local v0, "oldMaxPushFolders":I
    iput p1, p0, Lcom/fsck/k9/Account;->maxPushFolders:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1301
    .end local v0    # "oldMaxPushFolders":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMaximumAutoDownloadMessageSize(I)V
    .locals 1
    .param p1, "maximumAutoDownloadMessageSize"    # I

    .prologue
    .line 1541
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    monitor-exit p0

    return-void

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaximumPolledMessageAge(I)V
    .locals 1
    .param p1, "maximumPolledMessageAge"    # I

    .prologue
    .line 1533
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    monitor-exit p0

    return-void

    .line 1533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMessageFormat(Lcom/fsck/k9/Account$MessageFormat;)V
    .locals 0
    .param p1, "messageFormat"    # Lcom/fsck/k9/Account$MessageFormat;

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/fsck/k9/Account;->messageFormat:Lcom/fsck/k9/Account$MessageFormat;

    .line 1584
    return-void
.end method

.method public declared-synchronized setMessageReadReceipt(Z)V
    .locals 1
    .param p1, "messageReadReceipt"    # Z

    .prologue
    .line 1591
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->messageReadReceipt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    monitor-exit p0

    return-void

    .line 1591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifyContactsMailOnly(Z)V
    .locals 1
    .param p1, "notifyContactsMailOnly"    # Z

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->notifyContactsMailOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    monitor-exit p0

    return-void

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifyNewMail(Z)V
    .locals 1
    .param p1, "notifyNewMail"    # Z

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->notifyNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    monitor-exit p0

    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifySelfNewMail(Z)V
    .locals 1
    .param p1, "notifySelfNewMail"    # Z

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->notifySelfNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    monitor-exit p0

    return-void

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPushPollOnConnect(Z)V
    .locals 1
    .param p1, "pushPollOnConnect"    # Z

    .prologue
    .line 1493
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->pushPollOnConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    monitor-exit p0

    return-void

    .line 1493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQuotePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "quotePrefix"    # Ljava/lang/String;

    .prologue
    .line 1607
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->quotePrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    monitor-exit p0

    return-void

    .line 1607
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQuoteStyle(Lcom/fsck/k9/Account$QuoteStyle;)V
    .locals 0
    .param p1, "quoteStyle"    # Lcom/fsck/k9/Account$QuoteStyle;

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/fsck/k9/Account;->quoteStyle:Lcom/fsck/k9/Account$QuoteStyle;

    .line 1600
    return-void
.end method

.method public setRemoteSearchFullText(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1725
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->remoteSearchFullText:Z

    .line 1726
    return-void
.end method

.method public setRemoteSearchNumResults(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1655
    if-ltz p1, :cond_0

    .end local p1    # "val":I
    :goto_0
    iput p1, p0, Lcom/fsck/k9/Account;->remoteSearchNumResults:I

    .line 1656
    return-void

    .line 1655
    .restart local p1    # "val":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setReplyAfterQuote(Z)V
    .locals 1
    .param p1, "replyAfterQuote"    # Z

    .prologue
    .line 1623
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->replyAfterQuote:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    monitor-exit p0

    return-void

    .line 1623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRingNotified(Z)V
    .locals 0
    .param p1, "ringNotified"    # Z

    .prologue
    .line 985
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->ringNotified:Z

    .line 986
    return-void
.end method

.method public declared-synchronized setSearchableFolders(Lcom/fsck/k9/Account$Searchable;)V
    .locals 1
    .param p1, "searchableFolders"    # Lcom/fsck/k9/Account$Searchable;

    .prologue
    .line 1477
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    monitor-exit p0

    return-void

    .line 1477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSentFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->sentFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    monitor-exit p0

    return-void

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowOngoing(Z)V
    .locals 1
    .param p1, "showOngoing"    # Z

    .prologue
    .line 1226
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->notifySync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    monitor-exit p0

    return-void

    .line 1226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowPictures(Lcom/fsck/k9/Account$ShowPictures;)V
    .locals 1
    .param p1, "showPictures"    # Lcom/fsck/k9/Account$ShowPictures;

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->showPictures:Lcom/fsck/k9/Account$ShowPictures;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    monitor-exit p0

    return-void

    .line 1253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignature(Ljava/lang/String;)V
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 958
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    monitor-exit p0

    return-void

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignatureBeforeQuotedText(Z)V
    .locals 1
    .param p1, "mIsSignatureBeforeQuotedText"    # Z

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    monitor-exit p0

    return-void

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignatureUse(Z)V
    .locals 2
    .param p1, "signatureUse"    # Z

    .prologue
    .line 950
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    monitor-exit p0

    return-void

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSortAscending(Lcom/fsck/k9/Account$SortType;Z)V
    .locals 2
    .param p1, "sortType"    # Lcom/fsck/k9/Account$SortType;
    .param p2, "sortAscending"    # Z

    .prologue
    .line 1245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->sortAscending:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    monitor-exit p0

    return-void

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSortType(Lcom/fsck/k9/Account$SortType;)V
    .locals 1
    .param p1, "sortType"    # Lcom/fsck/k9/Account$SortType;

    .prologue
    .line 1234
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->sortType:Lcom/fsck/k9/Account$SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    monitor-exit p0

    return-void

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSpamFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->spamFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    monitor-exit p0

    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStoreUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "storeUri"    # Ljava/lang/String;

    .prologue
    .line 916
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->storeUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    monitor-exit p0

    return-void

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStripSignature(Z)V
    .locals 1
    .param p1, "stripSignature"    # Z

    .prologue
    .line 1631
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->stripSignature:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    monitor-exit p0

    return-void

    .line 1631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscribedFoldersOnly(Z)V
    .locals 1
    .param p1, "subscribedFoldersOnly"    # Z

    .prologue
    .line 1525
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    monitor-exit p0

    return-void

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSyncRemoteDeletions(Z)V
    .locals 1
    .param p1, "syncRemoteDeletions"    # Z

    .prologue
    .line 1671
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->syncRemoteDeletions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    monitor-exit p0

    return-void

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTransportUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "transportUri"    # Ljava/lang/String;

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->transportUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrashFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1124
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->trashFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    monitor-exit p0

    return-void

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subscribedFoldersOnly()Z
    .locals 1

    .prologue
    .line 1521
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncRemoteDeletions()Z
    .locals 1

    .prologue
    .line 1667
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->syncRemoteDeletions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->description:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized useCompression(Lcom/fsck/k9/mail/NetworkType;)Z
    .locals 2
    .param p1, "networkType"    # Lcom/fsck/k9/mail/NetworkType;

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    .local v0, "useCompression":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1334
    const/4 v1, 0x1

    .line 1337
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1332
    .end local v0    # "useCompression":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
