.class public Lcom/fsck/k9/activity/NotificationDeleteConfirmation;
.super Landroid/app/Activity;
.source "NotificationDeleteConfirmation.java"


# static fields
.field private static final DIALOG_CONFIRM:I = 0x1

.field private static final EXTRA_ACCOUNT_UUID:Ljava/lang/String; = "accountUuid"

.field private static final EXTRA_MESSAGE_REFERENCES:Ljava/lang/String; = "messageReferences"


# instance fields
.field private account:Lcom/fsck/k9/Account;

.field private messagesToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/NotificationDeleteConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/NotificationDeleteConfirmation;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->deleteAndFinish()V

    return-void
.end method

.method private cancelNotifications()V
    .locals 4

    .prologue
    .line 147
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    .line 148
    .local v0, "controller":Lcom/fsck/k9/controller/MessagingController;
    iget-object v2, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->messagesToDelete:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/MessageReference;

    .line 149
    .local v1, "messageReference":Lcom/fsck/k9/activity/MessageReference;
    iget-object v3, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v3, v1}, Lcom/fsck/k9/controller/MessagingController;->cancelNotificationForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/activity/MessageReference;)V

    goto :goto_0

    .line 151
    .end local v1    # "messageReference":Lcom/fsck/k9/activity/MessageReference;
    :cond_0
    return-void
.end method

.method private createDeleteConfirmationDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    .line 122
    const v2, 0x7f0701a4

    const-string v3, ""

    const v4, 0x7f0701a2

    const v5, 0x7f0701a1

    new-instance v6, Lcom/fsck/k9/activity/NotificationDeleteConfirmation$1;

    invoke-direct {v6, p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation$1;-><init>(Lcom/fsck/k9/activity/NotificationDeleteConfirmation;)V

    new-instance v7, Lcom/fsck/k9/activity/NotificationDeleteConfirmation$2;

    invoke-direct {v7, p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation$2;-><init>(Lcom/fsck/k9/activity/NotificationDeleteConfirmation;)V

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v7}, Lcom/fsck/k9/activity/ConfirmationDialog;->create(Landroid/app/Activity;IILjava/lang/String;IILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndFinish()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->cancelNotifications()V

    .line 142
    invoke-direct {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->triggerDelete()V

    .line 143
    invoke-virtual {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->finish()V

    .line 144
    return-void
.end method

.method private extractExtras()V
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "accountUuid"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "accountUuid":Ljava/lang/String;
    const-string v5, "messageReferences"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 67
    .local v3, "messageReferenceStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "messagesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    if-nez v1, :cond_0

    .line 70
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "accountUuid can\'t be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_0
    if-nez v4, :cond_1

    .line 74
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "messageReferences can\'t be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "messageReferences can\'t be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    :cond_2
    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->getAccountFromUuid(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 82
    .local v0, "account":Lcom/fsck/k9/Account;
    if-nez v0, :cond_3

    .line 83
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "accountUuid couldn\'t be resolved to an account"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_3
    iput-object v0, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->account:Lcom/fsck/k9/Account;

    .line 87
    iput-object v4, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->messagesToDelete:Ljava/util/List;

    .line 88
    return-void
.end method

.method private getAccountFromUuid(Ljava/lang/String;)Lcom/fsck/k9/Account;
    .locals 2
    .param p1, "accountUuid"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    .line 118
    .local v0, "preferences":Lcom/fsck/k9/Preferences;
    invoke-virtual {v0, p1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    return-object v1
.end method

.method public static getIntent(Landroid/content/Context;Lcom/fsck/k9/activity/MessageReference;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageReference"    # Lcom/fsck/k9/activity/MessageReference;

    .prologue
    .line 37
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->getIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/activity/MessageReference;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "messageReferences":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/MessageReference;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/MessageReference;->getAccountUuid()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "accountUuid":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    const-string v2, "accountUuid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v2, "messageReferences"

    invoke-static {p1}, Lcom/fsck/k9/activity/MessageReferenceHelper;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    return-object v1
.end method

.method private triggerDelete()V
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->account:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "accountUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->messagesToDelete:Ljava/util/List;

    invoke-static {p0, v0, v2}, Lcom/fsck/k9/notification/NotificationActionService;->createDeleteAllMessagesIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/K9$Theme;->LIGHT:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    const v0, 0x7f08001a

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->setTheme(I)V

    .line 58
    invoke-direct {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->extractExtras()V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->showDialog(I)V

    .line 61
    return-void

    .line 55
    :cond_0
    const v0, 0x7f080019

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->createDeleteConfirmationDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7
    .param p1, "dialogId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    .line 104
    .local v0, "alert":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 114
    return-void

    .line 106
    :pswitch_0
    iget-object v2, p0, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->messagesToDelete:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 107
    .local v1, "messageCount":I
    invoke-virtual {p0}, Lcom/fsck/k9/activity/NotificationDeleteConfirmation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 107
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
