.class public Lcom/fsck/k9/activity/UnreadWidgetConfiguration;
.super Lcom/fsck/k9/activity/K9PreferenceActivity;
.source "UnreadWidgetConfiguration.java"


# static fields
.field private static final PREFERENCE_UNREAD_ACCOUNT:Ljava/lang/String; = "unread_account"

.field private static final PREFERENCE_UNREAD_FOLDER:Ljava/lang/String; = "unread_folder"

.field private static final PREFERENCE_UNREAD_FOLDER_ENABLED:Ljava/lang/String; = "unread_folder_enabled"

.field private static final PREFS_NAME:Ljava/lang/String; = "unread_widget_configuration.xml"

.field private static final PREF_FOLDER_NAME_SUFFIX_KEY:Ljava/lang/String; = ".folder_name"

.field private static final PREF_PREFIX_KEY:Ljava/lang/String; = "unread_widget."

.field private static final REQUEST_CHOOSE_ACCOUNT:I = 0x1

.field private static final REQUEST_CHOOSE_FOLDER:I = 0x2


# instance fields
.field private appWidgetId:I

.field private selectedAccountUuid:Ljava/lang/String;

.field private selectedFolderName:Ljava/lang/String;

.field private unreadAccount:Landroid/preference/Preference;

.field private unreadFolder:Landroid/preference/Preference;

.field private unreadFolderEnabled:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->appWidgetId:I

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/UnreadWidgetConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/UnreadWidgetConfiguration;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    return-object v0
.end method

.method public static deleteWidgetConfiguration(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    .line 237
    const-string v1, "unread_widget_configuration.xml"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unread_widget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unread_widget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".folder_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    return-void
.end method

.method public static getWidgetProperties(Landroid/content/Context;I)Lcom/fsck/k9/helper/UnreadWidgetProperties;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v5, 0x0

    .line 230
    const-string v3, "unread_widget_configuration.xml"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 231
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread_widget."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "accountUuid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread_widget."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".folder_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "folderName":Ljava/lang/String;
    new-instance v3, Lcom/fsck/k9/helper/UnreadWidgetProperties;

    invoke-direct {v3, p1, v0, v1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private handleChooseAccount(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountUuid"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    .local v0, "userSelectedSameAccount":Z
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    const v2, 0x7f0703b0

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    const-string v1, "unified_inbox"

    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "all_messages"

    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->handleSearchAccount()V

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->handleRegularAccount()V

    goto :goto_0
.end method

.method private handleChooseFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method private handleRegularAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 158
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 159
    .local v0, "selectedAccount":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "summary":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadAccount:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolderEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 165
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    return-void
.end method

.method private handleSearchAccount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    const-string v0, "unified_inbox"

    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadAccount:Landroid/preference/Preference;

    const v1, 0x7f0703b5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolderEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolderEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    .line 155
    return-void

    .line 148
    :cond_1
    const-string v0, "all_messages"

    iget-object v1, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadAccount:Landroid/preference/Preference;

    const v1, 0x7f0703ac

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private static saveWidgetProperties(Landroid/content/Context;Lcom/fsck/k9/helper/UnreadWidgetProperties;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Lcom/fsck/k9/helper/UnreadWidgetProperties;

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getAppWidgetId()I

    move-result v0

    .line 222
    .local v0, "appWidgetId":I
    const-string v2, "unread_widget_configuration.xml"

    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unread_widget."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getAccountUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unread_widget."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".folder_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fsck/k9/helper/UnreadWidgetProperties;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method

.method private updateWidgetAndExit()V
    .locals 7

    .prologue
    .line 205
    new-instance v2, Lcom/fsck/k9/helper/UnreadWidgetProperties;

    iget v4, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->appWidgetId:I

    iget-object v5, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Lcom/fsck/k9/helper/UnreadWidgetProperties;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v2, "properties":Lcom/fsck/k9/helper/UnreadWidgetProperties;
    invoke-static {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->saveWidgetProperties(Landroid/content/Context;Lcom/fsck/k9/helper/UnreadWidgetProperties;)V

    .line 209
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 210
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 211
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static {v1, v0, v2}, Lcom/fsck/k9/provider/UnreadWidgetProvider;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/fsck/k9/helper/UnreadWidgetProperties;)V

    .line 214
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v3, "resultValue":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->appWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->setResult(ILandroid/content/Intent;)V

    .line 217
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->finish()V

    .line 218
    return-void
.end method

.method private validateWidget()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 194
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedAccountUuid:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 195
    const v2, 0x7f0703a8

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolderEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->selectedFolderName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 198
    const v2, 0x7f0703af

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 201
    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 115
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    return-void

    .line 118
    :pswitch_0
    const-string v0, "com.fsck.k9.ChooseAccount_account_uuid"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->handleChooseAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_1
    const-string v0, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->handleChooseFolder(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 67
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->appWidgetId:I

    .line 72
    :cond_0
    iget v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->appWidgetId:I

    if-nez v2, :cond_1

    .line 73
    const-string v2, "Received an invalid widget ID"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->finish()V

    .line 111
    :goto_0
    return-void

    .line 78
    :cond_1
    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->addPreferencesFromResource(I)V

    .line 79
    const-string v2, "unread_account"

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadAccount:Landroid/preference/Preference;

    .line 80
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadAccount:Landroid/preference/Preference;

    new-instance v3, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$1;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$1;-><init>(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    const-string v2, "unread_folder_enabled"

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolderEnabled:Landroid/preference/CheckBoxPreference;

    .line 90
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolderEnabled:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$2;-><init>(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    const-string v2, "unread_folder"

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    .line 100
    iget-object v2, p0, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->unreadFolder:Landroid/preference/Preference;

    new-instance v3, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;

    invoke-direct {v3, p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration$3;-><init>(Lcom/fsck/k9/activity/UnreadWidgetConfiguration;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    const v2, 0x7f0703b3

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 176
    invoke-virtual {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->validateWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/fsck/k9/activity/UnreadWidgetConfiguration;->updateWidgetAndExit()V

    .line 187
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c010a
        :pswitch_0
    .end packed-switch
.end method
