.class public Lcom/fsck/k9/activity/setup/FontSizeSettings;
.super Lcom/fsck/k9/activity/K9PreferenceActivity;
.source "FontSizeSettings.java"


# static fields
.field private static final FONT_PERCENT_MAX:I = 0xfa

.field private static final FONT_PERCENT_MIN:I = 0x28

.field private static final PREFERENCE_ACCOUNT_DESCRIPTION_FONT:Ljava/lang/String; = "account_description_font"

.field private static final PREFERENCE_ACCOUNT_NAME_FONT:Ljava/lang/String; = "account_name_font"

.field private static final PREFERENCE_FOLDER_NAME_FONT:Ljava/lang/String; = "folder_name_font"

.field private static final PREFERENCE_FOLDER_STATUS_FONT:Ljava/lang/String; = "folder_status_font"

.field private static final PREFERENCE_MESSAGE_COMPOSE_INPUT_FONT:Ljava/lang/String; = "message_compose_input_font"

.field private static final PREFERENCE_MESSAGE_LIST_DATE_FONT:Ljava/lang/String; = "message_list_date_font"

.field private static final PREFERENCE_MESSAGE_LIST_PREVIEW_FONT:Ljava/lang/String; = "message_list_preview_font"

.field private static final PREFERENCE_MESSAGE_LIST_SENDER_FONT:Ljava/lang/String; = "message_list_sender_font"

.field private static final PREFERENCE_MESSAGE_LIST_SUBJECT_FONT:Ljava/lang/String; = "message_list_subject_font"

.field private static final PREFERENCE_MESSAGE_VIEW_ADDITIONAL_HEADERS_FONT:Ljava/lang/String; = "message_view_additional_headers_font"

.field private static final PREFERENCE_MESSAGE_VIEW_BCC_FONT:Ljava/lang/String; = "message_view_bcc_font"

.field private static final PREFERENCE_MESSAGE_VIEW_CC_FONT:Ljava/lang/String; = "message_view_cc_font"

.field private static final PREFERENCE_MESSAGE_VIEW_CONTENT_FONT_SLIDER:Ljava/lang/String; = "message_view_content_font_slider"

.field private static final PREFERENCE_MESSAGE_VIEW_DATE_FONT:Ljava/lang/String; = "message_view_date_font"

.field private static final PREFERENCE_MESSAGE_VIEW_SENDER_FONT:Ljava/lang/String; = "message_view_sender_font"

.field private static final PREFERENCE_MESSAGE_VIEW_SUBJECT_FONT:Ljava/lang/String; = "message_view_subject_font"

.field private static final PREFERENCE_MESSAGE_VIEW_TO_FONT:Ljava/lang/String; = "message_view_to_font"


# instance fields
.field private mAccountDescription:Landroid/preference/ListPreference;

.field private mAccountName:Landroid/preference/ListPreference;

.field private mFolderName:Landroid/preference/ListPreference;

.field private mFolderStatus:Landroid/preference/ListPreference;

.field private mMessageComposeInput:Landroid/preference/ListPreference;

.field private mMessageListDate:Landroid/preference/ListPreference;

.field private mMessageListPreview:Landroid/preference/ListPreference;

.field private mMessageListSender:Landroid/preference/ListPreference;

.field private mMessageListSubject:Landroid/preference/ListPreference;

.field private mMessageViewAdditionalHeaders:Landroid/preference/ListPreference;

.field private mMessageViewBCC:Landroid/preference/ListPreference;

.field private mMessageViewCC:Landroid/preference/ListPreference;

.field private mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

.field private mMessageViewDate:Landroid/preference/ListPreference;

.field private mMessageViewSender:Landroid/preference/ListPreference;

.field private mMessageViewSubject:Landroid/preference/ListPreference;

.field private mMessageViewTo:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/FontSizeSettings;F)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/FontSizeSettings;
    .param p1, "x1"    # F

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->scaleToInt(F)I

    move-result v0

    return v0
.end method

.method public static actionEditSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/FontSizeSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method private saveSettings()V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v1

    .line 166
    .local v1, "fontSizes":Lcom/fsck/k9/FontSizes;
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mAccountName:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setAccountName(I)V

    .line 167
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mAccountDescription:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setAccountDescription(I)V

    .line 169
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mFolderName:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setFolderName(I)V

    .line 170
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mFolderStatus:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setFolderStatus(I)V

    .line 172
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListSubject:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageListSubject(I)V

    .line 173
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListSender:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageListSender(I)V

    .line 174
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListDate:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageListDate(I)V

    .line 175
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListPreview:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageListPreview(I)V

    .line 177
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewSender:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewSender(I)V

    .line 178
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewTo:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewTo(I)V

    .line 179
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewCC:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewCC(I)V

    .line 180
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewBCC:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewBCC(I)V

    .line 181
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewAdditionalHeaders:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewAdditionalHeaders(I)V

    .line 182
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewSubject:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewSubject(I)V

    .line 183
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewDate:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewDate(I)V

    .line 184
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/setup/SliderPreference;->getValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->scaleToInt(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageViewContentAsPercent(I)V

    .line 186
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageComposeInput:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fsck/k9/FontSizes;->setMessageComposeInput(I)V

    .line 188
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v2

    .line 189
    .local v2, "storage":Lcom/fsck/k9/preferences/Storage;
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 190
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    invoke-virtual {v1, v0}, Lcom/fsck/k9/FontSizes;->save(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 191
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 192
    return-void
.end method

.method private scaleFromInt(I)F
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 199
    add-int/lit8 v0, p1, -0x28

    int-to-float v0, v0

    const/high16 v1, 0x43520000    # 210.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private scaleToInt(F)I
    .locals 2
    .param p1, "sliderValue"    # F

    .prologue
    .line 195
    const/high16 v0, 0x42200000    # 40.0f

    const/high16 v1, 0x43520000    # 210.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->saveSettings()V

    .line 205
    invoke-super {p0}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onBackPressed()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v0

    .line 77
    .local v0, "fontSizes":Lcom/fsck/k9/FontSizes;
    const v3, 0x7f050005

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v3, "account_name_font"

    .line 81
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getAccountName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mAccountName:Landroid/preference/ListPreference;

    .line 82
    const-string v3, "account_description_font"

    .line 84
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getAccountDescription()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mAccountDescription:Landroid/preference/ListPreference;

    .line 86
    const-string v3, "folder_name_font"

    .line 88
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getFolderName()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mFolderName:Landroid/preference/ListPreference;

    .line 89
    const-string v3, "folder_status_font"

    .line 91
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getFolderStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mFolderStatus:Landroid/preference/ListPreference;

    .line 93
    const-string v3, "message_list_subject_font"

    .line 95
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageListSubject()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListSubject:Landroid/preference/ListPreference;

    .line 96
    const-string v3, "message_list_sender_font"

    .line 98
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageListSender()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListSender:Landroid/preference/ListPreference;

    .line 99
    const-string v3, "message_list_date_font"

    .line 101
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageListDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListDate:Landroid/preference/ListPreference;

    .line 102
    const-string v3, "message_list_preview_font"

    .line 104
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageListPreview()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageListPreview:Landroid/preference/ListPreference;

    .line 106
    const-string v3, "message_view_sender_font"

    .line 108
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewSender()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewSender:Landroid/preference/ListPreference;

    .line 109
    const-string v3, "message_view_to_font"

    .line 111
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewTo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewTo:Landroid/preference/ListPreference;

    .line 112
    const-string v3, "message_view_cc_font"

    .line 114
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewCC()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewCC:Landroid/preference/ListPreference;

    .line 115
    const-string v3, "message_view_bcc_font"

    .line 117
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewBCC()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewBCC:Landroid/preference/ListPreference;

    .line 118
    const-string v3, "message_view_additional_headers_font"

    .line 120
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewAdditionalHeaders()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewAdditionalHeaders:Landroid/preference/ListPreference;

    .line 121
    const-string v3, "message_view_subject_font"

    .line 123
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewSubject()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewSubject:Landroid/preference/ListPreference;

    .line 124
    const-string v3, "message_view_date_font"

    .line 126
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewDate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewDate:Landroid/preference/ListPreference;

    .line 128
    const-string v3, "message_view_content_font_slider"

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/activity/setup/SliderPreference;

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    .line 131
    const v3, 0x7f07020d

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "summaryFormat":Ljava/lang/String;
    const v3, 0x7f07020c

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "titleFormat":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageViewContentAsPercent()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->scaleFromInt(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/setup/SliderPreference;->setValue(F)V

    .line 134
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    new-instance v4, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/fsck/k9/activity/setup/FontSizeSettings$1;-><init>(Lcom/fsck/k9/activity/setup/FontSizeSettings;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/fsck/k9/activity/setup/SliderPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/setup/SliderPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageViewContentSlider:Lcom/fsck/k9/activity/setup/SliderPreference;

    .line 152
    invoke-virtual {v5}, Lcom/fsck/k9/activity/setup/SliderPreference;->getValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 151
    invoke-interface {v3, v4, v5}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 154
    const-string v3, "message_compose_input_font"

    .line 156
    invoke-virtual {v0}, Lcom/fsck/k9/FontSizes;->getMessageComposeInput()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/setup/FontSizeSettings;->setupListPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/setup/FontSizeSettings;->mMessageComposeInput:Landroid/preference/ListPreference;

    .line 157
    return-void
.end method
