.class public Lcom/fsck/k9/activity/MessageCompose;
.super Lcom/fsck/k9/activity/K9Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fsck/k9/fragment/ProgressDialogFragment$CancelListener;
.implements Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$AttachmentDownloadCancelListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/fsck/k9/activity/compose/PgpInlineDialog$OnOpenPgpInlineChangeListener;
.implements Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog$OnOpenPgpSignOnlyChangeListener;
.implements Lcom/fsck/k9/message/MessageBuilder$Callback;
.implements Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;
.implements Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;
.implements Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog$OnOpenPgpDisableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/MessageCompose$Action;,
        Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;
    }
.end annotation


# static fields
.field private static final ACTION_AUTOCRYPT_PEER:Ljava/lang/String; = "org.autocrypt.PEER_ACTION"

.field public static final ACTION_COMPOSE:Ljava/lang/String; = "com.fsck.k9.intent.action.COMPOSE"

.field public static final ACTION_EDIT_DRAFT:Ljava/lang/String; = "com.fsck.k9.intent.action.EDIT_DRAFT"

.field public static final ACTION_FORWARD:Ljava/lang/String; = "com.fsck.k9.intent.action.FORWARD"

.field public static final ACTION_REPLY:Ljava/lang/String; = "com.fsck.k9.intent.action.REPLY"

.field public static final ACTION_REPLY_ALL:Ljava/lang/String; = "com.fsck.k9.intent.action.REPLY_ALL"

.field private static final DIALOG_CHOOSE_IDENTITY:I = 0x3

.field private static final DIALOG_CONFIRM_DISCARD:I = 0x4

.field private static final DIALOG_CONFIRM_DISCARD_ON_BACK:I = 0x2

.field private static final DIALOG_SAVE_OR_DISCARD_DRAFT_MESSAGE:I = 0x1

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final EXTRA_MESSAGE_DECRYPTION_RESULT:Ljava/lang/String; = "message_decryption_result"

.field public static final EXTRA_MESSAGE_REFERENCE:Ljava/lang/String; = "message_reference"

.field private static final FRAGMENT_WAITING_FOR_ATTACHMENT:Ljava/lang/String; = "waitingForAttachment"

.field private static final INVALID_DRAFT_ID:J = -0x1L

.field private static final MSG_DISCARDED_DRAFT:I = 0x5

.field private static final MSG_PROGRESS_OFF:I = 0x2

.field private static final MSG_PROGRESS_ON:I = 0x1

.field public static final MSG_SAVED_DRAFT:I = 0x4

.field private static final PREFIX:Ljava/util/regex/Pattern;

.field private static final REQUEST_MASK_ATTACHMENT_PRESENTER:I = 0x400

.field private static final REQUEST_MASK_LOADER_HELPER:I = 0x200

.field private static final REQUEST_MASK_MESSAGE_BUILDER:I = 0x800

.field private static final REQUEST_MASK_RECIPIENT_PRESENTER:I = 0x100

.field private static final STATE_ALREADY_NOTIFIED_USER_OF_EMPTY_SUBJECT:Ljava/lang/String; = "alreadyNotifiedUserOfEmptySubject"

.field private static final STATE_IDENTITY:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.identity"

.field private static final STATE_IDENTITY_CHANGED:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.identityChanged"

.field private static final STATE_IN_REPLY_TO:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.inReplyTo"

.field private static final STATE_KEY_CHANGES_MADE_SINCE_LAST_SAVE:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave"

.field private static final STATE_KEY_DRAFT_ID:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.draftId"

.field private static final STATE_KEY_READ_RECEIPT:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.messageReadReceipt"

.field private static final STATE_KEY_SOURCE_MESSAGE_PROCED:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

.field private static final STATE_REFERENCES:Ljava/lang/String; = "com.fsck.k9.activity.MessageCompose.references"


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private action:Lcom/fsck/k9/activity/MessageCompose$Action;

.field private alreadyNotifiedUserOfEmptySubject:Z

.field attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

.field private attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

.field private attachmentsView:Landroid/widget/LinearLayout;

.field private changesMadeSinceLastSave:Z

.field private chooseIdentityButton:Landroid/widget/TextView;

.field private contacts:Lcom/fsck/k9/helper/Contacts;

.field private currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

.field private currentMessageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

.field private draftId:J

.field private finishAfterDraftSaved:Z

.field private identity:Lcom/fsck/k9/Identity;

.field private identityChanged:Z

.field private internalMessageHandler:Landroid/os/Handler;

.field private isInSubActivity:Z

.field private messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

.field private messageLoaderCallbacks:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

.field private messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

.field public messagingListener:Lcom/fsck/k9/controller/MessagingListener;

.field private navigateUp:Z

.field private quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

.field private recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field private referencedMessageIds:Ljava/lang/String;

.field private relatedMessageProcessed:Z

.field private relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

.field private repliedToMessageId:Ljava/lang/String;

.field private requestReadReceipt:Z

.field private signatureChanged:Z

.field private signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

.field private subjectView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "^AW[:\\s]\\s*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    .line 175
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 176
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 185
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 190
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 191
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 202
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 216
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 1580
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$10;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$10;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderCallbacks:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    .line 1647
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$11;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$11;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingListener:Lcom/fsck/k9/controller/MessagingListener;

    .line 1669
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$12;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$12;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    .line 1780
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$13;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/MessageCompose$13;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/fsck/k9/activity/MessageCompose;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/compose/AttachmentPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fsck/k9/activity/MessageCompose;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    return-void
.end method

.method static synthetic access$1202(Lcom/fsck/k9/activity/MessageCompose;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p1, "x1"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSaveDraftAndSave()V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/Account;Lcom/fsck/k9/Identity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/Identity;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/MessageCompose;->onAccountChosen(Lcom/fsck/k9/Account;Lcom/fsck/k9/Identity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageCompose$Action;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/activity/MessageReference;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/activity/MessageReference;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p1, "x1"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    return-object p1
.end method

.method static synthetic access$802(Lcom/fsck/k9/activity/MessageCompose;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    return p1
.end method

.method static synthetic access$900(Lcom/fsck/k9/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/MessageCompose;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private askBeforeDiscard()V
    .locals 1

    .prologue
    .line 940
    invoke-static {}, Lcom/fsck/k9/K9;->confirmDiscardMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->showDialog(I)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    goto :goto_0
.end method

.method private checkToSaveDraftAndSave()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasDraftsFolder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    const v0, 0x7f070166

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->checkOkForSendingOrDraftSaving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    .line 719
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    goto :goto_0
.end method

.method private checkToSaveDraftImplicitly()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasDraftsFolder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    .line 732
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSaveAfterChecks()V

    goto :goto_0
.end method

.method private checkToSendMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 691
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    if-nez v0, :cond_1

    .line 692
    const v0, 0x7f0701be

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 693
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->checkRecipientsOkForSending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->checkOkForSendingOrDraftSaving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->performSendAfterChecks()V

    goto :goto_0
.end method

.method private createMessageBuilder(Z)Lcom/fsck/k9/message/MessageBuilder;
    .locals 6
    .param p1, "isDraft"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 645
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCurrentCachedCryptoStatus()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    move-result-object v1

    .line 646
    .local v1, "cryptoStatus":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;
    if-nez v1, :cond_0

    .line 687
    :goto_0
    return-object v0

    .line 651
    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->shouldUsePgpMessageBuilder()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 652
    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->getSendErrorStateOrNull()Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;

    move-result-object v2

    .line 653
    .local v2, "maybeSendErrorState":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;
    if-eqz v2, :cond_1

    .line 654
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v4, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->showPgpSendError(Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-static {}, Lcom/fsck/k9/message/PgpMessageBuilder;->newInstance()Lcom/fsck/k9/message/PgpMessageBuilder;

    move-result-object v3

    .line 659
    .local v3, "pgpBuilder":Lcom/fsck/k9/message/PgpMessageBuilder;
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v4, v3, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->builderSetProperties(Lcom/fsck/k9/message/PgpMessageBuilder;Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;)V

    .line 660
    move-object v0, v3

    .line 666
    .end local v2    # "maybeSendErrorState":Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$SendErrorState;
    .end local v3    # "pgpBuilder":Lcom/fsck/k9/message/PgpMessageBuilder;
    .local v0, "builder":Lcom/fsck/k9/message/MessageBuilder;
    :goto_1
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/helper/Utility;->stripNewLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fsck/k9/message/MessageBuilder;->setSubject(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 667
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setSentDate(Ljava/util/Date;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    .line 668
    invoke-static {}, Lcom/fsck/k9/K9;->hideTimeZone()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setHideTimeZone(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 669
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setInReplyTo(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 670
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setReferences(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 671
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setRequestReadReceipt(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    .line 672
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setIdentity(Lcom/fsck/k9/Identity;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 673
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setMessageFormat(Lcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 674
    invoke-virtual {v5}, Lcom/fsck/k9/ui/EolConvertingEditText;->getCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setText(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 675
    invoke-virtual {v5}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->createAttachmentList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setAttachments(Ljava/util/List;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 676
    invoke-virtual {v5}, Lcom/fsck/k9/ui/EolConvertingEditText;->getCharacters()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setSignature(Ljava/lang/String;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    .line 677
    invoke-virtual {v5}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setSignatureBeforeQuotedText(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 678
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setIdentityChanged(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 679
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setSignatureChanged(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 680
    invoke-virtual {v5}, Lcom/fsck/k9/ui/EolConvertingEditText;->getSelectionStart()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setCursorPosition(I)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 681
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setMessageReference(Lcom/fsck/k9/activity/MessageReference;)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    .line 682
    invoke-virtual {v4, p1}, Lcom/fsck/k9/message/MessageBuilder;->setDraft(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v4

    .line 683
    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->isPgpInlineModeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/MessageBuilder;->setIsPgpInlineEnabled(Z)Lcom/fsck/k9/message/MessageBuilder;

    .line 685
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v4, v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->builderSetProperties(Lcom/fsck/k9/message/MessageBuilder;)V

    goto/16 :goto_0

    .line 662
    .end local v0    # "builder":Lcom/fsck/k9/message/MessageBuilder;
    :cond_2
    invoke-static {}, Lcom/fsck/k9/message/SimpleMessageBuilder;->newInstance()Lcom/fsck/k9/message/SimpleMessageBuilder;

    move-result-object v0

    .line 663
    .restart local v0    # "builder":Lcom/fsck/k9/message/MessageBuilder;
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v4, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->builderSetProperties(Lcom/fsck/k9/message/MessageBuilder;)V

    goto/16 :goto_1
.end method

.method private draftIsNotEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1064
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v1}, Lcom/fsck/k9/ui/EolConvertingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v0

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->createAttachmentList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getToAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 1074
    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getCcAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 1075
    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->getBccAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)Z
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 476
    const/4 v4, 0x0

    .line 477
    .local v4, "startedByExternalIntent":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "action":Ljava/lang/String;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.SENDTO"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 483
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 484
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 485
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {v10}, Lcom/fsck/k9/helper/MailTo;->isMailTo(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 486
    invoke-static {v10}, Lcom/fsck/k9/helper/MailTo;->parse(Landroid/net/Uri;)Lcom/fsck/k9/helper/MailTo;

    move-result-object v2

    .line 487
    .local v2, "mailTo":Lcom/fsck/k9/helper/MailTo;
    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/MessageCompose;->initializeFromMailto(Lcom/fsck/k9/helper/MailTo;)V

    .line 501
    .end local v2    # "mailTo":Lcom/fsck/k9/helper/MailTo;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "android.intent.action.SENDTO"

    .line 502
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 503
    :cond_2
    const/4 v4, 0x1

    .line 511
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 513
    .local v7, "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v11}, Lcom/fsck/k9/ui/EolConvertingEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 514
    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v11, v7}, Lcom/fsck/k9/ui/EolConvertingEditText;->setCharacters(Ljava/lang/CharSequence;)V

    .line 517
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, "type":Ljava/lang/String;
    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 519
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 520
    .local v5, "stream":Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 521
    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v11, v5, v9}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;)V

    .line 535
    .end local v5    # "stream":Landroid/net/Uri;
    :cond_4
    const-string v11, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, "subject":Ljava/lang/String;
    if-eqz v6, :cond_5

    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 538
    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v11, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_5
    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v11, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initFromSendOrViewIntent(Landroid/content/Intent;)V

    .line 544
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/CharSequence;
    .end local v9    # "type":Ljava/lang/String;
    :cond_6
    const-string v11, "org.autocrypt.PEER_ACTION"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 545
    const-string v11, "autocrypt_peer_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 546
    .local v8, "trustId":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 547
    iget-object v11, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v11, v8}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initFromTrustIdAction(Ljava/lang/String;)V

    .line 548
    const/4 v4, 0x1

    .line 552
    .end local v8    # "trustId":Ljava/lang/String;
    :cond_7
    return v4

    .line 524
    .restart local v7    # "text":Ljava/lang/CharSequence;
    .restart local v9    # "type":Ljava/lang/String;
    :cond_8
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 525
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_4

    .line 526
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .local v3, "parcelable":Landroid/os/Parcelable;
    move-object v5, v3

    .line 527
    check-cast v5, Landroid/net/Uri;

    .line 528
    .restart local v5    # "stream":Landroid/net/Uri;
    if-eqz v5, :cond_9

    .line 529
    iget-object v12, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v12, v5, v9}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->addAttachment(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeActionBar()V
    .locals 2

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1643
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1644
    return-void
.end method

.method private initializeFromMailto(Lcom/fsck/k9/helper/MailTo;)V
    .locals 3
    .param p1, "mailTo"    # Lcom/fsck/k9/helper/MailTo;

    .prologue
    .line 1447
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initFromMailto(Lcom/fsck/k9/helper/MailTo;)V

    .line 1449
    invoke-virtual {p1}, Lcom/fsck/k9/helper/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 1450
    .local v1, "subject":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1451
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/helper/MailTo;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1456
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/ui/EolConvertingEditText;->setCharacters(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_1
    return-void
.end method

.method private onAccountChosen(Lcom/fsck/k9/Account;Lcom/fsck/k9/Identity;)V
    .locals 10
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "identity"    # Lcom/fsck/k9/Identity;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 820
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 821
    const-string v1, "Switching account from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v1, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v4, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v1, v4, :cond_0

    .line 825
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 829
    :cond_0
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    if-nez v1, :cond_1

    iget-wide v4, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    .line 830
    :cond_1
    iget-wide v2, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 831
    .local v2, "previousDraftId":J
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    .line 834
    .local v0, "previousAccount":Lcom/fsck/k9/Account;
    iput-wide v8, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 837
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    .line 839
    const-string v1, "Account switch, saving new draft in new account"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSaveDraftImplicitly()V

    .line 842
    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    .line 843
    const-string v1, "Account switch, deleting draft from previous account: %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->deleteDraft(Lcom/fsck/k9/Account;J)V

    .line 856
    .end local v0    # "previousAccount":Lcom/fsck/k9/Account;
    .end local v2    # "previousDraftId":J
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onSwitchAccount(Lcom/fsck/k9/Account;)V

    .line 857
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onSwitchAccount(Lcom/fsck/k9/Account;)V

    .line 862
    :cond_3
    invoke-direct {p0, p2}, Lcom/fsck/k9/activity/MessageCompose;->switchToIdentity(Lcom/fsck/k9/Identity;)V

    .line 863
    return-void

    .line 849
    :cond_4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    goto :goto_0
.end method

.method private onDiscard()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 753
    iget-wide v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    iget-wide v2, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->deleteDraft(Lcom/fsck/k9/Account;J)V

    .line 755
    iput-wide v4, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 759
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->openAutoExpandFolder()V

    .line 764
    :goto_0
    return-void

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method private onReadReceipt()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 768
    iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    if-nez v3, :cond_0

    .line 769
    const v3, 0x7f07031f

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "txt":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 776
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 777
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 778
    return-void

    .line 772
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "toast":Landroid/widget/Toast;
    .end local v2    # "txt":Ljava/lang/CharSequence;
    :cond_0
    const v3, 0x7f07031e

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 773
    .restart local v2    # "txt":Ljava/lang/CharSequence;
    iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    goto :goto_0
.end method

.method private openAutoExpandFolder()V
    .locals 4

    .prologue
    .line 1055
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAutoExpandFolderName()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "folder":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/search/LocalSearch;

    invoke-direct {v1, v0}, Lcom/fsck/k9/search/LocalSearch;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v1, "search":Lcom/fsck/k9/search/LocalSearch;
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/search/LocalSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v1, v0}, Lcom/fsck/k9/search/LocalSearch;->addAllowedFolder(Ljava/lang/String;)V

    .line 1059
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V

    .line 1060
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    .line 1061
    return-void
.end method

.method private performSaveAfterChecks()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 736
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->createMessageBuilder(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 737
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    .line 739
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/message/MessageBuilder;->buildAsync(Lcom/fsck/k9/message/MessageBuilder$Callback;)V

    .line 741
    :cond_0
    return-void
.end method

.method private prepareToFinish(Z)V
    .locals 4
    .param p1, "shouldNavigateUp"    # Z

    .prologue
    .line 1032
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    .line 1034
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->draftIsNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->hasDraftsFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->showDialog(I)V

    .line 1052
    :goto_0
    return-void

    .line 1038
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->showDialog(I)V

    goto :goto_0

    .line 1042
    :cond_1
    iget-wide v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1043
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    goto :goto_0

    .line 1045
    :cond_2
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    if-eqz v0, :cond_3

    .line 1046
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->openAutoExpandFolder()V

    goto :goto_0

    .line 1048
    :cond_3
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onBackPressed()V

    goto :goto_0
.end method

.method private processDraftMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 14
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1301
    iget-object v4, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    .line 1302
    .local v4, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/fsck/k9/controller/MessagingController;->getId(Lcom/fsck/k9/mail/Message;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 1303
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v4}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v10, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initFromDraftMessage(Lcom/fsck/k9/mail/Message;)V

    .line 1308
    const-string v10, "In-Reply-To"

    invoke-virtual {v4, v10}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, "inReplyTo":[Ljava/lang/String;
    array-length v10, v2

    if-lt v10, v12, :cond_0

    .line 1310
    aget-object v10, v2, v13

    iput-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 1314
    :cond_0
    const-string v10, "References"

    invoke-virtual {v4, v10}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1315
    .local v9, "references":[Ljava/lang/String;
    array-length v10, v9

    if-lt v10, v12, :cond_1

    .line 1316
    aget-object v10, v9, v13

    iput-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 1319
    :cond_1
    iget-boolean v10, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    if-nez v10, :cond_2

    .line 1320
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v10, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loadNonInlineAttachments(Lcom/fsck/k9/mailstore/MessageViewInfo;)Z

    .line 1325
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1326
    .local v3, "k9identity":Ljava/util/Map;, "Ljava/util/Map<Lcom/fsck/k9/message/IdentityField;Ljava/lang/String;>;"
    const-string v10, "X-K9mail-Identity"

    invoke-virtual {v4, v10}, Lcom/fsck/k9/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "identityHeaders":[Ljava/lang/String;
    array-length v10, v1

    if-lez v10, :cond_3

    aget-object v10, v1, v13

    if-eqz v10, :cond_3

    .line 1329
    aget-object v10, v1, v13

    invoke-static {v10}, Lcom/fsck/k9/message/IdentityHeaderParser;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1332
    :cond_3
    new-instance v6, Lcom/fsck/k9/Identity;

    invoke-direct {v6}, Lcom/fsck/k9/Identity;-><init>()V

    .line 1333
    .local v6, "newIdentity":Lcom/fsck/k9/Identity;
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->SIGNATURE:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1334
    invoke-virtual {v6, v12}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 1335
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->SIGNATURE:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 1336
    iput-boolean v12, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 1344
    .end local v4    # "message":Lcom/fsck/k9/mail/Message;
    :goto_0
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->NAME:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1345
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->NAME:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    .line 1346
    iput-boolean v12, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 1351
    :goto_1
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->EMAIL:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1352
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->EMAIL:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    .line 1353
    iput-boolean v12, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 1358
    :goto_2
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1359
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1360
    sget-object v10, Lcom/fsck/k9/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/fsck/k9/message/IdentityField;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1361
    .local v7, "originalMessage":Ljava/lang/String;
    invoke-static {v7}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v5

    .line 1363
    .local v5, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    if-eqz v5, :cond_4

    .line 1365
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v8

    .line 1366
    .local v8, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v5}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 1367
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_4

    .line 1368
    iput-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 1373
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v5    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    .end local v7    # "originalMessage":Ljava/lang/String;
    .end local v8    # "prefs":Lcom/fsck/k9/Preferences;
    :cond_4
    iput-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    .line 1375
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 1376
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    .line 1378
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v10, p1, v3}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->processDraftMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;Ljava/util/Map;)V

    .line 1379
    return-void

    .line 1338
    .restart local v4    # "message":Lcom/fsck/k9/mail/Message;
    :cond_5
    instance-of v10, v4, Lcom/fsck/k9/mailstore/LocalMessage;

    if-eqz v10, :cond_6

    .line 1339
    check-cast v4, Lcom/fsck/k9/mailstore/LocalMessage;

    .end local v4    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v4}, Lcom/fsck/k9/mailstore/LocalMessage;->getFolder()Lcom/fsck/k9/mailstore/LocalFolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalFolder;->getSignatureUse()Z

    move-result v10

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 1341
    :cond_6
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v10}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    goto :goto_0

    .line 1348
    :cond_7
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v10}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 1355
    :cond_8
    iget-object v10, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v10}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 5
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1275
    iget-object v0, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    .line 1277
    .local v0, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 1278
    .local v1, "subject":Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fwd:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1279
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fwd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    :goto_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1289
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 1290
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    iput-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 1296
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 1297
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 1298
    return-void

    .line 1281
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1292
    :cond_1
    const-string v2, "could not get Message-ID."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private processMessageToReplyTo(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 10
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1226
    iget-object v2, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/Message;

    .line 1228
    .local v2, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1229
    sget-object v7, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1231
    .local v4, "subject":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "re:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1232
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Re: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    .end local v4    # "subject":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v8, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v7, v8, :cond_4

    const/4 v1, 0x1

    .line 1245
    .local v1, "isReplyAll":Z
    :goto_1
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v7, v2, v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->initFromReplyToMessage(Lcom/fsck/k9/mail/Message;Z)V

    .line 1247
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 1248
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 1250
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getReferences()[Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, "refs":[Ljava/lang/String;
    if-eqz v3, :cond_5

    array-length v7, v3

    if-lez v7, :cond_5

    .line 1252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-static {v8, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 1262
    .end local v3    # "refs":[Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    iget-object v8, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    invoke-virtual {v7, p1, v8}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->initFromReplyToMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 1264
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v8, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v8, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v7, v8, :cond_1

    .line 1265
    :cond_0
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-static {v7, v2}, Lcom/fsck/k9/helper/IdentityHelper;->getRecipientIdentityFromMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/Identity;

    move-result-object v5

    .line 1266
    .local v5, "useIdentity":Lcom/fsck/k9/Identity;
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v7, v6}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v0

    .line 1267
    .local v0, "defaultIdentity":Lcom/fsck/k9/Identity;
    if-eq v5, v0, :cond_1

    .line 1268
    invoke-direct {p0, v5}, Lcom/fsck/k9/activity/MessageCompose;->switchToIdentity(Lcom/fsck/k9/Identity;)V

    .line 1272
    .end local v0    # "defaultIdentity":Lcom/fsck/k9/Identity;
    .end local v5    # "useIdentity":Lcom/fsck/k9/Identity;
    :cond_1
    return-void

    .line 1234
    .end local v1    # "isReplyAll":Z
    .restart local v4    # "subject":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1237
    .end local v4    # "subject":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    move v1, v6

    .line 1244
    goto :goto_1

    .line 1254
    .restart local v1    # "isReplyAll":Z
    .restart local v3    # "refs":[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    iput-object v7, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    goto :goto_2

    .line 1258
    .end local v3    # "refs":[Ljava/lang/String;
    :cond_6
    const-string v7, "could not get Message-ID."

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private processSourceMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 5
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1192
    :try_start_0
    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$14;->$SwitchMap$com$fsck$k9$activity$MessageCompose$Action:[I

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageCompose$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1207
    const-string v1, "processSourceMessage() called with unsupported action"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    :goto_0
    iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 1219
    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 1222
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 1223
    return-void

    .line 1195
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processMessageToReplyTo(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_2
    const-string v1, "Error while processing source message: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1218
    iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 1219
    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    goto :goto_1

    .line 1199
    .end local v0    # "me":Lcom/fsck/k9/mail/MessagingException;
    :pswitch_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processMessageToForward(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1218
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 1219
    iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    throw v1

    .line 1203
    :pswitch_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processDraftMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCurrentMessageFormat(Lcom/fsck/k9/message/SimpleMessageFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/fsck/k9/message/SimpleMessageFormat;

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 1464
    return-void
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose$Action;->getTitleResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setTitle(I)V

    .line 639
    return-void
.end method

.method private switchToIdentity(Lcom/fsck/k9/Identity;)V
    .locals 1
    .param p1, "identity"    # Lcom/fsck/k9/Identity;

    .prologue
    const/4 v0, 0x1

    .line 866
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    .line 867
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 868
    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 869
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    .line 870
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 871
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 872
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onSwitchIdentity(Lcom/fsck/k9/Identity;)V

    .line 873
    return-void
.end method

.method private updateFrom()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    return-void
.end method

.method private updateSignature()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/EolConvertingEditText;->setCharacters(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1552
    or-int/lit16 p2, p2, 0x100

    .line 1554
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/activity/MessageCompose;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v7

    .line 1556
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-virtual {v7}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadLocalMessageForDisplay(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V
    .locals 3
    .param p1, "messageViewInfo"    # Lcom/fsck/k9/mailstore/MessageViewInfo;
    .param p2, "action"    # Lcom/fsck/k9/activity/MessageCompose$Action;

    .prologue
    const/4 v2, 0x1

    .line 1565
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    if-eqz v1, :cond_0

    .line 1567
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->populateUIWithQuotedMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLcom/fsck/k9/activity/MessageCompose$Action;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 1578
    :goto_1
    return-void

    .line 1568
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    sget-object v2, Lcom/fsck/k9/message/QuotedTextMode;->HIDE:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 1571
    const-string v1, "Could not re-process source message; deleting quoted text to be safe."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1575
    .end local v0    # "e":Lcom/fsck/k9/mail/MessagingException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->processSourceMessage(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 1576
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    goto :goto_1
.end method

.method public loadQuotedTextForEdit()V
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tried to edit quoted message with no referenced message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncStartOrResumeLoadingMessage(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 1181
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 788
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 790
    and-int/lit16 v0, p1, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_2

    .line 791
    xor-int/lit16 p1, p1, 0x800

    .line 792
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    if-nez v0, :cond_1

    .line 793
    const-string v0, "Got a message builder activity result for no message builder, this is an illegal state!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/fsck/k9/message/MessageBuilder;->onActivityResult(IILandroid/content/Intent;Lcom/fsck/k9/message/MessageBuilder$Callback;)V

    goto :goto_0

    .line 801
    :cond_2
    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3

    .line 802
    xor-int/lit16 p1, p1, 0x100

    .line 803
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 807
    :cond_3
    and-int/lit16 v0, p1, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4

    .line 808
    xor-int/lit16 p1, p1, 0x200

    .line 809
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 813
    :cond_4
    and-int/lit16 v0, p1, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 814
    xor-int/lit16 p1, p1, 0x400

    .line 815
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0, p2, p1, p3}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachmentAdded()V
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 918
    return-void
.end method

.method public onAttachmentRemoved()V
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 923
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->prepareToFinish(Z)V

    .line 1029
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 932
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 937
    :goto_0
    return-void

    .line 934
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->showDialog(I)V

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c008a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super/range {p0 .. p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/fsck/k9/activity/UpgradeDatabases;->actionUpgradeDatabases(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->requestWindowFeature(I)Z

    .line 230
    invoke-static {}, Lcom/fsck/k9/K9;->getK9ComposerThemeSetting()Lcom/fsck/k9/K9$Theme;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/K9$Theme;->USE_GLOBAL:Lcom/fsck/k9/K9$Theme;

    if-eq v2, v3, :cond_3

    .line 232
    new-instance v24, Landroid/view/ContextThemeWrapper;

    .line 233
    invoke-static {}, Lcom/fsck/k9/K9;->getK9ComposerTheme()Lcom/fsck/k9/K9$Theme;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/K9;->getK9ThemeResourceId(Lcom/fsck/k9/K9$Theme;)I

    move-result v2

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 235
    .local v24, "themeContext":Landroid/view/ContextThemeWrapper;
    invoke-static/range {v24 .. v24}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 236
    .local v26, "v":Landroid/view/View;
    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    .line 238
    .local v21, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {v24 .. v24}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010034

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 239
    move-object/from16 v0, v21

    iget v2, v0, Landroid/util/TypedValue;->data:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->setContentView(Landroid/view/View;)V

    .line 245
    .end local v21    # "outValue":Landroid/util/TypedValue;
    .end local v24    # "themeContext":Landroid/view/ContextThemeWrapper;
    .end local v26    # "v":Landroid/view/View;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->initializeActionBar()V

    .line 248
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 252
    .local v18, "intent":Landroid/content/Intent;
    const-string v2, "message_reference"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 253
    .local v20, "messageReferenceString":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 256
    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "accountUuid":Ljava/lang/String;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    if-nez v2, :cond_2

    .line 262
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    if-nez v2, :cond_5

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/fsck/k9/activity/Accounts;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->startActivity(Landroid/content/Intent;)V

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    goto/16 :goto_0

    .line 242
    .end local v12    # "accountUuid":Ljava/lang/String;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v20    # "messageReferenceString":Ljava/lang/String;
    :cond_3
    const v2, 0x7f03001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->setContentView(I)V

    goto :goto_1

    .line 256
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v20    # "messageReferenceString":Ljava/lang/String;
    :cond_4
    const-string v2, "account"

    .line 257
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 276
    .restart local v12    # "accountUuid":Ljava/lang/String;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/helper/Contacts;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/helper/Contacts;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->contacts:Lcom/fsck/k9/helper/Contacts;

    .line 278
    const v2, 0x7f0c008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityButton:Landroid/widget/TextView;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->chooseIdentityButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v5, Lcom/fsck/k9/activity/compose/RecipientMvpView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 282
    .local v5, "recipientMvpView":Lcom/fsck/k9/activity/compose/RecipientMvpView;
    new-instance v7, Lcom/fsck/k9/message/ComposePgpInlineDecider;

    invoke-direct {v7}, Lcom/fsck/k9/message/ComposePgpInlineDecider;-><init>()V

    .line 283
    .local v7, "composePgpInlineDecider":Lcom/fsck/k9/message/ComposePgpInlineDecider;
    new-instance v8, Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;

    invoke-direct {v8}, Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;-><init>()V

    .line 284
    .local v8, "composePgpEnableByDefaultDecider":Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;
    new-instance v2, Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    .line 286
    invoke-static {}, Lcom/fsck/k9/message/AutocryptStatusInteractor;->getInstance()Lcom/fsck/k9/message/AutocryptStatusInteractor;

    move-result-object v9

    new-instance v10, Lcom/fsck/k9/helper/ReplyToParser;

    invoke-direct {v10}, Lcom/fsck/k9/helper/ReplyToParser;-><init>()V

    move-object/from16 v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/fsck/k9/activity/compose/RecipientPresenter;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/fsck/k9/activity/compose/RecipientMvpView;Lcom/fsck/k9/Account;Lcom/fsck/k9/message/ComposePgpInlineDecider;Lcom/fsck/k9/message/ComposePgpEnableByDefaultDecider;Lcom/fsck/k9/message/AutocryptStatusInteractor;Lcom/fsck/k9/helper/ReplyToParser;Lcom/fsck/k9/activity/compose/RecipientPresenter$RecipientsChangedListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 290
    const v2, 0x7f0c007a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "allowEmoji"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const v2, 0x7f0c007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 294
    .local v25, "upperSignature":Lcom/fsck/k9/ui/EolConvertingEditText;
    const v2, 0x7f0c0085

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 296
    .local v19, "lowerSignature":Lcom/fsck/k9/ui/EolConvertingEditText;
    new-instance v22, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 297
    .local v22, "quotedMessageMvpView":Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;
    new-instance v2, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v2, v0, v1, v3}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;-><init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;Lcom/fsck/k9/Account;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 298
    new-instance v2, Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentMvpView:Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;-><init>(Landroid/content/Context;Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentMvpView;Landroid/app/LoaderManager;Lcom/fsck/k9/activity/compose/AttachmentPresenter$AttachmentsChangedListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 300
    const v2, 0x7f0c007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/ui/EolConvertingEditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fsck/k9/ui/EolConvertingEditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "allowEmoji"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    const v2, 0x7f0c007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 305
    new-instance v16, Lcom/fsck/k9/activity/MessageCompose$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageCompose$1;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 312
    .local v16, "draftNeedsChangingTextWatcher":Landroid/text/TextWatcher;
    new-instance v23, Lcom/fsck/k9/activity/MessageCompose$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageCompose$2;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 320
    .local v23, "signTextWatcher":Landroid/text/TextWatcher;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/fsck/k9/ui/EolConvertingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    sget-object v3, Lcom/fsck/k9/message/QuotedTextMode;->NONE:Lcom/fsck/k9/message/QuotedTextMode;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/fsck/k9/ui/EolConvertingEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 337
    if-eqz p1, :cond_6

    .line 341
    const-string v2, "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    .line 345
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 346
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 347
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 367
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    if-nez v2, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    .line 371
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 372
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 373
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 378
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateSignature()V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/fsck/k9/ui/EolConvertingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v2

    if-nez v2, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    .line 385
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->isMessageReadReceiptAlways()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    if-nez v2, :cond_b

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v2, v3, :cond_a

    .line 392
    :cond_9
    new-instance v2, Lcom/fsck/k9/activity/MessageLoaderHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderCallbacks:Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/fsck/k9/activity/MessageLoaderHelper;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/FragmentManager;Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    const-string v2, "message_decryption_result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .line 397
    .local v15, "cachedDecryptionResult":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageLoaderHelper:Lcom/fsck/k9/activity/MessageLoaderHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2, v3, v15}, Lcom/fsck/k9/activity/MessageLoaderHelper;->asyncStartOrResumeLoadingMessage(Lcom/fsck/k9/activity/MessageReference;Landroid/os/Parcelable;)V

    .line 400
    .end local v15    # "cachedDecryptionResult":Landroid/os/Parcelable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_b

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAlwaysBcc()Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, "alwaysBccString":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v14}, Lcom/fsck/k9/mail/Address;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->addBccAddresses([Lcom/fsck/k9/mail/Address;)V

    .line 408
    .end local v14    # "alwaysBccString":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v2, v3, :cond_d

    .line 409
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageReference;->withModifiedFlag(Lcom/fsck/k9/mail/Flag;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 412
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v2, v3, :cond_17

    .line 415
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->requestFocus()Z

    .line 421
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v2, v3, :cond_f

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    sget-object v3, Lcom/fsck/k9/mail/Flag;->FORWARDED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageReference;->withModifiedFlag(Lcom/fsck/k9/mail/Flag;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 425
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 428
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/FontSizes;->getMessageComposeInput()I

    move-result v17

    .line 429
    .local v17, "fontSize":I
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setFontSizes(Lcom/fsck/k9/FontSizes;I)V

    .line 430
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v2

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setFontSizes(Lcom/fsck/k9/FontSizes;I)V

    .line 431
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 432
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Lcom/fsck/k9/ui/EolConvertingEditText;

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 433
    invoke-static {}, Lcom/fsck/k9/K9;->getFontSizes()Lcom/fsck/k9/FontSizes;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->setTitle()V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/activity/MessageCompose;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/message/MessageBuilder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    if-eqz v2, :cond_0

    .line 442
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/MessageBuilder;->reattachCallback(Lcom/fsck/k9/message/MessageBuilder$Callback;)V

    goto/16 :goto_0

    .line 349
    .end local v17    # "fontSize":I
    :cond_10
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 350
    .local v13, "action":Ljava/lang/String;
    const-string v2, "com.fsck.k9.intent.action.COMPOSE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 351
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    goto/16 :goto_3

    .line 352
    :cond_11
    const-string v2, "com.fsck.k9.intent.action.REPLY"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 353
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    goto/16 :goto_3

    .line 354
    :cond_12
    const-string v2, "com.fsck.k9.intent.action.REPLY_ALL"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 355
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    goto/16 :goto_3

    .line 356
    :cond_13
    const-string v2, "com.fsck.k9.intent.action.FORWARD"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 357
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    goto/16 :goto_3

    .line 358
    :cond_14
    const-string v2, "com.fsck.k9.intent.action.EDIT_DRAFT"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 359
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    goto/16 :goto_3

    .line 362
    :cond_15
    const-string v2, "MessageCompose was started with an unsupported action"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    sget-object v2, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    goto/16 :goto_3

    .line 375
    .end local v13    # "action":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fsck/k9/activity/MessageCompose;->signatureView:Lcom/fsck/k9/ui/EolConvertingEditText;

    .line 376
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/EolConvertingEditText;->setVisibility(I)V

    goto/16 :goto_4

    .line 418
    :cond_17
    invoke-virtual {v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->requestFocusOnToField()V

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v6, 0x7f0701af

    .line 1092
    packed-switch p1, :pswitch_data_0

    .line 1168
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 1094
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070333

    .line 1095
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070334

    .line 1096
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070332

    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$4;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/MessageCompose$4;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1097
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/fsck/k9/activity/MessageCompose$3;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/MessageCompose$3;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1104
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1111
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1113
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07016d

    .line 1114
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07016c

    .line 1115
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070153

    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$6;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/MessageCompose$6;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1116
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/fsck/k9/activity/MessageCompose$5;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/MessageCompose$5;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1122
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1132
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 1134
    :pswitch_2
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 1135
    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()Lcom/fsck/k9/K9$Theme;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    if-ne v3, v4, :cond_0

    const v3, 0x7f080018

    :goto_1
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1138
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1139
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070342

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1140
    new-instance v0, Lcom/fsck/k9/activity/compose/IdentityAdapter;

    invoke-direct {v0, v2}, Lcom/fsck/k9/activity/compose/IdentityAdapter;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v0, "adapter":Lcom/fsck/k9/activity/compose/IdentityAdapter;
    new-instance v3, Lcom/fsck/k9/activity/MessageCompose$7;

    invoke-direct {v3, p0, v0}, Lcom/fsck/k9/activity/MessageCompose$7;-><init>(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/activity/compose/IdentityAdapter;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1135
    .end local v0    # "adapter":Lcom/fsck/k9/activity/compose/IdentityAdapter;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    const v3, 0x7f080017

    goto :goto_1

    .line 1151
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0701a4

    .line 1152
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0701a3

    .line 1153
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0701a2

    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$9;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/MessageCompose$9;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1154
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0701a1

    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$8;

    invoke-direct {v5, p0}, Lcom/fsck/k9/activity/MessageCompose$8;-><init>(Lcom/fsck/k9/activity/MessageCompose;)V

    .line 1160
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1165
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 1001
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1003
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    :goto_0
    return v0

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1010
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->hasDraftsFolder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1011
    const v1, 0x7f0c0135

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1014
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onDestroy()V

    .line 451
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onActivityDestroy()V

    .line 454
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 898
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 893
    :pswitch_1
    if-eqz p2, :cond_0

    .line 894
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onNonRecipientFieldFocused()V

    goto :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x7f0c007a
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMessageBuildCancel()V
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 1529
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    .line 1530
    return-void
.end method

.method public onMessageBuildException(Lcom/fsck/k9/mail/MessagingException;)V
    .locals 5
    .param p1, "me"    # Lcom/fsck/k9/mail/MessagingException;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1534
    const-string v0, "Error sending message"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1535
    const v0, 0x7f070343

    new-array v1, v4, [Ljava/lang/Object;

    .line 1536
    invoke-virtual {p1}, Lcom/fsck/k9/mail/MessagingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1536
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 1538
    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    .line 1539
    return-void
.end method

.method public onMessageBuildReturnPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v8, 0x0

    .line 1543
    or-int/lit16 p2, p2, 0x800

    .line 1545
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/activity/MessageCompose;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    :goto_0
    return-void

    .line 1546
    :catch_0
    move-exception v7

    .line 1547
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "Error starting pending intent from builder!"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;Z)V
    .locals 12
    .param p1, "message"    # Lcom/fsck/k9/mail/internet/MimeMessage;
    .param p2, "isDraft"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1502
    if-eqz p2, :cond_2

    .line 1503
    iput-boolean v9, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 1504
    iput-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 1506
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageReference;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->shouldSaveRemotely()Z

    move-result v8

    .line 1511
    .local v8, "saveRemotely":Z
    new-instance v0, Lcom/fsck/k9/activity/compose/SaveMessageTask;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->contacts:Lcom/fsck/k9/helper/Contacts;

    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/activity/compose/SaveMessageTask;-><init>(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/helper/Contacts;Landroid/os/Handler;Lcom/fsck/k9/mail/Message;JZ)V

    new-array v1, v9, [Ljava/lang/Void;

    .line 1512
    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/compose/SaveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1513
    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->finishAfterDraftSaved:Z

    if-eqz v0, :cond_1

    .line 1514
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    .line 1524
    .end local v8    # "saveRemotely":Z
    :goto_0
    return-void

    .line 1516
    .restart local v8    # "saveRemotely":Z
    :cond_1
    invoke-virtual {p0, v9}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 1519
    .end local v8    # "saveRemotely":Z
    :cond_2
    iput-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 1520
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageCompose;->contacts:Lcom/fsck/k9/helper/Contacts;

    iget-wide v6, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    const-wide/16 v10, -0x1

    cmp-long v4, v6, v10

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 1521
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_3
    iget-object v6, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lcom/fsck/k9/activity/MessageReference;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;-><init>(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/helper/Contacts;Lcom/fsck/k9/mail/Message;Ljava/lang/Long;Lcom/fsck/k9/activity/MessageReference;)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose$SendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1522
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->finish()V

    goto :goto_0
.end method

.method public onOpenPgpClickDisable()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoPgpClickDisable()V

    .line 913
    return-void
.end method

.method public onOpenPgpInlineChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 902
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoPgpInlineChanged(Z)V

    .line 903
    return-void
.end method

.method public onOpenPgpSignOnlyChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 907
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onCryptoPgpSignOnlyDisabled()V

    .line 908
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 949
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 994
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 996
    :goto_0
    return v0

    .line 951
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->prepareToFinish(Z)V

    goto :goto_0

    .line 954
    :sswitch_1
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSendMessage()V

    goto :goto_0

    .line 957
    :sswitch_2
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSaveDraftAndSave()V

    goto :goto_0

    .line 960
    :sswitch_3
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->askBeforeDiscard()V

    goto :goto_0

    .line 963
    :sswitch_4
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuAddFromContacts()V

    goto :goto_0

    .line 966
    :sswitch_5
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetEnableEncryption(Z)V

    .line 967
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    goto :goto_0

    .line 970
    :sswitch_6
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetEnableEncryption(Z)V

    .line 971
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    goto :goto_0

    .line 974
    :sswitch_7
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetPgpInline(Z)V

    .line 975
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    goto :goto_0

    .line 978
    :sswitch_8
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetPgpInline(Z)V

    .line 979
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    goto :goto_0

    .line 982
    :sswitch_9
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetSignOnly(Z)V

    goto :goto_0

    .line 985
    :sswitch_a
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onMenuSetSignOnly(Z)V

    goto :goto_0

    .line 988
    :sswitch_b
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onClickAddAttachment(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    goto :goto_0

    .line 991
    :sswitch_c
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->onReadReceipt()V

    goto :goto_0

    .line 949
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0132 -> :sswitch_b
        0x7f0c0133 -> :sswitch_1
        0x7f0c0134 -> :sswitch_4
        0x7f0c0135 -> :sswitch_2
        0x7f0c0136 -> :sswitch_3
        0x7f0c0137 -> :sswitch_c
        0x7f0c0138 -> :sswitch_6
        0x7f0c0139 -> :sswitch_5
        0x7f0c013a -> :sswitch_9
        0x7f0c013b -> :sswitch_a
        0x7f0c013c -> :sswitch_7
        0x7f0c013d -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 563
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onPause()V

    .line 564
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v4

    iget-object v5, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v4, v5}, Lcom/fsck/k9/controller/MessagingController;->removeListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 566
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->getChangingConfigurations()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 568
    .local v1, "isPausingOnConfigurationChange":Z
    :goto_0
    iget-object v4, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    if-eqz v4, :cond_2

    move v0, v2

    .line 570
    .local v0, "isCurrentlyBuildingMessage":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    if-eqz v2, :cond_3

    .line 575
    :cond_0
    :goto_2
    return-void

    .end local v0    # "isCurrentlyBuildingMessage":Z
    .end local v1    # "isPausingOnConfigurationChange":Z
    :cond_1
    move v1, v3

    .line 566
    goto :goto_0

    .restart local v1    # "isPausingOnConfigurationChange":Z
    :cond_2
    move v0, v3

    .line 568
    goto :goto_1

    .line 574
    .restart local v0    # "isCurrentlyBuildingMessage":Z
    :cond_3
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSaveDraftImplicitly()V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1019
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1021
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1023
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressCancel(Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentProgressDialogCancelled()V

    .line 1084
    return-void
.end method

.method public onProgressCancel(Lcom/fsck/k9/fragment/ProgressDialogFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/fsck/k9/fragment/ProgressDialogFragment;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentProgressDialogCancelled()V

    .line 1088
    return-void
.end method

.method public onRecipientsChanged()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 928
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 614
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 616
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 618
    const-string v0, "com.fsck.k9.activity.MessageCompose.messageReadReceipt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    .line 620
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 621
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 622
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 624
    const-string v0, "com.fsck.k9.activity.MessageCompose.draftId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    .line 625
    const-string v0, "com.fsck.k9.activity.MessageCompose.identity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    .line 626
    const-string v0, "com.fsck.k9.activity.MessageCompose.identityChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    .line 627
    const-string v0, "com.fsck.k9.activity.MessageCompose.inReplyTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    .line 628
    const-string v0, "com.fsck.k9.activity.MessageCompose.references"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    .line 629
    const-string v0, "com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 630
    const-string v0, "alreadyNotifiedUserOfEmptySubject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    .line 632
    invoke-direct {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateFrom()V

    .line 634
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 635
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onResume()V

    .line 558
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->messagingListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 559
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    invoke-virtual {v0}, Lcom/fsck/k9/message/MessageBuilder;->detachCallback()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 587
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 589
    const-string v0, "com.fsck.k9.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageProcessed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    const-string v0, "com.fsck.k9.activity.MessageCompose.draftId"

    iget-wide v2, p0, Lcom/fsck/k9/activity/MessageCompose;->draftId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 591
    const-string v0, "com.fsck.k9.activity.MessageCompose.identity"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identity:Lcom/fsck/k9/Identity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 592
    const-string v0, "com.fsck.k9.activity.MessageCompose.identityChanged"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->identityChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 593
    const-string v0, "com.fsck.k9.activity.MessageCompose.inReplyTo"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->repliedToMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v0, "com.fsck.k9.activity.MessageCompose.references"

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose;->referencedMessageIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "com.fsck.k9.activity.MessageCompose.messageReadReceipt"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->requestReadReceipt:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    const-string v0, "com.fsck.k9.activity.MessageCompose.changesMadeSinceLastSave"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 597
    const-string v0, "alreadyNotifiedUserOfEmptySubject"

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->alreadyNotifiedUserOfEmptySubject:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 600
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 601
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 602
    return-void
.end method

.method public performSendAfterChecks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 744
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/MessageCompose;->createMessageBuilder(Z)Lcom/fsck/k9/message/MessageBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 745
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    if-eqz v0, :cond_0

    .line 746
    iput-boolean v1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 747
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setProgressBarIndeterminateVisibility(Z)V

    .line 748
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    invoke-virtual {v0, p0}, Lcom/fsck/k9/message/MessageBuilder;->buildAsync(Lcom/fsck/k9/message/MessageBuilder$Callback;)V

    .line 750
    :cond_0
    return-void
.end method

.method public saveDraftEventually()V
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 1173
    return-void
.end method

.method public showContactPicker(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 781
    or-int/lit16 p1, p1, 0x100

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 783
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->contacts:Lcom/fsck/k9/helper/Contacts;

    invoke-virtual {v0}, Lcom/fsck/k9/helper/Contacts;->contactPickerIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 784
    return-void
.end method

.method public updateMessageFormat()V
    .locals 4

    .prologue
    .line 1467
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getMessageFormat()Lcom/fsck/k9/Account$MessageFormat;

    move-result-object v1

    .line 1469
    .local v1, "origMessageFormat":Lcom/fsck/k9/Account$MessageFormat;
    sget-object v2, Lcom/fsck/k9/Account$MessageFormat;->TEXT:Lcom/fsck/k9/Account$MessageFormat;

    if-ne v1, v2, :cond_0

    .line 1472
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 1497
    .local v0, "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    :goto_0
    invoke-direct {p0, v0}, Lcom/fsck/k9/activity/MessageCompose;->setCurrentMessageFormat(Lcom/fsck/k9/message/SimpleMessageFormat;)V

    .line 1498
    return-void

    .line 1473
    .end local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->isForcePlainText()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 1474
    invoke-virtual {v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->includeQuotedText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1477
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .restart local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    goto :goto_0

    .line 1478
    .end local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1481
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .restart local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    goto :goto_0

    .line 1482
    .end local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    :cond_2
    sget-object v2, Lcom/fsck/k9/Account$MessageFormat;->AUTO:Lcom/fsck/k9/Account$MessageFormat;

    if-ne v1, v2, :cond_5

    .line 1483
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    sget-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->isQuotedTextText()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->quotedMessagePresenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 1484
    invoke-virtual {v2}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->includeQuotedText()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1488
    :cond_3
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .restart local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    goto :goto_0

    .line 1490
    .end local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    :cond_4
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .restart local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    goto :goto_0

    .line 1494
    .end local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    :cond_5
    sget-object v0, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .restart local v0    # "messageFormat":Lcom/fsck/k9/message/SimpleMessageFormat;
    goto :goto_0
.end method
