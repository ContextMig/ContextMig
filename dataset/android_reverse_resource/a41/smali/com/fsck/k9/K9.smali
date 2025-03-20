.class public Lcom/fsck/k9/K9;
.super Landroid/app/Application;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/K9$Theme;,
        Lcom/fsck/k9/K9$Intents;,
        Lcom/fsck/k9/K9$SplitViewMode;,
        Lcom/fsck/k9/K9$LockScreenNotificationVisibility;,
        Lcom/fsck/k9/K9$NotificationQuickDelete;,
        Lcom/fsck/k9/K9$NotificationHideSubject;,
        Lcom/fsck/k9/K9$BACKGROUND_OPS;,
        Lcom/fsck/k9/K9$ApplicationAware;
    }
.end annotation


# static fields
.field public static final BOOT_RECEIVER_WAKE_LOCK_TIMEOUT:I = 0xea60

.field private static final DATABASE_VERSION_CACHE:Ljava/lang/String; = "database_version_cache"

.field private static DEBUG:Z = false

.field public static DEBUG_SENSITIVE:Z = false

.field public static final DEFAULT_VISIBLE_LIMIT:I = 0x19

.field public static DEVELOPER_MODE:Z = false

.field public static final FOLDER_NONE:Ljava/lang/String; = "-NONE-"

.field public static final IDENTITY_HEADER:Ljava/lang/String; = "X-K9mail-Identity"

.field private static final KEY_LAST_ACCOUNT_DATABASE_VERSION:Ljava/lang/String; = "last_account_database_version"

.field public static final LOCAL_UID_PREFIX:Ljava/lang/String; = "K9LOCAL:"

.field public static final LOG_TAG:Ljava/lang/String; = "k9"

.field public static final MAIL_SERVICE_WAKE_LOCK_TIMEOUT:I = 0xea60

.field public static final MANUAL_WAKE_LOCK_TIMEOUT:I = 0x1d4c0

.field public static final MAX_ATTACHMENT_DOWNLOAD_SIZE:I = 0x8000000

.field public static final MAX_SEND_ATTEMPTS:I = 0x5

.field public static final NO_OPENPGP_PROVIDER:Ljava/lang/String; = ""

.field public static final PUSH_WAKE_LOCK_TIMEOUT:I = 0xea60

.field public static final REMOTE_UID_PREFIX:Ljava/lang/String; = "K9REMOTE:"

.field public static final WAKE_LOCK_TIMEOUT:I = 0x927c0

.field public static app:Landroid/app/Application;

.field private static backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

.field private static composerTheme:Lcom/fsck/k9/K9$Theme;

.field private static final fontSizes:Lcom/fsck/k9/FontSizes;

.field private static language:Ljava/lang/String;

.field public static final logFile:Ljava/lang/String;

.field private static mAnimations:Z

.field private static mAttachmentDefaultPath:Ljava/lang/String;

.field private static mAutofitWidth:Z

.field private static mChangeContactNameColor:Z

.field private static mConfirmDelete:Z

.field private static mConfirmDeleteFromNotification:Z

.field private static mConfirmDeleteStarred:Z

.field private static mConfirmDiscardMessage:Z

.field private static mConfirmMarkAllRead:Z

.field private static mConfirmSpam:Z

.field private static mContactNameColor:I

.field private static mCountSearchMessages:Z

.field private static mGesturesEnabled:Z

.field private static mHideSpecialAccounts:Z

.field private static mHideTimeZone:Z

.field private static mHideUserAgent:Z

.field private static mMeasureAccounts:Z

.field private static mMessageListCheckboxes:Z

.field private static mMessageListPreviewLines:I

.field private static mMessageListSenderAboveSubject:Z

.field private static mMessageListStars:Z

.field private static mMessageViewFixedWidthFont:Z

.field private static mMessageViewReturnToList:Z

.field private static mMessageViewShowNext:Z

.field private static mNotificationDuringQuietTimeEnabled:Z

.field private static mQuietTimeEnabled:Z

.field private static mQuietTimeEnds:Ljava/lang/String;

.field private static mQuietTimeStarts:Ljava/lang/String;

.field private static mShowContactName:Z

.field private static mShowCorrespondentNames:Z

.field private static mSortAscending:Ljava/util/Map;
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

.field private static mSortType:Lcom/fsck/k9/Account$SortType;

.field private static mStartIntegratedInbox:Z

.field private static mUseVolumeKeysForListNavigation:Z

.field private static mUseVolumeKeysForNavigation:Z

.field private static mWrapFolderNames:Z

.field private static messageViewTheme:Lcom/fsck/k9/K9$Theme;

.field private static final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/K9$ApplicationAware;",
            ">;"
        }
    .end annotation
.end field

.field private static sColorizeMissingContactPictures:Z

.field private static sDatabaseVersionCache:Landroid/content/SharedPreferences;

.field private static sDatabasesUpToDate:Z

.field private static sInitialized:Z

.field private static sLockScreenNotificationVisibility:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

.field private static sMessageViewArchiveActionVisible:Z

.field private static sMessageViewCopyActionVisible:Z

.field private static sMessageViewDeleteActionVisible:Z

.field private static sMessageViewMoveActionVisible:Z

.field private static sMessageViewSpamActionVisible:Z

.field private static sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

.field private static sNotificationQuickDelete:Lcom/fsck/k9/K9$NotificationQuickDelete;

.field private static sOpenPgpProvider:Ljava/lang/String;

.field private static sOpenPgpSupportSignOnly:Z

.field private static sPgpInlineDialogCounter:I

.field private static sPgpSignOnlyDialogCounter:I

.field private static sShowContactPicture:Z

.field private static sSplitViewMode:Lcom/fsck/k9/K9$SplitViewMode;

.field private static sThreadedViewEnabled:Z

.field private static sUseBackgroundAsUnreadIndicator:Z

.field public static tempDirectory:Ljava/io/File;

.field private static theme:Lcom/fsck/k9/K9$Theme;

.field private static useFixedMessageTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    sput-object v3, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    .line 108
    sput-boolean v1, Lcom/fsck/k9/K9;->sInitialized:Z

    .line 114
    const-string v0, ""

    sput-object v0, Lcom/fsck/k9/K9;->language:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    sput-object v0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    .line 116
    sget-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    sput-object v0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    .line 117
    sget-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    sput-object v0, Lcom/fsck/k9/K9;->composerTheme:Lcom/fsck/k9/K9$Theme;

    .line 118
    sput-boolean v2, Lcom/fsck/k9/K9;->useFixedMessageTheme:Z

    .line 120
    new-instance v0, Lcom/fsck/k9/FontSizes;

    invoke-direct {v0}, Lcom/fsck/k9/FontSizes;-><init>()V

    sput-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 122
    sget-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    sput-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 128
    sput-object v3, Lcom/fsck/k9/K9;->logFile:Ljava/lang/String;

    .line 136
    sput-boolean v1, Lcom/fsck/k9/K9;->DEVELOPER_MODE:Z

    .line 144
    sput-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 150
    sput-boolean v1, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    .line 161
    sput-boolean v2, Lcom/fsck/k9/K9;->mAnimations:Z

    .line 163
    sput-boolean v1, Lcom/fsck/k9/K9;->mConfirmDelete:Z

    .line 164
    sput-boolean v2, Lcom/fsck/k9/K9;->mConfirmDiscardMessage:Z

    .line 165
    sput-boolean v1, Lcom/fsck/k9/K9;->mConfirmDeleteStarred:Z

    .line 166
    sput-boolean v1, Lcom/fsck/k9/K9;->mConfirmSpam:Z

    .line 167
    sput-boolean v2, Lcom/fsck/k9/K9;->mConfirmDeleteFromNotification:Z

    .line 168
    sput-boolean v2, Lcom/fsck/k9/K9;->mConfirmMarkAllRead:Z

    .line 170
    sget-object v0, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    sput-object v0, Lcom/fsck/k9/K9;->sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

    .line 181
    sget-object v0, Lcom/fsck/k9/K9$NotificationQuickDelete;->NEVER:Lcom/fsck/k9/K9$NotificationQuickDelete;

    sput-object v0, Lcom/fsck/k9/K9;->sNotificationQuickDelete:Lcom/fsck/k9/K9$NotificationQuickDelete;

    .line 192
    sget-object v0, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->MESSAGE_COUNT:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    sput-object v0, Lcom/fsck/k9/K9;->sLockScreenNotificationVisibility:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 212
    sput-boolean v2, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z

    .line 213
    sput-boolean v2, Lcom/fsck/k9/K9;->mMessageListStars:Z

    .line 214
    const/4 v0, 0x2

    sput v0, Lcom/fsck/k9/K9;->mMessageListPreviewLines:I

    .line 216
    sput-boolean v2, Lcom/fsck/k9/K9;->mShowCorrespondentNames:Z

    .line 217
    sput-boolean v1, Lcom/fsck/k9/K9;->mMessageListSenderAboveSubject:Z

    .line 218
    sput-boolean v1, Lcom/fsck/k9/K9;->mShowContactName:Z

    .line 219
    sput-boolean v1, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    .line 220
    const v0, -0xffff71

    sput v0, Lcom/fsck/k9/K9;->mContactNameColor:I

    .line 221
    sput-boolean v2, Lcom/fsck/k9/K9;->sShowContactPicture:Z

    .line 222
    sput-boolean v1, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    .line 223
    sput-boolean v1, Lcom/fsck/k9/K9;->mMessageViewReturnToList:Z

    .line 224
    sput-boolean v1, Lcom/fsck/k9/K9;->mMessageViewShowNext:Z

    .line 226
    sput-boolean v2, Lcom/fsck/k9/K9;->mGesturesEnabled:Z

    .line 227
    sput-boolean v1, Lcom/fsck/k9/K9;->mUseVolumeKeysForNavigation:Z

    .line 228
    sput-boolean v1, Lcom/fsck/k9/K9;->mUseVolumeKeysForListNavigation:Z

    .line 229
    sput-boolean v1, Lcom/fsck/k9/K9;->mStartIntegratedInbox:Z

    .line 230
    sput-boolean v2, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    .line 231
    sput-boolean v2, Lcom/fsck/k9/K9;->mCountSearchMessages:Z

    .line 232
    sput-boolean v1, Lcom/fsck/k9/K9;->mHideSpecialAccounts:Z

    .line 234
    sput-boolean v1, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    .line 235
    sput-boolean v2, Lcom/fsck/k9/K9;->mNotificationDuringQuietTimeEnabled:Z

    .line 236
    sput-object v3, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    .line 237
    sput-object v3, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    .line 238
    const-string v0, ""

    sput-object v0, Lcom/fsck/k9/K9;->mAttachmentDefaultPath:Ljava/lang/String;

    .line 239
    sput-boolean v1, Lcom/fsck/k9/K9;->mWrapFolderNames:Z

    .line 240
    sput-boolean v1, Lcom/fsck/k9/K9;->mHideUserAgent:Z

    .line 241
    sput-boolean v1, Lcom/fsck/k9/K9;->mHideTimeZone:Z

    .line 243
    const-string v0, ""

    sput-object v0, Lcom/fsck/k9/K9;->sOpenPgpProvider:Ljava/lang/String;

    .line 244
    sput-boolean v1, Lcom/fsck/k9/K9;->sOpenPgpSupportSignOnly:Z

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    .line 249
    sput-boolean v2, Lcom/fsck/k9/K9;->sUseBackgroundAsUnreadIndicator:Z

    .line 250
    sput-boolean v2, Lcom/fsck/k9/K9;->sThreadedViewEnabled:Z

    .line 251
    sget-object v0, Lcom/fsck/k9/K9$SplitViewMode;->NEVER:Lcom/fsck/k9/K9$SplitViewMode;

    sput-object v0, Lcom/fsck/k9/K9;->sSplitViewMode:Lcom/fsck/k9/K9$SplitViewMode;

    .line 252
    sput-boolean v2, Lcom/fsck/k9/K9;->sColorizeMissingContactPictures:Z

    .line 254
    sput-boolean v1, Lcom/fsck/k9/K9;->sMessageViewArchiveActionVisible:Z

    .line 255
    sput-boolean v2, Lcom/fsck/k9/K9;->sMessageViewDeleteActionVisible:Z

    .line 256
    sput-boolean v1, Lcom/fsck/k9/K9;->sMessageViewMoveActionVisible:Z

    .line 257
    sput-boolean v1, Lcom/fsck/k9/K9;->sMessageViewCopyActionVisible:Z

    .line 258
    sput-boolean v1, Lcom/fsck/k9/K9;->sMessageViewSpamActionVisible:Z

    .line 267
    sput-boolean v1, Lcom/fsck/k9/K9;->sDatabasesUpToDate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    return v0
.end method

.method public static declared-synchronized areDatabasesUpToDate()Z
    .locals 2

    .prologue
    .line 1426
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fsck/k9/K9;->sDatabasesUpToDate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static autofitWidth()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/fsck/k9/K9;->mAutofitWidth:Z

    return v0
.end method

.method public static changeContactNameColor()Z
    .locals 1

    .prologue
    .line 1111
    sget-boolean v0, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    return v0
.end method

.method public static confirmDelete()Z
    .locals 1

    .prologue
    .line 1179
    sget-boolean v0, Lcom/fsck/k9/K9;->mConfirmDelete:Z

    return v0
.end method

.method public static confirmDeleteFromNotification()Z
    .locals 1

    .prologue
    .line 1211
    sget-boolean v0, Lcom/fsck/k9/K9;->mConfirmDeleteFromNotification:Z

    return v0
.end method

.method public static confirmDeleteStarred()Z
    .locals 1

    .prologue
    .line 1187
    sget-boolean v0, Lcom/fsck/k9/K9;->mConfirmDeleteStarred:Z

    return v0
.end method

.method public static confirmDiscardMessage()Z
    .locals 1

    .prologue
    .line 1199
    sget-boolean v0, Lcom/fsck/k9/K9;->mConfirmDiscardMessage:Z

    return v0
.end method

.method public static confirmMarkAllRead()Z
    .locals 1

    .prologue
    .line 1219
    sget-boolean v0, Lcom/fsck/k9/K9;->mConfirmMarkAllRead:Z

    return v0
.end method

.method public static confirmSpam()Z
    .locals 1

    .prologue
    .line 1195
    sget-boolean v0, Lcom/fsck/k9/K9;->mConfirmSpam:Z

    return v0
.end method

.method public static countSearchMessages()Z
    .locals 1

    .prologue
    .line 1163
    sget-boolean v0, Lcom/fsck/k9/K9;->mCountSearchMessages:Z

    return v0
.end method

.method public static gesturesEnabled()Z
    .locals 1

    .prologue
    .line 932
    sget-boolean v0, Lcom/fsck/k9/K9;->mGesturesEnabled:Z

    return v0
.end method

.method public static getAttachmentDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1292
    sget-object v0, Lcom/fsck/k9/K9;->mAttachmentDefaultPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;
    .locals 1

    .prologue
    .line 918
    sget-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    return-object v0
.end method

.method public static getContactNameColor()I
    .locals 1

    .prologue
    .line 1119
    sget v0, Lcom/fsck/k9/K9;->mContactNameColor:I

    return v0
.end method

.method public static getFontSizes()Lcom/fsck/k9/FontSizes;
    .locals 1

    .prologue
    .line 1151
    sget-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    return-object v0
.end method

.method public static getK9ComposerTheme()Lcom/fsck/k9/K9$Theme;
    .locals 2

    .prologue
    .line 881
    sget-object v0, Lcom/fsck/k9/K9;->composerTheme:Lcom/fsck/k9/K9$Theme;

    sget-object v1, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fsck/k9/K9;->composerTheme:Lcom/fsck/k9/K9$Theme;

    goto :goto_0
.end method

.method public static getK9ComposerThemeSetting()Lcom/fsck/k9/K9$Theme;
    .locals 1

    .prologue
    .line 885
    sget-object v0, Lcom/fsck/k9/K9;->composerTheme:Lcom/fsck/k9/K9$Theme;

    return-object v0
.end method

.method public static getK9Language()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    sget-object v0, Lcom/fsck/k9/K9;->language:Ljava/lang/String;

    return-object v0
.end method

.method public static getK9MessageViewTheme()Lcom/fsck/k9/K9$Theme;
    .locals 2

    .prologue
    .line 873
    sget-object v0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    sget-object v1, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    goto :goto_0
.end method

.method public static getK9MessageViewThemeSetting()Lcom/fsck/k9/K9$Theme;
    .locals 1

    .prologue
    .line 877
    sget-object v0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    return-object v0
.end method

.method public static getK9Theme()Lcom/fsck/k9/K9$Theme;
    .locals 1

    .prologue
    .line 889
    sget-object v0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    return-object v0
.end method

.method public static getK9ThemeResourceId()I
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    invoke-static {v0}, Lcom/fsck/k9/K9;->getK9ThemeResourceId(Lcom/fsck/k9/K9$Theme;)I

    move-result v0

    return v0
.end method

.method public static getK9ThemeResourceId(Lcom/fsck/k9/K9$Theme;)I
    .locals 1
    .param p0, "themeId"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 865
    sget-object v0, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    if-ne p0, v0, :cond_0

    const v0, 0x7f080006

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080005

    goto :goto_0
.end method

.method public static getLockScreenNotificationVisibility()Lcom/fsck/k9/K9$LockScreenNotificationVisibility;
    .locals 1

    .prologue
    .line 1243
    sget-object v0, Lcom/fsck/k9/K9;->sLockScreenNotificationVisibility:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    return-object v0
.end method

.method public static getNotificationHideSubject()Lcom/fsck/k9/K9$NotificationHideSubject;
    .locals 1

    .prologue
    .line 1227
    sget-object v0, Lcom/fsck/k9/K9;->sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

    return-object v0
.end method

.method public static getNotificationQuickDeleteBehaviour()Lcom/fsck/k9/K9$NotificationQuickDelete;
    .locals 1

    .prologue
    .line 1235
    sget-object v0, Lcom/fsck/k9/K9;->sNotificationQuickDelete:Lcom/fsck/k9/K9$NotificationQuickDelete;

    return-object v0
.end method

.method public static getOpenPgpProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/fsck/k9/K9;->sOpenPgpProvider:Ljava/lang/String;

    return-object v0
.end method

.method public static getOpenPgpSupportSignOnly()Z
    .locals 1

    .prologue
    .line 1284
    sget-boolean v0, Lcom/fsck/k9/K9;->sOpenPgpSupportSignOnly:Z

    return v0
.end method

.method public static getPgpInlineDialogCounter()I
    .locals 1

    .prologue
    .line 1399
    sget v0, Lcom/fsck/k9/K9;->sPgpInlineDialogCounter:I

    return v0
.end method

.method public static getPgpSignOnlyDialogCounter()I
    .locals 1

    .prologue
    .line 1407
    sget v0, Lcom/fsck/k9/K9;->sPgpSignOnlyDialogCounter:I

    return v0
.end method

.method public static getQuietTimeEnabled()Z
    .locals 1

    .prologue
    .line 964
    sget-boolean v0, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    return v0
.end method

.method public static getQuietTimeEnds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    sget-object v0, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    return-object v0
.end method

.method public static getQuietTimeStarts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    sget-object v0, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getSortType()Lcom/fsck/k9/Account$SortType;
    .locals 2

    .prologue
    .line 1300
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSplitViewMode()Lcom/fsck/k9/K9$SplitViewMode;
    .locals 2

    .prologue
    .line 1335
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fsck/k9/K9;->sSplitViewMode:Lcom/fsck/k9/K9$SplitViewMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hideTimeZone()Z
    .locals 1

    .prologue
    .line 1265
    sget-boolean v0, Lcom/fsck/k9/K9;->mHideTimeZone:Z

    return v0
.end method

.method public static hideUserAgent()Z
    .locals 1

    .prologue
    .line 1258
    sget-boolean v0, Lcom/fsck/k9/K9;->mHideUserAgent:Z

    return v0
.end method

.method public static isColorizeMissingContactPictures()Z
    .locals 1

    .prologue
    .line 1351
    sget-boolean v0, Lcom/fsck/k9/K9;->sColorizeMissingContactPictures:Z

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 1044
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    return v0
.end method

.method public static isHideSpecialAccounts()Z
    .locals 1

    .prologue
    .line 1171
    sget-boolean v0, Lcom/fsck/k9/K9;->mHideSpecialAccounts:Z

    return v0
.end method

.method public static isMessageViewArchiveActionVisible()Z
    .locals 1

    .prologue
    .line 1359
    sget-boolean v0, Lcom/fsck/k9/K9;->sMessageViewArchiveActionVisible:Z

    return v0
.end method

.method public static isMessageViewCopyActionVisible()Z
    .locals 1

    .prologue
    .line 1383
    sget-boolean v0, Lcom/fsck/k9/K9;->sMessageViewCopyActionVisible:Z

    return v0
.end method

.method public static isMessageViewDeleteActionVisible()Z
    .locals 1

    .prologue
    .line 1367
    sget-boolean v0, Lcom/fsck/k9/K9;->sMessageViewDeleteActionVisible:Z

    return v0
.end method

.method public static isMessageViewMoveActionVisible()Z
    .locals 1

    .prologue
    .line 1375
    sget-boolean v0, Lcom/fsck/k9/K9;->sMessageViewMoveActionVisible:Z

    return v0
.end method

.method public static isMessageViewSpamActionVisible()Z
    .locals 1

    .prologue
    .line 1391
    sget-boolean v0, Lcom/fsck/k9/K9;->sMessageViewSpamActionVisible:Z

    return v0
.end method

.method public static isNotificationDuringQuietTimeEnabled()Z
    .locals 1

    .prologue
    .line 972
    sget-boolean v0, Lcom/fsck/k9/K9;->mNotificationDuringQuietTimeEnabled:Z

    return v0
.end method

.method public static isOpenPgpProviderConfigured()Z
    .locals 2

    .prologue
    .line 1272
    const-string v0, ""

    sget-object v1, Lcom/fsck/k9/K9;->sOpenPgpProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQuietTime()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 997
    sget-boolean v10, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    if-nez v10, :cond_1

    .line 1035
    .local v0, "endHour":Ljava/lang/Integer;
    .local v1, "endMinute":Ljava/lang/Integer;
    .local v2, "gregorianCalendar":Ljava/util/GregorianCalendar;
    .local v3, "now":Ljava/lang/Integer;
    .local v4, "quietEnds":Ljava/lang/Integer;
    .local v5, "quietStarts":Ljava/lang/Integer;
    .local v6, "startHour":Ljava/lang/Integer;
    .local v7, "startMinute":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v8

    .line 1001
    .end local v0    # "endHour":Ljava/lang/Integer;
    .end local v1    # "endMinute":Ljava/lang/Integer;
    .end local v2    # "gregorianCalendar":Ljava/util/GregorianCalendar;
    .end local v3    # "now":Ljava/lang/Integer;
    .end local v4    # "quietEnds":Ljava/lang/Integer;
    .end local v5    # "quietStarts":Ljava/lang/Integer;
    .end local v6    # "startHour":Ljava/lang/Integer;
    .end local v7    # "startMinute":Ljava/lang/Integer;
    :cond_1
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1003
    .restart local v2    # "gregorianCalendar":Ljava/util/GregorianCalendar;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1004
    .restart local v6    # "startHour":Ljava/lang/Integer;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1005
    .restart local v7    # "startMinute":Ljava/lang/Integer;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1006
    .restart local v0    # "endHour":Ljava/lang/Integer;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1008
    .restart local v1    # "endMinute":Ljava/lang/Integer;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1009
    .restart local v3    # "now":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1010
    .restart local v5    # "quietStarts":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1013
    .restart local v4    # "quietEnds":Ljava/lang/Integer;
    invoke-virtual {v5, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1019
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_3

    .line 1021
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_0

    :cond_2
    move v8, v9

    .line 1022
    goto/16 :goto_0

    .line 1030
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v10, v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_0

    move v8, v9

    .line 1031
    goto/16 :goto_0
.end method

.method public static declared-synchronized isSortAscending(Lcom/fsck/k9/Account$SortType;)Z
    .locals 3
    .param p0, "sortType"    # Lcom/fsck/k9/Account$SortType;

    .prologue
    .line 1308
    const-class v1, Lcom/fsck/k9/K9;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1309
    sget-object v0, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/fsck/k9/Account$SortType;->isDefaultAscending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_0
    sget-object v0, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isThreadedViewEnabled()Z
    .locals 2

    .prologue
    .line 1327
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fsck/k9/K9;->sThreadedViewEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static loadPrefs(Lcom/fsck/k9/Preferences;)V
    .locals 15
    .param p0, "prefs"    # Lcom/fsck/k9/Preferences;

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    .line 683
    .local v6, "storage":Lcom/fsck/k9/preferences/Storage;
    const-string v9, "enableDebugLogging"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Lcom/fsck/k9/K9;->setDebug(Z)V

    .line 684
    const-string v9, "enableSensitiveLogging"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    .line 685
    const-string v9, "animations"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mAnimations:Z

    .line 686
    const-string v9, "gesturesEnabled"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mGesturesEnabled:Z

    .line 687
    const-string v9, "useVolumeKeysForNavigation"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mUseVolumeKeysForNavigation:Z

    .line 688
    const-string v9, "useVolumeKeysForListNavigation"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mUseVolumeKeysForListNavigation:Z

    .line 689
    const-string v9, "startIntegratedInbox"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mStartIntegratedInbox:Z

    .line 690
    const-string v9, "measureAccounts"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    .line 691
    const-string v9, "countSearchMessages"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mCountSearchMessages:Z

    .line 692
    const-string v9, "hideSpecialAccounts"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mHideSpecialAccounts:Z

    .line 693
    const-string v9, "messageListSenderAboveSubject"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMessageListSenderAboveSubject:Z

    .line 694
    const-string v9, "messageListCheckboxes"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z

    .line 695
    const-string v9, "messageListStars"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMessageListStars:Z

    .line 696
    const-string v9, "messageListPreviewLines"

    const/4 v10, 0x2

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/fsck/k9/K9;->mMessageListPreviewLines:I

    .line 698
    const-string v9, "autofitWidth"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mAutofitWidth:Z

    .line 700
    const-string v9, "quietTimeEnabled"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    .line 701
    const-string v9, "notificationDuringQuietTimeEnabled"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mNotificationDuringQuietTimeEnabled:Z

    .line 702
    const-string v9, "quietTimeStarts"

    const-string v10, "21:00"

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    .line 703
    const-string v9, "quietTimeEnds"

    const-string v10, "7:00"

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    .line 705
    const-string v9, "showCorrespondentNames"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mShowCorrespondentNames:Z

    .line 706
    const-string v9, "showContactName"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mShowContactName:Z

    .line 707
    const-string v9, "showContactPicture"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sShowContactPicture:Z

    .line 708
    const-string v9, "changeRegisteredNameColor"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    .line 709
    const-string v9, "registeredNameColor"

    const v10, -0xffff71

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/fsck/k9/K9;->mContactNameColor:I

    .line 710
    const-string v9, "messageViewFixedWidthFont"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    .line 711
    const-string v9, "messageViewReturnToList"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMessageViewReturnToList:Z

    .line 712
    const-string v9, "messageViewShowNext"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mMessageViewShowNext:Z

    .line 713
    const-string v9, "wrapFolderNames"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mWrapFolderNames:Z

    .line 714
    const-string v9, "hideUserAgent"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mHideUserAgent:Z

    .line 715
    const-string v9, "hideTimeZone"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mHideTimeZone:Z

    .line 717
    const-string v9, "openPgpProvider"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->sOpenPgpProvider:Ljava/lang/String;

    .line 718
    const-string v9, "openPgpSupportSignOnly"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sOpenPgpSupportSignOnly:Z

    .line 720
    const-string v9, "confirmDelete"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mConfirmDelete:Z

    .line 721
    const-string v9, "confirmDiscardMessage"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mConfirmDiscardMessage:Z

    .line 722
    const-string v9, "confirmDeleteStarred"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mConfirmDeleteStarred:Z

    .line 723
    const-string v9, "confirmSpam"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mConfirmSpam:Z

    .line 724
    const-string v9, "confirmDeleteFromNotification"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mConfirmDeleteFromNotification:Z

    .line 725
    const-string v9, "confirmMarkAllRead"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->mConfirmMarkAllRead:Z

    .line 728
    :try_start_0
    const-string v9, "sortTypeEnum"

    sget-object v10, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v10}, Lcom/fsck/k9/Account$SortType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 729
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Lcom/fsck/k9/Account$SortType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$SortType;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v8    # "value":Ljava/lang/String;
    :goto_0
    const-string v9, "sortAscending"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 735
    .local v4, "sortAscending":Z
    sget-object v9, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    sget-object v10, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v9, "notificationHideSubject"

    invoke-virtual {v6, v9, v14}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "notificationHideSubject":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 741
    const-string v9, "keyguardPrivacy"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/fsck/k9/K9$NotificationHideSubject;->WHEN_LOCKED:Lcom/fsck/k9/K9$NotificationHideSubject;

    :goto_1
    sput-object v9, Lcom/fsck/k9/K9;->sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

    .line 747
    :goto_2
    const-string v9, "notificationQuickDelete"

    invoke-virtual {v6, v9, v14}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "notificationQuickDelete":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 749
    invoke-static {v3}, Lcom/fsck/k9/K9$NotificationQuickDelete;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$NotificationQuickDelete;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->sNotificationQuickDelete:Lcom/fsck/k9/K9$NotificationQuickDelete;

    .line 752
    :cond_0
    const-string v9, "lockScreenNotificationVisibility"

    invoke-virtual {v6, v9, v14}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "lockScreenNotificationVisibility":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 754
    invoke-static {v1}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->sLockScreenNotificationVisibility:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 757
    :cond_1
    const-string v9, "splitViewMode"

    invoke-virtual {v6, v9, v14}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, "splitViewMode":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 759
    invoke-static {v5}, Lcom/fsck/k9/K9$SplitViewMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$SplitViewMode;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->sSplitViewMode:Lcom/fsck/k9/K9$SplitViewMode;

    .line 762
    :cond_2
    const-string v9, "attachmentdefaultpath"

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 763
    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 762
    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->mAttachmentDefaultPath:Ljava/lang/String;

    .line 764
    const-string v9, "useBackgroundAsUnreadIndicator"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sUseBackgroundAsUnreadIndicator:Z

    .line 765
    const-string v9, "threadedView"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sThreadedViewEnabled:Z

    .line 766
    sget-object v9, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v9, v6}, Lcom/fsck/k9/FontSizes;->load(Lcom/fsck/k9/preferences/Storage;)V

    .line 769
    :try_start_1
    const-string v9, "backgroundOperations"

    sget-object v10, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 771
    invoke-virtual {v10}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->name()Ljava/lang/String;

    move-result-object v10

    .line 769
    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 776
    :goto_3
    const-string v9, "colorizeMissingContactPictures"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sColorizeMissingContactPictures:Z

    .line 778
    const-string v9, "messageViewArchiveActionVisible"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sMessageViewArchiveActionVisible:Z

    .line 779
    const-string v9, "messageViewDeleteActionVisible"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sMessageViewDeleteActionVisible:Z

    .line 780
    const-string v9, "messageViewMoveActionVisible"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sMessageViewMoveActionVisible:Z

    .line 781
    const-string v9, "messageViewCopyActionVisible"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sMessageViewCopyActionVisible:Z

    .line 782
    const-string v9, "messageViewSpamActionVisible"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/fsck/k9/K9;->sMessageViewSpamActionVisible:Z

    .line 784
    const-string v9, "pgpInlineDialogCounter"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/fsck/k9/K9;->sPgpInlineDialogCounter:I

    .line 785
    const-string v9, "pgpSignOnlyDialogCounter"

    invoke-virtual {v6, v9, v12}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/fsck/k9/K9;->sPgpSignOnlyDialogCounter:I

    .line 787
    const-string v9, "language"

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fsck/k9/K9;->setK9Language(Ljava/lang/String;)V

    .line 789
    const-string v9, "theme"

    sget-object v10, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v10}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 792
    .local v7, "themeValue":I
    sget-object v9, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v9}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v9

    if-eq v7, v9, :cond_3

    const v9, 0x1030005

    if-ne v7, v9, :cond_6

    .line 793
    :cond_3
    sget-object v9, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    invoke-static {v9}, Lcom/fsck/k9/K9;->setK9Theme(Lcom/fsck/k9/K9$Theme;)V

    .line 798
    :goto_4
    const-string v9, "messageViewTheme"

    sget-object v10, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v10}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 799
    invoke-static {}, Lcom/fsck/k9/K9$Theme;->values()[Lcom/fsck/k9/K9$Theme;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/fsck/k9/K9;->setK9MessageViewThemeSetting(Lcom/fsck/k9/K9$Theme;)V

    .line 800
    const-string v9, "messageComposeTheme"

    sget-object v10, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v10}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 801
    invoke-static {}, Lcom/fsck/k9/K9$Theme;->values()[Lcom/fsck/k9/K9$Theme;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-static {v9}, Lcom/fsck/k9/K9;->setK9ComposerThemeSetting(Lcom/fsck/k9/K9$Theme;)V

    .line 802
    const-string v9, "fixedMessageViewTheme"

    invoke-virtual {v6, v9, v13}, Lcom/fsck/k9/preferences/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Lcom/fsck/k9/K9;->setUseFixedMessageViewTheme(Z)V

    .line 803
    return-void

    .line 730
    .end local v1    # "lockScreenNotificationVisibility":Ljava/lang/String;
    .end local v2    # "notificationHideSubject":Ljava/lang/String;
    .end local v3    # "notificationQuickDelete":Ljava/lang/String;
    .end local v4    # "sortAscending":Z
    .end local v5    # "splitViewMode":Ljava/lang/String;
    .end local v7    # "themeValue":I
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/fsck/k9/Account;->DEFAULT_SORT_TYPE:Lcom/fsck/k9/Account$SortType;

    sput-object v9, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;

    goto/16 :goto_0

    .line 741
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "notificationHideSubject":Ljava/lang/String;
    .restart local v4    # "sortAscending":Z
    :cond_4
    sget-object v9, Lcom/fsck/k9/K9$NotificationHideSubject;->NEVER:Lcom/fsck/k9/K9$NotificationHideSubject;

    goto/16 :goto_1

    .line 744
    :cond_5
    invoke-static {v2}, Lcom/fsck/k9/K9$NotificationHideSubject;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$NotificationHideSubject;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/K9;->sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

    goto/16 :goto_2

    .line 772
    .restart local v1    # "lockScreenNotificationVisibility":Ljava/lang/String;
    .restart local v3    # "notificationQuickDelete":Ljava/lang/String;
    .restart local v5    # "splitViewMode":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 773
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED_AUTO_SYNC:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    invoke-static {v9}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z

    goto/16 :goto_3

    .line 795
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "themeValue":I
    :cond_6
    sget-object v9, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    invoke-static {v9}, Lcom/fsck/k9/K9;->setK9Theme(Lcom/fsck/k9/K9$Theme;)V

    goto :goto_4
.end method

.method public static measureAccounts()Z
    .locals 1

    .prologue
    .line 1155
    sget-boolean v0, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    return v0
.end method

.method public static messageListCheckboxes()Z
    .locals 1

    .prologue
    .line 1072
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z

    return v0
.end method

.method public static messageListPreviewLines()I
    .locals 1

    .prologue
    .line 1064
    sget v0, Lcom/fsck/k9/K9;->mMessageListPreviewLines:I

    return v0
.end method

.method public static messageListSenderAboveSubject()Z
    .locals 1

    .prologue
    .line 1092
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageListSenderAboveSubject:Z

    return v0
.end method

.method public static messageListStars()Z
    .locals 1

    .prologue
    .line 1080
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageListStars:Z

    return v0
.end method

.method public static messageViewFixedWidthFont()Z
    .locals 1

    .prologue
    .line 1127
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    return v0
.end method

.method public static messageViewReturnToList()Z
    .locals 1

    .prologue
    .line 1135
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageViewReturnToList:Z

    return v0
.end method

.method public static messageViewShowNext()Z
    .locals 1

    .prologue
    .line 1143
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageViewShowNext:Z

    return v0
.end method

.method public static registerApplicationAware(Lcom/fsck/k9/K9$ApplicationAware;)V
    .locals 2
    .param p0, "component"    # Lcom/fsck/k9/K9$ApplicationAware;

    .prologue
    .line 834
    sget-object v1, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    monitor-enter v1

    .line 835
    :try_start_0
    sget-boolean v0, Lcom/fsck/k9/K9;->sInitialized:Z

    if-eqz v0, :cond_1

    .line 836
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-interface {p0, v0}, Lcom/fsck/k9/K9$ApplicationAware;->initializeComponent(Landroid/app/Application;)V

    .line 840
    :cond_0
    :goto_0
    monitor-exit v1

    .line 841
    return-void

    .line 837
    :cond_1
    sget-object v0, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    sget-object v0, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static save(Lcom/fsck/k9/preferences/StorageEditor;)V
    .locals 3
    .param p0, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 449
    const-string v0, "enableDebugLogging"

    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 450
    const-string v0, "enableSensitiveLogging"

    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 451
    const-string v0, "backgroundOperations"

    sget-object v1, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 452
    const-string v0, "animations"

    sget-boolean v1, Lcom/fsck/k9/K9;->mAnimations:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 453
    const-string v0, "gesturesEnabled"

    sget-boolean v1, Lcom/fsck/k9/K9;->mGesturesEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 454
    const-string v0, "useVolumeKeysForNavigation"

    sget-boolean v1, Lcom/fsck/k9/K9;->mUseVolumeKeysForNavigation:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 455
    const-string v0, "useVolumeKeysForListNavigation"

    sget-boolean v1, Lcom/fsck/k9/K9;->mUseVolumeKeysForListNavigation:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 456
    const-string v0, "autofitWidth"

    sget-boolean v1, Lcom/fsck/k9/K9;->mAutofitWidth:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 457
    const-string v0, "quietTimeEnabled"

    sget-boolean v1, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 458
    const-string v0, "notificationDuringQuietTimeEnabled"

    sget-boolean v1, Lcom/fsck/k9/K9;->mNotificationDuringQuietTimeEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 459
    const-string v0, "quietTimeStarts"

    sget-object v1, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 460
    const-string v0, "quietTimeEnds"

    sget-object v1, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 462
    const-string v0, "startIntegratedInbox"

    sget-boolean v1, Lcom/fsck/k9/K9;->mStartIntegratedInbox:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 463
    const-string v0, "measureAccounts"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 464
    const-string v0, "countSearchMessages"

    sget-boolean v1, Lcom/fsck/k9/K9;->mCountSearchMessages:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 465
    const-string v0, "messageListSenderAboveSubject"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMessageListSenderAboveSubject:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 466
    const-string v0, "hideSpecialAccounts"

    sget-boolean v1, Lcom/fsck/k9/K9;->mHideSpecialAccounts:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 467
    const-string v0, "messageListStars"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMessageListStars:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 468
    const-string v0, "messageListPreviewLines"

    sget v1, Lcom/fsck/k9/K9;->mMessageListPreviewLines:I

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 469
    const-string v0, "messageListCheckboxes"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 470
    const-string v0, "showCorrespondentNames"

    sget-boolean v1, Lcom/fsck/k9/K9;->mShowCorrespondentNames:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 471
    const-string v0, "showContactName"

    sget-boolean v1, Lcom/fsck/k9/K9;->mShowContactName:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 472
    const-string v0, "showContactPicture"

    sget-boolean v1, Lcom/fsck/k9/K9;->sShowContactPicture:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 473
    const-string v0, "changeRegisteredNameColor"

    sget-boolean v1, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 474
    const-string v0, "registeredNameColor"

    sget v1, Lcom/fsck/k9/K9;->mContactNameColor:I

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 475
    const-string v0, "messageViewFixedWidthFont"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 476
    const-string v0, "messageViewReturnToList"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMessageViewReturnToList:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 477
    const-string v0, "messageViewShowNext"

    sget-boolean v1, Lcom/fsck/k9/K9;->mMessageViewShowNext:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 478
    const-string v0, "wrapFolderNames"

    sget-boolean v1, Lcom/fsck/k9/K9;->mWrapFolderNames:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 479
    const-string v0, "hideUserAgent"

    sget-boolean v1, Lcom/fsck/k9/K9;->mHideUserAgent:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 480
    const-string v0, "hideTimeZone"

    sget-boolean v1, Lcom/fsck/k9/K9;->mHideTimeZone:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 482
    const-string v0, "openPgpProvider"

    sget-object v1, Lcom/fsck/k9/K9;->sOpenPgpProvider:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 483
    const-string v0, "openPgpSupportSignOnly"

    sget-boolean v1, Lcom/fsck/k9/K9;->sOpenPgpSupportSignOnly:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 485
    const-string v0, "language"

    sget-object v1, Lcom/fsck/k9/K9;->language:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 486
    const-string v0, "theme"

    sget-object v1, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 487
    const-string v0, "messageViewTheme"

    sget-object v1, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 488
    const-string v0, "messageComposeTheme"

    sget-object v1, Lcom/fsck/k9/K9;->composerTheme:Lcom/fsck/k9/K9$Theme;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 489
    const-string v0, "fixedMessageViewTheme"

    sget-boolean v1, Lcom/fsck/k9/K9;->useFixedMessageTheme:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 491
    const-string v0, "confirmDelete"

    sget-boolean v1, Lcom/fsck/k9/K9;->mConfirmDelete:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 492
    const-string v0, "confirmDiscardMessage"

    sget-boolean v1, Lcom/fsck/k9/K9;->mConfirmDiscardMessage:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 493
    const-string v0, "confirmDeleteStarred"

    sget-boolean v1, Lcom/fsck/k9/K9;->mConfirmDeleteStarred:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 494
    const-string v0, "confirmSpam"

    sget-boolean v1, Lcom/fsck/k9/K9;->mConfirmSpam:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 495
    const-string v0, "confirmDeleteFromNotification"

    sget-boolean v1, Lcom/fsck/k9/K9;->mConfirmDeleteFromNotification:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 496
    const-string v0, "confirmMarkAllRead"

    sget-boolean v1, Lcom/fsck/k9/K9;->mConfirmMarkAllRead:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 498
    const-string v0, "sortTypeEnum"

    sget-object v1, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;

    invoke-virtual {v1}, Lcom/fsck/k9/Account$SortType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 499
    const-string v1, "sortAscending"

    sget-object v0, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    sget-object v2, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 501
    const-string v0, "notificationHideSubject"

    sget-object v1, Lcom/fsck/k9/K9;->sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$NotificationHideSubject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 502
    const-string v0, "notificationQuickDelete"

    sget-object v1, Lcom/fsck/k9/K9;->sNotificationQuickDelete:Lcom/fsck/k9/K9$NotificationQuickDelete;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$NotificationQuickDelete;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 503
    const-string v0, "lockScreenNotificationVisibility"

    sget-object v1, Lcom/fsck/k9/K9;->sLockScreenNotificationVisibility:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 505
    const-string v0, "attachmentdefaultpath"

    sget-object v1, Lcom/fsck/k9/K9;->mAttachmentDefaultPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 506
    const-string v0, "useBackgroundAsUnreadIndicator"

    sget-boolean v1, Lcom/fsck/k9/K9;->sUseBackgroundAsUnreadIndicator:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 507
    const-string v0, "threadedView"

    sget-boolean v1, Lcom/fsck/k9/K9;->sThreadedViewEnabled:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 508
    const-string v0, "splitViewMode"

    sget-object v1, Lcom/fsck/k9/K9;->sSplitViewMode:Lcom/fsck/k9/K9$SplitViewMode;

    invoke-virtual {v1}, Lcom/fsck/k9/K9$SplitViewMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 509
    const-string v0, "colorizeMissingContactPictures"

    sget-boolean v1, Lcom/fsck/k9/K9;->sColorizeMissingContactPictures:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 511
    const-string v0, "messageViewArchiveActionVisible"

    sget-boolean v1, Lcom/fsck/k9/K9;->sMessageViewArchiveActionVisible:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 512
    const-string v0, "messageViewDeleteActionVisible"

    sget-boolean v1, Lcom/fsck/k9/K9;->sMessageViewDeleteActionVisible:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 513
    const-string v0, "messageViewMoveActionVisible"

    sget-boolean v1, Lcom/fsck/k9/K9;->sMessageViewMoveActionVisible:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 514
    const-string v0, "messageViewCopyActionVisible"

    sget-boolean v1, Lcom/fsck/k9/K9;->sMessageViewCopyActionVisible:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 515
    const-string v0, "messageViewSpamActionVisible"

    sget-boolean v1, Lcom/fsck/k9/K9;->sMessageViewSpamActionVisible:Z

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;

    .line 517
    const-string v0, "pgpInlineDialogCounter"

    sget v1, Lcom/fsck/k9/K9;->sPgpInlineDialogCounter:I

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 518
    const-string v0, "pgpSignOnlyDialogCounter"

    sget v1, Lcom/fsck/k9/K9;->sPgpSignOnlyDialogCounter:I

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 520
    sget-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/FontSizes;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 521
    return-void
.end method

.method public static saveSettingsAsync()V
    .locals 2

    .prologue
    .line 1457
    new-instance v0, Lcom/fsck/k9/K9$4;

    invoke-direct {v0}, Lcom/fsck/k9/K9$4;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1467
    invoke-virtual {v0, v1}, Lcom/fsck/k9/K9$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1468
    return-void
.end method

.method public static setAnimations(Z)V
    .locals 0
    .param p0, "animations"    # Z

    .prologue
    .line 1060
    sput-boolean p0, Lcom/fsck/k9/K9;->mAnimations:Z

    .line 1061
    return-void
.end method

.method public static setAttachmentDefaultPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "attachmentDefaultPath"    # Ljava/lang/String;

    .prologue
    .line 1296
    sput-object p0, Lcom/fsck/k9/K9;->mAttachmentDefaultPath:Ljava/lang/String;

    .line 1297
    return-void
.end method

.method public static setAutofitWidth(Z)V
    .locals 0
    .param p0, "autofitWidth"    # Z

    .prologue
    .line 960
    sput-boolean p0, Lcom/fsck/k9/K9;->mAutofitWidth:Z

    .line 961
    return-void
.end method

.method public static setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z
    .locals 2
    .param p0, "backgroundOps"    # Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .prologue
    .line 922
    sget-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 923
    .local v0, "oldBackgroundOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    sput-object p0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 924
    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setBackgroundOps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nbackgroundOps"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-static {p0}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z

    move-result v0

    return v0
.end method

.method public static setChangeContactNameColor(Z)V
    .locals 0
    .param p0, "changeContactNameColor"    # Z

    .prologue
    .line 1115
    sput-boolean p0, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    .line 1116
    return-void
.end method

.method public static setColorizeMissingContactPictures(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 1355
    sput-boolean p0, Lcom/fsck/k9/K9;->sColorizeMissingContactPictures:Z

    .line 1356
    return-void
.end method

.method public static setConfirmDelete(Z)V
    .locals 0
    .param p0, "confirm"    # Z

    .prologue
    .line 1183
    sput-boolean p0, Lcom/fsck/k9/K9;->mConfirmDelete:Z

    .line 1184
    return-void
.end method

.method public static setConfirmDeleteFromNotification(Z)V
    .locals 0
    .param p0, "confirm"    # Z

    .prologue
    .line 1215
    sput-boolean p0, Lcom/fsck/k9/K9;->mConfirmDeleteFromNotification:Z

    .line 1216
    return-void
.end method

.method public static setConfirmDeleteStarred(Z)V
    .locals 0
    .param p0, "confirm"    # Z

    .prologue
    .line 1191
    sput-boolean p0, Lcom/fsck/k9/K9;->mConfirmDeleteStarred:Z

    .line 1192
    return-void
.end method

.method public static setConfirmDiscardMessage(Z)V
    .locals 0
    .param p0, "confirm"    # Z

    .prologue
    .line 1207
    sput-boolean p0, Lcom/fsck/k9/K9;->mConfirmDiscardMessage:Z

    .line 1208
    return-void
.end method

.method public static setConfirmMarkAllRead(Z)V
    .locals 0
    .param p0, "confirm"    # Z

    .prologue
    .line 1223
    sput-boolean p0, Lcom/fsck/k9/K9;->mConfirmMarkAllRead:Z

    .line 1224
    return-void
.end method

.method public static setConfirmSpam(Z)V
    .locals 0
    .param p0, "confirm"    # Z

    .prologue
    .line 1203
    sput-boolean p0, Lcom/fsck/k9/K9;->mConfirmSpam:Z

    .line 1204
    return-void
.end method

.method public static setContactNameColor(I)V
    .locals 0
    .param p0, "contactNameColor"    # I

    .prologue
    .line 1123
    sput p0, Lcom/fsck/k9/K9;->mContactNameColor:I

    .line 1124
    return-void
.end method

.method public static setCountSearchMessages(Z)V
    .locals 0
    .param p0, "countSearchMessages"    # Z

    .prologue
    .line 1167
    sput-boolean p0, Lcom/fsck/k9/K9;->mCountSearchMessages:Z

    .line 1168
    return-void
.end method

.method public static declared-synchronized setDatabasesUpToDate(Z)V
    .locals 4
    .param p0, "save"    # Z

    .prologue
    .line 1439
    const-class v2, Lcom/fsck/k9/K9;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/fsck/k9/K9;->sDatabasesUpToDate:Z

    .line 1441
    if-eqz p0, :cond_0

    .line 1442
    sget-object v1, Lcom/fsck/k9/K9;->sDatabaseVersionCache:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1443
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_account_database_version"

    const/16 v3, 0x3d

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit v2

    return-void

    .line 1439
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 1039
    sput-boolean p0, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 1040
    invoke-static {}, Lcom/fsck/k9/K9;->updateLoggingStatus()V

    .line 1041
    return-void
.end method

.method public static setGesturesEnabled(Z)V
    .locals 0
    .param p0, "gestures"    # Z

    .prologue
    .line 936
    sput-boolean p0, Lcom/fsck/k9/K9;->mGesturesEnabled:Z

    .line 937
    return-void
.end method

.method public static setHideSpecialAccounts(Z)V
    .locals 0
    .param p0, "hideSpecialAccounts"    # Z

    .prologue
    .line 1175
    sput-boolean p0, Lcom/fsck/k9/K9;->mHideSpecialAccounts:Z

    .line 1176
    return-void
.end method

.method public static setHideTimeZone(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    .line 1268
    sput-boolean p0, Lcom/fsck/k9/K9;->mHideTimeZone:Z

    .line 1269
    return-void
.end method

.method public static setHideUserAgent(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    .line 1261
    sput-boolean p0, Lcom/fsck/k9/K9;->mHideUserAgent:Z

    .line 1262
    return-void
.end method

.method public static setK9ComposerThemeSetting(Lcom/fsck/k9/K9$Theme;)V
    .locals 0
    .param p0, "compTheme"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 907
    sput-object p0, Lcom/fsck/k9/K9;->composerTheme:Lcom/fsck/k9/K9$Theme;

    .line 908
    return-void
.end method

.method public static setK9Language(Ljava/lang/String;)V
    .locals 0
    .param p0, "nlanguage"    # Ljava/lang/String;

    .prologue
    .line 848
    sput-object p0, Lcom/fsck/k9/K9;->language:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public static setK9MessageViewThemeSetting(Lcom/fsck/k9/K9$Theme;)V
    .locals 0
    .param p0, "nMessageViewTheme"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 899
    sput-object p0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    .line 900
    return-void
.end method

.method public static setK9Theme(Lcom/fsck/k9/K9$Theme;)V
    .locals 1
    .param p0, "ntheme"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 893
    sget-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    if-eq p0, v0, :cond_0

    .line 894
    sput-object p0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    .line 896
    :cond_0
    return-void
.end method

.method public static setLockScreenNotificationVisibility(Lcom/fsck/k9/K9$LockScreenNotificationVisibility;)V
    .locals 0
    .param p0, "visibility"    # Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .prologue
    .line 1247
    sput-object p0, Lcom/fsck/k9/K9;->sLockScreenNotificationVisibility:Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    .line 1248
    return-void
.end method

.method public static setMeasureAccounts(Z)V
    .locals 0
    .param p0, "measureAccounts"    # Z

    .prologue
    .line 1159
    sput-boolean p0, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    .line 1160
    return-void
.end method

.method public static setMessageListCheckboxes(Z)V
    .locals 0
    .param p0, "checkboxes"    # Z

    .prologue
    .line 1076
    sput-boolean p0, Lcom/fsck/k9/K9;->mMessageListCheckboxes:Z

    .line 1077
    return-void
.end method

.method public static setMessageListPreviewLines(I)V
    .locals 0
    .param p0, "lines"    # I

    .prologue
    .line 1068
    sput p0, Lcom/fsck/k9/K9;->mMessageListPreviewLines:I

    .line 1069
    return-void
.end method

.method public static setMessageListSenderAboveSubject(Z)V
    .locals 0
    .param p0, "sender"    # Z

    .prologue
    .line 1096
    sput-boolean p0, Lcom/fsck/k9/K9;->mMessageListSenderAboveSubject:Z

    .line 1097
    return-void
.end method

.method public static setMessageListStars(Z)V
    .locals 0
    .param p0, "stars"    # Z

    .prologue
    .line 1084
    sput-boolean p0, Lcom/fsck/k9/K9;->mMessageListStars:Z

    .line 1085
    return-void
.end method

.method public static setMessageViewArchiveActionVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 1363
    sput-boolean p0, Lcom/fsck/k9/K9;->sMessageViewArchiveActionVisible:Z

    .line 1364
    return-void
.end method

.method public static setMessageViewCopyActionVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 1387
    sput-boolean p0, Lcom/fsck/k9/K9;->sMessageViewCopyActionVisible:Z

    .line 1388
    return-void
.end method

.method public static setMessageViewDeleteActionVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 1371
    sput-boolean p0, Lcom/fsck/k9/K9;->sMessageViewDeleteActionVisible:Z

    .line 1372
    return-void
.end method

.method public static setMessageViewFixedWidthFont(Z)V
    .locals 0
    .param p0, "fixed"    # Z

    .prologue
    .line 1131
    sput-boolean p0, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    .line 1132
    return-void
.end method

.method public static setMessageViewMoveActionVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 1379
    sput-boolean p0, Lcom/fsck/k9/K9;->sMessageViewMoveActionVisible:Z

    .line 1380
    return-void
.end method

.method public static setMessageViewReturnToList(Z)V
    .locals 0
    .param p0, "messageViewReturnToList"    # Z

    .prologue
    .line 1139
    sput-boolean p0, Lcom/fsck/k9/K9;->mMessageViewReturnToList:Z

    .line 1140
    return-void
.end method

.method public static setMessageViewShowNext(Z)V
    .locals 0
    .param p0, "messageViewShowNext"    # Z

    .prologue
    .line 1147
    sput-boolean p0, Lcom/fsck/k9/K9;->mMessageViewShowNext:Z

    .line 1148
    return-void
.end method

.method public static setMessageViewSpamActionVisible(Z)V
    .locals 0
    .param p0, "visible"    # Z

    .prologue
    .line 1395
    sput-boolean p0, Lcom/fsck/k9/K9;->sMessageViewSpamActionVisible:Z

    .line 1396
    return-void
.end method

.method public static setNotificationDuringQuietTimeEnabled(Z)V
    .locals 0
    .param p0, "notificationDuringQuietTimeEnabled"    # Z

    .prologue
    .line 976
    sput-boolean p0, Lcom/fsck/k9/K9;->mNotificationDuringQuietTimeEnabled:Z

    .line 977
    return-void
.end method

.method public static setNotificationHideSubject(Lcom/fsck/k9/K9$NotificationHideSubject;)V
    .locals 0
    .param p0, "mode"    # Lcom/fsck/k9/K9$NotificationHideSubject;

    .prologue
    .line 1231
    sput-object p0, Lcom/fsck/k9/K9;->sNotificationHideSubject:Lcom/fsck/k9/K9$NotificationHideSubject;

    .line 1232
    return-void
.end method

.method public static setNotificationQuickDeleteBehaviour(Lcom/fsck/k9/K9$NotificationQuickDelete;)V
    .locals 0
    .param p0, "mode"    # Lcom/fsck/k9/K9$NotificationQuickDelete;

    .prologue
    .line 1239
    sput-object p0, Lcom/fsck/k9/K9;->sNotificationQuickDelete:Lcom/fsck/k9/K9$NotificationQuickDelete;

    .line 1240
    return-void
.end method

.method public static setOpenPgpProvider(Ljava/lang/String;)V
    .locals 0
    .param p0, "openPgpProvider"    # Ljava/lang/String;

    .prologue
    .line 1280
    sput-object p0, Lcom/fsck/k9/K9;->sOpenPgpProvider:Ljava/lang/String;

    .line 1281
    return-void
.end method

.method public static setOpenPgpSupportSignOnly(Z)V
    .locals 0
    .param p0, "supportSignOnly"    # Z

    .prologue
    .line 1288
    sput-boolean p0, Lcom/fsck/k9/K9;->sOpenPgpSupportSignOnly:Z

    .line 1289
    return-void
.end method

.method public static setPgpInlineDialogCounter(I)V
    .locals 0
    .param p0, "pgpInlineDialogCounter"    # I

    .prologue
    .line 1403
    sput p0, Lcom/fsck/k9/K9;->sPgpInlineDialogCounter:I

    .line 1404
    return-void
.end method

.method public static setPgpSignOnlyDialogCounter(I)V
    .locals 0
    .param p0, "pgpSignOnlyDialogCounter"    # I

    .prologue
    .line 1411
    sput p0, Lcom/fsck/k9/K9;->sPgpSignOnlyDialogCounter:I

    .line 1412
    return-void
.end method

.method public static setQuietTimeEnabled(Z)V
    .locals 0
    .param p0, "quietTimeEnabled"    # Z

    .prologue
    .line 968
    sput-boolean p0, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    .line 969
    return-void
.end method

.method public static setQuietTimeEnds(Ljava/lang/String;)V
    .locals 0
    .param p0, "quietTimeEnds"    # Ljava/lang/String;

    .prologue
    .line 992
    sput-object p0, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    .line 993
    return-void
.end method

.method public static setQuietTimeStarts(Ljava/lang/String;)V
    .locals 0
    .param p0, "quietTimeStarts"    # Ljava/lang/String;

    .prologue
    .line 984
    sput-object p0, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public static setServicesEnabled(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 351
    .local v1, "appContext":Landroid/content/Context;
    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    .line 352
    .local v0, "acctLength":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    .line 354
    .local v2, "enable":Z
    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;ZLjava/lang/Integer;)V

    .line 356
    invoke-static {v1, v2}, Lcom/fsck/k9/K9;->updateDeviceIdleReceiver(Landroid/content/Context;Z)V

    .line 357
    return-void

    .line 352
    .end local v2    # "enable":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setServicesEnabled(Landroid/content/Context;ZLjava/lang/Integer;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "wakeLockId"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 372
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    const-class v8, Lcom/fsck/k9/service/MailService;

    invoke-direct {v4, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 378
    invoke-static {p0, p2}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 380
    :cond_0
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/Class;

    const-class v4, Lcom/fsck/k9/activity/MessageCompose;

    aput-object v4, v1, v7

    const-class v4, Lcom/fsck/k9/service/BootReceiver;

    aput-object v4, v1, v5

    const-class v4, Lcom/fsck/k9/service/MailService;

    aput-object v4, v1, v6

    .line 382
    .local v1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v2, v1, v8

    .line 384
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v0, v5

    .line 387
    .local v0, "alreadyEnabled":Z
    :goto_1
    if-eq p1, v0, :cond_1

    .line 388
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v3, v10, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 382
    :cond_1
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_0

    .end local v0    # "alreadyEnabled":Z
    :cond_2
    move v0, v7

    .line 384
    goto :goto_1

    .restart local v0    # "alreadyEnabled":Z
    :cond_3
    move v4, v6

    .line 388
    goto :goto_2

    .line 396
    .end local v0    # "alreadyEnabled":Z
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz p1, :cond_5

    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/fsck/k9/service/MailService;

    invoke-direct {v4, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 402
    invoke-static {p0, p2}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 405
    :cond_5
    return-void
.end method

.method public static setShowContactName(Z)V
    .locals 0
    .param p0, "showContactName"    # Z

    .prologue
    .line 1107
    sput-boolean p0, Lcom/fsck/k9/K9;->mShowContactName:Z

    .line 1108
    return-void
.end method

.method public static setShowContactPicture(Z)V
    .locals 0
    .param p0, "show"    # Z

    .prologue
    .line 1347
    sput-boolean p0, Lcom/fsck/k9/K9;->sShowContactPicture:Z

    .line 1348
    return-void
.end method

.method public static setShowCorrespondentNames(Z)V
    .locals 0
    .param p0, "showCorrespondentNames"    # Z

    .prologue
    .line 1099
    sput-boolean p0, Lcom/fsck/k9/K9;->mShowCorrespondentNames:Z

    .line 1100
    return-void
.end method

.method public static declared-synchronized setSortAscending(Lcom/fsck/k9/Account$SortType;Z)V
    .locals 3
    .param p0, "sortType"    # Lcom/fsck/k9/Account$SortType;
    .param p1, "sortAscending"    # Z

    .prologue
    .line 1315
    const-class v1, Lcom/fsck/k9/K9;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/K9;->mSortAscending:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    monitor-exit v1

    return-void

    .line 1315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSortType(Lcom/fsck/k9/Account$SortType;)V
    .locals 2
    .param p0, "sortType"    # Lcom/fsck/k9/Account$SortType;

    .prologue
    .line 1304
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fsck/k9/K9;->mSortType:Lcom/fsck/k9/Account$SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    monitor-exit v0

    return-void

    .line 1304
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSplitViewMode(Lcom/fsck/k9/K9$SplitViewMode;)V
    .locals 2
    .param p0, "mode"    # Lcom/fsck/k9/K9$SplitViewMode;

    .prologue
    .line 1339
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/fsck/k9/K9;->sSplitViewMode:Lcom/fsck/k9/K9$SplitViewMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    monitor-exit v0

    return-void

    .line 1339
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setStartIntegratedInbox(Z)V
    .locals 0
    .param p0, "startIntegratedInbox"    # Z

    .prologue
    .line 1052
    sput-boolean p0, Lcom/fsck/k9/K9;->mStartIntegratedInbox:Z

    .line 1053
    return-void
.end method

.method public static declared-synchronized setThreadedViewEnabled(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 1331
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/fsck/k9/K9;->sThreadedViewEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    monitor-exit v0

    return-void

    .line 1331
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUseBackgroundAsUnreadIndicator(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 1323
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/fsck/k9/K9;->sUseBackgroundAsUnreadIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    monitor-exit v0

    return-void

    .line 1323
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setUseFixedMessageViewTheme(Z)V
    .locals 2
    .param p0, "useFixed"    # Z

    .prologue
    .line 911
    sput-boolean p0, Lcom/fsck/k9/K9;->useFixedMessageTheme:Z

    .line 912
    sget-boolean v0, Lcom/fsck/k9/K9;->useFixedMessageTheme:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    sget-object v1, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    .line 913
    sget-object v0, Lcom/fsck/k9/K9;->theme:Lcom/fsck/k9/K9$Theme;

    sput-object v0, Lcom/fsck/k9/K9;->messageViewTheme:Lcom/fsck/k9/K9$Theme;

    .line 915
    :cond_0
    return-void
.end method

.method public static setUseVolumeKeysForListNavigation(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 952
    sput-boolean p0, Lcom/fsck/k9/K9;->mUseVolumeKeysForListNavigation:Z

    .line 953
    return-void
.end method

.method public static setUseVolumeKeysForNavigation(Z)V
    .locals 0
    .param p0, "volume"    # Z

    .prologue
    .line 944
    sput-boolean p0, Lcom/fsck/k9/K9;->mUseVolumeKeysForNavigation:Z

    .line 945
    return-void
.end method

.method public static setWrapFolderNames(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    .line 1254
    sput-boolean p0, Lcom/fsck/k9/K9;->mWrapFolderNames:Z

    .line 1255
    return-void
.end method

.method public static showAnimations()Z
    .locals 1

    .prologue
    .line 1056
    sget-boolean v0, Lcom/fsck/k9/K9;->mAnimations:Z

    return v0
.end method

.method public static showContactName()Z
    .locals 1

    .prologue
    .line 1103
    sget-boolean v0, Lcom/fsck/k9/K9;->mShowContactName:Z

    return v0
.end method

.method public static showContactPicture()Z
    .locals 1

    .prologue
    .line 1343
    sget-boolean v0, Lcom/fsck/k9/K9;->sShowContactPicture:Z

    return v0
.end method

.method public static showCorrespondentNames()Z
    .locals 1

    .prologue
    .line 1088
    sget-boolean v0, Lcom/fsck/k9/K9;->mShowCorrespondentNames:Z

    return v0
.end method

.method public static startIntegratedInbox()Z
    .locals 1

    .prologue
    .line 1048
    sget-boolean v0, Lcom/fsck/k9/K9;->mStartIntegratedInbox:Z

    return v0
.end method

.method private static updateDeviceIdleReceiver(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 360
    invoke-static {p0}, Lcom/fsck/k9/power/DeviceIdleManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/power/DeviceIdleManager;

    move-result-object v0

    .line 361
    .local v0, "deviceIdleManager":Lcom/fsck/k9/power/DeviceIdleManager;
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/fsck/k9/power/DeviceIdleManager;->registerReceiver()V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/power/DeviceIdleManager;->unregisterReceiver()V

    goto :goto_0
.end method

.method private static updateLoggingStatus()V
    .locals 2

    .prologue
    .line 1449
    invoke-static {}, Ltimber/log/Timber;->uprootAll()V

    .line 1450
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 1451
    .local v0, "enableDebugLogging":Z
    if-eqz v0, :cond_0

    .line 1452
    new-instance v1, Ltimber/log/Timber$DebugTree;

    invoke-direct {v1}, Ltimber/log/Timber$DebugTree;-><init>()V

    invoke-static {v1}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 1454
    :cond_0
    return-void
.end method

.method public static declared-synchronized useBackgroundAsUnreadIndicator()Z
    .locals 2

    .prologue
    .line 1319
    const-class v0, Lcom/fsck/k9/K9;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/fsck/k9/K9;->sUseBackgroundAsUnreadIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static useFixedMessageViewTheme()Z
    .locals 1

    .prologue
    .line 903
    sget-boolean v0, Lcom/fsck/k9/K9;->useFixedMessageTheme:Z

    return v0
.end method

.method public static useVolumeKeysForListNavigationEnabled()Z
    .locals 1

    .prologue
    .line 948
    sget-boolean v0, Lcom/fsck/k9/K9;->mUseVolumeKeysForListNavigation:Z

    return v0
.end method

.method public static useVolumeKeysForNavigationEnabled()Z
    .locals 1

    .prologue
    .line 940
    sget-boolean v0, Lcom/fsck/k9/K9;->mUseVolumeKeysForNavigation:Z

    return v0
.end method

.method public static wrapFolderNames()Z
    .locals 1

    .prologue
    .line 1251
    sget-boolean v0, Lcom/fsck/k9/K9;->mWrapFolderNames:Z

    return v0
.end method


# virtual methods
.method public checkCachedDatabaseVersion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 664
    const-string v1, "database_version_cache"

    invoke-virtual {p0, v1, v3}, Lcom/fsck/k9/K9;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/fsck/k9/K9;->sDatabaseVersionCache:Landroid/content/SharedPreferences;

    .line 666
    sget-object v1, Lcom/fsck/k9/K9;->sDatabaseVersionCache:Landroid/content/SharedPreferences;

    const-string v2, "last_account_database_version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 668
    .local v0, "cachedVersion":I
    const/16 v1, 0x3d

    if-lt v0, v1, :cond_0

    .line 669
    invoke-static {v3}, Lcom/fsck/k9/K9;->setDatabasesUpToDate(Z)V

    .line 671
    :cond_0
    return-void
.end method

.method protected notifyObservers()V
    .locals 7

    .prologue
    .line 811
    sget-object v3, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    monitor-enter v3

    .line 812
    :try_start_0
    sget-object v2, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/K9$ApplicationAware;

    .line 813
    .local v0, "aware":Lcom/fsck/k9/K9$ApplicationAware;
    const-string v4, "Initializing observer: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    invoke-interface {v0, p0}, Lcom/fsck/k9/K9$ApplicationAware;->initializeComponent(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 817
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Failure when notifying %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 824
    .end local v0    # "aware":Lcom/fsck/k9/K9$ApplicationAware;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 822
    :cond_0
    const/4 v2, 0x1

    :try_start_3
    sput-boolean v2, Lcom/fsck/k9/K9;->sInitialized:Z

    .line 823
    sget-object v2, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 824
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 825
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 525
    sget-boolean v1, Lcom/fsck/k9/K9;->DEVELOPER_MODE:Z

    if-eqz v1, :cond_0

    .line 526
    invoke-static {}, Landroid/os/StrictMode;->enableDefaults()V

    .line 529
    :cond_0
    invoke-static {}, Lcom/fsck/k9/PRNGFixes;->apply()V

    .line 531
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 532
    sput-object p0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    .line 533
    invoke-static {p0}, Lcom/fsck/k9/Globals;->setContext(Landroid/content/Context;)V

    .line 535
    new-instance v1, Lcom/fsck/k9/K9$2;

    invoke-direct {v1, p0}, Lcom/fsck/k9/K9$2;-><init>(Lcom/fsck/k9/K9;)V

    invoke-static {v1}, Lcom/fsck/k9/mail/K9MailLib;->setDebugStatus(Lcom/fsck/k9/mail/K9MailLib$DebugStatus;)V

    .line 545
    invoke-virtual {p0}, Lcom/fsck/k9/K9;->checkCachedDatabaseVersion()V

    .line 547
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    .line 548
    .local v0, "prefs":Lcom/fsck/k9/Preferences;
    invoke-static {v0}, Lcom/fsck/k9/K9;->loadPrefs(Lcom/fsck/k9/Preferences;)V

    .line 554
    invoke-virtual {p0}, Lcom/fsck/k9/K9;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->setTempDirectory(Ljava/io/File;)V

    .line 556
    const-string v1, "KeyStore"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/fsck/k9/K9;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->setKeyStoreLocation(Ljava/lang/String;)V

    .line 562
    invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    .line 563
    invoke-virtual {p0}, Lcom/fsck/k9/K9;->registerReceivers()V

    .line 565
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/K9$3;

    invoke-direct {v2, p0}, Lcom/fsck/k9/K9$3;-><init>(Lcom/fsck/k9/K9;)V

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 645
    invoke-virtual {p0}, Lcom/fsck/k9/K9;->notifyObservers()V

    .line 646
    return-void
.end method

.method protected registerReceivers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 413
    new-instance v3, Lcom/fsck/k9/service/StorageGoneReceiver;

    invoke-direct {v3}, Lcom/fsck/k9/service/StorageGoneReceiver;-><init>()V

    .line 414
    .local v3, "receiver":Lcom/fsck/k9/service/StorageGoneReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 415
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v5, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 419
    new-instance v2, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v2}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 422
    .local v2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/os/Handler;>;"
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/fsck/k9/K9$1;

    invoke-direct {v6, p0, v2}, Lcom/fsck/k9/K9$1;-><init>(Lcom/fsck/k9/K9;Ljava/util/concurrent/BlockingQueue;)V

    const-string v7, "Unmount-thread"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 437
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 438
    .local v4, "storageGoneHandler":Landroid/os/Handler;
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v5, v4}, Lcom/fsck/k9/K9;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 439
    const-string v5, "Registered: unmount receiver"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v4    # "storageGoneHandler":Landroid/os/Handler;
    :goto_0
    new-instance v5, Lcom/fsck/k9/service/ShutdownReceiver;

    invoke-direct {v5}, Lcom/fsck/k9/service/ShutdownReceiver;-><init>()V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/fsck/k9/K9;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    const-string v5, "Registered: shutdown receiver"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "Unable to register unmount receiver"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
