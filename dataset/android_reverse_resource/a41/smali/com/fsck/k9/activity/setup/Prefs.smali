.class public Lcom/fsck/k9/activity/setup/Prefs;
.super Lcom/fsck/k9/activity/K9PreferenceActivity;
.source "Prefs.java"


# static fields
.field private static final ACTIVITY_CHOOSE_FOLDER:I = 0x1

.field private static final APG_PROVIDER_PLACEHOLDER:Ljava/lang/String; = "apg-placeholder"

.field private static final DIALOG_APG_DEPRECATION_WARNING:I = 0x1

.field private static final EMPTY_CHAR_SEQUENCE_ARRAY:[Ljava/lang/CharSequence;

.field private static final PREFERENCE_ANIMATIONS:Ljava/lang/String; = "animations"

.field private static final PREFERENCE_ATTACHMENT_DEF_PATH:Ljava/lang/String; = "attachment_default_path"

.field private static final PREFERENCE_AUTOFIT_WIDTH:Ljava/lang/String; = "messageview_autofit_width"

.field private static final PREFERENCE_BACKGROUND_AS_UNREAD_INDICATOR:Ljava/lang/String; = "messagelist_background_as_unread_indicator"

.field private static final PREFERENCE_BACKGROUND_OPS:Ljava/lang/String; = "background_ops"

.field private static final PREFERENCE_COMPOSER_THEME:Ljava/lang/String; = "message_compose_theme"

.field private static final PREFERENCE_CONFIRM_ACTIONS:Ljava/lang/String; = "confirm_actions"

.field private static final PREFERENCE_COUNT_SEARCH:Ljava/lang/String; = "count_search"

.field private static final PREFERENCE_DEBUG_LOGGING:Ljava/lang/String; = "debug_logging"

.field private static final PREFERENCE_DISABLE_NOTIFICATION_DURING_QUIET_TIME:Ljava/lang/String; = "disable_notifications_during_quiet_time"

.field private static final PREFERENCE_FIXED_MESSAGE_THEME:Ljava/lang/String; = "fixed_message_view_theme"

.field private static final PREFERENCE_FOLDERLIST_WRAP_NAME:Ljava/lang/String; = "folderlist_wrap_folder_name"

.field private static final PREFERENCE_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final PREFERENCE_GESTURES:Ljava/lang/String; = "gestures"

.field private static final PREFERENCE_HIDE_SPECIAL_ACCOUNTS:Ljava/lang/String; = "hide_special_accounts"

.field private static final PREFERENCE_HIDE_TIMEZONE:Ljava/lang/String; = "privacy_hide_timezone"

.field private static final PREFERENCE_HIDE_USERAGENT:Ljava/lang/String; = "privacy_hide_useragent"

.field private static final PREFERENCE_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PREFERENCE_LOCK_SCREEN_NOTIFICATION_VISIBILITY:Ljava/lang/String; = "lock_screen_notification_visibility"

.field private static final PREFERENCE_MEASURE_ACCOUNTS:Ljava/lang/String; = "measure_accounts"

.field private static final PREFERENCE_MESSAGELIST_CHECKBOXES:Ljava/lang/String; = "messagelist_checkboxes"

.field private static final PREFERENCE_MESSAGELIST_COLORIZE_MISSING_CONTACT_PICTURES:Ljava/lang/String; = "messagelist_colorize_missing_contact_pictures"

.field private static final PREFERENCE_MESSAGELIST_CONTACT_NAME_COLOR:Ljava/lang/String; = "messagelist_contact_name_color"

.field private static final PREFERENCE_MESSAGELIST_PREVIEW_LINES:Ljava/lang/String; = "messagelist_preview_lines"

.field private static final PREFERENCE_MESSAGELIST_SENDER_ABOVE_SUBJECT:Ljava/lang/String; = "messagelist_sender_above_subject"

.field private static final PREFERENCE_MESSAGELIST_SHOW_CONTACT_NAME:Ljava/lang/String; = "messagelist_show_contact_name"

.field private static final PREFERENCE_MESSAGELIST_SHOW_CONTACT_PICTURE:Ljava/lang/String; = "messagelist_show_contact_picture"

.field private static final PREFERENCE_MESSAGELIST_SHOW_CORRESPONDENT_NAMES:Ljava/lang/String; = "messagelist_show_correspondent_names"

.field private static final PREFERENCE_MESSAGELIST_STARS:Ljava/lang/String; = "messagelist_stars"

.field private static final PREFERENCE_MESSAGEVIEW_FIXEDWIDTH:Ljava/lang/String; = "messageview_fixedwidth_font"

.field private static final PREFERENCE_MESSAGEVIEW_RETURN_TO_LIST:Ljava/lang/String; = "messageview_return_to_list"

.field private static final PREFERENCE_MESSAGEVIEW_SHOW_NEXT:Ljava/lang/String; = "messageview_show_next"

.field private static final PREFERENCE_MESSAGEVIEW_VISIBLE_REFILE_ACTIONS:Ljava/lang/String; = "messageview_visible_refile_actions"

.field private static final PREFERENCE_MESSAGE_VIEW_THEME:Ljava/lang/String; = "messageViewTheme"

.field private static final PREFERENCE_NOTIFICATION_HIDE_SUBJECT:Ljava/lang/String; = "notification_hide_subject"

.field private static final PREFERENCE_NOTIF_QUICK_DELETE:Ljava/lang/String; = "notification_quick_delete"

.field private static final PREFERENCE_OPENPGP_PROVIDER:Ljava/lang/String; = "openpgp_provider"

.field private static final PREFERENCE_OPENPGP_SUPPORT_SIGN_ONLY:Ljava/lang/String; = "openpgp_support_sign_only"

.field private static final PREFERENCE_QUIET_TIME_ENABLED:Ljava/lang/String; = "quiet_time_enabled"

.field private static final PREFERENCE_QUIET_TIME_ENDS:Ljava/lang/String; = "quiet_time_ends"

.field private static final PREFERENCE_QUIET_TIME_STARTS:Ljava/lang/String; = "quiet_time_starts"

.field private static final PREFERENCE_SENSITIVE_LOGGING:Ljava/lang/String; = "sensitive_logging"

.field private static final PREFERENCE_SPLITVIEW_MODE:Ljava/lang/String; = "splitview_mode"

.field private static final PREFERENCE_START_INTEGRATED_INBOX:Ljava/lang/String; = "start_integrated_inbox"

.field private static final PREFERENCE_THEME:Ljava/lang/String; = "theme"

.field private static final PREFERENCE_THREADED_VIEW:Ljava/lang/String; = "threaded_view"

.field private static final PREFERENCE_VOLUME_NAVIGATION:Ljava/lang/String; = "volume_navigation"

.field private static final VISIBLE_REFILE_ACTIONS_ARCHIVE:I = 0x1

.field private static final VISIBLE_REFILE_ACTIONS_COPY:I = 0x3

.field private static final VISIBLE_REFILE_ACTIONS_DELETE:I = 0x0

.field private static final VISIBLE_REFILE_ACTIONS_MOVE:I = 0x2

.field private static final VISIBLE_REFILE_ACTIONS_SPAM:I = 0x4


# instance fields
.field private mAnimations:Landroid/preference/CheckBoxPreference;

.field private mAttachmentPathPreference:Landroid/preference/Preference;

.field private mAutofitWidth:Landroid/preference/CheckBoxPreference;

.field private mBackgroundAsUnreadIndicator:Landroid/preference/CheckBoxPreference;

.field private mBackgroundOps:Landroid/preference/ListPreference;

.field private mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

.field private mCheckboxes:Landroid/preference/CheckBoxPreference;

.field private mColorizeMissingContactPictures:Landroid/preference/CheckBoxPreference;

.field private mComposerTheme:Landroid/preference/ListPreference;

.field private mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

.field private mCountSearch:Landroid/preference/CheckBoxPreference;

.field private mDebugLogging:Landroid/preference/CheckBoxPreference;

.field private mDisableNotificationDuringQuietTime:Landroid/preference/CheckBoxPreference;

.field private mFixedMessageTheme:Landroid/preference/CheckBoxPreference;

.field private mFixedWidth:Landroid/preference/CheckBoxPreference;

.field private mGestures:Landroid/preference/CheckBoxPreference;

.field private mHideSpecialAccounts:Landroid/preference/CheckBoxPreference;

.field private mHideTimeZone:Landroid/preference/CheckBoxPreference;

.field private mHideUserAgent:Landroid/preference/CheckBoxPreference;

.field private mLanguage:Landroid/preference/ListPreference;

.field private mLockScreenNotificationVisibility:Landroid/preference/ListPreference;

.field private mMeasureAccounts:Landroid/preference/CheckBoxPreference;

.field private mMessageTheme:Landroid/preference/ListPreference;

.field private mNotificationHideSubject:Landroid/preference/ListPreference;

.field private mNotificationQuickDelete:Landroid/preference/ListPreference;

.field private mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

.field private mOpenPgpSupportSignOnly:Landroid/preference/CheckBoxPreference;

.field private mPreviewLines:Landroid/preference/ListPreference;

.field private mQuietTimeEnabled:Landroid/preference/CheckBoxPreference;

.field private mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

.field private mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

.field private mReturnToList:Landroid/preference/CheckBoxPreference;

.field private mSenderAboveSubject:Landroid/preference/CheckBoxPreference;

.field private mSensitiveLogging:Landroid/preference/CheckBoxPreference;

.field private mShowContactName:Landroid/preference/CheckBoxPreference;

.field private mShowContactPicture:Landroid/preference/CheckBoxPreference;

.field private mShowCorrespondentNames:Landroid/preference/CheckBoxPreference;

.field private mShowNext:Landroid/preference/CheckBoxPreference;

.field private mSplitViewMode:Landroid/preference/ListPreference;

.field private mStars:Landroid/preference/CheckBoxPreference;

.field private mStartIntegratedInbox:Landroid/preference/CheckBoxPreference;

.field private mTheme:Landroid/preference/ListPreference;

.field private mThreadedView:Landroid/preference/CheckBoxPreference;

.field private mVisibleRefileActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

.field private mVolumeNavigation:Lcom/fsck/k9/preferences/CheckBoxListPreference;

.field private mWrapFolderNames:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/fsck/k9/activity/setup/Prefs;->EMPTY_CHAR_SEQUENCE_ARRAY:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/Prefs;->onFontSizeSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/Prefs;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/Prefs;->onChooseContactNameColor()V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/Prefs;)Lcom/fsck/k9/preferences/TimePickerPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/setup/Prefs;)Lcom/fsck/k9/preferences/TimePickerPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/setup/Prefs;)Lorg/openintents/openpgp/util/OpenPgpAppPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/setup/Prefs;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/Prefs;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAttachmentPathPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method public static actionPrefs(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/Prefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method

.method private onChooseContactNameColor()V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Lcom/fsck/k9/activity/ColorPickerDialog;

    new-instance v1, Lcom/fsck/k9/activity/setup/Prefs$7;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/Prefs$7;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    .line 592
    invoke-static {}, Lcom/fsck/k9/K9;->getContactNameColor()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/activity/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {v0}, Lcom/fsck/k9/activity/ColorPickerDialog;->show()V

    .line 593
    return-void
.end method

.method private onFontSizeSettings()V
    .locals 0

    .prologue
    .line 583
    invoke-static {p0}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->actionEditSettings(Landroid/content/Context;)V

    .line 584
    return-void
.end method

.method private saveSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 484
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v5

    .line 486
    .local v5, "storage":Lcom/fsck/k9/preferences/Storage;
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setK9Language(Ljava/lang/String;)V

    .line 488
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/Prefs;->themeNameToId(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setK9Theme(Lcom/fsck/k9/K9$Theme;)V

    .line 489
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mFixedMessageTheme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setUseFixedMessageViewTheme(Z)V

    .line 490
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mMessageTheme:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/Prefs;->themeNameToId(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setK9MessageViewThemeSetting(Lcom/fsck/k9/K9$Theme;)V

    .line 491
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mComposerTheme:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/activity/setup/Prefs;->themeNameToId(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setK9ComposerThemeSetting(Lcom/fsck/k9/K9$Theme;)V

    .line 493
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAnimations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setAnimations(Z)V

    .line 494
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mGestures:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setGesturesEnabled(Z)V

    .line 495
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mVolumeNavigation:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    aget-boolean v6, v6, v8

    invoke-static {v6}, Lcom/fsck/k9/K9;->setUseVolumeKeysForNavigation(Z)V

    .line 496
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mVolumeNavigation:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    aget-boolean v6, v6, v7

    invoke-static {v6}, Lcom/fsck/k9/K9;->setUseVolumeKeysForListNavigation(Z)V

    .line 497
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mHideSpecialAccounts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mStartIntegratedInbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/fsck/k9/K9;->setStartIntegratedInbox(Z)V

    .line 498
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationHideSubject:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9$NotificationHideSubject;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$NotificationHideSubject;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setNotificationHideSubject(Lcom/fsck/k9/K9$NotificationHideSubject;)V

    .line 500
    const/4 v2, 0x0

    .line 501
    .local v2, "index":I
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aget-boolean v6, v6, v2

    invoke-static {v6}, Lcom/fsck/k9/K9;->setConfirmDelete(Z)V

    .line 502
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-boolean v6, v6, v3

    invoke-static {v6}, Lcom/fsck/k9/K9;->setConfirmDeleteStarred(Z)V

    .line 503
    invoke-static {}, Lcom/fsck/k9/notification/NotificationController;->platformSupportsExtendedNotifications()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 504
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-boolean v6, v6, v2

    invoke-static {v6}, Lcom/fsck/k9/K9;->setConfirmDeleteFromNotification(Z)V

    move v2, v3

    .line 506
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-boolean v6, v6, v2

    invoke-static {v6}, Lcom/fsck/k9/K9;->setConfirmSpam(Z)V

    .line 507
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-boolean v6, v6, v3

    invoke-static {v6}, Lcom/fsck/k9/K9;->setConfirmDiscardMessage(Z)V

    .line 508
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-boolean v6, v6, v2

    invoke-static {v6}, Lcom/fsck/k9/K9;->setConfirmMarkAllRead(Z)V

    .line 510
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mMeasureAccounts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMeasureAccounts(Z)V

    .line 511
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mCountSearch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setCountSearchMessages(Z)V

    .line 512
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mHideSpecialAccounts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setHideSpecialAccounts(Z)V

    .line 513
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mPreviewLines:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageListPreviewLines(I)V

    .line 514
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mCheckboxes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageListCheckboxes(Z)V

    .line 515
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mStars:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageListStars(Z)V

    .line 516
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mShowCorrespondentNames:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setShowCorrespondentNames(Z)V

    .line 517
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mSenderAboveSubject:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageListSenderAboveSubject(Z)V

    .line 518
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mShowContactName:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setShowContactName(Z)V

    .line 519
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mShowContactPicture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setShowContactPicture(Z)V

    .line 520
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mColorizeMissingContactPictures:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setColorizeMissingContactPictures(Z)V

    .line 521
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundAsUnreadIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setUseBackgroundAsUnreadIndicator(Z)V

    .line 522
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mThreadedView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setThreadedViewEnabled(Z)V

    .line 523
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setChangeContactNameColor(Z)V

    .line 524
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mFixedWidth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewFixedWidthFont(Z)V

    .line 525
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mReturnToList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewReturnToList(Z)V

    .line 526
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mShowNext:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewShowNext(Z)V

    .line 527
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAutofitWidth:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setAutofitWidth(Z)V

    .line 528
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setQuietTimeEnabled(Z)V

    .line 530
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mVisibleRefileActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->getCheckedItems()[Z

    move-result-object v1

    .line 531
    .local v1, "enabledRefileActions":[Z
    aget-boolean v6, v1, v8

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewDeleteActionVisible(Z)V

    .line 532
    aget-boolean v6, v1, v7

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewArchiveActionVisible(Z)V

    .line 533
    const/4 v6, 0x2

    aget-boolean v6, v1, v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewMoveActionVisible(Z)V

    .line 534
    const/4 v6, 0x3

    aget-boolean v6, v1, v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewCopyActionVisible(Z)V

    .line 535
    const/4 v6, 0x4

    aget-boolean v6, v1, v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setMessageViewSpamActionVisible(Z)V

    .line 537
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDisableNotificationDuringQuietTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    move v8, v7

    :cond_1
    invoke-static {v8}, Lcom/fsck/k9/K9;->setNotificationDuringQuietTimeEnabled(Z)V

    .line 538
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/TimePickerPreference;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setQuietTimeStarts(Ljava/lang/String;)V

    .line 539
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/TimePickerPreference;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setQuietTimeEnds(Ljava/lang/String;)V

    .line 540
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mWrapFolderNames:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setWrapFolderNames(Z)V

    .line 542
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationQuickDelete:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    .line 543
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationQuickDelete:Landroid/preference/ListPreference;

    .line 544
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9$NotificationQuickDelete;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$NotificationQuickDelete;

    move-result-object v6

    .line 543
    invoke-static {v6}, Lcom/fsck/k9/K9;->setNotificationQuickDeleteBehaviour(Lcom/fsck/k9/K9$NotificationQuickDelete;)V

    .line 547
    :cond_2
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mLockScreenNotificationVisibility:Landroid/preference/ListPreference;

    if-eqz v6, :cond_3

    .line 548
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mLockScreenNotificationVisibility:Landroid/preference/ListPreference;

    .line 549
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    move-result-object v6

    .line 548
    invoke-static {v6}, Lcom/fsck/k9/K9;->setLockScreenNotificationVisibility(Lcom/fsck/k9/K9$LockScreenNotificationVisibility;)V

    .line 552
    :cond_3
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mSplitViewMode:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9$SplitViewMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$SplitViewMode;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setSplitViewMode(Lcom/fsck/k9/K9$SplitViewMode;)V

    .line 553
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAttachmentPathPreference:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setAttachmentDefaultPath(Ljava/lang/String;)V

    .line 554
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setBackgroundOps(Ljava/lang/String;)Z

    move-result v4

    .line 556
    .local v4, "needsRefresh":Z
    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 557
    const v6, 0x7f070197

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 559
    :cond_4
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setDebug(Z)V

    .line 560
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mSensitiveLogging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    sput-boolean v6, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    .line 561
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mHideUserAgent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setHideUserAgent(Z)V

    .line 562
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mHideTimeZone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setHideTimeZone(Z)V

    .line 564
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    invoke-virtual {v6}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 565
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpSupportSignOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Lcom/fsck/k9/K9;->setOpenPgpSupportSignOnly(Z)V

    .line 567
    invoke-virtual {v5}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 568
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-static {v0}, Lcom/fsck/k9/K9;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 569
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 571
    if-eqz v4, :cond_5

    .line 572
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 574
    :cond_5
    return-void

    .end local v0    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    .end local v1    # "enabledRefileActions":[Z
    .end local v3    # "index":I
    .end local v4    # "needsRefresh":Z
    :cond_6
    move v6, v8

    .line 497
    goto/16 :goto_0
.end method

.method private static themeIdToName(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;
    .locals 2
    .param p0, "theme"    # Lcom/fsck/k9/K9$Theme;

    .prologue
    .line 466
    sget-object v0, Lcom/fsck/k9/activity/setup/Prefs$9;->$SwitchMap$com$fsck$k9$K9$Theme:[I

    invoke-virtual {p0}, Lcom/fsck/k9/K9$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 469
    const-string v0, "light"

    :goto_0
    return-object v0

    .line 467
    :pswitch_0
    const-string v0, "dark"

    goto :goto_0

    .line 468
    :pswitch_1
    const-string v0, "global"

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static themeNameToId(Ljava/lang/String;)Lcom/fsck/k9/K9$Theme;
    .locals 1
    .param p0, "theme"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string v0, "dark"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    .line 479
    :goto_0
    return-object v0

    .line 476
    :cond_0
    const-string v0, "global"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    sget-object v0, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    goto :goto_0

    .line 479
    :cond_1
    sget-object v0, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 616
    packed-switch p1, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 633
    return-void

    .line 618
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 620
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 621
    .local v1, "fileUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 624
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/Prefs;->mAttachmentPathPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/K9;->setAttachmentDefaultPath(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const v18, 0x7f050006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->addPreferencesFromResource(I)V

    .line 185
    const-string v18, "language"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mLanguage:Landroid/preference/ListPreference;

    .line 186
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mLanguage:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .local v9, "entryVector":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mLanguage:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v8, "entryValueVector":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/Prefs;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090043

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "supportedLanguages":[Ljava/lang/String;
    new-instance v14, Ljava/util/HashSet;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v14, "supportedLanguageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    .local v10, "i":I
    :goto_0
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_1

    .line 191
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 192
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mLanguage:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getK9Language()Ljava/lang/String;

    move-result-object v21

    sget-object v18, Lcom/fsck/k9/activity/setup/Prefs;->EMPTY_CHAR_SEQUENCE_ARRAY:[Ljava/lang/CharSequence;

    .line 197
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/CharSequence;

    sget-object v19, Lcom/fsck/k9/activity/setup/Prefs;->EMPTY_CHAR_SEQUENCE_ARRAY:[Ljava/lang/CharSequence;

    .line 198
    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/Prefs;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 200
    const-string v18, "theme"

    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()Lcom/fsck/k9/K9$Theme;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/activity/setup/Prefs;->themeIdToName(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mTheme:Landroid/preference/ListPreference;

    .line 201
    const-string v18, "fixed_message_view_theme"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mFixedMessageTheme:Landroid/preference/CheckBoxPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mFixedMessageTheme:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->useFixedMessageViewTheme()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v18, "messageViewTheme"

    .line 204
    invoke-static {}, Lcom/fsck/k9/K9;->getK9MessageViewThemeSetting()Lcom/fsck/k9/K9$Theme;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/activity/setup/Prefs;->themeIdToName(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v19

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mMessageTheme:Landroid/preference/ListPreference;

    .line 205
    const-string v18, "message_compose_theme"

    .line 206
    invoke-static {}, Lcom/fsck/k9/K9;->getK9ComposerThemeSetting()Lcom/fsck/k9/K9$Theme;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/fsck/k9/activity/setup/Prefs;->themeIdToName(Lcom/fsck/k9/K9$Theme;)Ljava/lang/String;

    move-result-object v19

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mComposerTheme:Landroid/preference/ListPreference;

    .line 208
    const-string v18, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    new-instance v19, Lcom/fsck/k9/activity/setup/Prefs$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs$1;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 216
    const-string v18, "animations"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mAnimations:Landroid/preference/CheckBoxPreference;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mAnimations:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->showAnimations()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    const-string v18, "gestures"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mGestures:Landroid/preference/CheckBoxPreference;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mGestures:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->gesturesEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    const-string v18, "volume_navigation"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mVolumeNavigation:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mVolumeNavigation:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x7f0703bb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const v21, 0x7f0703ba

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->setItems([Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mVolumeNavigation:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Z

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForNavigationEnabled()Z

    move-result v21

    aput-boolean v21, v19, v20

    const/16 v20, 0x1

    invoke-static {}, Lcom/fsck/k9/K9;->useVolumeKeysForListNavigationEnabled()Z

    move-result v21

    aput-boolean v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->setCheckedItems([Z)V

    .line 226
    const-string v18, "start_integrated_inbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mStartIntegratedInbox:Landroid/preference/CheckBoxPreference;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mStartIntegratedInbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->startIntegratedInbox()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 229
    const-string v18, "confirm_actions"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    .line 231
    invoke-static {}, Lcom/fsck/k9/notification/NotificationController;->platformSupportsExtendedNotifications()Z

    move-result v5

    .line 232
    .local v5, "canDeleteFromNotification":Z
    if-eqz v5, :cond_6

    const/16 v18, 0x6

    :goto_1
    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 233
    .local v6, "confirmActionEntries":[Ljava/lang/CharSequence;
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [Z

    .line 234
    .local v7, "confirmActionValues":[Z
    const/4 v11, 0x0

    .line 236
    .local v11, "index":I
    const v18, 0x7f070226

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v11

    .line 237
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .local v12, "index":I
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDelete()Z

    move-result v18

    aput-boolean v18, v7, v11

    .line 238
    const v18, 0x7f070228

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v12

    .line 239
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteStarred()Z

    move-result v18

    aput-boolean v18, v7, v12

    .line 240
    if-eqz v5, :cond_2

    .line 241
    const v18, 0x7f070227

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v11

    .line 242
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteFromNotification()Z

    move-result v18

    aput-boolean v18, v7, v11

    move v11, v12

    .line 244
    .end local v12    # "index":I
    .restart local v11    # "index":I
    :cond_2
    const v18, 0x7f070229

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v11

    .line 245
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    invoke-static {}, Lcom/fsck/k9/K9;->confirmSpam()Z

    move-result v18

    aput-boolean v18, v7, v11

    .line 246
    const v18, 0x7f07022c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v12

    .line 247
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDiscardMessage()Z

    move-result v18

    aput-boolean v18, v7, v12

    .line 248
    const v18, 0x7f07022d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v11

    .line 249
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    invoke-static {}, Lcom/fsck/k9/K9;->confirmMarkAllRead()Z

    move-result v18

    aput-boolean v18, v7, v11

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->setItems([Ljava/lang/CharSequence;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mConfirmActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->setCheckedItems([Z)V

    .line 254
    const-string v18, "notification_hide_subject"

    .line 255
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationHideSubject()Lcom/fsck/k9/K9$NotificationHideSubject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/K9$NotificationHideSubject;->toString()Ljava/lang/String;

    move-result-object v19

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationHideSubject:Landroid/preference/ListPreference;

    .line 257
    const-string v18, "measure_accounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mMeasureAccounts:Landroid/preference/CheckBoxPreference;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mMeasureAccounts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->measureAccounts()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    const-string v18, "count_search"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mCountSearch:Landroid/preference/CheckBoxPreference;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mCountSearch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->countSearchMessages()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    const-string v18, "hide_special_accounts"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mHideSpecialAccounts:Landroid/preference/CheckBoxPreference;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mHideSpecialAccounts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->isHideSpecialAccounts()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    const-string v18, "messagelist_preview_lines"

    .line 268
    invoke-static {}, Lcom/fsck/k9/K9;->messageListPreviewLines()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mPreviewLines:Landroid/preference/ListPreference;

    .line 270
    const-string v18, "messagelist_sender_above_subject"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mSenderAboveSubject:Landroid/preference/CheckBoxPreference;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mSenderAboveSubject:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->messageListSenderAboveSubject()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    const-string v18, "messagelist_checkboxes"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mCheckboxes:Landroid/preference/CheckBoxPreference;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mCheckboxes:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->messageListCheckboxes()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 275
    const-string v18, "messagelist_stars"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mStars:Landroid/preference/CheckBoxPreference;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mStars:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->messageListStars()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    const-string v18, "messagelist_show_correspondent_names"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mShowCorrespondentNames:Landroid/preference/CheckBoxPreference;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mShowCorrespondentNames:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->showCorrespondentNames()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 281
    const-string v18, "messagelist_show_contact_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mShowContactName:Landroid/preference/CheckBoxPreference;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mShowContactName:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->showContactName()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    const-string v18, "messagelist_show_contact_picture"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mShowContactPicture:Landroid/preference/CheckBoxPreference;

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mShowContactPicture:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->showContactPicture()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    const-string v18, "messagelist_colorize_missing_contact_pictures"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mColorizeMissingContactPictures:Landroid/preference/CheckBoxPreference;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mColorizeMissingContactPictures:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->isColorizeMissingContactPictures()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    const-string v18, "messagelist_background_as_unread_indicator"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundAsUnreadIndicator:Landroid/preference/CheckBoxPreference;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundAsUnreadIndicator:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->useBackgroundAsUnreadIndicator()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    const-string v18, "messagelist_contact_name_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->changeContactNameColor()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    const-string v18, "threaded_view"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mThreadedView:Landroid/preference/CheckBoxPreference;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mThreadedView:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->isThreadedViewEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    invoke-static {}, Lcom/fsck/k9/K9;->changeContactNameColor()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f070250

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 305
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/Prefs$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs$2;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    const-string v18, "messageview_fixedwidth_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mFixedWidth:Landroid/preference/CheckBoxPreference;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mFixedWidth:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->messageViewFixedWidthFont()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 322
    const-string v18, "messageview_return_to_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mReturnToList:Landroid/preference/CheckBoxPreference;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mReturnToList:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->messageViewReturnToList()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    const-string v18, "messageview_show_next"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mShowNext:Landroid/preference/CheckBoxPreference;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mShowNext:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->messageViewShowNext()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 328
    const-string v18, "messageview_autofit_width"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mAutofitWidth:Landroid/preference/CheckBoxPreference;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mAutofitWidth:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->autofitWidth()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    const-string v18, "quiet_time_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnabled:Landroid/preference/CheckBoxPreference;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getQuietTimeEnabled()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 334
    const-string v18, "disable_notifications_during_quiet_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mDisableNotificationDuringQuietTime:Landroid/preference/CheckBoxPreference;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mDisableNotificationDuringQuietTime:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/fsck/k9/K9;->isNotificationDuringQuietTimeEnabled()Z

    move-result v18

    if-nez v18, :cond_8

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 337
    const-string v18, "quiet_time_starts"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getQuietTimeStarts()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/TimePickerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getQuietTimeStarts()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeStarts:Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/Prefs$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs$3;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/TimePickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    const-string v18, "quiet_time_ends"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getQuietTimeEnds()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getQuietTimeEnds()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/TimePickerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mQuietTimeEnds:Lcom/fsck/k9/preferences/TimePickerPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/Prefs$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs$4;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual/range {v18 .. v19}, Lcom/fsck/k9/preferences/TimePickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    const-string v18, "notification_quick_delete"

    .line 360
    invoke-static {}, Lcom/fsck/k9/K9;->getNotificationQuickDeleteBehaviour()Lcom/fsck/k9/K9$NotificationQuickDelete;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/K9$NotificationQuickDelete;->toString()Ljava/lang/String;

    move-result-object v19

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationQuickDelete:Landroid/preference/ListPreference;

    .line 361
    invoke-static {}, Lcom/fsck/k9/notification/NotificationController;->platformSupportsExtendedNotifications()Z

    move-result v18

    if-nez v18, :cond_3

    .line 362
    const-string v18, "notification_preferences"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 363
    .local v13, "prefs":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationQuickDelete:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mNotificationQuickDelete:Landroid/preference/ListPreference;

    .line 367
    .end local v13    # "prefs":Landroid/preference/PreferenceScreen;
    :cond_3
    const-string v18, "lock_screen_notification_visibility"

    .line 368
    invoke-static {}, Lcom/fsck/k9/K9;->getLockScreenNotificationVisibility()Lcom/fsck/k9/K9$LockScreenNotificationVisibility;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/K9$LockScreenNotificationVisibility;->toString()Ljava/lang/String;

    move-result-object v19

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mLockScreenNotificationVisibility:Landroid/preference/ListPreference;

    .line 369
    invoke-static {}, Lcom/fsck/k9/notification/NotificationController;->platformSupportsLockScreenNotifications()Z

    move-result v18

    if-nez v18, :cond_4

    .line 370
    const-string v18, "notification_preferences"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mLockScreenNotificationVisibility:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    .line 371
    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mLockScreenNotificationVisibility:Landroid/preference/ListPreference;

    .line 375
    :cond_4
    const-string v18, "background_ops"

    invoke-static {}, Lcom/fsck/k9/K9;->getBackgroundOps()Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/setup/Prefs;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mBackgroundOps:Landroid/preference/ListPreference;

    .line 377
    const-string v18, "debug_logging"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    .line 378
    const-string v18, "sensitive_logging"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mSensitiveLogging:Landroid/preference/CheckBoxPreference;

    .line 379
    const-string v18, "privacy_hide_useragent"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mHideUserAgent:Landroid/preference/CheckBoxPreference;

    .line 380
    const-string v18, "privacy_hide_timezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mHideTimeZone:Landroid/preference/CheckBoxPreference;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mDebugLogging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->isDebug()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mSensitiveLogging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    sget-boolean v19, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mHideUserAgent:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->hideUserAgent()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mHideTimeZone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->hideTimeZone()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 387
    const-string v18, "openpgp_provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setValue(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/setup/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->isApgInstalled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-object/from16 v18, v0

    const-string v19, "apg-placeholder"

    const v20, 0x7f070139

    .line 391
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f020066

    .line 390
    invoke-virtual/range {v18 .. v21}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->addLegacyProvider(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpProvider:Lorg/openintents/openpgp/util/OpenPgpAppPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/Prefs$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs$5;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual/range {v18 .. v19}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    const-string v18, "openpgp_support_sign_only"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpSupportSignOnly:Landroid/preference/CheckBoxPreference;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mOpenPgpSupportSignOnly:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpSupportSignOnly()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 409
    const-string v18, "attachment_default_path"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mAttachmentPathPreference:Landroid/preference/Preference;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mAttachmentPathPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getAttachmentDefaultPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mAttachmentPathPreference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/fsck/k9/activity/setup/Prefs$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs$6;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    .line 412
    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 439
    const-string v18, "folderlist_wrap_folder_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mWrapFolderNames:Landroid/preference/CheckBoxPreference;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mWrapFolderNames:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->wrapFolderNames()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 442
    const-string v18, "messageview_visible_refile_actions"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mVisibleRefileActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    .line 443
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 444
    .local v16, "visibleRefileActionsEntries":[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    const v19, 0x7f07019c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    .line 445
    const/16 v18, 0x1

    const v19, 0x7f070149

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    .line 446
    const/16 v18, 0x2

    const v19, 0x7f0702cf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    .line 447
    const/16 v18, 0x3

    const v19, 0x7f07016e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    .line 448
    const/16 v18, 0x4

    const v19, 0x7f070384

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    .line 450
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .line 451
    .local v17, "visibleRefileActionsValues":[Z
    const/16 v18, 0x0

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewDeleteActionVisible()Z

    move-result v19

    aput-boolean v19, v17, v18

    .line 452
    const/16 v18, 0x1

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewArchiveActionVisible()Z

    move-result v19

    aput-boolean v19, v17, v18

    .line 453
    const/16 v18, 0x2

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewMoveActionVisible()Z

    move-result v19

    aput-boolean v19, v17, v18

    .line 454
    const/16 v18, 0x3

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewCopyActionVisible()Z

    move-result v19

    aput-boolean v19, v17, v18

    .line 455
    const/16 v18, 0x4

    invoke-static {}, Lcom/fsck/k9/K9;->isMessageViewSpamActionVisible()Z

    move-result v19

    aput-boolean v19, v17, v18

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mVisibleRefileActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->setItems([Ljava/lang/CharSequence;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mVisibleRefileActions:Lcom/fsck/k9/preferences/CheckBoxListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/CheckBoxListPreference;->setCheckedItems([Z)V

    .line 460
    const-string v18, "splitview_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/setup/Prefs;->mSplitViewMode:Landroid/preference/ListPreference;

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mSplitViewMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/fsck/k9/K9;->getSplitViewMode()Lcom/fsck/k9/K9$SplitViewMode;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/K9$SplitViewMode;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mSplitViewMode:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    .line 462
    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mSplitViewMode:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v21

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/activity/setup/Prefs;->initListPreference(Landroid/preference/ListPreference;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 463
    return-void

    .line 232
    .end local v6    # "confirmActionEntries":[Ljava/lang/CharSequence;
    .end local v7    # "confirmActionValues":[Z
    .end local v12    # "index":I
    .end local v16    # "visibleRefileActionsEntries":[Ljava/lang/CharSequence;
    .end local v17    # "visibleRefileActionsValues":[Z
    :cond_6
    const/16 v18, 0x5

    goto/16 :goto_1

    .line 303
    .restart local v6    # "confirmActionEntries":[Ljava/lang/CharSequence;
    .restart local v7    # "confirmActionValues":[Z
    .restart local v12    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/Prefs;->mChangeContactNameColor:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f070251

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 336
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 611
    :goto_0
    return-object v0

    .line 600
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/dialog/ApgDeprecationWarningDialog;-><init>(Landroid/content/Context;)V

    .line 601
    .restart local v0    # "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/fsck/k9/activity/setup/Prefs$8;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/setup/Prefs$8;-><init>(Lcom/fsck/k9/activity/setup/Prefs;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/Prefs;->saveSettings()V

    .line 579
    invoke-super {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onPause()V

    .line 580
    return-void
.end method
