.class public Lcom/fsck/k9/ui/messageview/AttachmentController;
.super Ljava/lang/Object;
.source "AttachmentController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;,
        Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;,
        Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;
    }
.end annotation


# instance fields
.field private final attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field private final context:Landroid/content/Context;

.field private final controller:Lcom/fsck/k9/controller/MessagingController;

.field private final downloadManager:Landroid/app/DownloadManager;

.field private final messageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Landroid/app/DownloadManager;Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1
    .param p1, "controller"    # Lcom/fsck/k9/controller/MessagingController;
    .param p2, "downloadManager"    # Landroid/app/DownloadManager;
    .param p3, "messageViewFragment"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p4, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->controller:Lcom/fsck/k9/controller/MessagingController;

    .line 54
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadManager:Landroid/app/DownloadManager;

    .line 55
    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->messageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 56
    iput-object p4, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/ui/messageview/AttachmentController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->viewLocalAttachment()V

    return-void
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/mailstore/AttachmentViewInfo;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/ui/messageview/AttachmentController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->displayAttachmentNotSavedMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/ui/messageview/AttachmentController;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->messageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveLocalAttachmentTo(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/ui/messageview/AttachmentController;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getBestViewIntentAndSaveFile()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/ui/messageview/AttachmentController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->displayMessageToUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/AttachmentController;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveAttachmentWithUniqueFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private addSavedAttachmentToDownloadsDatabase(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 174
    .local v6, "fileLength":J
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v4, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 176
    .local v4, "mimeType":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadManager:Landroid/app/DownloadManager;

    move-object v2, v1

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 177
    return-void
.end method

.method private addUiIntentFlags(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    const/high16 v0, 0x10080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    return-void
.end method

.method private createViewIntentForAttachmentProviderUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p1, p2}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getMimeTypeUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 248
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->addUiIntentFlags(Landroid/content/Intent;)V

    .line 253
    return-object v0
.end method

.method private createViewIntentForFileUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->addUiIntentFlags(Landroid/content/Intent;)V

    .line 261
    return-object v0
.end method

.method private displayAttachmentNotSavedMessage()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    const v2, 0x7f0702b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->displayMessageToUser(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private displayMessageToUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    return-void
.end method

.method private downloadAndSaveAttachmentTo(Lcom/fsck/k9/mailstore/LocalPart;Ljava/io/File;)V
    .locals 1
    .param p1, "localPart"    # Lcom/fsck/k9/mailstore/LocalPart;
    .param p2, "directory"    # Ljava/io/File;

    .prologue
    .line 85
    new-instance v0, Lcom/fsck/k9/ui/messageview/AttachmentController$2;

    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/messageview/AttachmentController$2;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method private downloadAndViewAttachment(Lcom/fsck/k9/mailstore/LocalPart;)V
    .locals 1
    .param p1, "localPart"    # Lcom/fsck/k9/mailstore/LocalPart;

    .prologue
    .line 76
    new-instance v0, Lcom/fsck/k9/ui/messageview/AttachmentController$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messageview/AttachmentController$1;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;)V

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method private downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "localPart"    # Lcom/fsck/k9/mailstore/LocalPart;
    .param p2, "attachmentDownloadedCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalPart;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "accountUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 97
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalPart;->getMessage()Lcom/fsck/k9/mailstore/LocalMessage;

    move-result-object v2

    .line 99
    .local v2, "message":Lcom/fsck/k9/mailstore/LocalMessage;
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->messageViewFragment:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-virtual {v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showAttachmentLoadingDialog()V

    .line 100
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->controller:Lcom/fsck/k9/controller/MessagingController;

    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v4, v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    new-instance v5, Lcom/fsck/k9/ui/messageview/AttachmentController$3;

    invoke-direct {v5, p0, p2}, Lcom/fsck/k9/ui/messageview/AttachmentController$3;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/fsck/k9/controller/MessagingController;->loadAttachment(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 113
    return-void
.end method

.method private getBestViewIntentAndSaveFile()Landroid/content/Intent;
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 183
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v9, v9, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->createTempUriForContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 189
    .local v3, "intentDataUri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v0, v8, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 190
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "inferredMimeType":Ljava/lang/String;
    iget-object v8, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v4, v8, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 194
    .local v4, "mimeType":Ljava/lang/String;
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/MimeUtility;->isDefaultMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 195
    invoke-direct {p0, v3, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getBestViewIntentForMimeType(Landroid/net/Uri;Ljava/lang/String;)Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    move-result-object v5

    .line 203
    .local v5, "resolvedIntentInfo":Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->hasResolvedActivities()Z

    move-result v8

    if-nez v8, :cond_1

    .line 204
    const-string v8, "application/octet-stream"

    invoke-direct {p0, v3, v8}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getBestViewIntentForMimeType(Landroid/net/Uri;Ljava/lang/String;)Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    move-result-object v5

    .line 209
    :cond_1
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->hasResolvedActivities()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->containsFileUri()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 211
    :try_start_1
    iget-object v8, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->getFileForWriting(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 212
    .local v6, "tempFile":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/fsck/k9/ui/messageview/AttachmentController;->writeAttachmentToStorage(Ljava/io/File;)V

    .line 213
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/fsck/k9/ui/messageview/AttachmentController;->createViewIntentForFileUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 222
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "inferredMimeType":Ljava/lang/String;
    .end local v3    # "intentDataUri":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "resolvedIntentInfo":Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;
    .end local v6    # "tempFile":Ljava/io/File;
    :goto_1
    return-object v7

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Error creating temp file for attachment!"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    const/4 v7, 0x0

    goto :goto_1

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "displayName":Ljava/lang/String;
    .restart local v2    # "inferredMimeType":Ljava/lang/String;
    .restart local v3    # "intentDataUri":Landroid/net/Uri;
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getBestViewIntentForMimeType(Landroid/net/Uri;Ljava/lang/String;)Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    move-result-object v5

    .line 198
    .restart local v5    # "resolvedIntentInfo":Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->hasResolvedActivities()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 199
    invoke-direct {p0, v3, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getBestViewIntentForMimeType(Landroid/net/Uri;Ljava/lang/String;)Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    move-result-object v5

    goto :goto_0

    .line 214
    :catch_1
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "Error while saving attachment to use file:// URI with ACTION_VIEW Intent"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v8, "application/octet-stream"

    invoke-direct {p0, v3, v8}, Lcom/fsck/k9/ui/messageview/AttachmentController;->createViewIntentForAttachmentProviderUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 217
    .local v7, "viewIntent":Landroid/content/Intent;
    goto :goto_1

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "viewIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v5}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .restart local v7    # "viewIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private getBestViewIntentForMimeType(Landroid/net/Uri;Ljava/lang/String;)Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/ui/messageview/AttachmentController;->createViewIntentForAttachmentProviderUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, "contentUriIntent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getResolvedIntentActivitiesCount(Landroid/content/Intent;)I

    move-result v0

    .line 229
    .local v0, "contentUriActivitiesCount":I
    if-lez v0, :cond_0

    .line 230
    new-instance v6, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    invoke-direct {v6, v1, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;-><init>(Landroid/content/Intent;I)V

    .line 242
    :goto_0
    return-object v6

    .line 233
    :cond_0
    iget-object v6, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v7, v7, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/fsck/k9/cache/TemporaryAttachmentStore;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 234
    .local v4, "tempFile":Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 235
    .local v5, "tempFileUri":Landroid/net/Uri;
    invoke-direct {p0, p2, v5}, Lcom/fsck/k9/ui/messageview/AttachmentController;->createViewIntentForFileUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 236
    .local v3, "fileUriIntent":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/fsck/k9/ui/messageview/AttachmentController;->getResolvedIntentActivitiesCount(Landroid/content/Intent;)I

    move-result v2

    .line 238
    .local v2, "fileUriActivitiesCount":I
    if-lez v2, :cond_1

    .line 239
    new-instance v6, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    invoke-direct {v6, v3, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;-><init>(Landroid/content/Intent;I)V

    goto :goto_0

    .line 242
    :cond_1
    new-instance v6, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;

    invoke-direct {v6, v1, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController$IntentAndResolvedActivitiesCount;-><init>(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private getResolvedIntentActivitiesCount(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 271
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    .line 272
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private saveAttachmentTo(Ljava/io/File;)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    .local v0, "isExternalStorageMounted":Z
    if-nez v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    const v3, 0x7f0702b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->displayMessageToUser(Ljava/lang/String;)V

    .line 138
    .end local v1    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-wide v2, v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    const v3, 0x7f0702ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "message":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->displayMessageToUser(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v2, v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    check-cast v2, Lcom/fsck/k9/mailstore/LocalPart;

    invoke-direct {p0, v2, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAndSaveAttachmentTo(Lcom/fsck/k9/mailstore/LocalPart;Ljava/io/File;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveLocalAttachmentTo(Ljava/io/File;)V

    goto :goto_0
.end method

.method private saveAttachmentWithUniqueFileName(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v2, v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/fsck/k9/helper/FileHelper;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "filename":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/fsck/k9/helper/FileHelper;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->writeAttachmentToStorage(Ljava/io/File;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->addSavedAttachmentToDownloadsDatabase(Ljava/io/File;)V

    .line 152
    return-object v0
.end method

.method private saveLocalAttachmentTo(Ljava/io/File;)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 141
    new-instance v0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Lcom/fsck/k9/ui/messageview/AttachmentController$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method

.method private viewLocalAttachment()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;-><init>(Lcom/fsck/k9/ui/messageview/AttachmentController;Lcom/fsck/k9/ui/messageview/AttachmentController$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/AttachmentController$ViewAttachmentAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method private writeAttachmentToStorage(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v3, v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 158
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 161
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 168
    return-void

    .line 163
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .end local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
.end method


# virtual methods
.method public saveAttachment()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/fsck/k9/K9;->getAttachmentDefaultPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveAttachmentTo(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public saveAttachmentTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveAttachmentTo(Ljava/io/File;)V

    .line 73
    return-void
.end method

.method public viewAttachment()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController;->attachment:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-object v0, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    check-cast v0, Lcom/fsck/k9/mailstore/LocalPart;

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->downloadAndViewAttachment(Lcom/fsck/k9/mailstore/LocalPart;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->viewLocalAttachment()V

    goto :goto_0
.end method
