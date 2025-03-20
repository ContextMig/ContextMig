.class public Lcom/fsck/k9/ui/messageview/MessageViewFragment;
.super Landroid/app/Fragment;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;
.implements Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;
.implements Lcom/fsck/k9/ui/messageview/CryptoInfoDialog$OnClickShowCryptoKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHOOSE_DIRECTORY:I = 0x3

.field private static final ACTIVITY_CHOOSE_FOLDER_COPY:I = 0x2

.field private static final ACTIVITY_CHOOSE_FOLDER_MOVE:I = 0x1

.field private static final ARG_REFERENCE:Ljava/lang/String; = "reference"

.field public static final PROGRESS_THRESHOLD_MILLIS:I = 0x7a120

.field public static final REQUEST_MASK_CRYPTO_PRESENTER:I = 0x200

.field public static final REQUEST_MASK_LOADER_HELPER:I = 0x100


# instance fields
.field private currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field private downloadManager:Landroid/app/DownloadManager;

.field private handler:Landroid/os/Handler;

.field private mAccount:Lcom/fsck/k9/Account;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/fsck/k9/controller/MessagingController;

.field private mDstFolder:Ljava/lang/String;

.field private mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

.field private mInitialized:Z

.field private mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

.field private mMessageReference:Lcom/fsck/k9/activity/MessageReference;

.field private mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

.field private messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

.field private messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

.field private messageLoaderCallbacks:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

.field private messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

.field private showProgressThreshold:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->handler:Landroid/os/Handler;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mInitialized:Z

    .line 676
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;

    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$4;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    .line 741
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;

    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$5;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderCallbacks:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/ui/messageview/MessageTopView;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Lcom/fsck/k9/activity/MessageLoaderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/ui/messageview/MessageViewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->startOpenPgpChooserActivity()V

    return-void
.end method

.method static synthetic access$402(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/LocalMessage;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->displayHeaderForLoadingMessage(Lcom/fsck/k9/mailstore/LocalMessage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$602(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showProgressThreshold:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$700(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .param p1, "x1"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getAttachmentController(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;

    move-result-object v0

    return-object v0
.end method

.method private delete()V
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->disableDeleteAction()V

    .line 288
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 289
    .local v0, "messageToDelete":Lcom/fsck/k9/mailstore/LocalMessage;
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->showNextMessageOrReturn()V

    .line 290
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->deleteMessage(Lcom/fsck/k9/activity/MessageReference;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 292
    .end local v0    # "messageToDelete":Lcom/fsck/k9/mailstore/LocalMessage;
    :cond_0
    return-void
.end method

.method private displayHeaderForLoadingMessage(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setHeaders(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V

    .line 257
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoStatusLoading()V

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getSubjectForMessage(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->displayMessageSubject(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->updateMenu()V

    .line 262
    return-void
.end method

.method private displayMessage(Lcom/fsck/k9/activity/MessageReference;)V
    .locals 4
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 215
    const-string v0, "MessageView displaying message %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    .line 218
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncStartOrResumeLoadingMessage(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 220
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->updateMenu()V

    .line 221
    return-void
.end method

.method private displayMessageSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->displayMessageSubject(Ljava/lang/String;)V

    .line 497
    :cond_0
    return-void
.end method

.method private getAttachmentController(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;
    .locals 3
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 846
    new-instance v0, Lcom/fsck/k9/ui/messageview/AttachmentController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->downloadManager:Landroid/app/DownloadManager;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/fsck/k9/ui/messageview/AttachmentController;-><init>(Lcom/fsck/k9/controller/MessagingController;Landroid/app/DownloadManager;Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    return-object v0
.end method

.method private getDialogTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 574
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "dialog-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubjectForMessage(Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;

    .prologue
    .line 500
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f07021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    .end local v0    # "subject":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private hideKeyboard()V
    .locals 5

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 229
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static newInstance(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .locals 4
    .param p0, "reference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 72
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    invoke-direct {v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;-><init>()V

    .line 74
    .local v1, "fragment":Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "reference"

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method

.method private refileMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "dstFolder"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "srcFolder":Ljava/lang/String;
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 319
    .local v0, "messageToMove":Lcom/fsck/k9/activity/MessageReference;
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->showNextMessageOrReturn()V

    .line 320
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/fsck/k9/controller/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private removeDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 557
    .local v0, "fm":Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->isDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 566
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getDialogTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 568
    .local v1, "fragment":Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method private setProgress(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 488
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->setProgress(Z)V

    .line 491
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_0

    .line 546
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Called showDialog(int) with unknown dialog id."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 520
    :pswitch_1
    const v6, 0x7f0701a4

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "title":Ljava/lang/String;
    const v6, 0x7f0701a3

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "message":Ljava/lang/String;
    const v6, 0x7f0701a2

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "confirmText":Ljava/lang/String;
    const v6, 0x7f0701a1

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "cancelText":Ljava/lang/String;
    invoke-static {p1, v5, v3, v1, v0}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    move-result-object v2

    .line 550
    .end local v0    # "cancelText":Ljava/lang/String;
    .end local v1    # "confirmText":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .local v2, "fragment":Landroid/app/DialogFragment;
    :goto_0
    invoke-virtual {v2, p0, p1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 551
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getDialogTag(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 552
    return-void

    .line 530
    .end local v2    # "fragment":Landroid/app/DialogFragment;
    .end local v3    # "message":Ljava/lang/String;
    :pswitch_2
    const v6, 0x7f0701ab

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 531
    .restart local v5    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060002

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 532
    .restart local v3    # "message":Ljava/lang/String;
    const v6, 0x7f0701aa

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1    # "confirmText":Ljava/lang/String;
    const v6, 0x7f0701a9

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    .restart local v0    # "cancelText":Ljava/lang/String;
    invoke-static {p1, v5, v3, v1, v0}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    move-result-object v2

    .line 537
    .restart local v2    # "fragment":Landroid/app/DialogFragment;
    goto :goto_0

    .line 540
    .end local v0    # "cancelText":Ljava/lang/String;
    .end local v1    # "confirmText":Ljava/lang/String;
    .end local v2    # "fragment":Landroid/app/DialogFragment;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :pswitch_3
    const v6, 0x7f0701a0

    invoke-virtual {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 541
    .restart local v3    # "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    iget-wide v6, v6, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    long-to-int v4, v6

    .line 542
    .local v4, "size":I
    invoke-static {v4, v3}, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;->newInstance(ILjava/lang/String;)Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    move-result-object v2

    .line 543
    .restart local v2    # "fragment":Landroid/app/DialogFragment;
    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0001
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 4
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->hideKeyboard()V

    .line 243
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2, v3, p1}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->maybeHandleShowMessage(Lcom/fsck/k9/ui/messageview/MessageTopView;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)Z

    move-result v0

    .line 245
    .local v0, "handledByCryptoPresenter":Z
    if-nez v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->showMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 247
    invoke-static {}, Lcom/fsck/k9/K9;->isOpenPgpProviderConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/view/MessageHeader;->setCryptoStatusDisabled()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/view/MessageHeader;->hideCryptoStatus()V

    goto :goto_0
.end method

.method private showUnableToDecodeError()V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 237
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0702bd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method

.method private startOpenPgpChooserActivity()V
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method private startRefileActivity(I)V
    .locals 3
    .param p1, "activity"    # I

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.ChooseFolder_account"

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v1, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "com.fsck.k9.ChooseFolder_selfolder"

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getLastSelectedFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v1, "com.fsck.k9.ChooseFolder_message"

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->toIdentityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 399
    return-void
.end method


# virtual methods
.method public allHeadersVisible()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->additionalHeadersVisible()Z

    move-result v0

    return v0
.end method

.method public canMessageBeArchived()Z
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    .line 627
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasArchiveFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    .line 627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMessageBeMovedToSpam()Z
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    .line 632
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasSpamFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    .line 632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyMessage(Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V
    .locals 3
    .param p1, "reference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "destFolderName"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->copyMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public dialogCancelled(I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    .line 604
    return-void
.end method

.method public disableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 0
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 647
    return-void
.end method

.method public doNegativeClick(I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    .line 599
    return-void
.end method

.method public doPositiveClick(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 583
    packed-switch p1, :pswitch_data_0

    .line 594
    :goto_0
    :pswitch_0
    return-void

    .line 585
    :pswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->delete()V

    goto :goto_0

    .line 589
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mDstFolder:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refileMessage(Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mDstFolder:Ljava/lang/String;

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public enableAttachmentButtons(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 0
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 651
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMessageReference()Lcom/fsck/k9/activity/MessageReference;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    return-object v0
.end method

.method public hideAttachmentLoadingDialogOnMainThread()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$3;

    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$3;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method public isCopyCapable()Z
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mInitialized:Z

    return v0
.end method

.method public isMessageRead()Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveCapable()Z
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    return v0
.end method

.method public moveMessage(Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V
    .locals 3
    .param p1, "reference"    # Lcom/fsck/k9/activity/MessageReference;
    .param p2, "destFolderName"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->moveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "reference"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "messageReferenceString":Ljava/lang/String;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    .line 210
    .local v1, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->displayMessage(Lcom/fsck/k9/activity/MessageReference;)V

    .line 211
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 421
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 444
    :pswitch_0
    if-eqz p3, :cond_0

    .line 448
    const-string v5, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "destFolderName":Ljava/lang/String;
    const-string v5, "com.fsck.k9.ChooseFolder_message"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "messageReferenceString":Ljava/lang/String;
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v4

    .line 451
    .local v4, "ref":Lcom/fsck/k9/activity/MessageReference;
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v5, v4}, Lcom/fsck/k9/activity/MessageReference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 452
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v5, v0}, Lcom/fsck/k9/Account;->setLastSelectedFolderName(Ljava/lang/String;)V

    .line 453
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v5}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->showNextMessageOrReturn()V

    .line 456
    invoke-virtual {p0, v4, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->moveMessage(Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    .end local v0    # "destFolderName":Ljava/lang/String;
    .end local v3    # "messageReferenceString":Ljava/lang/String;
    .end local v4    # "ref":Lcom/fsck/k9/activity/MessageReference;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 432
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 433
    .local v2, "fileUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 436
    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    invoke-direct {p0, v5}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getAttachmentController(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveAttachmentTo(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "fileUri":Landroid/net/Uri;
    .restart local v0    # "destFolderName":Ljava/lang/String;
    .restart local v3    # "messageReferenceString":Ljava/lang/String;
    .restart local v4    # "ref":Lcom/fsck/k9/activity/MessageReference;
    :pswitch_3
    invoke-virtual {p0, v4, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->copyMessage(Lcom/fsck/k9/activity/MessageReference;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 453
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onArchive()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onRefile(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mContext:Landroid/content/Context;

    .line 119
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement MessageViewFragmentListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClickShowCryptoKey()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->onClickShowCryptoKey()V

    .line 722
    return-void
.end method

.method public onClickShowSecurityWarning()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->onClickShowCryptoWarningDetails()V

    .line 717
    return-void
.end method

.method public onCopy()V
    .locals 4

    .prologue
    .line 366
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0702d0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 372
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 376
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->startRefileActivity(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0, v5}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    .line 135
    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->downloadManager:Landroid/app/DownloadManager;

    .line 136
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;

    invoke-direct {v1, p1, v2}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;-><init>(Landroid/os/Bundle;Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter$MessageCryptoMvpView;)V

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 137
    new-instance v1, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 138
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderCallbacks:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/fsck/k9/activity/MessageLoaderHelper;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/FragmentManager;Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;)V

    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 139
    iput-boolean v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mInitialized:Z

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 174
    invoke-static {}, Lcom/fsck/k9/K9;->getK9MessageViewTheme()Lcom/fsck/k9/K9$Theme;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/K9;->getK9ThemeResourceId(Lcom/fsck/k9/K9$Theme;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 175
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 176
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0c0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/ui/messageview/MessageTopView;

    iput-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 179
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v3, p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setAttachmentCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V

    .line 180
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v3, v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setMessageCryptoPresenter(Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;)V

    .line 182
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    new-instance v4, Lcom/fsck/k9/ui/messageview/MessageViewFragment$1;

    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    invoke-virtual {v3, v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setOnToggleFlagClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    new-instance v4, Lcom/fsck/k9/ui/messageview/MessageViewFragment$2;

    invoke-direct {v4, p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;)V

    invoke-virtual {v3, v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setOnDownloadButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    iget-object v4, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v4}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->messageHeaderViewAvailable(Lcom/fsck/k9/view/MessageHeader;)V

    .line 199
    return-object v2
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDelete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fsck/k9/K9;->confirmDeleteStarred()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    const v0, 0x7f0c0002

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showDialog(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->delete()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 160
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 162
    .local v1, "isChangingConfigurations":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onDestroyChangingConfigurations()V

    .line 168
    :goto_1
    return-void

    .line 161
    .end local v1    # "isChangingConfigurations":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 167
    .restart local v1    # "isChangingConfigurations":Z
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onDestroy()V

    goto :goto_1
.end method

.method public onForward()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Landroid/os/Parcelable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->onForward(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 339
    :cond_0
    return-void
.end method

.method public onMove()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0702d0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 357
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 361
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_2
    invoke-direct {p0, v3}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->startRefileActivity(I)V

    goto :goto_0
.end method

.method public onPendingIntentResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 407
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    .line 408
    xor-int/lit16 p1, p1, 0x100

    .line 409
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 414
    xor-int/lit16 p1, p1, 0x200

    .line 415
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRefile(Ljava/lang/String;)V
    .locals 4
    .param p1, "dstFolder"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/activity/MessageReference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0702d0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 300
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 304
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_2
    const-string v1, "-NONE-"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/fsck/k9/K9;->confirmSpam()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mDstFolder:Ljava/lang/String;

    .line 310
    const v1, 0x7f0c0004

    invoke-direct {p0, v1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showDialog(I)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refileMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReply()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Landroid/os/Parcelable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->onReply(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onReplyAll()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lcom/fsck/k9/activity/MessageReference;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->getDecryptionResultForReply()Landroid/os/Parcelable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->onReplyAll(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 333
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->onResume()V

    .line 147
    return-void
.end method

.method public onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 825
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getAttachmentController(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->saveAttachment()V

    .line 826
    return-void
.end method

.method public onSaveAttachmentToUserProvidedDirectory(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 4
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 831
    invoke-static {}, Lcom/fsck/k9/helper/FileBrowserHelper;->getInstance()Lcom/fsck/k9/helper/FileBrowserHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-instance v3, Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$6;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/fsck/k9/helper/FileBrowserHelper;->showFileBrowserActivity(Landroid/app/Fragment;Ljava/io/File;ILcom/fsck/k9/helper/FileBrowserHelper$FileBrowserFailOverCallback;)Z

    .line 843
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onSelectText()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onSendAlternate()V
    .locals 4

    .prologue
    .line 471
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->sendAlternate(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 474
    :cond_0
    return-void
.end method

.method public onSpam()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onRefile(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public onToggleAllHeadersView()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/view/MessageHeader;->onShowAdditionalHeaders()V

    .line 277
    return-void
.end method

.method public onToggleFlagged()V
    .locals 6

    .prologue
    .line 342
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x1

    .line 344
    .local v5, "newState":Z
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 345
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    .line 344
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 346
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setHeaders(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V

    .line 348
    .end local v5    # "newState":Z
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onToggleRead()V
    .locals 8

    .prologue
    .line 477
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mController:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 479
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    iget-object v5, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mailstore/LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 478
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->setFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V

    .line 480
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageView:Lcom/fsck/k9/ui/messageview/MessageTopView;

    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setHeaders(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/Account;)V

    .line 481
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "subject":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->displayMessageSubject(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mFragmentListener:Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;

    invoke-interface {v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$MessageViewFragmentListener;->updateMenu()V

    .line 485
    .end local v6    # "subject":Ljava/lang/String;
    :cond_0
    return-void

    .line 479
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->currentAttachmentViewInfo:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 819
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getAttachmentController(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)Lcom/fsck/k9/ui/messageview/AttachmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/ui/messageview/AttachmentController;->viewAttachment()V

    .line 820
    return-void
.end method

.method public refreshAttachmentThumbnail(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 0
    .param p1, "attachment"    # Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .prologue
    .line 674
    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    return-void
.end method

.method public showAttachmentLoadingDialog()V
    .locals 1

    .prologue
    .line 659
    const v0, 0x7f0c0001

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showDialog(I)V

    .line 660
    return-void
.end method

.method public updateTitle()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->displayMessageSubject(Ljava/lang/String;)V

    .line 639
    :cond_0
    return-void
.end method

.method public zoom(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 579
    return-void
.end method
