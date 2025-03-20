.class public Lcom/fsck/k9/activity/setup/FolderSettings;
.super Lcom/fsck/k9/activity/K9PreferenceActivity;
.source "FolderSettings.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.account"

.field private static final EXTRA_FOLDER_NAME:Ljava/lang/String; = "com.fsck.k9.folderName"

.field private static final PREFERENCE_DISPLAY_CLASS:Ljava/lang/String; = "folder_settings_folder_display_mode"

.field private static final PREFERENCE_INTEGRATE:Ljava/lang/String; = "folder_settings_include_in_integrated_inbox"

.field private static final PREFERENCE_IN_TOP_GROUP:Ljava/lang/String; = "folder_settings_in_top_group"

.field private static final PREFERENCE_NOTIFY_CLASS:Ljava/lang/String; = "folder_settings_folder_notify_mode"

.field private static final PREFERENCE_PUSH_CLASS:Ljava/lang/String; = "folder_settings_folder_push_mode"

.field private static final PREFERENCE_SYNC_CLASS:Ljava/lang/String; = "folder_settings_folder_sync_mode"

.field private static final PREFERENCE_TOP_CATERGORY:Ljava/lang/String; = "folder_settings"


# instance fields
.field private mDisplayClass:Landroid/preference/ListPreference;

.field private mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

.field private mInTopGroup:Landroid/preference/CheckBoxPreference;

.field private mIntegrate:Landroid/preference/CheckBoxPreference;

.field private mNotifyClass:Landroid/preference/ListPreference;

.field private mPushClass:Landroid/preference/ListPreference;

.field private mSyncClass:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/FolderSettings;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/FolderSettings;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/FolderSettings;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/setup/FolderSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/FolderSettings;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    return-object v0
.end method

.method public static actionSettings(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/FolderSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.folderName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "com.fsck.k9.account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method private saveSettings()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mInTopGroup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->setInTopGroup(Z)V

    .line 145
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mIntegrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->setIntegrate(Z)V

    .line 147
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v3

    .line 148
    .local v3, "oldPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v2

    .line 149
    .local v2, "oldDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->setDisplayClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    .line 150
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->setSyncClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    .line 151
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->setPushClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    .line 152
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;->setNotifyClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V

    .line 154
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->save()V

    .line 156
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v1

    .line 157
    .local v1, "newPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    .line 159
    .local v0, "newDisplayClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    if-ne v3, v1, :cond_0

    sget-object v4, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v1, v4, :cond_1

    if-eq v2, v0, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getApplication()Landroid/app/Application;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/fsck/k9/service/MailService;->actionRestartPushers(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 163
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.fsck.k9.folderName"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, "folderName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.fsck.k9.account"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v7

    .line 61
    .local v7, "mAccount":Lcom/fsck/k9/Account;
    :try_start_0
    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v6

    .line 62
    .local v6, "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    invoke-virtual {v6, v4}, Lcom/fsck/k9/mailstore/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v10

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 63
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->open(I)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v5, 0x0

    .line 71
    .local v5, "isPushCapable":Z
    :try_start_1
    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v9

    .line 72
    .local v9, "store":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 77
    .end local v9    # "store":Lcom/fsck/k9/mail/Store;
    :goto_0
    const v10, 0x7f050004

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->addPreferencesFromResource(I)V

    .line 79
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v7, v10}, Lcom/fsck/k9/activity/FolderInfoHolder;->getDisplayName(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "displayName":Ljava/lang/String;
    const-string v10, "folder_settings"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 81
    .local v1, "category":Landroid/preference/Preference;
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    const-string v10, "folder_settings_in_top_group"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mInTopGroup:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mInTopGroup:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalFolder;->isInTopGroup()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    const-string v10, "folder_settings_include_in_integrated_inbox"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mIntegrate:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mIntegrate:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalFolder;->isIntegrate()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    const-string v10, "folder_settings_folder_display_mode"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    .line 90
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mDisplayClass:Landroid/preference/ListPreference;

    new-instance v11, Lcom/fsck/k9/activity/setup/FolderSettings$1;

    invoke-direct {v11, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$1;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    const-string v10, "folder_settings_folder_sync_mode"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    .line 103
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getRawSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 104
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mSyncClass:Landroid/preference/ListPreference;

    new-instance v11, Lcom/fsck/k9/activity/setup/FolderSettings$2;

    invoke-direct {v11, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$2;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const-string v10, "folder_settings_folder_push_mode"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    .line 116
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    invoke-virtual {v10, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 117
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getRawPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 118
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mPushClass:Landroid/preference/ListPreference;

    new-instance v11, Lcom/fsck/k9/activity/setup/FolderSettings$3;

    invoke-direct {v11, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$3;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    const-string v10, "folder_settings_folder_notify_mode"

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/FolderSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    .line 130
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getRawNotifyClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v10, p0, Lcom/fsck/k9/activity/setup/FolderSettings;->mNotifyClass:Landroid/preference/ListPreference;

    new-instance v11, Lcom/fsck/k9/activity/setup/FolderSettings$4;

    invoke-direct {v11, p0}, Lcom/fsck/k9/activity/setup/FolderSettings$4;-><init>(Lcom/fsck/k9/activity/setup/FolderSettings;)V

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    .end local v1    # "category":Landroid/preference/Preference;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "isPushCapable":Z
    .end local v6    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v8

    .line 65
    .local v8, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v10, "Unable to edit folder %s preferences"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v12

    invoke-static {v8, v10, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 73
    .end local v8    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v5    # "isPushCapable":Z
    .restart local v6    # "localStore":Lcom/fsck/k9/mailstore/LocalStore;
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "Could not get remote store"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/FolderSettings;->saveSettings()V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    invoke-super {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onPause()V

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v1, "Saving folder settings failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
