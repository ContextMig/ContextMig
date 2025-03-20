.class public Lcom/fsck/k9/activity/setup/AccountSettings;
.super Lcom/fsck/k9/activity/K9PreferenceActivity;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGE_IDENTITIES:I = 0x2

.field private static final DIALOG_COLOR_PICKER_ACCOUNT:I = 0x1

.field private static final DIALOG_COLOR_PICKER_LED:I = 0x2

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final PREFERENCE_ALWAYS_SHOW_CC_BCC:Ljava/lang/String; = "always_show_cc_bcc"

.field private static final PREFERENCE_ARCHIVE_FOLDER:Ljava/lang/String; = "archive_folder"

.field private static final PREFERENCE_AUTO_EXPAND_FOLDER:Ljava/lang/String; = "account_setup_auto_expand_folder"

.field private static final PREFERENCE_CATEGORY_FOLDERS:Ljava/lang/String; = "folders"

.field private static final PREFERENCE_CHIP_COLOR:Ljava/lang/String; = "chip_color"

.field private static final PREFERENCE_CLOUD_SEARCH_ENABLED:Ljava/lang/String; = "remote_search_enabled"

.field private static final PREFERENCE_COMPOSITION:Ljava/lang/String; = "composition"

.field private static final PREFERENCE_CRYPTO:Ljava/lang/String; = "crypto"

.field private static final PREFERENCE_CRYPTO_KEY:Ljava/lang/String; = "crypto_key"

.field private static final PREFERENCE_DEFAULT:Ljava/lang/String; = "account_default"

.field private static final PREFERENCE_DEFAULT_QUOTED_TEXT_SHOWN:Ljava/lang/String; = "default_quoted_text_shown"

.field private static final PREFERENCE_DELETE_POLICY:Ljava/lang/String; = "delete_policy"

.field private static final PREFERENCE_DESCRIPTION:Ljava/lang/String; = "account_description"

.field private static final PREFERENCE_DISPLAY_COUNT:Ljava/lang/String; = "account_display_count"

.field private static final PREFERENCE_DISPLAY_MODE:Ljava/lang/String; = "folder_display_mode"

.field private static final PREFERENCE_DRAFTS_FOLDER:Ljava/lang/String; = "drafts_folder"

.field private static final PREFERENCE_EXPUNGE_POLICY:Ljava/lang/String; = "expunge_policy"

.field private static final PREFERENCE_FREQUENCY:Ljava/lang/String; = "account_check_frequency"

.field private static final PREFERENCE_IDLE_REFRESH_PERIOD:Ljava/lang/String; = "idle_refresh_period"

.field private static final PREFERENCE_INCOMING:Ljava/lang/String; = "incoming"

.field private static final PREFERENCE_LED_COLOR:Ljava/lang/String; = "led_color"

.field private static final PREFERENCE_LOCAL_STORAGE_PROVIDER:Ljava/lang/String; = "local_storage_provider"

.field private static final PREFERENCE_MANAGE_IDENTITIES:Ljava/lang/String; = "manage_identities"

.field private static final PREFERENCE_MARK_MESSAGE_AS_READ_ON_VIEW:Ljava/lang/String; = "mark_message_as_read_on_view"

.field private static final PREFERENCE_MAX_PUSH_FOLDERS:Ljava/lang/String; = "max_push_folders"

.field private static final PREFERENCE_MESSAGE_AGE:Ljava/lang/String; = "account_message_age"

.field private static final PREFERENCE_MESSAGE_FORMAT:Ljava/lang/String; = "message_format"

.field private static final PREFERENCE_MESSAGE_READ_RECEIPT:Ljava/lang/String; = "message_read_receipt"

.field private static final PREFERENCE_MESSAGE_SIZE:Ljava/lang/String; = "account_autodownload_size"

.field private static final PREFERENCE_NOTIFICATION_LED:Ljava/lang/String; = "account_led"

.field private static final PREFERENCE_NOTIFICATION_OPENS_UNREAD:Ljava/lang/String; = "notification_opens_unread"

.field private static final PREFERENCE_NOTIFY:Ljava/lang/String; = "account_notify"

.field private static final PREFERENCE_NOTIFY_CONTACTS_MAIL_ONLY:Ljava/lang/String; = "account_notify_contacts_mail_only"

.field private static final PREFERENCE_NOTIFY_NEW_MAIL_MODE:Ljava/lang/String; = "folder_notify_new_mail_mode"

.field private static final PREFERENCE_NOTIFY_SELF:Ljava/lang/String; = "account_notify_self"

.field private static final PREFERENCE_NOTIFY_SYNC:Ljava/lang/String; = "account_notify_sync"

.field private static final PREFERENCE_OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final PREFERENCE_PUSH_MODE:Ljava/lang/String; = "folder_push_mode"

.field private static final PREFERENCE_PUSH_POLL_ON_CONNECT:Ljava/lang/String; = "push_poll_on_connect"

.field private static final PREFERENCE_QUOTE_PREFIX:Ljava/lang/String; = "account_quote_prefix"

.field private static final PREFERENCE_QUOTE_STYLE:Ljava/lang/String; = "quote_style"

.field private static final PREFERENCE_REMOTE_SEARCH_FULL_TEXT:Ljava/lang/String; = "account_remote_search_full_text"

.field private static final PREFERENCE_REMOTE_SEARCH_NUM_RESULTS:Ljava/lang/String; = "account_remote_search_num_results"

.field private static final PREFERENCE_REPLY_AFTER_QUOTE:Ljava/lang/String; = "reply_after_quote"

.field private static final PREFERENCE_RINGTONE:Ljava/lang/String; = "account_ringtone"

.field private static final PREFERENCE_SCREEN_COMPOSING:Ljava/lang/String; = "composing"

.field private static final PREFERENCE_SCREEN_INCOMING:Ljava/lang/String; = "incoming_prefs"

.field private static final PREFERENCE_SCREEN_MAIN:Ljava/lang/String; = "main"

.field private static final PREFERENCE_SCREEN_PUSH_ADVANCED:Ljava/lang/String; = "push_advanced"

.field private static final PREFERENCE_SCREEN_SEARCH:Ljava/lang/String; = "search"

.field private static final PREFERENCE_SEARCHABLE_FOLDERS:Ljava/lang/String; = "searchable_folders"

.field private static final PREFERENCE_SENT_FOLDER:Ljava/lang/String; = "sent_folder"

.field private static final PREFERENCE_SHOW_PICTURES:Ljava/lang/String; = "show_pictures_enum"

.field private static final PREFERENCE_SPAM_FOLDER:Ljava/lang/String; = "spam_folder"

.field private static final PREFERENCE_STRIP_SIGNATURE:Ljava/lang/String; = "strip_signature"

.field private static final PREFERENCE_SYNC_MODE:Ljava/lang/String; = "folder_sync_mode"

.field private static final PREFERENCE_SYNC_REMOTE_DELETIONS:Ljava/lang/String; = "account_sync_remote_deletetions"

.field private static final PREFERENCE_TARGET_MODE:Ljava/lang/String; = "folder_target_mode"

.field private static final PREFERENCE_TRASH_FOLDER:Ljava/lang/String; = "trash_folder"

.field private static final PREFERENCE_VIBRATE:Ljava/lang/String; = "account_vibrate"

.field private static final PREFERENCE_VIBRATE_PATTERN:Ljava/lang/String; = "account_vibrate_pattern"

.field private static final PREFERENCE_VIBRATE_TIMES:Ljava/lang/String; = "account_vibrate_times"

.field private static final SELECT_AUTO_EXPAND_FOLDER:I = 0x1


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private accountDefault:Landroid/preference/CheckBoxPreference;

.field private accountDefaultQuotedTextShown:Landroid/preference/CheckBoxPreference;

.field private accountDescription:Landroid/preference/EditTextPreference;

.field private accountLedEnabled:Landroid/preference/CheckBoxPreference;

.field private accountNotify:Landroid/preference/CheckBoxPreference;

.field private accountNotifyContactsMailOnly:Landroid/preference/CheckBoxPreference;

.field private accountNotifyNewMailMode:Landroid/preference/ListPreference;

.field private accountNotifySelf:Landroid/preference/CheckBoxPreference;

.field private accountNotifySync:Landroid/preference/CheckBoxPreference;

.field private accountQuotePrefix:Landroid/preference/EditTextPreference;

.field private accountRingtone:Landroid/preference/RingtonePreference;

.field private accountShowPictures:Landroid/preference/ListPreference;

.field private accountVibrateEnabled:Landroid/preference/CheckBoxPreference;

.field private accountVibratePattern:Landroid/preference/ListPreference;

.field private accountVibrateTimes:Landroid/preference/ListPreference;

.field private alwaysShowCcBcc:Landroid/preference/CheckBoxPreference;

.field private archiveFolder:Landroid/preference/ListPreference;

.field private autoExpandFolder:Landroid/preference/ListPreference;

.field private checkFrequency:Landroid/preference/ListPreference;

.field private chipColor:Landroid/preference/Preference;

.field private cloudSearchEnabled:Landroid/preference/CheckBoxPreference;

.field private composingScreen:Landroid/preference/PreferenceScreen;

.field private deletePolicy:Landroid/preference/ListPreference;

.field private displayCount:Landroid/preference/ListPreference;

.field private displayMode:Landroid/preference/ListPreference;

.field private draftsFolder:Landroid/preference/ListPreference;

.field private expungePolicy:Landroid/preference/ListPreference;

.field private hasPgpCrypto:Z

.field private idleRefreshPeriod:Landroid/preference/ListPreference;

.field private incomingChanged:Z

.field private isExpungeCapable:Z

.field private isMoveCapable:Z

.field private isPushCapable:Z

.field private isSeenFlagSupported:Z

.field private ledColor:Landroid/preference/Preference;

.field private localStorageProvider:Landroid/preference/ListPreference;

.field private mMaxPushFolders:Landroid/preference/ListPreference;

.field private mainScreen:Landroid/preference/PreferenceScreen;

.field private markMessageAsReadOnView:Landroid/preference/CheckBoxPreference;

.field private messageAge:Landroid/preference/ListPreference;

.field private messageFormat:Landroid/preference/ListPreference;

.field private messageReadReceipt:Landroid/preference/CheckBoxPreference;

.field private messageSize:Landroid/preference/ListPreference;

.field private notificationOpensUnread:Landroid/preference/CheckBoxPreference;

.field private pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

.field private pgpSupportSignOnly:Landroid/preference/CheckBoxPreference;

.field private pushMode:Landroid/preference/ListPreference;

.field private pushPollOnConnect:Landroid/preference/CheckBoxPreference;

.field private quoteStyle:Landroid/preference/ListPreference;

.field private remoteSearchNumResults:Landroid/preference/ListPreference;

.field private replyAfterQuote:Landroid/preference/CheckBoxPreference;

.field private searchScreen:Landroid/preference/PreferenceScreen;

.field private searchableFolders:Landroid/preference/ListPreference;

.field private sentFolder:Landroid/preference/ListPreference;

.field private spamFolder:Landroid/preference/ListPreference;

.field private stripSignature:Landroid/preference/CheckBoxPreference;

.field private syncMode:Landroid/preference/ListPreference;

.field private syncRemoteDeletions:Landroid/preference/CheckBoxPreference;

.field private targetMode:Landroid/preference/ListPreference;

.field private trashFolder:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;-><init>()V

    .line 130
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isMoveCapable:Z

    .line 131
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isPushCapable:Z

    .line 132
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isExpungeCapable:Z

    .line 133
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isSeenFlagSupported:Z

    .line 166
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->incomingChanged:Z

    .line 179
    iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->hasPgpCrypto:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/fsck/k9/activity/setup/AccountSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings;->updateRemoteSearchLimit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountQuotePrefix:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSettings;->doVibrateTest(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onCompositionSettings()V

    return-void
.end method

.method static synthetic access$2800(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onManageIdentities()V

    return-void
.end method

.method static synthetic access$2902(Lcom/fsck/k9/activity/setup/AccountSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->incomingChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onIncomingSettings()V

    return-void
.end method

.method static synthetic access$3100(Lcom/fsck/k9/activity/setup/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->onOutgoingSettings()V

    return-void
.end method

.method static synthetic access$3200(Lcom/fsck/k9/activity/setup/AccountSettings;)Lorg/openintents/openpgp/util/OpenPgpKeyPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/fsck/k9/activity/setup/AccountSettings;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->autoExpandFolder:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->autoExpandFolder:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->archiveFolder:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->archiveFolder:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->draftsFolder:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->draftsFolder:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->sentFolder:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->sentFolder:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->spamFolder:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->spamFolder:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->trashFolder:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;)Landroid/preference/ListPreference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->trashFolder:Landroid/preference/ListPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->composingScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/fsck/k9/activity/setup/AccountSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isMoveCapable:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/CharSequence;
    .param p4, "x4"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/setup/AccountSettings;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/CharSequence;
    .param p4, "x4"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/setup/AccountSettings;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/CharSequence;
    .param p4, "x4"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/setup/AccountSettings;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/CharSequence;
    .param p4, "x4"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/setup/AccountSettings;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/CharSequence;
    .param p4, "x4"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/setup/AccountSettings;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/fsck/k9/activity/setup/AccountSettings;Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;
    .param p1, "x1"    # Landroid/preference/ListPreference;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/CharSequence;
    .param p4, "x4"    # [Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/setup/AccountSettings;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->replyAfterQuote:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/setup/AccountSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/AccountSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public static actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private doVibrateTest(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 983
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 984
    .local v0, "vibrate":Landroid/os/Vibrator;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    .line 985
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    .line 986
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 984
    invoke-static {v1, v2}, Lcom/fsck/k9/NotificationSetting;->getVibration(II)[J

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 987
    return-void
.end method

.method private onCompositionSettings()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->actionEditCompositionSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V

    .line 881
    return-void
.end method

.method private onIncomingSettings()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->actionEditIncomingSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V

    .line 891
    return-void
.end method

.method private onManageIdentities()V
    .locals 3

    .prologue
    .line 884
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/ManageIdentities;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.ChooseIdentity_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 887
    return-void
.end method

.method private onOutgoingSettings()V
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->actionEditOutgoingSettings(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 895
    return-void
.end method

.method private removeListEntry(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 8
    .param p1, "listPreference"    # Landroid/preference/ListPreference;
    .param p2, "remove"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 733
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 735
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    new-array v4, v7, [Ljava/lang/String;

    .line 736
    .local v4, "newEntryValues":[Ljava/lang/CharSequence;
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    new-array v3, v7, [Ljava/lang/String;

    .line 738
    .local v3, "newEntries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x0

    .local v5, "out":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 739
    aget-object v6, v1, v2

    .line 740
    .local v6, "value":Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 741
    aput-object v6, v4, v5

    .line 742
    aget-object v7, v0, v2

    aput-object v7, v3, v5

    .line 743
    add-int/lit8 v5, v5, 0x1

    .line 738
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v6    # "value":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 748
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 749
    return-void
.end method

.method private reverseTranslateFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 974
    const v0, 0x7f07038a

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object p1

    .line 977
    .end local p1    # "in":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private saveSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 752
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 753
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V

    .line 756
    :cond_0
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V

    .line 757
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->markMessageAsReadOnView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setMarkMessageAsReadOnView(Z)V

    .line 758
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setNotifyNewMail(Z)V

    .line 759
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setFolderNotifyNewMailMode(Lcom/fsck/k9/Account$FolderMode;)V

    .line 760
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifySelf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setNotifySelfNewMail(Z)V

    .line 761
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyContactsMailOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setNotifyContactsMailOnly(Z)V

    .line 762
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifySync:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setShowOngoing(Z)V

    .line 763
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setDisplayCount(I)V

    .line 764
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setMaximumAutoDownloadMessageSize(I)V

    .line 765
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->isSearchByDateCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 766
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setMaximumPolledMessageAge(I)V

    .line 768
    :cond_1
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/NotificationSetting;->setVibrate(Z)V

    .line 769
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/NotificationSetting;->setVibratePattern(I)V

    .line 770
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/NotificationSetting;->setVibrateTimes(I)V

    .line 771
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountLedEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/NotificationSetting;->setLed(Z)V

    .line 772
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->notificationOpensUnread:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setGoToUnreadMessageSearch(Z)V

    .line 773
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setFolderTargetMode(Lcom/fsck/k9/Account$FolderMode;)V

    .line 774
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/Account$DeletePolicy;->fromInt(I)Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setDeletePolicy(Lcom/fsck/k9/Account$DeletePolicy;)V

    .line 775
    iget-boolean v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isExpungeCapable:Z

    if-eqz v5, :cond_2

    .line 776
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$Expunge;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$Expunge;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setExpungePolicy(Lcom/fsck/k9/Account$Expunge;)V

    .line 778
    :cond_2
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncRemoteDeletions:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setSyncRemoteDeletions(Z)V

    .line 779
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$Searchable;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$Searchable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setSearchableFolders(Lcom/fsck/k9/Account$Searchable;)V

    .line 780
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$MessageFormat;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$MessageFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setMessageFormat(Lcom/fsck/k9/Account$MessageFormat;)V

    .line 781
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->alwaysShowCcBcc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setAlwaysShowCcBcc(Z)V

    .line 782
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageReadReceipt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setMessageReadReceipt(Z)V

    .line 783
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$QuoteStyle;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setQuoteStyle(Lcom/fsck/k9/Account$QuoteStyle;)V

    .line 784
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountQuotePrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setQuotePrefix(Ljava/lang/String;)V

    .line 785
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDefaultQuotedTextShown:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setDefaultQuotedTextShown(Z)V

    .line 786
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->replyAfterQuote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setReplyAfterQuote(Z)V

    .line 787
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->stripSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setStripSignature(Z)V

    .line 788
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setLocalStorageProviderId(Ljava/lang/String;)V

    .line 789
    iget-boolean v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->hasPgpCrypto:Z

    if-eqz v5, :cond_8

    .line 790
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    invoke-virtual {v6}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->getValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/Account;->setCryptoKey(J)V

    .line 797
    :goto_0
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v5

    const-string v6, "webdav"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 798
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->autoExpandFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setAutoExpandFolderName(Ljava/lang/String;)V

    .line 802
    :goto_1
    iget-boolean v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isMoveCapable:Z

    if-eqz v5, :cond_3

    .line 803
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->archiveFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setArchiveFolderName(Ljava/lang/String;)V

    .line 804
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->draftsFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setDraftsFolderName(Ljava/lang/String;)V

    .line 805
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->sentFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setSentFolderName(Ljava/lang/String;)V

    .line 806
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->spamFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setSpamFolderName(Ljava/lang/String;)V

    .line 807
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->trashFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setTrashFolderName(Ljava/lang/String;)V

    .line 811
    :cond_3
    iget-boolean v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isPushCapable:Z

    if-eqz v5, :cond_4

    .line 812
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushPollOnConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setPushPollOnConnect(Z)V

    .line 813
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setIdleRefreshMinutes(I)V

    .line 814
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setMaxPushFolders(I)Z

    .line 815
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->cloudSearchEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setAllowRemoteSearch(Z)V

    .line 816
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->remoteSearchNumResults:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setRemoteSearchNumResults(I)V

    .line 820
    :cond_4
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setAutomaticCheckIntervalMinutes(I)Z

    move-result v2

    .line 821
    .local v2, "needsRefresh":Z
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 823
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setFolderDisplayMode(Lcom/fsck/k9/Account$FolderMode;)Z

    move-result v0

    .line 825
    .local v0, "displayModeChanged":Z
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v5}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 826
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "account_ringtone"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "newRingtone":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 828
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/fsck/k9/NotificationSetting;->setRingEnabled(Z)V

    .line 829
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/fsck/k9/NotificationSetting;->setRingtone(Ljava/lang/String;)V

    .line 836
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$ShowPictures;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$ShowPictures;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setShowPictures(Lcom/fsck/k9/Account$ShowPictures;)V

    .line 839
    iget-boolean v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->isPushCapable:Z

    if-eqz v5, :cond_7

    .line 840
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)Z

    move-result v1

    .line 841
    .local v1, "needsPushRestart":Z
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v5

    sget-object v6, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq v5, v6, :cond_6

    .line 842
    or-int/2addr v1, v0

    .line 843
    iget-boolean v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->incomingChanged:Z

    or-int/2addr v1, v5

    .line 846
    :cond_6
    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 847
    invoke-static {p0, v8}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 855
    .end local v1    # "needsPushRestart":Z
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 856
    return-void

    .line 792
    .end local v0    # "displayModeChanged":Z
    .end local v2    # "needsRefresh":Z
    .end local v3    # "newRingtone":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/Account;->setCryptoKey(J)V

    goto/16 :goto_0

    .line 800
    :cond_9
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->autoExpandFolder:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/fsck/k9/activity/setup/AccountSettings;->reverseTranslateFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fsck/k9/Account;->setAutoExpandFolderName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 831
    .restart local v0    # "displayModeChanged":Z
    .restart local v2    # "needsRefresh":Z
    .restart local v3    # "newRingtone":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_a
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/NotificationSetting;->isRingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 832
    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/fsck/k9/NotificationSetting;->setRingtone(Ljava/lang/String;)V

    goto :goto_2

    .line 848
    .restart local v1    # "needsPushRestart":Z
    :cond_b
    if-eqz v2, :cond_c

    .line 849
    invoke-static {p0, v8}, Lcom/fsck/k9/service/MailService;->actionReschedulePoll(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_3

    .line 850
    :cond_c
    if-eqz v1, :cond_7

    .line 851
    invoke-static {p0, v8}, Lcom/fsck/k9/service/MailService;->actionRestartPushers(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_3
.end method

.method private translateFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getInboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const v0, 0x7f07038a

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 969
    .end local p1    # "in":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private updateRemoteSearchLimit(Ljava/lang/String;)V
    .locals 4
    .param p1, "maxResults"    # Ljava/lang/String;

    .prologue
    .line 994
    if-eqz p1, :cond_1

    .line 995
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->remoteSearchNumResults:Landroid/preference/ListPreference;

    const v1, 0x7f07008d

    .line 1000
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1002
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->handleOnActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 863
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 864
    packed-switch p1, :pswitch_data_0

    .line 870
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 866
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->autoExpandFolder:Landroid/preference/ListPreference;

    const-string v1, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->translateFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChooseAutoExpandFolder()V
    .locals 3

    .prologue
    .line 955
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    .local v0, "selectIntent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.ChooseFolder_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const-string v1, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->autoExpandFolder:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 959
    const-string v1, "com.fsck.k9.ChooseFolder_showcurrent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v1, "com.fsck.k9.ChooseFolder_showOptionNone"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    const-string v1, "com.fsck.k9.ChooseFolder_showDisplayableOnly"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 963
    return-void
.end method

.method public onChooseChipColor()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->showDialog(I)V

    .line 899
    return-void
.end method

.method public onChooseLedColor()V
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSettings;->showDialog(I)V

    .line 904
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "account"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "accountUuid":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    .line 216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v17

    .line 217
    .local v17, "store":Lcom/fsck/k9/mail/Store;
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Store;->isMoveCapable()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->isMoveCapable:Z

    .line 218
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->isPushCapable:Z

    .line 219
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Store;->isExpungeCapable()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->isExpungeCapable:Z

    .line 220
    invoke-virtual/range {v17 .. v17}, Lcom/fsck/k9/mail/Store;->isSeenFlagSupported()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->isSeenFlagSupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v17    # "store":Lcom/fsck/k9/mail/Store;
    :goto_0
    const/high16 v18, 0x7f050000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->addPreferencesFromResource(I)V

    .line 227
    const-string v18, "main"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    .line 229
    const-string v18, "account_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDescription:Landroid/preference/EditTextPreference;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    const-string v18, "mark_message_as_read_on_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->markMessageAsReadOnView:Landroid/preference/CheckBoxPreference;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->markMessageAsReadOnView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isMarkMessageAsReadOnView()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    const-string v18, "message_format"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getMessageFormat()Lcom/fsck/k9/Account$MessageFormat;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$MessageFormat;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageFormat:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    const-string v18, "always_show_cc_bcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->alwaysShowCcBcc:Landroid/preference/CheckBoxPreference;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->alwaysShowCcBcc:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isAlwaysShowCcBcc()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    const-string v18, "message_read_receipt"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->messageReadReceipt:Landroid/preference/CheckBoxPreference;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageReadReceipt:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isMessageReadReceiptAlways()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    const-string v18, "account_quote_prefix"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountQuotePrefix:Landroid/preference/EditTextPreference;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountQuotePrefix:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getQuotePrefix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountQuotePrefix:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getQuotePrefix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountQuotePrefix:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$3;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 276
    const-string v18, "default_quoted_text_shown"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDefaultQuotedTextShown:Landroid/preference/CheckBoxPreference;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDefaultQuotedTextShown:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isDefaultQuotedTextShown()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    const-string v18, "reply_after_quote"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->replyAfterQuote:Landroid/preference/CheckBoxPreference;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->replyAfterQuote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isReplyAfterQuote()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    const-string v18, "strip_signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->stripSignature:Landroid/preference/CheckBoxPreference;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->stripSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isStripSignature()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    const-string v18, "composing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->composingScreen:Landroid/preference/PreferenceScreen;

    .line 287
    new-instance v15, Lcom/fsck/k9/activity/setup/AccountSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/fsck/k9/activity/setup/AccountSettings$4;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    .line 303
    .local v15, "quoteStyleListener":Landroid/preference/Preference$OnPreferenceChangeListener;
    const-string v18, "quote_style"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getQuoteStyle()Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$QuoteStyle;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->quoteStyle:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getQuoteStyle()Lcom/fsck/k9/Account$QuoteStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$QuoteStyle;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 311
    const-string v18, "account_check_frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->checkFrequency:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$5;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 324
    const-string v18, "folder_display_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$6;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    const-string v18, "folder_sync_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$7;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 351
    const-string v18, "folder_target_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->targetMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$8;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    const-string v18, "delete_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    .line 365
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->isSeenFlagSupported:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    sget-object v19, Lcom/fsck/k9/Account$DeletePolicy;->MARK_AS_READ:Lcom/fsck/k9/Account$DeletePolicy;

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$DeletePolicy;->preferenceString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSettings;->removeListEntry(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getDeletePolicy()Lcom/fsck/k9/Account$DeletePolicy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$DeletePolicy;->preferenceString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->deletePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$9;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    const-string v18, "expunge_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    .line 382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->isExpungeCapable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getExpungePolicy()Lcom/fsck/k9/Account$Expunge;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$Expunge;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$10;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 399
    :goto_1
    const-string v18, "account_sync_remote_deletetions"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->syncRemoteDeletions:Landroid/preference/CheckBoxPreference;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->syncRemoteDeletions:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->syncRemoteDeletions()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 402
    const-string v18, "searchable_folders"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getSearchableFolders()Lcom/fsck/k9/Account$Searchable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$Searchable;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchableFolders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$11;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    const-string v18, "account_display_count"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->displayCount:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$12;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    const-string v18, "account_message_age"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->isSearchByDateCapable()Z

    move-result v18

    if-nez v18, :cond_2

    .line 433
    const-string v18, "incoming_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    :goto_2
    const-string v18, "account_autodownload_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageSize:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$14;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 462
    const-string v18, "account_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDefault:Landroid/preference/CheckBoxPreference;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    .line 464
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 463
    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    const-string v18, "show_pictures_enum"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/Account;->getShowPictures()Lcom/fsck/k9/Account$ShowPictures;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountShowPictures:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$15;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    const-string v18, "local_storage_provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    .line 483
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/mailstore/StorageManager;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/mailstore/StorageManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mailstore/StorageManager;->getAvailableProviders()Ljava/util/Map;

    move-result-object v14

    .line 484
    .local v14, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 485
    .local v9, "i":I
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 486
    .local v13, "providerLabels":[Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    .line 487
    .local v12, "providerIds":[Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 488
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    aput-object v18, v12, v9

    .line 489
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    aput-object v18, v13, v9

    .line 490
    add-int/lit8 v9, v9, 0x1

    .line 491
    goto :goto_3

    .line 221
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v12    # "providerIds":[Ljava/lang/String;
    .end local v13    # "providerLabels":[Ljava/lang/String;
    .end local v14    # "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "quoteStyleListener":Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "Could not get remote store"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 395
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v15    # "quoteStyleListener":Landroid/preference/Preference$OnPreferenceChangeListener;
    :cond_1
    const-string v18, "incoming_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->expungePolicy:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 435
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getMaximumPolledMessageAge()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->messageAge:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$13;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 492
    .restart local v9    # "i":I
    .restart local v12    # "providerIds":[Ljava/lang/String;
    .restart local v13    # "providerLabels":[Ljava/lang/String;
    .restart local v14    # "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->localStorageProvider:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/fsck/k9/activity/setup/AccountSettings$16;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;Ljava/util/Map;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 507
    const-string v18, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->searchScreen:Landroid/preference/PreferenceScreen;

    .line 509
    const-string v18, "remote_search_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->cloudSearchEnabled:Landroid/preference/CheckBoxPreference;

    .line 510
    const-string v18, "account_remote_search_num_results"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->remoteSearchNumResults:Landroid/preference/ListPreference;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->remoteSearchNumResults:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$17;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 521
    const-string v18, "push_poll_on_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->pushPollOnConnect:Landroid/preference/CheckBoxPreference;

    .line 522
    const-string v18, "idle_refresh_period"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    .line 523
    const-string v18, "max_push_folders"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    .line 524
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->isPushCapable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushPollOnConnect:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isPushPollOnConnect()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->cloudSearchEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->allowRemoteSearch()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getRemoteSearchNumResults()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 529
    .local v16, "searchNumResults":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->remoteSearchNumResults:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->updateRemoteSearchLimit(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getIdleRefreshMinutes()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->idleRefreshPeriod:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$18;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getMaxPushFolders()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->mMaxPushFolders:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$19;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 556
    const-string v18, "folder_push_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pushMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$20;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$20;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 575
    .end local v16    # "searchNumResults":Ljava/lang/String;
    :goto_4
    const-string v18, "account_notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotify:Landroid/preference/CheckBoxPreference;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 578
    const-string v18, "folder_notify_new_mail_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getFolderNotifyNewMailMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyNewMailMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$21;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 591
    const-string v18, "account_notify_self"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifySelf:Landroid/preference/CheckBoxPreference;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifySelf:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isNotifySelfNewMail()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 594
    const-string v18, "account_notify_contacts_mail_only"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyContactsMailOnly:Landroid/preference/CheckBoxPreference;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifyContactsMailOnly:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isNotifyContactsMailOnly()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 597
    const-string v18, "account_notify_sync"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifySync:Landroid/preference/CheckBoxPreference;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountNotifySync:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 600
    const-string v18, "account_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/RingtonePreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountRingtone:Landroid/preference/RingtonePreference;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountRingtone:Landroid/preference/RingtonePreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    .line 605
    .local v11, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/NotificationSetting;->isRingEnabled()Z

    move-result v18

    if-nez v18, :cond_5

    const/4 v6, 0x0

    .line 606
    .local v6, "currentRingtone":Ljava/lang/String;
    :goto_5
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "account_ringtone"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 608
    const-string v18, "account_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateEnabled:Landroid/preference/CheckBoxPreference;

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/NotificationSetting;->isVibrateEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 611
    const-string v18, "account_vibrate_pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/NotificationSetting;->getVibratePattern()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibratePattern:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$22;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$22;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 625
    const-string v18, "account_vibrate_times"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/NotificationSetting;->getVibrateTimes()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/NotificationSetting;->getVibrateTimes()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountVibrateTimes:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$23;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$23;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 639
    const-string v18, "account_led"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->accountLedEnabled:Landroid/preference/CheckBoxPreference;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->accountLedEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/NotificationSetting;->isLedEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 642
    const-string v18, "notification_opens_unread"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->notificationOpensUnread:Landroid/preference/CheckBoxPreference;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->notificationOpensUnread:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->goToUnreadMessageSearch()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 645
    new-instance v18, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;Lcom/fsck/k9/activity/setup/AccountSettings$1;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/activity/setup/AccountSettings$PopulateFolderPrefsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 647
    const-string v18, "chip_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->chipColor:Landroid/preference/Preference;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->chipColor:Landroid/preference/Preference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$24;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$24;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 655
    const-string v18, "led_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->ledColor:Landroid/preference/Preference;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->ledColor:Landroid/preference/Preference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$25;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 663
    const-string v18, "composition"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$26;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$26;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 671
    const-string v18, "manage_identities"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$27;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 679
    const-string v18, "incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$28;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$28;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 688
    const-string v18, "outgoing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$29;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$29;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 696
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->hasPgpCrypto:Z

    .line 697
    const-string v18, "crypto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 698
    .local v5, "cryptoMenu":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->hasPgpCrypto:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 699
    const-string v18, "crypto_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/Account;->getCryptoKey()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setValue(J)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/crypto/OpenPgpApiHelper;->buildUserId(Lcom/fsck/k9/Identity;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setDefaultUserId(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->pgpCryptoKey:Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/AccountSettings$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$30;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    invoke-virtual/range {v18 .. v19}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 713
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 729
    :goto_6
    return-void

    .line 569
    .end local v5    # "cryptoMenu":Landroid/preference/PreferenceScreen;
    .end local v6    # "currentRingtone":Ljava/lang/String;
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    const-string v18, "incoming_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 570
    .local v10, "incomingPrefs":Landroid/preference/PreferenceScreen;
    const-string v18, "push_advanced"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 571
    const-string v18, "folder_push_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->mainScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->searchScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 605
    .end local v10    # "incomingPrefs":Landroid/preference/PreferenceScreen;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/NotificationSetting;->getRingtone()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 715
    .restart local v5    # "cryptoMenu":Landroid/preference/PreferenceScreen;
    .restart local v6    # "currentRingtone":Ljava/lang/String;
    :cond_6
    const v18, 0x7f070071

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 716
    new-instance v18, Lcom/fsck/k9/activity/setup/AccountSettings$31;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSettings$31;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 910
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 935
    :goto_0
    return-object v0

    .line 912
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/activity/ColorPickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSettings$32;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$32;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    .line 918
    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/activity/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;I)V

    .line 920
    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 923
    :pswitch_1
    new-instance v0, Lcom/fsck/k9/activity/ColorPickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/fsck/k9/activity/setup/AccountSettings$33;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/AccountSettings$33;-><init>(Lcom/fsck/k9/activity/setup/AccountSettings;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    .line 929
    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/NotificationSetting;->getLedColor()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/activity/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;I)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSettings;->saveSettings()V

    .line 876
    invoke-super {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onPause()V

    .line 877
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 940
    packed-switch p1, :pswitch_data_0

    .line 952
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 942
    check-cast v0, Lcom/fsck/k9/activity/ColorPickerDialog;

    .line 943
    .local v0, "colorPicker":Lcom/fsck/k9/activity/ColorPickerDialog;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ColorPickerDialog;->setColor(I)V

    goto :goto_0

    .end local v0    # "colorPicker":Lcom/fsck/k9/activity/ColorPickerDialog;
    :pswitch_1
    move-object v0, p2

    .line 947
    check-cast v0, Lcom/fsck/k9/activity/ColorPickerDialog;

    .line 948
    .restart local v0    # "colorPicker":Lcom/fsck/k9/activity/ColorPickerDialog;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSettings;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/NotificationSetting;->getLedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ColorPickerDialog;->setColor(I)V

    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
