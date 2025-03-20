.class public Lcom/fsck/k9/FontSizes;
.super Ljava/lang/Object;
.source "FontSizes.java"


# static fields
.field private static final ACCOUNT_DESCRIPTION:Ljava/lang/String; = "fontSizeAccountDescription"

.field private static final ACCOUNT_NAME:Ljava/lang/String; = "fontSizeAccountName"

.field private static final FOLDER_NAME:Ljava/lang/String; = "fontSizeFolderName"

.field private static final FOLDER_STATUS:Ljava/lang/String; = "fontSizeFolderStatus"

.field public static final FONT_10SP:I = 0xa

.field public static final FONT_12SP:I = 0xc

.field public static final FONT_16SP:I = 0x10

.field public static final FONT_20SP:I = 0x14

.field public static final FONT_DEFAULT:I = -0x1

.field public static final LARGE:I = 0x16

.field public static final MEDIUM:I = 0x12

.field private static final MESSAGE_COMPOSE_INPUT:Ljava/lang/String; = "fontSizeMessageComposeInput"

.field private static final MESSAGE_LIST_DATE:Ljava/lang/String; = "fontSizeMessageListDate"

.field private static final MESSAGE_LIST_PREVIEW:Ljava/lang/String; = "fontSizeMessageListPreview"

.field private static final MESSAGE_LIST_SENDER:Ljava/lang/String; = "fontSizeMessageListSender"

.field private static final MESSAGE_LIST_SUBJECT:Ljava/lang/String; = "fontSizeMessageListSubject"

.field private static final MESSAGE_VIEW_ADDITIONAL_HEADERS:Ljava/lang/String; = "fontSizeMessageViewAdditionalHeaders"

.field private static final MESSAGE_VIEW_BCC:Ljava/lang/String; = "fontSizeMessageViewBCC"

.field private static final MESSAGE_VIEW_CC:Ljava/lang/String; = "fontSizeMessageViewCC"

.field private static final MESSAGE_VIEW_CONTENT:Ljava/lang/String; = "fontSizeMessageViewContent"

.field private static final MESSAGE_VIEW_CONTENT_PERCENT:Ljava/lang/String; = "fontSizeMessageViewContentPercent"

.field private static final MESSAGE_VIEW_DATE:Ljava/lang/String; = "fontSizeMessageViewDate"

.field private static final MESSAGE_VIEW_SENDER:Ljava/lang/String; = "fontSizeMessageViewSender"

.field private static final MESSAGE_VIEW_SUBJECT:Ljava/lang/String; = "fontSizeMessageViewSubject"

.field private static final MESSAGE_VIEW_TO:Ljava/lang/String; = "fontSizeMessageViewTo"

.field public static final SMALL:I = 0xe


# instance fields
.field private accountDescription:I

.field private accountName:I

.field private folderName:I

.field private folderStatus:I

.field private messageComposeInput:I

.field private messageListDate:I

.field private messageListPreview:I

.field private messageListSender:I

.field private messageListSubject:I

.field private messageViewAdditionalHeaders:I

.field private messageViewBCC:I

.field private messageViewCC:I

.field private messageViewContentPercent:I

.field private messageViewDate:I

.field private messageViewSender:I

.field private messageViewSubject:I

.field private messageViewTo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    .line 67
    iput v0, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    .line 69
    iput v0, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    .line 70
    iput v0, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    .line 72
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 73
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 74
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 75
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 77
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 78
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    .line 79
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    .line 80
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewBCC:I

    .line 81
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    .line 82
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 83
    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 84
    const/16 v0, 0x64

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewContentPercent:I

    .line 86
    const/16 v0, 0x12

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 87
    return-void
.end method

.method private loadMessageViewContentPercent(Lcom/fsck/k9/preferences/Storage;)V
    .locals 4
    .param p1, "storage"    # Lcom/fsck/k9/preferences/Storage;

    .prologue
    .line 139
    const/16 v0, 0x64

    .line 140
    .local v0, "fallbackValue":I
    const-string v2, "fontSizeMessageViewContentPercent"

    invoke-virtual {p1, v2}, Lcom/fsck/k9/preferences/Storage;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    const-string v2, "fontSizeMessageViewContent"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, "oldValue":I
    invoke-static {v1}, Lcom/fsck/k9/preferences/GlobalSettings$SettingsUpgraderV31;->convertFromOldSize(I)I

    move-result v0

    .line 145
    .end local v1    # "oldValue":I
    :cond_0
    const-string v2, "fontSizeMessageViewContentPercent"

    invoke-virtual {p1, v2, v0}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/fsck/k9/FontSizes;->setMessageViewContentAsPercent(I)V

    .line 146
    return-void
.end method


# virtual methods
.method public getAccountDescription()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    return v0
.end method

.method public getAccountName()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    return v0
.end method

.method public getFolderName()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    return v0
.end method

.method public getFolderStatus()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    return v0
.end method

.method public getMessageComposeInput()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    return v0
.end method

.method public getMessageListDate()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    return v0
.end method

.method public getMessageListPreview()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    return v0
.end method

.method public getMessageListSender()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    return v0
.end method

.method public getMessageListSubject()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    return v0
.end method

.method public getMessageViewAdditionalHeaders()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    return v0
.end method

.method public getMessageViewBCC()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewBCC:I

    return v0
.end method

.method public getMessageViewCC()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    return v0
.end method

.method public getMessageViewContentAsPercent()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewContentPercent:I

    return v0
.end method

.method public getMessageViewDate()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    return v0
.end method

.method public getMessageViewSender()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    return v0
.end method

.method public getMessageViewSubject()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    return v0
.end method

.method public getMessageViewTo()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    return v0
.end method

.method public load(Lcom/fsck/k9/preferences/Storage;)V
    .locals 2
    .param p1, "storage"    # Lcom/fsck/k9/preferences/Storage;

    .prologue
    .line 114
    const-string v0, "fontSizeAccountName"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    .line 115
    const-string v0, "fontSizeAccountDescription"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    .line 117
    const-string v0, "fontSizeFolderName"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    .line 118
    const-string v0, "fontSizeFolderStatus"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    .line 120
    const-string v0, "fontSizeMessageListSubject"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 121
    const-string v0, "fontSizeMessageListSender"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 122
    const-string v0, "fontSizeMessageListDate"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 123
    const-string v0, "fontSizeMessageListPreview"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 125
    const-string v0, "fontSizeMessageViewSender"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 126
    const-string v0, "fontSizeMessageViewTo"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    .line 127
    const-string v0, "fontSizeMessageViewCC"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    .line 128
    const-string v0, "fontSizeMessageViewBCC"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewBCC:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewBCC:I

    .line 129
    const-string v0, "fontSizeMessageViewAdditionalHeaders"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    .line 130
    const-string v0, "fontSizeMessageViewSubject"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 131
    const-string v0, "fontSizeMessageViewDate"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 133
    invoke-direct {p0, p1}, Lcom/fsck/k9/FontSizes;->loadMessageViewContentPercent(Lcom/fsck/k9/preferences/Storage;)V

    .line 135
    const-string v0, "fontSizeMessageComposeInput"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 136
    return-void
.end method

.method public save(Lcom/fsck/k9/preferences/StorageEditor;)V
    .locals 2
    .param p1, "editor"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 90
    const-string v0, "fontSizeAccountName"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 91
    const-string v0, "fontSizeAccountDescription"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 93
    const-string v0, "fontSizeFolderName"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 94
    const-string v0, "fontSizeFolderStatus"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 96
    const-string v0, "fontSizeMessageListSubject"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 97
    const-string v0, "fontSizeMessageListSender"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 98
    const-string v0, "fontSizeMessageListDate"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 99
    const-string v0, "fontSizeMessageListPreview"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 101
    const-string v0, "fontSizeMessageViewSender"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 102
    const-string v0, "fontSizeMessageViewTo"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 103
    const-string v0, "fontSizeMessageViewCC"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 104
    const-string v0, "fontSizeMessageViewBCC"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewBCC:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 105
    const-string v0, "fontSizeMessageViewAdditionalHeaders"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 106
    const-string v0, "fontSizeMessageViewSubject"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 107
    const-string v0, "fontSizeMessageViewDate"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 108
    const-string v0, "fontSizeMessageViewContentPercent"

    invoke-virtual {p0}, Lcom/fsck/k9/FontSizes;->getMessageViewContentAsPercent()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 110
    const-string v0, "fontSizeMessageComposeInput"

    iget v1, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    invoke-virtual {p1, v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;

    .line 111
    return-void
.end method

.method public setAccountDescription(I)V
    .locals 0
    .param p1, "accountDescription"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/fsck/k9/FontSizes;->accountDescription:I

    .line 162
    return-void
.end method

.method public setAccountName(I)V
    .locals 0
    .param p1, "accountName"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/fsck/k9/FontSizes;->accountName:I

    .line 154
    return-void
.end method

.method public setFolderName(I)V
    .locals 0
    .param p1, "folderName"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/fsck/k9/FontSizes;->folderName:I

    .line 170
    return-void
.end method

.method public setFolderStatus(I)V
    .locals 0
    .param p1, "folderStatus"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/fsck/k9/FontSizes;->folderStatus:I

    .line 178
    return-void
.end method

.method public setMessageComposeInput(I)V
    .locals 0
    .param p1, "messageComposeInput"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageComposeInput:I

    .line 282
    return-void
.end method

.method public setMessageListDate(I)V
    .locals 0
    .param p1, "messageListDate"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageListDate:I

    .line 202
    return-void
.end method

.method public setMessageListPreview(I)V
    .locals 0
    .param p1, "messageListPreview"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageListPreview:I

    .line 210
    return-void
.end method

.method public setMessageListSender(I)V
    .locals 0
    .param p1, "messageListSender"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageListSender:I

    .line 194
    return-void
.end method

.method public setMessageListSubject(I)V
    .locals 0
    .param p1, "messageListSubject"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    .line 186
    return-void
.end method

.method public setMessageViewAdditionalHeaders(I)V
    .locals 0
    .param p1, "messageViewAdditionalHeaders"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    .line 250
    return-void
.end method

.method public setMessageViewBCC(I)V
    .locals 0
    .param p1, "messageViewBCC"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewBCC:I

    .line 242
    return-void
.end method

.method public setMessageViewCC(I)V
    .locals 0
    .param p1, "messageViewCC"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    .line 234
    return-void
.end method

.method public setMessageViewContentAsPercent(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewContentPercent:I

    .line 274
    return-void
.end method

.method public setMessageViewDate(I)V
    .locals 0
    .param p1, "messageViewDate"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 266
    return-void
.end method

.method public setMessageViewSender(I)V
    .locals 0
    .param p1, "messageViewSender"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 218
    return-void
.end method

.method public setMessageViewSubject(I)V
    .locals 0
    .param p1, "messageViewSubject"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 258
    return-void
.end method

.method public setMessageViewTo(I)V
    .locals 0
    .param p1, "messageViewTo"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    .line 226
    return-void
.end method

.method public setViewTextSize(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "fontSize"    # I

    .prologue
    .line 287
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 288
    const/4 v0, 0x2

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    :cond_0
    return-void
.end method
